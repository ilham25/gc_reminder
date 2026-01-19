import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gc_reminder/core/networks/error_handler.dart';
import 'package:gc_reminder/domain/dto/reminder/create_reminder_dto.dart';
import 'package:gc_reminder/domain/dto/reminder/update_reminder_dto.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_filter_model.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_model.dart';
import 'package:gc_reminder/domain/models/reminder/reminder_summary_model.dart';
import 'package:gc_reminder/domain/repositories/reminder/reminder_local_repository.dart';
import 'package:gc_reminder/infrastructure/datasource/reminder/reminder_local_datasource.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([ReminderLocalDataSource])
import 'reminder_local_repository_impl_test.mocks.dart';

void main() {
  late ReminderLocalRepositoryImpl repository;
  late MockReminderLocalDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockReminderLocalDataSource();
    repository = ReminderLocalRepositoryImpl(mockDataSource);
  });

  group('getReminders', () {
    final tReminderList = [
      ReminderModel(
        id: 1,
        title: 'Test 1',
        description: 'Desc 1',
        startAt: DateTime(2026, 1, 1, 8, 0),
        createdAt: DateTime.now(),
        type: .time,
      ),
      ReminderModel(
        id: 2,
        title: 'Test 2',
        description: 'Desc 2',
        startAt: DateTime(2026, 1, 1, 9, 0),
        createdAt: DateTime.now(),
        type: .time,
      ),
    ];
    final tFilter = ReminderFilterModel();

    test(
      'should return list of reminders when data source call is successful',
      () async {
        // arrange
        when(
          mockDataSource.getReminders(filter: anyNamed('filter')),
        ).thenAnswer((_) async => Right(tReminderList));

        // act
        final result = await repository.getReminders(filter: tFilter);

        // assert
        expect(result, equals(Right(tReminderList)));
        verify(mockDataSource.getReminders(filter: tFilter));
        verifyNoMoreInteractions(mockDataSource);
      },
    );

    test(
      'should return list of reminders when no filter is provided',
      () async {
        // arrange
        when(
          mockDataSource.getReminders(filter: anyNamed('filter')),
        ).thenAnswer((_) async => Right(tReminderList));

        // act
        final result = await repository.getReminders();

        // assert
        expect(result, equals(Right(tReminderList)));
        verify(mockDataSource.getReminders(filter: null));
      },
    );

    test('should return failure when data source call fails', () async {
      // arrange
      final tFailure = Failure(
        message: "",
        statusCode: ResponseCode.badRequest,
      );
      when(
        mockDataSource.getReminders(filter: anyNamed('filter')),
      ).thenAnswer((_) async => Left(tFailure));

      // act
      final result = await repository.getReminders(filter: tFilter);

      // assert
      expect(result, equals(Left(tFailure)));
      verify(mockDataSource.getReminders(filter: tFilter));
    });
  });

  group('getReminder', () {
    const tId = 1;
    final tReminder = ReminderModel(
      id: tId,
      title: 'Test 1',
      description: 'Desc 1',
      startAt: DateTime(2026, 1, 1, 8, 0),
      createdAt: DateTime.now(),
      type: .time,
    );

    test(
      'should return reminder when data source call is successful',
      () async {
        // arrange
        when(
          mockDataSource.getReminder(any),
        ).thenAnswer((_) async => Right(tReminder));

        // act
        final result = await repository.getReminder(tId);

        // assert
        expect(result, equals(Right(tReminder)));
        verify(mockDataSource.getReminder(tId));
        verifyNoMoreInteractions(mockDataSource);
      },
    );

    test('should return failure when data source call fails', () async {
      // arrange
      final tFailure = Failure(
        message: "",
        statusCode: ResponseCode.badRequest,
      );
      when(
        mockDataSource.getReminder(any),
      ).thenAnswer((_) async => Left(tFailure));

      // act
      final result = await repository.getReminder(tId);

      // assert
      expect(result, equals(Left(tFailure)));
      verify(mockDataSource.getReminder(tId));
    });
  });

  group('createReminder', () {
    final tDto = CreateReminderDTO(
      title: 'New Reminder',
      description: 'Desc',
      startAt: DateTime(2026, 1, 1, 8, 0),
      type: .time,
    );
    const tCreatedId = 1;

    test(
      'should return created reminder id when data source call is successful',
      () async {
        // arrange
        when(
          mockDataSource.createReminder(dto: anyNamed('dto')),
        ).thenAnswer((_) async => const Right(tCreatedId));

        // act
        final result = await repository.createReminder(dto: tDto);

        // assert
        expect(result, equals(const Right(tCreatedId)));
        verify(mockDataSource.createReminder(dto: tDto));
        verifyNoMoreInteractions(mockDataSource);
      },
    );

    test('should return failure when data source call fails', () async {
      // arrange
      final tFailure = Failure(
        message: "",
        statusCode: ResponseCode.badRequest,
      );
      when(
        mockDataSource.createReminder(dto: anyNamed('dto')),
      ).thenAnswer((_) async => Left(tFailure));

      // act
      final result = await repository.createReminder(dto: tDto);

      // assert
      expect(result, equals(Left(tFailure)));
      verify(mockDataSource.createReminder(dto: tDto));
    });
  });

  group('updateReminder', () {
    const tId = 1;
    final tDto = UpdateReminderDTO(
      title: 'Updated',
      description: 'Updated Desc',
    );

    test('should return success when data source call is successful', () async {
      // arrange
      when(
        mockDataSource.updateReminder(any, dto: anyNamed('dto')),
      ).thenAnswer((_) async => const Right(null));

      // act
      final result = await repository.updateReminder(tId, dto: tDto);

      // assert
      expect(result, equals(const Right(null)));
      verify(mockDataSource.updateReminder(tId, dto: tDto));
      verifyNoMoreInteractions(mockDataSource);
    });

    test('should return failure when data source call fails', () async {
      // arrange
      final tFailure = Failure(
        message: "",
        statusCode: ResponseCode.badRequest,
      );
      when(
        mockDataSource.updateReminder(any, dto: anyNamed('dto')),
      ).thenAnswer((_) async => Left(tFailure));

      // act
      final result = await repository.updateReminder(tId, dto: tDto);

      // assert
      expect(result, equals(Left(tFailure)));
      verify(mockDataSource.updateReminder(tId, dto: tDto));
    });
  });

  group('deleteReminder', () {
    const tId = 1;

    test('should return success when data source call is successful', () async {
      // arrange
      when(
        mockDataSource.deleteReminder(any),
      ).thenAnswer((_) async => const Right(null));

      // act
      final result = await repository.deleteReminder(tId);

      // assert
      expect(result, equals(const Right(null)));
      verify(mockDataSource.deleteReminder(tId));
      verifyNoMoreInteractions(mockDataSource);
    });

    test('should return failure when data source call fails', () async {
      // arrange
      final tFailure = Failure(
        message: "",
        statusCode: ResponseCode.badRequest,
      );
      when(
        mockDataSource.deleteReminder(any),
      ).thenAnswer((_) async => Left(tFailure));

      // act
      final result = await repository.deleteReminder(tId);

      // assert
      expect(result, equals(Left(tFailure)));
      verify(mockDataSource.deleteReminder(tId));
    });
  });

  group('deleteReminders', () {
    const tIds = [1, 2, 3];

    test('should return success when data source call is successful', () async {
      // arrange
      when(
        mockDataSource.deleteReminders(any),
      ).thenAnswer((_) async => const Right(null));

      // act
      final result = await repository.deleteReminders(tIds);

      // assert
      expect(result, equals(const Right(null)));
      verify(mockDataSource.deleteReminders(tIds));
      verifyNoMoreInteractions(mockDataSource);
    });

    test('should return failure when data source call fails', () async {
      // arrange
      final tFailure = Failure(
        message: "",
        statusCode: ResponseCode.badRequest,
      );
      when(
        mockDataSource.deleteReminders(any),
      ).thenAnswer((_) async => Left(tFailure));

      // act
      final result = await repository.deleteReminders(tIds);

      // assert
      expect(result, equals(Left(tFailure)));
      verify(mockDataSource.deleteReminders(tIds));
    });
  });

  group('getSummary', () {
    final tDate = DateTime(2024, 1, 1);
    final tSummary = ReminderSummaryModel(completed: 1, total: 2, ongoing: 3);

    test(
      'should return summary when data source call is successful with date',
      () async {
        // arrange
        when(
          mockDataSource.getSummary(date: anyNamed('date')),
        ).thenAnswer((_) async => Right(tSummary));

        // act
        final result = await repository.getSummary(date: tDate);

        // assert
        expect(result, equals(Right(tSummary)));
        verify(mockDataSource.getSummary(date: tDate));
        verifyNoMoreInteractions(mockDataSource);
      },
    );

    test(
      'should return summary when data source call is successful without date',
      () async {
        // arrange
        when(
          mockDataSource.getSummary(date: anyNamed('date')),
        ).thenAnswer((_) async => Right(tSummary));

        // act
        final result = await repository.getSummary();

        // assert
        expect(result, equals(Right(tSummary)));
        verify(mockDataSource.getSummary(date: null));
      },
    );

    test('should return failure when data source call fails', () async {
      // arrange
      final tFailure = Failure(
        message: "",
        statusCode: ResponseCode.badRequest,
      );
      when(
        mockDataSource.getSummary(date: anyNamed('date')),
      ).thenAnswer((_) async => Left(tFailure));

      // act
      final result = await repository.getSummary(date: tDate);

      // assert
      expect(result, equals(Left(tFailure)));
      verify(mockDataSource.getSummary(date: tDate));
    });
  });
}

#[[
This source file is part of the Swift Atomics Open Source Project

Copyright (c) 2021 - 2023 Apple Inc. and the Swift project authors
Licensed under Apache License v2.0 with Runtime Library Exception

See https://swift.org/LICENSE.txt for license information
#]]

if(NOT CMAKE_SYSTEM_NAME STREQUAL Darwin) # FIXME Hook this up on Darwin
  find_package(dispatch CONFIG)
  find_package(Foundation CONFIG)
  find_package(XCTest CONFIG)

  add_executable(AtomicsTestBundle
    AtomicsTests/main.swift
    AtomicsTests/AtomicLazyReference.swift
    AtomicsTests/Basics/BasicTestSupport.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicBoolTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicDoubleWordTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicInt16Tests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicInt32Tests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicInt64Tests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicInt8Tests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicIntTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicMutablePointerTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicMutableRawPointerTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicOptionalMutablePointerTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicOptionalMutableRawPointerTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicOptionalPointerTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicOptionalRawPointerTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicOptionalRawRepresentableTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicOptionalReferenceTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicOptionalUnmanagedTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicPointerTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicRawPointerTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicRawRepresentableTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicReferenceTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicUInt16Tests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicUInt32Tests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicUInt64Tests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicUInt8Tests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicUIntTests.swift
    AtomicsTests/Basics/autogenerated/BasicAtomicUnmanagedTests.swift
    AtomicsTests/DoubleWord.swift
    AtomicsTests/LifetimeTracked.swift
    AtomicsTests/LockFreeQueue.swift
    AtomicsTests/LockFreeSingleConsumerStack.swift
    AtomicsTests/StrongReferenceRace.swift
    AtomicsTests/StrongReferenceShuffle.swift
    AtomicsTests/StrongReferenceSubclass.swift)

  target_compile_options(AtomicsTestBundle PRIVATE "-DMANUAL_TEST_DISCOVERY")

  target_link_libraries(AtomicsTestBundle PRIVATE
    Atomics
    XCTest
    dispatch
    Foundation)
  
  add_test(NAME SwiftAtomics
    COMMAND AtomicsTestBundle)
endif()

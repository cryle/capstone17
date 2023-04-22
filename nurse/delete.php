<?php
session_start();

if (!isset($_SESSION['username']) || $_SESSION['role'] !== 'nurse') {
    header('Location: ../index.php');
    exit();
}
include "../auth/conn.php";

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "DELETE FROM patient_record WHERE id_no = $id";
    if (mysqli_query($conn, $sql)) {
        echo "Deleted Record";
        header("Location: ./patientrecords.php");
    }
}

if (isset($_GET['f_id'])) {
    $f_id = $_GET['f_id'];
    $id_no = $_GET['id_no'];

    $sql = "DELETE FROM findings WHERE f_id = $f_id";
    if (mysqli_query($conn, $sql)) {
        echo "Deleted Record";
        header("Location: ./viewpatient.php?id=$id_no");
    }
}
@foreach ($groups as $index => $group)
    <div class="card mb-3">
        <div class="card-body">
            <h5 class="card-title">Kelompok {{ $index + 1 }}</h5>
            <ul>
                @foreach ($group as $member)
                    <li>{{ $member->nama_lengkap }}</li>
                @endforeach
            </ul>
        </div>
    </div>
@endforeach

@if ($groups->isEmpty())
    <p>Tidak ada siswa yang bisa dikelompokkan.</p>
@endif

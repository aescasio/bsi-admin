@extends('layouts.app')

@section('content')
    <section class="content-header">
        <h1 class="pull-left">Profiles</h1>
        <h1 class="pull-right">
           <a class="btn btn-primary pull-right" style="margin-top: -10px;margin-bottom: 5px" href="{!! route('profiles.edit', auth()->id()) !!}">Edit</a>
        </h1>
    </section>
    <div class="content">
        <div class="clearfix"></div>

        @include('flash::message')

        <div class="clearfix"></div>
        <div class="box box-primary">
            <div class="box-body">
                    {{--@include('profiles.table')--}}
                            <!-- Id Field -->
                <div class="pull-left image">
                    <img src="{{ Storage::disk('local')->url('/avatars/'.auth()->id().'/avatar.' . $profile['avatar'], 'Contents')  }}" class="img-circle"
                         alt="User Image"/>
                </div>

                <!-- Name Field -->
                <div class="form-group control-label">
                    {!! Form::label('name', 'Name:') !!}
                    <p>{!! $profile['name'] !!}</p>
                </div>

                <div class="form-group control-label">
                    {!! Form::label('id', 'Id:') !!}
                    <p>{!! $profile['email'] !!}</p>
                </div>
            </div>
        </div>
    </div>
@endsection


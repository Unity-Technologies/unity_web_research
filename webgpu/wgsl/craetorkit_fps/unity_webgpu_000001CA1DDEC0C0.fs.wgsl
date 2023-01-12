struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraInvProjection : mat4x4<f32>,
  x_Test_TexelSize : vec4<f32>,
  x_ViewMatrix : mat4x4<f32>,
  x_ScreenSpaceProjectionMatrix : mat4x4<f32>,
  x_Params : vec4<f32>,
  x_Params2 : vec4<f32>,
}

@group(0) @binding(1) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraGBufferTexture2 : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_72 : PGlobals;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(5) var sampler_Noise : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat27 : f32;
  var u_xlatb27 : bool;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat28 : f32;
  var x_245 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat9 : f32;
  var x_408 : vec4<f32>;
  var u_xlati9 : i32;
  var u_xlati27 : i32;
  var u_xlat18 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlati8 : i32;
  var u_xlatb1 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlatb10 : bool;
  var x_602 : f32;
  var x_613 : vec2<f32>;
  var u_xlatb8 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, x_23);
  u_xlat0 = x_24;
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat27 = dot(x_27, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_34 : f32 = u_xlat27;
  u_xlatb27 = (x_34 == 0.0f);
  let x_37 : bool = u_xlatb27;
  if (x_37) {
    SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
    return;
  }
  let x_50 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, x_50, 0.0f);
  u_xlat27 = x_51.x;
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  let x_62 : vec2<f32> = ((x_56 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_62.x, x_62.y, x_63.z, x_63.w);
  let x_67 : f32 = u_xlat1.x;
  let x_78 : f32 = x_72.unity_CameraInvProjection[0i].x;
  u_xlat2.x = (x_67 * x_78);
  let x_83 : f32 = u_xlat1.y;
  let x_86 : f32 = x_72.unity_CameraInvProjection[1i].y;
  u_xlat2.y = (x_83 * x_86);
  let x_89 : f32 = u_xlat27;
  let x_93 : f32 = x_72.unity_CameraInvProjection[2i].z;
  let x_96 : f32 = x_72.unity_CameraInvProjection[3i].z;
  u_xlat2.z = ((x_89 * x_93) + x_96);
  let x_100 : f32 = x_72.x_ZBufferParams.z;
  let x_101 : f32 = u_xlat27;
  let x_105 : f32 = x_72.x_ZBufferParams.w;
  u_xlat27 = ((x_100 * x_101) + x_105);
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : f32 = u_xlat27;
  let x_111 : vec3<f32> = (vec3<f32>(x_107.x, x_107.y, x_107.z) / vec3<f32>(x_109, x_109, x_109));
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_115 : f32 = u_xlat1.z;
  let x_118 : f32 = x_72.x_Params.z;
  u_xlatb27 = (x_115 < -(x_118));
  let x_121 : bool = u_xlatb27;
  if (x_121) {
    SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
    return;
  }
  let x_125 : vec4<f32> = u_xlat0;
  let x_130 : vec3<f32> = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat0;
  let x_138 : vec4<f32> = x_72.x_ViewMatrix[1i];
  let x_140 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_144 : vec4<f32> = x_72.x_ViewMatrix[0i];
  let x_146 : vec4<f32> = u_xlat0;
  let x_149 : vec4<f32> = u_xlat2;
  let x_151 : vec3<f32> = ((vec3<f32>(x_144.x, x_144.y, x_144.z) * vec3<f32>(x_146.x, x_146.x, x_146.x)) + vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_151.x, x_151.y, x_152.z, x_151.z);
  let x_155 : vec4<f32> = x_72.x_ViewMatrix[2i];
  let x_157 : vec4<f32> = u_xlat0;
  let x_160 : vec4<f32> = u_xlat0;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.z, x_157.z, x_157.z)) + vec3<f32>(x_160.x, x_160.y, x_160.w));
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat27 = dot(vec3<f32>(x_165.x, x_165.y, x_165.z), vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_170);
  let x_172 : f32 = u_xlat27;
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec3<f32> = (vec3<f32>(x_172, x_172, x_172) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat2;
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat27 = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : f32 = u_xlat27;
  let x_185 : f32 = u_xlat27;
  u_xlat27 = (x_184 + x_185);
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : f32 = u_xlat27;
  let x_193 : vec4<f32> = u_xlat2;
  let x_195 : vec3<f32> = ((vec3<f32>(x_187.x, x_187.y, x_187.z) * -(vec3<f32>(x_189, x_189, x_189))) + vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat27 = dot(vec3<f32>(x_198.x, x_198.y, x_198.z), vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_203);
  let x_205 : f32 = u_xlat27;
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec3<f32> = (vec3<f32>(x_205, x_205, x_205) * vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : f32 = u_xlat0.z;
  u_xlatb27 = (0.0f < x_213);
  let x_215 : bool = u_xlatb27;
  if (x_215) {
    SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
    return;
  }
  let x_220 : f32 = u_xlat0.z;
  let x_222 : f32 = x_72.x_Params.z;
  let x_225 : f32 = u_xlat1.z;
  u_xlat27 = ((x_220 * x_222) + x_225);
  let x_228 : f32 = x_72.x_ProjectionParams.y;
  let x_230 : f32 = u_xlat27;
  u_xlatb27 = (-(x_228) < x_230);
  let x_234 : f32 = u_xlat1.z;
  let x_237 : f32 = x_72.x_ProjectionParams.y;
  u_xlat28 = (-(x_234) + -(x_237));
  let x_240 : f32 = u_xlat28;
  let x_242 : f32 = u_xlat0.z;
  u_xlat28 = (x_240 / x_242);
  let x_244 : bool = u_xlatb27;
  if (x_244) {
    let x_248 : f32 = u_xlat28;
    x_245 = x_248;
  } else {
    let x_251 : f32 = x_72.x_Params.z;
    x_245 = x_251;
  }
  let x_252 : f32 = x_245;
  u_xlat27 = x_252;
  let x_253 : vec4<f32> = u_xlat0;
  let x_255 : f32 = u_xlat27;
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : vec3<f32> = ((vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_255, x_255, x_255)) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat1;
  let x_267 : vec4<f32> = x_72.x_ScreenSpaceProjectionMatrix[2i];
  let x_269 : vec3<f32> = (vec3<f32>(x_263.z, x_263.z, x_263.z) * vec3<f32>(x_267.x, x_267.y, x_267.w));
  let x_270 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_274 : f32 = x_72.x_ScreenSpaceProjectionMatrix[0i].x;
  let x_276 : f32 = u_xlat1.x;
  let x_279 : f32 = u_xlat2.x;
  u_xlat3.z = ((x_274 * x_276) + x_279);
  let x_283 : f32 = x_72.x_ScreenSpaceProjectionMatrix[1i].y;
  let x_285 : f32 = u_xlat1.y;
  let x_288 : f32 = u_xlat2.y;
  u_xlat3.w = ((x_283 * x_285) + x_288);
  let x_291 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = x_72.x_ScreenSpaceProjectionMatrix[2i];
  let x_296 : vec3<f32> = (vec3<f32>(x_291.z, x_291.z, x_291.z) * vec3<f32>(x_294.x, x_294.y, x_294.w));
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_296.z);
  let x_300 : f32 = x_72.x_ScreenSpaceProjectionMatrix[0i].x;
  let x_302 : f32 = u_xlat0.x;
  let x_305 : f32 = u_xlat1.x;
  u_xlat3.x = ((x_300 * x_302) + x_305);
  let x_309 : f32 = x_72.x_ScreenSpaceProjectionMatrix[1i].y;
  let x_311 : f32 = u_xlat0.y;
  let x_314 : f32 = u_xlat1.y;
  u_xlat3.y = ((x_309 * x_311) + x_314);
  let x_318 : vec4<f32> = u_xlat2;
  let x_319 : vec2<f32> = vec2<f32>(x_318.z, x_318.z);
  let x_323 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_319.x, x_319.y));
  let x_324 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_324.x, x_324.y, x_323.x, x_323.y);
  let x_326 : vec4<f32> = u_xlat1;
  let x_327 : vec2<f32> = vec2<f32>(x_326.w, x_326.w);
  let x_331 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_327.x, x_327.y));
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
  let x_336 : f32 = u_xlat1.z;
  let x_338 : f32 = u_xlat2.w;
  u_xlat4.w = (x_336 * x_338);
  let x_342 : vec4<f32> = u_xlat2;
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_342.w, x_342.z, x_342.x, x_342.y) * vec4<f32>(x_344.w, x_344.z, x_344.x, x_344.y));
  let x_347 : vec4<f32> = u_xlat3;
  let x_349 : vec4<f32> = u_xlat2;
  let x_352 : vec4<f32> = u_xlat5;
  let x_355 : vec2<f32> = ((vec2<f32>(x_347.z, x_347.w) * vec2<f32>(x_349.z, x_349.w)) + -(vec2<f32>(x_352.z, x_352.w)));
  let x_356 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_355.x, x_355.y, x_356.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_358.x, x_358.y), vec2<f32>(x_360.x, x_360.y));
  let x_367 : f32 = u_xlat0.x;
  u_xlatb0 = (0.0001f >= x_367);
  let x_369 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_369);
  let x_375 : f32 = x_72.x_Test_TexelSize.y;
  let x_377 : f32 = x_72.x_Test_TexelSize.x;
  u_xlat9 = max(x_375, x_377);
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : f32 = u_xlat9;
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec2<f32> = ((vec2<f32>(x_379.x, x_379.x) * vec2<f32>(x_381, x_381)) + vec2<f32>(x_384.w, x_384.z));
  let x_387 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_386.x, x_386.y, x_387.z, x_387.w);
  let x_389 : vec4<f32> = u_xlat3;
  let x_392 : vec4<f32> = u_xlat2;
  let x_395 : vec4<f32> = u_xlat0;
  let x_397 : vec2<f32> = ((-(vec2<f32>(x_389.w, x_389.z)) * vec2<f32>(x_392.w, x_392.z)) + vec2<f32>(x_395.x, x_395.y));
  let x_398 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_397.x, x_397.y);
  let x_401 : f32 = u_xlat5.w;
  let x_404 : f32 = u_xlat5.z;
  u_xlatb0 = (abs(x_401) < abs(x_404));
  let x_407 : bool = u_xlatb0;
  if (x_407) {
    let x_411 : vec4<f32> = u_xlat5;
    x_408 = x_411;
  } else {
    let x_413 : vec4<f32> = u_xlat5;
    x_408 = vec4<f32>(x_413.y, x_413.x, x_413.w, x_413.z);
  }
  let x_415 : vec4<f32> = x_408;
  u_xlat3 = x_415;
  let x_419 : f32 = u_xlat3.z;
  u_xlati9 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_419)));
  let x_426 : f32 = u_xlat3.z;
  u_xlati27 = bitcast<i32>(select(0u, 4294967295u, (x_426 < 0.0f)));
  let x_430 : i32 = u_xlati9;
  let x_432 : i32 = u_xlati27;
  u_xlati9 = (-(x_430) + x_432);
  let x_434 : i32 = u_xlati9;
  u_xlat5.x = f32(x_434);
  let x_438 : f32 = u_xlat5.x;
  let x_440 : f32 = u_xlat3.z;
  u_xlat9 = (x_438 / x_440);
  let x_445 : f32 = u_xlat0.z;
  let x_447 : f32 = u_xlat2.y;
  let x_450 : f32 = u_xlat4.w;
  u_xlat18.x = ((x_445 * x_447) + -(x_450));
  let x_454 : f32 = u_xlat9;
  let x_456 : f32 = u_xlat18.x;
  u_xlat5.w = (x_454 * x_456);
  let x_459 : f32 = u_xlat9;
  let x_461 : f32 = u_xlat3.w;
  u_xlat5.y = (x_459 * x_461);
  let x_465 : f32 = u_xlat2.w;
  let x_468 : f32 = u_xlat2.y;
  u_xlat18.x = (-(x_465) + x_468);
  let x_471 : f32 = u_xlat9;
  let x_473 : f32 = u_xlat18.x;
  u_xlat5.z = (x_471 * x_473);
  let x_477 : f32 = u_xlat1.z;
  u_xlat9 = (x_477 * -0.01f);
  let x_480 : f32 = u_xlat9;
  u_xlat9 = min(x_480, 1.0f);
  let x_482 : f32 = u_xlat9;
  u_xlat9 = (-(x_482) + 1.0f);
  let x_485 : vec2<f32> = vs_TEXCOORD0;
  let x_488 : vec4<f32> = x_72.x_Params2;
  let x_490 : vec2<f32> = (x_485 * vec2<f32>(x_488.y, x_488.y));
  let x_491 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_494 : f32 = u_xlat1.y;
  let x_496 : f32 = x_72.x_Params2.x;
  u_xlat1.z = (x_494 * x_496);
  let x_499 : vec4<f32> = u_xlat1;
  let x_503 : vec3<f32> = x_72.x_WorldSpaceCameraPos;
  u_xlat18 = (vec2<f32>(x_499.x, x_499.z) + vec2<f32>(x_503.x, x_503.z));
  let x_511 : vec2<f32> = u_xlat18;
  let x_512 : vec4<f32> = textureSampleLevel(x_Noise, sampler_Noise, x_511, 0.0f);
  u_xlat18.x = x_512.w;
  let x_515 : f32 = u_xlat9;
  let x_517 : f32 = x_72.x_Params2.z;
  u_xlat9 = (x_515 * x_517);
  let x_519 : f32 = u_xlat9;
  let x_521 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec4<f32>(x_519, x_519, x_519, x_519) * x_521);
  let x_523 : vec4<f32> = u_xlat3;
  let x_524 : vec2<f32> = vec2<f32>(x_523.x, x_523.y);
  let x_525 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
  let x_528 : f32 = u_xlat2.w;
  u_xlat4.z = x_528;
  let x_530 : vec4<f32> = u_xlat1;
  let x_531 : vec2<f32> = u_xlat18;
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_530 * vec4<f32>(x_531.x, x_531.x, x_531.x, x_531.x)) + x_534);
  u_xlat3.x = bitcast<f32>(-1i);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  let x_544 : vec4<f32> = u_xlat2;
  u_xlat6 = x_544;
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlat7.w = 0.0f;
  u_xlat18.x = 0.0f;
  u_xlati27 = 0i;
  u_xlati8 = 0i;
  loop {
    if (true) {
    } else {
      break;
    }
    let x_558 : i32 = u_xlati27;
    u_xlat1.x = f32(x_558);
    let x_563 : f32 = u_xlat1.x;
    let x_565 : f32 = x_72.x_Params2.w;
    u_xlatb1 = (x_563 >= x_565);
    u_xlat8.x = 0.0f;
    let x_569 : bool = u_xlatb1;
    if (x_569) {
      break;
    }
    let x_573 : vec4<f32> = u_xlat5;
    let x_574 : f32 = u_xlat9;
    let x_577 : vec4<f32> = u_xlat6;
    u_xlat6 = ((x_573 * vec4<f32>(x_574, x_574, x_574, x_574)) + x_577);
    let x_579 : vec4<f32> = u_xlat1;
    let x_584 : vec4<f32> = u_xlat6;
    let x_586 : vec2<f32> = ((vec2<f32>(x_579.w, x_579.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_584.w, x_584.z));
    let x_587 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
    let x_590 : f32 = u_xlat1.x;
    let x_592 : f32 = u_xlat1.y;
    u_xlat1.x = (x_590 / x_592);
    let x_597 : f32 = u_xlat18.x;
    let x_599 : f32 = u_xlat1.x;
    u_xlatb10 = (x_597 < x_599);
    let x_601 : bool = u_xlatb10;
    if (x_601) {
      let x_606 : f32 = u_xlat18.x;
      x_602 = x_606;
    } else {
      let x_609 : f32 = u_xlat1.x;
      x_602 = x_609;
    }
    let x_610 : f32 = x_602;
    u_xlat18.x = x_610;
    let x_612 : bool = u_xlatb0;
    if (x_612) {
      let x_616 : vec4<f32> = u_xlat6;
      x_613 = vec2<f32>(x_616.y, x_616.x);
    } else {
      let x_619 : vec4<f32> = u_xlat6;
      x_613 = vec2<f32>(x_619.x, x_619.y);
    }
    let x_621 : vec2<f32> = x_613;
    let x_622 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
    let x_624 : vec4<f32> = u_xlat1;
    let x_627 : vec4<f32> = x_72.x_Test_TexelSize;
    let x_629 : vec2<f32> = (vec2<f32>(x_624.x, x_624.y) * vec2<f32>(x_627.x, x_627.y));
    let x_630 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_630.x, x_629.x, x_629.y, x_630.w);
    let x_635 : vec4<f32> = u_xlat3;
    let x_637 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_635.y, x_635.z), 0.0f);
    u_xlat1.x = x_637.x;
    let x_641 : f32 = x_72.x_ZBufferParams.z;
    let x_643 : f32 = u_xlat1.x;
    let x_646 : f32 = x_72.x_ZBufferParams.w;
    u_xlat1.x = ((x_641 * x_643) + x_646);
    let x_650 : f32 = u_xlat1.x;
    u_xlat1.x = (1.0f / x_650);
    let x_654 : f32 = u_xlat18.x;
    let x_656 : f32 = u_xlat1.x;
    u_xlatb1 = (x_654 < -(x_656));
    let x_659 : i32 = u_xlati27;
    u_xlat3.w = bitcast<f32>((x_659 + 1i));
    let x_663 : bool = u_xlatb1;
    let x_664 : vec4<f32> = u_xlat3;
    u_xlat8 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_664, vec4<bool>(x_663, x_663, x_663, x_663));
    let x_668 : vec4<f32> = u_xlat8;
    u_xlat4 = x_668;
    let x_669 : vec4<f32> = u_xlat8;
    u_xlat7 = x_669;
    let x_670 : bool = u_xlatb1;
    if (x_670) {
      break;
    }
    let x_675 : bool = u_xlatb1;
    u_xlatb8 = x_675;
    let x_676 : i32 = u_xlati27;
    u_xlati27 = (x_676 + 1i);
    u_xlat4.x = 0.0f;
    u_xlat4.y = 0.0f;
    u_xlat4.z = 0.0f;
    u_xlat4.w = 0.0f;
    u_xlat7.x = 0.0f;
    u_xlat7.y = 0.0f;
    u_xlat7.z = 0.0f;
    u_xlat7.w = 0.0f;
  }
  let x_687 : f32 = u_xlat8.x;
  let x_689 : bool = (bitcast<i32>(x_687) != 0i);
  let x_690 : vec4<f32> = u_xlat4;
  let x_691 : vec4<f32> = u_xlat7;
  u_xlat0 = select(x_691, x_690, vec4<bool>(x_689, x_689, x_689, x_689));
  let x_695 : f32 = u_xlat0.w;
  u_xlat27 = f32(bitcast<i32>(x_695));
  let x_698 : f32 = u_xlat27;
  let x_700 : f32 = x_72.x_Params2.w;
  SV_Target0.z = (x_698 / x_700);
  let x_705 : f32 = u_xlat0.x;
  SV_Target0.w = bitcast<f32>((bitcast<u32>(x_705) & 1065353216u));
  let x_711 : vec4<f32> = u_xlat0;
  let x_712 : vec2<f32> = vec2<f32>(x_711.y, x_711.z);
  let x_713 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


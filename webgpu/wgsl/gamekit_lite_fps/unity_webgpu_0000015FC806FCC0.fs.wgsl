struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  x_Test_TexelSize : vec4<f32>,
  x_ViewMatrix : mat4x4<f32>,
  x_InverseProjectionMatrix : mat4x4<f32>,
  x_ScreenSpaceProjectionMatrix : mat4x4<f32>,
  x_Params : vec4<f32>,
  x_Params2 : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(5) var sampler_CameraGBufferTexture2 : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlatb27 : bool;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_72 : PGlobals;

var<private> u_xlat28 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat9 : f32;

var<private> u_xlati9 : i32;

var<private> u_xlati27 : i32;

var<private> u_xlat18 : vec2<f32>;

@group(0) @binding(3) var x_Noise : texture_2d<f32>;

@group(0) @binding(6) var sampler_Noise : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlati8 : i32;

var<private> u_xlatb1 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> u_xlatb8 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_242 : f32;
  var x_406 : vec4<f32>;
  var x_600 : f32;
  var x_612 : vec2<f32>;
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
  let x_66 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = x_72.x_InverseProjectionMatrix[1i];
  u_xlat2 = (vec4<f32>(x_66.y, x_66.y, x_66.y, x_66.y) * x_78);
  let x_82 : vec4<f32> = x_72.x_InverseProjectionMatrix[0i];
  let x_83 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_82 * vec4<f32>(x_83.x, x_83.x, x_83.x, x_83.x)) + x_86);
  let x_90 : vec4<f32> = x_72.x_InverseProjectionMatrix[2i];
  let x_91 : f32 = u_xlat27;
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_90 * vec4<f32>(x_91, x_91, x_91, x_91)) + x_94);
  let x_96 : vec4<f32> = u_xlat1;
  let x_99 : vec4<f32> = x_72.x_InverseProjectionMatrix[3i];
  u_xlat1 = (x_96 + x_99);
  let x_101 : vec4<f32> = u_xlat1;
  let x_103 : vec4<f32> = u_xlat1;
  let x_105 : vec3<f32> = (vec3<f32>(x_101.x, x_101.y, x_101.z) / vec3<f32>(x_103.w, x_103.w, x_103.w));
  let x_106 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_110 : f32 = u_xlat1.z;
  let x_114 : f32 = x_72.x_Params.z;
  u_xlatb27 = (x_110 < -(x_114));
  let x_117 : bool = u_xlatb27;
  if (x_117) {
    SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
    return;
  }
  let x_121 : vec4<f32> = u_xlat0;
  let x_126 : vec3<f32> = ((vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_127 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
  let x_129 : vec4<f32> = u_xlat0;
  let x_133 : vec4<f32> = x_72.x_ViewMatrix[1i];
  let x_135 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = x_72.x_ViewMatrix[0i];
  let x_141 : vec4<f32> = u_xlat0;
  let x_144 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_146.x, x_146.y, x_147.z, x_146.z);
  let x_150 : vec4<f32> = x_72.x_ViewMatrix[2i];
  let x_152 : vec4<f32> = u_xlat0;
  let x_155 : vec4<f32> = u_xlat0;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.z, x_152.z, x_152.z)) + vec3<f32>(x_155.x, x_155.y, x_155.w));
  let x_158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_160 : vec4<f32> = u_xlat1;
  let x_162 : vec4<f32> = u_xlat1;
  u_xlat27 = dot(vec3<f32>(x_160.x, x_160.y, x_160.z), vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_165 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_165);
  let x_167 : f32 = u_xlat27;
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec3<f32> = (vec3<f32>(x_167, x_167, x_167) * vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat0;
  u_xlat27 = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : f32 = u_xlat27;
  let x_180 : f32 = u_xlat27;
  u_xlat27 = (x_179 + x_180);
  let x_182 : vec4<f32> = u_xlat0;
  let x_184 : f32 = u_xlat27;
  let x_188 : vec4<f32> = u_xlat2;
  let x_190 : vec3<f32> = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * -(vec3<f32>(x_184, x_184, x_184))) + vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat27 = dot(vec3<f32>(x_193.x, x_193.y, x_193.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_198);
  let x_200 : f32 = u_xlat27;
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = (vec3<f32>(x_200, x_200, x_200) * vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_208 : f32 = u_xlat0.z;
  u_xlatb27 = (0.0f < x_208);
  let x_210 : bool = u_xlatb27;
  if (x_210) {
    SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
    return;
  }
  let x_215 : f32 = u_xlat0.z;
  let x_217 : f32 = x_72.x_Params.z;
  let x_220 : f32 = u_xlat1.z;
  u_xlat27 = ((x_215 * x_217) + x_220);
  let x_224 : f32 = x_72.x_ProjectionParams.y;
  let x_226 : f32 = u_xlat27;
  u_xlatb27 = (-(x_224) < x_226);
  let x_230 : f32 = u_xlat1.z;
  let x_233 : f32 = x_72.x_ProjectionParams.y;
  u_xlat28 = (-(x_230) + -(x_233));
  let x_236 : f32 = u_xlat28;
  let x_238 : f32 = u_xlat0.z;
  u_xlat28 = (x_236 / x_238);
  let x_240 : bool = u_xlatb27;
  if (x_240) {
    let x_245 : f32 = u_xlat28;
    x_242 = x_245;
  } else {
    let x_248 : f32 = x_72.x_Params.z;
    x_242 = x_248;
  }
  let x_249 : f32 = x_242;
  u_xlat27 = x_249;
  let x_250 : vec4<f32> = u_xlat0;
  let x_252 : f32 = u_xlat27;
  let x_255 : vec4<f32> = u_xlat1;
  let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252, x_252, x_252)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat1;
  let x_264 : vec4<f32> = x_72.x_ScreenSpaceProjectionMatrix[2i];
  let x_266 : vec3<f32> = (vec3<f32>(x_260.z, x_260.z, x_260.z) * vec3<f32>(x_264.x, x_264.y, x_264.w));
  let x_267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_271 : f32 = x_72.x_ScreenSpaceProjectionMatrix[0i].x;
  let x_273 : f32 = u_xlat1.x;
  let x_276 : f32 = u_xlat2.x;
  u_xlat3.z = ((x_271 * x_273) + x_276);
  let x_280 : f32 = x_72.x_ScreenSpaceProjectionMatrix[1i].y;
  let x_282 : f32 = u_xlat1.y;
  let x_285 : f32 = u_xlat2.y;
  u_xlat3.w = ((x_280 * x_282) + x_285);
  let x_289 : vec4<f32> = u_xlat0;
  let x_292 : vec4<f32> = x_72.x_ScreenSpaceProjectionMatrix[2i];
  let x_294 : vec3<f32> = (vec3<f32>(x_289.z, x_289.z, x_289.z) * vec3<f32>(x_292.x, x_292.y, x_292.w));
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_294.x, x_294.y, x_295.z, x_294.z);
  let x_298 : f32 = x_72.x_ScreenSpaceProjectionMatrix[0i].x;
  let x_300 : f32 = u_xlat0.x;
  let x_303 : f32 = u_xlat1.x;
  u_xlat3.x = ((x_298 * x_300) + x_303);
  let x_307 : f32 = x_72.x_ScreenSpaceProjectionMatrix[1i].y;
  let x_309 : f32 = u_xlat0.y;
  let x_312 : f32 = u_xlat1.y;
  u_xlat3.y = ((x_307 * x_309) + x_312);
  let x_316 : vec4<f32> = u_xlat2;
  let x_317 : vec2<f32> = vec2<f32>(x_316.z, x_316.z);
  let x_321 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_317.x, x_317.y));
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_322.x, x_322.y, x_321.x, x_321.y);
  let x_324 : vec4<f32> = u_xlat1;
  let x_325 : vec2<f32> = vec2<f32>(x_324.w, x_324.w);
  let x_329 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_325.x, x_325.y));
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_330.z, x_330.w);
  let x_334 : f32 = u_xlat1.z;
  let x_336 : f32 = u_xlat2.w;
  u_xlat4.w = (x_334 * x_336);
  let x_340 : vec4<f32> = u_xlat2;
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat5 = (vec4<f32>(x_340.w, x_340.z, x_340.x, x_340.y) * vec4<f32>(x_342.w, x_342.z, x_342.x, x_342.y));
  let x_345 : vec4<f32> = u_xlat3;
  let x_347 : vec4<f32> = u_xlat2;
  let x_350 : vec4<f32> = u_xlat5;
  let x_353 : vec2<f32> = ((vec2<f32>(x_345.z, x_345.w) * vec2<f32>(x_347.z, x_347.w)) + -(vec2<f32>(x_350.z, x_350.w)));
  let x_354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_353.x, x_353.y, x_354.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat0;
  let x_358 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_356.x, x_356.y), vec2<f32>(x_358.x, x_358.y));
  let x_365 : f32 = u_xlat0.x;
  u_xlatb0 = (0.0001f >= x_365);
  let x_367 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_367);
  let x_372 : f32 = x_72.x_Test_TexelSize.y;
  let x_374 : f32 = x_72.x_Test_TexelSize.x;
  u_xlat9 = max(x_372, x_374);
  let x_376 : vec4<f32> = u_xlat0;
  let x_378 : f32 = u_xlat9;
  let x_381 : vec4<f32> = u_xlat5;
  let x_383 : vec2<f32> = ((vec2<f32>(x_376.x, x_376.x) * vec2<f32>(x_378, x_378)) + vec2<f32>(x_381.w, x_381.z));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat3;
  let x_389 : vec4<f32> = u_xlat2;
  let x_392 : vec4<f32> = u_xlat0;
  let x_394 : vec2<f32> = ((-(vec2<f32>(x_386.w, x_386.z)) * vec2<f32>(x_389.w, x_389.z)) + vec2<f32>(x_392.x, x_392.y));
  let x_395 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_395.x, x_395.y, x_394.x, x_394.y);
  let x_398 : f32 = u_xlat5.w;
  let x_401 : f32 = u_xlat5.z;
  u_xlatb0 = (abs(x_398) < abs(x_401));
  let x_404 : bool = u_xlatb0;
  if (x_404) {
    let x_409 : vec4<f32> = u_xlat5;
    x_406 = x_409;
  } else {
    let x_411 : vec4<f32> = u_xlat5;
    x_406 = vec4<f32>(x_411.y, x_411.x, x_411.w, x_411.z);
  }
  let x_413 : vec4<f32> = x_406;
  u_xlat3 = x_413;
  let x_417 : f32 = u_xlat3.z;
  u_xlati9 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_417)));
  let x_424 : f32 = u_xlat3.z;
  u_xlati27 = bitcast<i32>(select(0u, 4294967295u, (x_424 < 0.0f)));
  let x_428 : i32 = u_xlati9;
  let x_430 : i32 = u_xlati27;
  u_xlati9 = (-(x_428) + x_430);
  let x_432 : i32 = u_xlati9;
  u_xlat5.x = f32(x_432);
  let x_436 : f32 = u_xlat5.x;
  let x_438 : f32 = u_xlat3.z;
  u_xlat9 = (x_436 / x_438);
  let x_443 : f32 = u_xlat0.z;
  let x_445 : f32 = u_xlat2.y;
  let x_448 : f32 = u_xlat4.w;
  u_xlat18.x = ((x_443 * x_445) + -(x_448));
  let x_452 : f32 = u_xlat9;
  let x_454 : f32 = u_xlat18.x;
  u_xlat5.w = (x_452 * x_454);
  let x_457 : f32 = u_xlat9;
  let x_459 : f32 = u_xlat3.w;
  u_xlat5.y = (x_457 * x_459);
  let x_463 : f32 = u_xlat2.w;
  let x_466 : f32 = u_xlat2.y;
  u_xlat18.x = (-(x_463) + x_466);
  let x_469 : f32 = u_xlat9;
  let x_471 : f32 = u_xlat18.x;
  u_xlat5.z = (x_469 * x_471);
  let x_475 : f32 = u_xlat1.z;
  u_xlat9 = (x_475 * -0.01f);
  let x_478 : f32 = u_xlat9;
  u_xlat9 = min(x_478, 1.0f);
  let x_480 : f32 = u_xlat9;
  u_xlat9 = (-(x_480) + 1.0f);
  let x_483 : vec2<f32> = vs_TEXCOORD0;
  let x_486 : vec4<f32> = x_72.x_Params2;
  let x_488 : vec2<f32> = (x_483 * vec2<f32>(x_486.y, x_486.y));
  let x_489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
  let x_492 : f32 = u_xlat1.y;
  let x_494 : f32 = x_72.x_Params2.x;
  u_xlat1.z = (x_492 * x_494);
  let x_497 : vec4<f32> = u_xlat1;
  let x_501 : vec3<f32> = x_72.x_WorldSpaceCameraPos;
  u_xlat18 = (vec2<f32>(x_497.x, x_497.z) + vec2<f32>(x_501.x, x_501.z));
  let x_509 : vec2<f32> = u_xlat18;
  let x_510 : vec4<f32> = textureSampleLevel(x_Noise, sampler_Noise, x_509, 0.0f);
  u_xlat18.x = x_510.w;
  let x_513 : f32 = u_xlat9;
  let x_515 : f32 = x_72.x_Params2.z;
  u_xlat9 = (x_513 * x_515);
  let x_517 : f32 = u_xlat9;
  let x_519 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec4<f32>(x_517, x_517, x_517, x_517) * x_519);
  let x_521 : vec4<f32> = u_xlat3;
  let x_522 : vec2<f32> = vec2<f32>(x_521.x, x_521.y);
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
  let x_526 : f32 = u_xlat2.w;
  u_xlat4.z = x_526;
  let x_528 : vec4<f32> = u_xlat1;
  let x_529 : vec2<f32> = u_xlat18;
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_528 * vec4<f32>(x_529.x, x_529.x, x_529.x, x_529.x)) + x_532);
  u_xlat3.x = bitcast<f32>(-1i);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  let x_542 : vec4<f32> = u_xlat2;
  u_xlat6 = x_542;
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
    let x_556 : i32 = u_xlati27;
    u_xlat1.x = f32(x_556);
    let x_561 : f32 = u_xlat1.x;
    let x_563 : f32 = x_72.x_Params2.w;
    u_xlatb1 = (x_561 >= x_563);
    u_xlat8.x = 0.0f;
    let x_567 : bool = u_xlatb1;
    if (x_567) {
      break;
    }
    let x_571 : vec4<f32> = u_xlat5;
    let x_572 : f32 = u_xlat9;
    let x_575 : vec4<f32> = u_xlat6;
    u_xlat6 = ((x_571 * vec4<f32>(x_572, x_572, x_572, x_572)) + x_575);
    let x_577 : vec4<f32> = u_xlat1;
    let x_582 : vec4<f32> = u_xlat6;
    let x_584 : vec2<f32> = ((vec2<f32>(x_577.w, x_577.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_582.w, x_582.z));
    let x_585 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
    let x_588 : f32 = u_xlat1.x;
    let x_590 : f32 = u_xlat1.y;
    u_xlat1.x = (x_588 / x_590);
    let x_595 : f32 = u_xlat18.x;
    let x_597 : f32 = u_xlat1.x;
    u_xlatb10 = (x_595 < x_597);
    let x_599 : bool = u_xlatb10;
    if (x_599) {
      let x_604 : f32 = u_xlat18.x;
      x_600 = x_604;
    } else {
      let x_607 : f32 = u_xlat1.x;
      x_600 = x_607;
    }
    let x_608 : f32 = x_600;
    u_xlat18.x = x_608;
    let x_610 : bool = u_xlatb0;
    if (x_610) {
      let x_615 : vec4<f32> = u_xlat6;
      x_612 = vec2<f32>(x_615.y, x_615.x);
    } else {
      let x_618 : vec4<f32> = u_xlat6;
      x_612 = vec2<f32>(x_618.x, x_618.y);
    }
    let x_620 : vec2<f32> = x_612;
    let x_621 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
    let x_623 : vec4<f32> = u_xlat1;
    let x_626 : vec4<f32> = x_72.x_Test_TexelSize;
    let x_628 : vec2<f32> = (vec2<f32>(x_623.x, x_623.y) * vec2<f32>(x_626.x, x_626.y));
    let x_629 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_629.x, x_628.x, x_628.y, x_629.w);
    let x_634 : vec4<f32> = u_xlat3;
    let x_636 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_634.y, x_634.z), 0.0f);
    u_xlat1.x = x_636.x;
    let x_640 : f32 = x_72.x_ZBufferParams.z;
    let x_642 : f32 = u_xlat1.x;
    let x_645 : f32 = x_72.x_ZBufferParams.w;
    u_xlat1.x = ((x_640 * x_642) + x_645);
    let x_649 : f32 = u_xlat1.x;
    u_xlat1.x = (1.0f / x_649);
    let x_653 : f32 = u_xlat18.x;
    let x_655 : f32 = u_xlat1.x;
    u_xlatb1 = (x_653 < -(x_655));
    let x_658 : i32 = u_xlati27;
    u_xlat3.w = bitcast<f32>((x_658 + 1i));
    let x_662 : bool = u_xlatb1;
    let x_663 : vec4<f32> = u_xlat3;
    u_xlat8 = select(vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), x_663, vec4<bool>(x_662, x_662, x_662, x_662));
    let x_667 : vec4<f32> = u_xlat8;
    u_xlat4 = x_667;
    let x_668 : vec4<f32> = u_xlat8;
    u_xlat7 = x_668;
    let x_669 : bool = u_xlatb1;
    if (x_669) {
      break;
    }
    let x_674 : bool = u_xlatb1;
    u_xlatb8 = x_674;
    let x_675 : i32 = u_xlati27;
    u_xlati27 = (x_675 + 1i);
    u_xlat4.x = 0.0f;
    u_xlat4.y = 0.0f;
    u_xlat4.z = 0.0f;
    u_xlat4.w = 0.0f;
    u_xlat7.x = 0.0f;
    u_xlat7.y = 0.0f;
    u_xlat7.z = 0.0f;
    u_xlat7.w = 0.0f;
  }
  let x_686 : f32 = u_xlat8.x;
  let x_688 : bool = (bitcast<i32>(x_686) != 0i);
  let x_689 : vec4<f32> = u_xlat4;
  let x_690 : vec4<f32> = u_xlat7;
  u_xlat0 = select(x_690, x_689, vec4<bool>(x_688, x_688, x_688, x_688));
  let x_694 : f32 = u_xlat0.w;
  u_xlat27 = f32(bitcast<i32>(x_694));
  let x_697 : f32 = u_xlat27;
  let x_699 : f32 = x_72.x_Params2.w;
  SV_Target0.z = (x_697 / x_699);
  let x_704 : f32 = u_xlat0.x;
  SV_Target0.w = bitcast<f32>((bitcast<u32>(x_704) & 1065353216u));
  let x_710 : vec4<f32> = u_xlat0;
  let x_711 : vec2<f32> = vec2<f32>(x_710.y, x_710.z);
  let x_712 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
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


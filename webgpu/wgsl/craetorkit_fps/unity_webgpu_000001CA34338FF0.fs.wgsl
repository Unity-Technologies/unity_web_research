struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  unity_CameraInvProjection : mat4x4<f32>,
  x_InverseViewMatrix : mat4x4<f32>,
  x_Params : vec4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(6) var x_Resolve : texture_2d<f32>;

@group(0) @binding(10) var sampler_Resolve : sampler;

@group(0) @binding(2) var x_CameraReflectionsTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraReflectionsTexture : sampler;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlatb0 : bool;
  var u_xlatu0 : vec4<u32>;
  var u_xlat1 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat8 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat13 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat9 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD1;
  let x_43 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, x_41, 0.0f);
  u_xlat0.x = x_43.x;
  let x_56 : f32 = x_51.x_ZBufferParams.x;
  let x_58 : f32 = u_xlat0.x;
  let x_62 : f32 = x_51.x_ZBufferParams.y;
  u_xlat0.x = ((x_56 * x_58) + x_62);
  let x_66 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_66);
  let x_74 : f32 = u_xlat0.x;
  u_xlatb0 = (0.999000013f < x_74);
  let x_76 : bool = u_xlatb0;
  if (x_76) {
    let x_86 : vec2<f32> = vs_TEXCOORD1;
    let x_87 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_86);
    SV_Target0 = x_87;
    return;
  }
  let x_92 : vec4<f32> = hlslcc_FragCoord;
  let x_97 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_92.x, x_92.y)));
  let x_98 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_97.x, x_97.y, x_98.z, x_98.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_107 : vec4<u32> = u_xlatu0;
  let x_111 : u32 = u_xlatu0.w;
  let x_113 : vec4<f32> = textureLoad(x_CameraGBufferTexture0, bitcast<vec2<i32>>(vec2<u32>(x_107.x, x_107.y)), bitcast<i32>(x_111));
  u_xlat1 = x_113.w;
  let x_118 : vec4<u32> = u_xlatu0;
  let x_122 : u32 = u_xlatu0.w;
  let x_124 : vec4<f32> = textureLoad(x_CameraGBufferTexture1, bitcast<vec2<i32>>(vec2<u32>(x_118.x, x_118.y)), bitcast<i32>(x_122));
  u_xlat2 = x_124;
  let x_127 : vec4<u32> = u_xlatu0;
  let x_131 : u32 = u_xlatu0.w;
  let x_133 : vec4<f32> = textureLoad(x_CameraGBufferTexture2, bitcast<vec2<i32>>(vec2<u32>(x_127.x, x_127.y)), bitcast<i32>(x_131));
  u_xlat0 = vec3<f32>(x_133.x, x_133.y, x_133.z);
  let x_137 : f32 = u_xlat2.y;
  let x_139 : f32 = u_xlat2.x;
  u_xlat15 = max(x_137, x_139);
  let x_142 : f32 = u_xlat2.z;
  let x_143 : f32 = u_xlat15;
  u_xlat15 = max(x_142, x_143);
  let x_145 : f32 = u_xlat15;
  u_xlat15 = (-(x_145) + 1.0f);
  let x_148 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_148 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_160 : vec2<f32> = vs_TEXCOORD0;
  let x_161 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, x_160, 0.0f);
  u_xlat6.x = x_161.x;
  let x_166 : vec2<f32> = vs_TEXCOORD0;
  u_xlat11 = ((x_166 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_173 : f32 = u_xlat11.x;
  let x_176 : f32 = x_51.unity_CameraInvProjection[0i].x;
  u_xlat3.x = (x_173 * x_176);
  let x_180 : f32 = u_xlat11.y;
  let x_182 : f32 = x_51.unity_CameraInvProjection[1i].y;
  u_xlat3.y = (x_180 * x_182);
  let x_186 : f32 = u_xlat6.x;
  let x_189 : f32 = x_51.unity_CameraInvProjection[2i].z;
  let x_193 : f32 = x_51.unity_CameraInvProjection[3i].z;
  u_xlat3.z = ((x_186 * x_189) + x_193);
  let x_197 : f32 = x_51.x_ZBufferParams.z;
  let x_199 : f32 = u_xlat6.x;
  let x_202 : f32 = x_51.x_ZBufferParams.w;
  u_xlat6.x = ((x_197 * x_199) + x_202);
  let x_205 : vec4<f32> = u_xlat3;
  let x_207 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_205.x, x_205.y, x_205.z) / vec3<f32>(x_207.x, x_207.x, x_207.x));
  let x_210 : vec3<f32> = u_xlat6;
  let x_211 : vec3<f32> = u_xlat6;
  u_xlat3.x = dot(x_210, x_211);
  let x_215 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_215);
  let x_218 : vec3<f32> = u_xlat6;
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat6 = (x_218 * vec3<f32>(x_219.x, x_219.x, x_219.x));
  let x_222 : vec3<f32> = u_xlat6;
  let x_226 : vec4<f32> = x_51.x_InverseViewMatrix[1i];
  let x_228 : vec3<f32> = (vec3<f32>(x_222.y, x_222.y, x_222.y) * vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_232 : vec4<f32> = x_51.x_InverseViewMatrix[0i];
  let x_234 : vec3<f32> = u_xlat6;
  let x_237 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = ((vec3<f32>(x_232.x, x_232.y, x_232.z) * vec3<f32>(x_234.x, x_234.x, x_234.x)) + vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : vec4<f32> = x_51.x_InverseViewMatrix[2i];
  let x_245 : vec3<f32> = u_xlat6;
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat6 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.z, x_245.z, x_245.z)) + vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_252 : f32 = u_xlat2.w;
  u_xlat3.x = (-(x_252) + 1.0f);
  let x_257 : f32 = u_xlat3.x;
  let x_259 : f32 = u_xlat3.x;
  u_xlat3.x = (x_257 * x_259);
  let x_264 : f32 = x_51.x_Params.w;
  u_xlat8 = (x_264 + -1.0f);
  let x_267 : f32 = u_xlat3.x;
  let x_268 : f32 = u_xlat8;
  u_xlat8 = ((x_267 * x_268) + 1.0f);
  let x_277 : vec2<f32> = vs_TEXCOORD1;
  let x_278 : f32 = u_xlat8;
  let x_279 : vec4<f32> = textureSampleLevel(x_Resolve, sampler_Resolve, x_277, x_278);
  u_xlat4 = x_279;
  let x_280 : vec3<f32> = u_xlat6;
  let x_282 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(-(x_280), x_282);
  let x_285 : f32 = u_xlat8;
  let x_286 : f32 = u_xlat8;
  u_xlat13 = (x_285 + x_286);
  let x_288 : vec3<f32> = u_xlat0;
  let x_289 : f32 = u_xlat13;
  let x_293 : vec3<f32> = u_xlat6;
  u_xlat0 = ((x_288 * -(vec3<f32>(x_289, x_289, x_289))) + -(x_293));
  let x_296 : vec3<f32> = u_xlat0;
  let x_297 : vec3<f32> = u_xlat0;
  u_xlat13 = dot(x_296, x_297);
  let x_299 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_299);
  let x_301 : vec3<f32> = u_xlat0;
  let x_302 : f32 = u_xlat13;
  u_xlat0 = (x_301 * vec3<f32>(x_302, x_302, x_302));
  let x_305 : vec3<f32> = u_xlat6;
  let x_307 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(-(x_305), x_307);
  let x_311 : f32 = u_xlat0.x;
  let x_313 : f32 = u_xlat0.x;
  u_xlat0.x = (x_311 + x_313);
  let x_317 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_317, 0.0f, 1.0f);
  let x_322 : f32 = u_xlat3.x;
  u_xlat5.x = max(x_322, 0.002f);
  let x_327 : f32 = u_xlat5.x;
  let x_329 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_327 * x_329) + 1.0f);
  let x_334 : f32 = u_xlat5.x;
  u_xlat5.x = (1.0f / x_334);
  let x_338 : f32 = u_xlat15;
  let x_341 : f32 = u_xlat2.w;
  u_xlat10 = (-(x_338) + x_341);
  let x_343 : f32 = u_xlat10;
  u_xlat10 = (x_343 + 1.0f);
  let x_345 : f32 = u_xlat10;
  u_xlat10 = clamp(x_345, 0.0f, 1.0f);
  let x_347 : vec4<f32> = u_xlat4;
  let x_349 : vec3<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_347.x, x_347.y, x_347.z) * vec3<f32>(x_349.x, x_349.x, x_349.x));
  let x_352 : f32 = u_xlat8;
  u_xlat5.x = (-(abs(x_352)) + 1.0f);
  let x_358 : f32 = u_xlat5.x;
  let x_360 : f32 = u_xlat5.x;
  u_xlat15 = (x_358 * x_360);
  let x_362 : f32 = u_xlat15;
  let x_363 : f32 = u_xlat15;
  u_xlat15 = (x_362 * x_363);
  let x_366 : f32 = u_xlat5.x;
  let x_367 : f32 = u_xlat15;
  u_xlat5.x = (x_366 * x_367);
  let x_370 : vec4<f32> = u_xlat2;
  let x_373 : f32 = u_xlat10;
  let x_375 : vec3<f32> = (-(vec3<f32>(x_370.x, x_370.y, x_370.z)) + vec3<f32>(x_373, x_373, x_373));
  let x_376 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec3<f32> = u_xlat5;
  let x_380 : vec4<f32> = u_xlat3;
  let x_383 : vec4<f32> = u_xlat2;
  u_xlat5 = ((vec3<f32>(x_378.x, x_378.x, x_378.x) * vec3<f32>(x_380.x, x_380.y, x_380.z)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_391 : vec2<f32> = vs_TEXCOORD1;
  let x_392 : vec4<f32> = textureSample(x_CameraReflectionsTexture, sampler_CameraReflectionsTexture, x_391);
  let x_393 : vec3<f32> = vec3<f32>(x_392.x, x_392.y, x_392.z);
  let x_394 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_399 : vec2<f32> = vs_TEXCOORD1;
  let x_400 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_399);
  u_xlat3 = x_400;
  let x_401 : vec4<f32> = u_xlat2;
  let x_404 : vec4<f32> = u_xlat3;
  let x_406 : vec3<f32> = (-(vec3<f32>(x_401.x, x_401.y, x_401.z)) + vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat3;
  let x_412 : vec3<f32> = max(vec3<f32>(x_409.x, x_409.y, x_409.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_413 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_417 : f32 = u_xlat4.w;
  let x_419 : f32 = u_xlat4.w;
  u_xlat17 = (x_417 * x_419);
  let x_421 : f32 = u_xlat17;
  u_xlat4.x = (x_421 * 3.0f);
  let x_425 : f32 = u_xlat17;
  u_xlat17 = ((x_425 * 3.0f) + -0.5f);
  let x_429 : f32 = u_xlat17;
  let x_430 : f32 = u_xlat17;
  u_xlat17 = (x_429 + x_430);
  let x_432 : f32 = u_xlat17;
  u_xlat17 = clamp(x_432, 0.0f, 1.0f);
  let x_435 : f32 = u_xlat17;
  u_xlat9 = ((x_435 * -2.0f) + 3.0f);
  let x_439 : f32 = u_xlat17;
  let x_440 : f32 = u_xlat17;
  u_xlat17 = (x_439 * x_440);
  let x_442 : f32 = u_xlat17;
  let x_443 : f32 = u_xlat9;
  u_xlat17 = (x_442 * x_443);
  let x_445 : f32 = u_xlat17;
  let x_447 : f32 = u_xlat4.x;
  u_xlat17 = (x_445 * x_447);
  let x_449 : f32 = u_xlat17;
  let x_451 : f32 = x_51.x_Params.y;
  u_xlat17 = (x_449 * x_451);
  let x_453 : f32 = u_xlat17;
  u_xlat17 = clamp(x_453, 0.0f, 1.0f);
  let x_455 : f32 = u_xlat17;
  u_xlat17 = (-(x_455) + 1.0f);
  let x_459 : f32 = u_xlat0.x;
  let x_460 : f32 = u_xlat17;
  u_xlat0.x = (x_459 * x_460);
  let x_463 : vec3<f32> = u_xlat6;
  let x_464 : vec3<f32> = u_xlat5;
  let x_466 : vec4<f32> = u_xlat2;
  u_xlat5 = ((x_463 * x_464) + -(vec3<f32>(x_466.x, x_466.y, x_466.z)));
  let x_470 : vec3<f32> = u_xlat0;
  let x_472 : vec3<f32> = u_xlat5;
  let x_474 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_470.x, x_470.x, x_470.x) * x_472) + vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec3<f32> = u_xlat0;
  let x_478 : f32 = u_xlat1;
  let x_481 : vec4<f32> = u_xlat3;
  let x_483 : vec3<f32> = ((x_477 * vec3<f32>(x_478, x_478, x_478)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_487 : f32 = u_xlat3.w;
  SV_Target0.w = x_487;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  main_1();
  return main_out(SV_Target0);
}


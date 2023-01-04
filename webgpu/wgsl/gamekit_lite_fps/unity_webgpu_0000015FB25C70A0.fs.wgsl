struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  x_InverseViewMatrix : mat4x4<f32>,
  x_InverseProjectionMatrix : mat4x4<f32>,
  x_Params : vec4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlatu0 : vec4<u32>;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(7) var x_Resolve : texture_2d<f32>;

@group(0) @binding(11) var sampler_Resolve : sampler;

var<private> u_xlat13 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat10 : f32;

@group(0) @binding(3) var x_CameraReflectionsTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_CameraReflectionsTexture : sampler;

var<private> u_xlat17 : f32;

var<private> u_xlat9 : f32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
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
  let x_119 : vec4<u32> = u_xlatu0;
  let x_123 : u32 = u_xlatu0.w;
  let x_125 : vec4<f32> = textureLoad(x_CameraGBufferTexture1, bitcast<vec2<i32>>(vec2<u32>(x_119.x, x_119.y)), bitcast<i32>(x_123));
  u_xlat2 = x_125;
  let x_128 : vec4<u32> = u_xlatu0;
  let x_132 : u32 = u_xlatu0.w;
  let x_134 : vec4<f32> = textureLoad(x_CameraGBufferTexture2, bitcast<vec2<i32>>(vec2<u32>(x_128.x, x_128.y)), bitcast<i32>(x_132));
  u_xlat0 = vec3<f32>(x_134.x, x_134.y, x_134.z);
  let x_138 : f32 = u_xlat2.y;
  let x_140 : f32 = u_xlat2.x;
  u_xlat15 = max(x_138, x_140);
  let x_143 : f32 = u_xlat2.z;
  let x_144 : f32 = u_xlat15;
  u_xlat15 = max(x_143, x_144);
  let x_146 : f32 = u_xlat15;
  u_xlat15 = (-(x_146) + 1.0f);
  let x_149 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_149 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_161 : vec2<f32> = vs_TEXCOORD0;
  let x_162 : vec4<f32> = textureSampleLevel(x_CameraDepthTexture, sampler_CameraDepthTexture, x_161, 0.0f);
  u_xlat6.x = x_162.x;
  let x_167 : vec2<f32> = vs_TEXCOORD0;
  u_xlat11 = ((x_167 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_173 : vec2<f32> = u_xlat11;
  let x_179 : vec4<f32> = x_51.x_InverseProjectionMatrix[1i];
  u_xlat3 = (vec4<f32>(x_173.y, x_173.y, x_173.y, x_173.y) * x_179);
  let x_182 : vec4<f32> = x_51.x_InverseProjectionMatrix[0i];
  let x_183 : vec2<f32> = u_xlat11;
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_182 * vec4<f32>(x_183.x, x_183.x, x_183.x, x_183.x)) + x_186);
  let x_189 : vec4<f32> = x_51.x_InverseProjectionMatrix[2i];
  let x_190 : vec3<f32> = u_xlat6;
  let x_193 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_189 * vec4<f32>(x_190.x, x_190.x, x_190.x, x_190.x)) + x_193);
  let x_195 : vec4<f32> = u_xlat3;
  let x_198 : vec4<f32> = x_51.x_InverseProjectionMatrix[3i];
  u_xlat3 = (x_195 + x_198);
  let x_200 : vec4<f32> = u_xlat3;
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_200.x, x_200.y, x_200.z) / vec3<f32>(x_202.w, x_202.w, x_202.w));
  let x_205 : vec3<f32> = u_xlat6;
  let x_206 : vec3<f32> = u_xlat6;
  u_xlat3.x = dot(x_205, x_206);
  let x_210 : f32 = u_xlat3.x;
  u_xlat3.x = inverseSqrt(x_210);
  let x_213 : vec3<f32> = u_xlat6;
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat6 = (x_213 * vec3<f32>(x_214.x, x_214.x, x_214.x));
  let x_217 : vec3<f32> = u_xlat6;
  let x_220 : vec4<f32> = x_51.x_InverseViewMatrix[1i];
  let x_222 : vec3<f32> = (vec3<f32>(x_217.y, x_217.y, x_217.y) * vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : vec4<f32> = x_51.x_InverseViewMatrix[0i];
  let x_228 : vec3<f32> = u_xlat6;
  let x_231 : vec4<f32> = u_xlat3;
  let x_233 : vec3<f32> = ((vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.x, x_228.x, x_228.x)) + vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_237 : vec4<f32> = x_51.x_InverseViewMatrix[2i];
  let x_239 : vec3<f32> = u_xlat6;
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat6 = ((vec3<f32>(x_237.x, x_237.y, x_237.z) * vec3<f32>(x_239.z, x_239.z, x_239.z)) + vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_246 : f32 = u_xlat2.w;
  u_xlat3.x = (-(x_246) + 1.0f);
  let x_251 : f32 = u_xlat3.x;
  let x_253 : f32 = u_xlat3.x;
  u_xlat3.x = (x_251 * x_253);
  let x_258 : f32 = x_51.x_Params.w;
  u_xlat8 = (x_258 + -1.0f);
  let x_261 : f32 = u_xlat3.x;
  let x_262 : f32 = u_xlat8;
  u_xlat8 = ((x_261 * x_262) + 1.0f);
  let x_271 : vec2<f32> = vs_TEXCOORD1;
  let x_272 : f32 = u_xlat8;
  let x_273 : vec4<f32> = textureSampleLevel(x_Resolve, sampler_Resolve, x_271, x_272);
  u_xlat4 = x_273;
  let x_274 : vec3<f32> = u_xlat6;
  let x_276 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(-(x_274), x_276);
  let x_279 : f32 = u_xlat8;
  let x_280 : f32 = u_xlat8;
  u_xlat13 = (x_279 + x_280);
  let x_282 : vec3<f32> = u_xlat0;
  let x_283 : f32 = u_xlat13;
  let x_287 : vec3<f32> = u_xlat6;
  u_xlat0 = ((x_282 * -(vec3<f32>(x_283, x_283, x_283))) + -(x_287));
  let x_290 : vec3<f32> = u_xlat0;
  let x_291 : vec3<f32> = u_xlat0;
  u_xlat13 = dot(x_290, x_291);
  let x_293 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_293);
  let x_295 : vec3<f32> = u_xlat0;
  let x_296 : f32 = u_xlat13;
  u_xlat0 = (x_295 * vec3<f32>(x_296, x_296, x_296));
  let x_299 : vec3<f32> = u_xlat6;
  let x_301 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(-(x_299), x_301);
  let x_305 : f32 = u_xlat0.x;
  let x_307 : f32 = u_xlat0.x;
  u_xlat0.x = (x_305 + x_307);
  let x_311 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_311, 0.0f, 1.0f);
  let x_316 : f32 = u_xlat3.x;
  u_xlat5.x = max(x_316, 0.002f);
  let x_321 : f32 = u_xlat5.x;
  let x_323 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_321 * x_323) + 1.0f);
  let x_328 : f32 = u_xlat5.x;
  u_xlat5.x = (1.0f / x_328);
  let x_332 : f32 = u_xlat15;
  let x_335 : f32 = u_xlat2.w;
  u_xlat10 = (-(x_332) + x_335);
  let x_337 : f32 = u_xlat10;
  u_xlat10 = (x_337 + 1.0f);
  let x_339 : f32 = u_xlat10;
  u_xlat10 = clamp(x_339, 0.0f, 1.0f);
  let x_341 : vec4<f32> = u_xlat4;
  let x_343 : vec3<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_341.x, x_341.y, x_341.z) * vec3<f32>(x_343.x, x_343.x, x_343.x));
  let x_346 : f32 = u_xlat8;
  u_xlat5.x = (-(abs(x_346)) + 1.0f);
  let x_352 : f32 = u_xlat5.x;
  let x_354 : f32 = u_xlat5.x;
  u_xlat15 = (x_352 * x_354);
  let x_356 : f32 = u_xlat15;
  let x_357 : f32 = u_xlat15;
  u_xlat15 = (x_356 * x_357);
  let x_360 : f32 = u_xlat5.x;
  let x_361 : f32 = u_xlat15;
  u_xlat5.x = (x_360 * x_361);
  let x_364 : vec4<f32> = u_xlat2;
  let x_367 : f32 = u_xlat10;
  let x_369 : vec3<f32> = (-(vec3<f32>(x_364.x, x_364.y, x_364.z)) + vec3<f32>(x_367, x_367, x_367));
  let x_370 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_372 : vec3<f32> = u_xlat5;
  let x_374 : vec4<f32> = u_xlat3;
  let x_377 : vec4<f32> = u_xlat2;
  u_xlat5 = ((vec3<f32>(x_372.x, x_372.x, x_372.x) * vec3<f32>(x_374.x, x_374.y, x_374.z)) + vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_385 : vec2<f32> = vs_TEXCOORD1;
  let x_386 : vec4<f32> = textureSample(x_CameraReflectionsTexture, sampler_CameraReflectionsTexture, x_385);
  let x_387 : vec3<f32> = vec3<f32>(x_386.x, x_386.y, x_386.z);
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_393 : vec2<f32> = vs_TEXCOORD1;
  let x_394 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_393);
  u_xlat3 = x_394;
  let x_395 : vec4<f32> = u_xlat2;
  let x_398 : vec4<f32> = u_xlat3;
  let x_400 : vec3<f32> = (-(vec3<f32>(x_395.x, x_395.y, x_395.z)) + vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat3;
  let x_406 : vec3<f32> = max(vec3<f32>(x_403.x, x_403.y, x_403.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_407 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_411 : f32 = u_xlat4.w;
  let x_413 : f32 = u_xlat4.w;
  u_xlat17 = (x_411 * x_413);
  let x_415 : f32 = u_xlat17;
  u_xlat4.x = (x_415 * 3.0f);
  let x_419 : f32 = u_xlat17;
  u_xlat17 = ((x_419 * 3.0f) + -0.5f);
  let x_423 : f32 = u_xlat17;
  let x_424 : f32 = u_xlat17;
  u_xlat17 = (x_423 + x_424);
  let x_426 : f32 = u_xlat17;
  u_xlat17 = clamp(x_426, 0.0f, 1.0f);
  let x_429 : f32 = u_xlat17;
  u_xlat9 = ((x_429 * -2.0f) + 3.0f);
  let x_433 : f32 = u_xlat17;
  let x_434 : f32 = u_xlat17;
  u_xlat17 = (x_433 * x_434);
  let x_436 : f32 = u_xlat17;
  let x_437 : f32 = u_xlat9;
  u_xlat17 = (x_436 * x_437);
  let x_439 : f32 = u_xlat17;
  let x_441 : f32 = u_xlat4.x;
  u_xlat17 = (x_439 * x_441);
  let x_443 : f32 = u_xlat17;
  let x_445 : f32 = x_51.x_Params.y;
  u_xlat17 = (x_443 * x_445);
  let x_447 : f32 = u_xlat17;
  u_xlat17 = clamp(x_447, 0.0f, 1.0f);
  let x_449 : f32 = u_xlat17;
  u_xlat17 = (-(x_449) + 1.0f);
  let x_453 : f32 = u_xlat0.x;
  let x_454 : f32 = u_xlat17;
  u_xlat0.x = (x_453 * x_454);
  let x_457 : vec3<f32> = u_xlat6;
  let x_458 : vec3<f32> = u_xlat5;
  let x_460 : vec4<f32> = u_xlat2;
  u_xlat5 = ((x_457 * x_458) + -(vec3<f32>(x_460.x, x_460.y, x_460.z)));
  let x_464 : vec3<f32> = u_xlat0;
  let x_466 : vec3<f32> = u_xlat5;
  let x_468 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_464.x, x_464.x, x_464.x) * x_466) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec3<f32> = u_xlat0;
  let x_472 : f32 = u_xlat1;
  let x_475 : vec4<f32> = u_xlat3;
  let x_477 : vec3<f32> = ((x_471 * vec3<f32>(x_472, x_472, x_472)) + vec3<f32>(x_475.x, x_475.y, x_475.z));
  let x_478 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : f32 = u_xlat3.w;
  SV_Target0.w = x_481;
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


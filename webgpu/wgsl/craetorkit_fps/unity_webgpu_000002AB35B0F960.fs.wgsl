struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(1) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(2) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat4 : vec4<f32>;
  var x_173 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_80 : vec4<f32> = vs_TEXCOORD4;
  let x_82 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat21;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec3<f32> = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_102);
  let x_105 : f32 = u_xlat21;
  let x_107 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_117 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_117 == 1.0f);
  let x_120 : bool = u_xlatb22;
  if (x_120) {
    let x_125 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_125 == 1.0f);
    let x_130 : vec3<f32> = vs_TEXCOORD5;
    let x_135 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_137 : vec3<f32> = (vec3<f32>(x_130.y, x_130.y, x_130.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
    let x_138 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_137.x, x_137.y, x_137.z, x_138.w);
    let x_142 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_144 : vec3<f32> = vs_TEXCOORD5;
    let x_147 : vec4<f32> = u_xlat4;
    let x_149 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
    let x_150 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
    let x_154 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_156 : vec3<f32> = vs_TEXCOORD5;
    let x_159 : vec4<f32> = u_xlat4;
    let x_161 : vec3<f32> = ((vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(x_156.z, x_156.z, x_156.z)) + vec3<f32>(x_159.x, x_159.y, x_159.z));
    let x_162 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
    let x_164 : vec4<f32> = u_xlat4;
    let x_167 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_169 : vec3<f32> = (vec3<f32>(x_164.x, x_164.y, x_164.z) + vec3<f32>(x_167.x, x_167.y, x_167.z));
    let x_170 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
    let x_172 : bool = u_xlatb22;
    if (x_172) {
      let x_176 : vec4<f32> = u_xlat4;
      x_173 = vec3<f32>(x_176.x, x_176.y, x_176.z);
    } else {
      let x_179 : vec3<f32> = vs_TEXCOORD5;
      x_173 = x_179;
    }
    let x_180 : vec3<f32> = x_173;
    let x_181 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat4;
    let x_188 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_190 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + -(x_188));
    let x_191 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
    let x_193 : vec4<f32> = u_xlat4;
    let x_197 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_198 : vec3<f32> = (vec3<f32>(x_193.x, x_193.y, x_193.z) * x_197);
    let x_199 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_199.x, x_198.x, x_198.y, x_198.z);
    let x_203 : f32 = u_xlat4.y;
    u_xlat22 = ((x_203 * 0.25f) + 0.75f);
    let x_211 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_211 * 0.5f) + 0.75f);
    let x_215 : f32 = u_xlat22;
    let x_216 : f32 = u_xlat23;
    u_xlat4.x = max(x_215, x_216);
    let x_227 : vec4<f32> = u_xlat4;
    let x_229 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_227.x, x_227.z, x_227.w));
    u_xlat4 = x_229;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_236 : vec4<f32> = u_xlat4;
  let x_238 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_236, x_238);
  let x_240 : f32 = u_xlat22;
  u_xlat22 = clamp(x_240, 0.0f, 1.0f);
  let x_243 : f32 = u_xlat22;
  let x_247 : vec4<f32> = x_33.x_LightColor0;
  let x_249 : vec3<f32> = (vec3<f32>(x_243, x_243, x_243) * vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_254 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_254) + 1.0f);
  let x_261 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_261;
  let x_265 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_265;
  let x_268 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_268;
  let x_271 : vec4<f32> = vs_TEXCOORD1;
  let x_274 : f32 = u_xlat21;
  let x_277 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_271.x, x_271.y, x_271.z)) * vec3<f32>(x_274, x_274, x_274)) + x_277);
  let x_279 : vec3<f32> = u_xlat6;
  let x_280 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_279, x_280);
  let x_282 : f32 = u_xlat21;
  u_xlat21 = max(x_282, 0.001f);
  let x_285 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_285);
  let x_287 : f32 = u_xlat21;
  let x_289 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_287, x_287, x_287) * x_289);
  let x_291 : vec4<f32> = u_xlat2;
  let x_293 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), -(x_293));
  let x_296 : vec4<f32> = u_xlat2;
  let x_298 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_296.x, x_296.y, x_296.z), x_298);
  let x_300 : f32 = u_xlat23;
  u_xlat23 = clamp(x_300, 0.0f, 1.0f);
  let x_302 : vec4<f32> = u_xlat2;
  let x_304 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), x_304);
  let x_308 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_308, 0.0f, 1.0f);
  let x_312 : vec3<f32> = u_xlat5;
  let x_313 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_312, x_313);
  let x_315 : f32 = u_xlat9;
  u_xlat9 = clamp(x_315, 0.0f, 1.0f);
  let x_318 : f32 = u_xlat9;
  let x_319 : f32 = u_xlat9;
  u_xlat16 = (x_318 * x_319);
  let x_321 : f32 = u_xlat16;
  let x_323 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_321, x_321), vec2<f32>(x_323, x_323));
  let x_326 : f32 = u_xlat16;
  u_xlat16 = (x_326 + -0.5f);
  let x_329 : f32 = u_xlat23;
  u_xlat3.x = (-(x_329) + 1.0f);
  let x_335 : f32 = u_xlat3.x;
  let x_337 : f32 = u_xlat3.x;
  u_xlat10 = (x_335 * x_337);
  let x_339 : f32 = u_xlat10;
  let x_340 : f32 = u_xlat10;
  u_xlat10 = (x_339 * x_340);
  let x_343 : f32 = u_xlat3.x;
  let x_344 : f32 = u_xlat10;
  u_xlat3.x = (x_343 * x_344);
  let x_347 : f32 = u_xlat16;
  let x_349 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_347 * x_349) + 1.0f);
  let x_353 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_353)) + 1.0f);
  let x_358 : f32 = u_xlat10;
  let x_359 : f32 = u_xlat10;
  u_xlat17 = (x_358 * x_359);
  let x_361 : f32 = u_xlat17;
  let x_362 : f32 = u_xlat17;
  u_xlat17 = (x_361 * x_362);
  let x_364 : f32 = u_xlat10;
  let x_365 : f32 = u_xlat17;
  u_xlat10 = (x_364 * x_365);
  let x_367 : f32 = u_xlat16;
  let x_368 : f32 = u_xlat10;
  u_xlat16 = ((x_367 * x_368) + 1.0f);
  let x_371 : f32 = u_xlat16;
  let x_373 : f32 = u_xlat3.x;
  u_xlat16 = (x_371 * x_373);
  let x_375 : f32 = u_xlat23;
  let x_376 : f32 = u_xlat16;
  u_xlat16 = (x_375 * x_376);
  let x_378 : f32 = u_xlat22;
  let x_379 : f32 = u_xlat22;
  u_xlat22 = (x_378 * x_379);
  let x_381 : f32 = u_xlat22;
  u_xlat22 = max(x_381, 0.002f);
  let x_384 : f32 = u_xlat22;
  u_xlat3.x = (-(x_384) + 1.0f);
  let x_388 : f32 = u_xlat21;
  let x_391 : f32 = u_xlat3.x;
  let x_393 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_388) * x_391) + x_393);
  let x_395 : f32 = u_xlat23;
  let x_397 : f32 = u_xlat3.x;
  let x_399 : f32 = u_xlat22;
  u_xlat3.x = ((x_395 * x_397) + x_399);
  let x_402 : f32 = u_xlat21;
  let x_405 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_402) * x_405);
  let x_407 : f32 = u_xlat23;
  let x_408 : f32 = u_xlat10;
  let x_410 : f32 = u_xlat21;
  u_xlat21 = ((x_407 * x_408) + x_410);
  let x_412 : f32 = u_xlat21;
  u_xlat21 = (x_412 + 0.00001f);
  let x_415 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_415);
  let x_417 : f32 = u_xlat22;
  let x_418 : f32 = u_xlat22;
  u_xlat22 = (x_417 * x_418);
  let x_421 : f32 = u_xlat2.x;
  let x_422 : f32 = u_xlat22;
  let x_425 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_421 * x_422) + -(x_425));
  let x_430 : f32 = u_xlat3.x;
  let x_432 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_430 * x_432) + 1.0f);
  let x_436 : f32 = u_xlat22;
  u_xlat22 = (x_436 * 0.318309873f);
  let x_440 : f32 = u_xlat2.x;
  let x_442 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_440 * x_442) + 0.0000001f);
  let x_447 : f32 = u_xlat22;
  let x_449 : f32 = u_xlat2.x;
  u_xlat22 = (x_447 / x_449);
  let x_451 : f32 = u_xlat21;
  let x_452 : f32 = u_xlat22;
  u_xlat21 = (x_451 * x_452);
  let x_454 : f32 = u_xlat23;
  let x_455 : f32 = u_xlat21;
  u_xlat21 = (x_454 * x_455);
  let x_457 : f32 = u_xlat21;
  u_xlat21 = (x_457 * 3.141592741f);
  let x_460 : f32 = u_xlat21;
  u_xlat21 = max(x_460, 0.0f);
  let x_462 : vec3<f32> = u_xlat0;
  let x_463 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_462, x_463);
  let x_465 : f32 = u_xlat22;
  u_xlatb22 = !((x_465 == 0.0f));
  let x_467 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_467);
  let x_469 : f32 = u_xlat21;
  let x_470 : f32 = u_xlat22;
  u_xlat21 = (x_469 * x_470);
  let x_472 : f32 = u_xlat16;
  let x_474 : vec4<f32> = u_xlat4;
  let x_476 : vec3<f32> = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_474.x, x_474.y, x_474.z));
  let x_477 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_476.x, x_477.y, x_476.y, x_476.z);
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_479.x, x_479.y, x_479.z) * vec3<f32>(x_481, x_481, x_481));
  let x_484 : f32 = u_xlat9;
  u_xlat21 = (-(x_484) + 1.0f);
  let x_487 : f32 = u_xlat21;
  let x_488 : f32 = u_xlat21;
  u_xlat22 = (x_487 * x_488);
  let x_490 : f32 = u_xlat22;
  let x_491 : f32 = u_xlat22;
  u_xlat22 = (x_490 * x_491);
  let x_493 : f32 = u_xlat21;
  let x_494 : f32 = u_xlat22;
  u_xlat21 = (x_493 * x_494);
  let x_496 : vec3<f32> = u_xlat0;
  let x_499 : vec3<f32> = (-(x_496) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat4;
  let x_504 : f32 = u_xlat21;
  let x_507 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_504, x_504, x_504)) + x_507);
  let x_509 : vec3<f32> = u_xlat0;
  let x_510 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_509 * x_510);
  let x_512 : vec3<f32> = u_xlat1;
  let x_513 : vec4<f32> = u_xlat2;
  let x_516 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_512 * vec3<f32>(x_513.x, x_513.z, x_513.w)) + x_516);
  let x_519 : f32 = vs_TEXCOORD1.w;
  let x_521 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_519 / x_521);
  let x_523 : f32 = u_xlat21;
  u_xlat21 = (-(x_523) + 1.0f);
  let x_526 : f32 = u_xlat21;
  let x_528 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_526 * x_528);
  let x_530 : f32 = u_xlat21;
  u_xlat21 = max(x_530, 0.0f);
  let x_532 : f32 = u_xlat21;
  let x_534 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_532 * x_534);
  let x_536 : f32 = u_xlat21;
  let x_537 : f32 = u_xlat21;
  u_xlat21 = (x_536 * -(x_537));
  let x_540 : f32 = u_xlat21;
  u_xlat21 = exp2(x_540);
  let x_544 : vec3<f32> = u_xlat0;
  let x_545 : f32 = u_xlat21;
  let x_547 : vec3<f32> = (x_544 * vec3<f32>(x_545, x_545, x_545));
  let x_548 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


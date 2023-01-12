struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler;

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
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_237 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
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
  let x_113 : vec3<f32> = vs_TEXCOORD5;
  let x_118 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_119 : vec3<f32> = (-(x_113) + x_118);
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_127 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat5.x = x_127;
  let x_132 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat5.y = x_132;
  let x_137 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat5.z = x_137;
  let x_140 : vec4<f32> = u_xlat4;
  let x_142 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_140.x, x_140.y, x_140.z), x_142);
  let x_144 : vec3<f32> = vs_TEXCOORD5;
  let x_147 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_150 : vec3<f32> = (x_144 + -(vec3<f32>(x_147.x, x_147.y, x_147.z)));
  let x_151 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_154 : vec4<f32> = u_xlat4;
  let x_156 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_154.x, x_154.y, x_154.z), vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_159);
  let x_161 : f32 = u_xlat22;
  let x_163 : f32 = u_xlat23;
  u_xlat23 = (-(x_161) + x_163);
  let x_167 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_168 : f32 = u_xlat23;
  let x_170 : f32 = u_xlat22;
  u_xlat22 = ((x_167 * x_168) + x_170);
  let x_172 : f32 = u_xlat22;
  let x_175 : f32 = x_33.x_LightShadowData.z;
  let x_178 : f32 = x_33.x_LightShadowData.w;
  u_xlat22 = ((x_172 * x_175) + x_178);
  let x_180 : f32 = u_xlat22;
  u_xlat22 = clamp(x_180, 0.0f, 1.0f);
  let x_189 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_189 == 1.0f);
  let x_191 : bool = u_xlatb23;
  if (x_191) {
    let x_195 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_195 == 1.0f);
    let x_197 : vec3<f32> = vs_TEXCOORD5;
    let x_201 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_203 : vec3<f32> = (vec3<f32>(x_197.y, x_197.y, x_197.y) * vec3<f32>(x_201.x, x_201.y, x_201.z));
    let x_204 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
    let x_207 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_209 : vec3<f32> = vs_TEXCOORD5;
    let x_212 : vec4<f32> = u_xlat4;
    let x_214 : vec3<f32> = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.x, x_209.x, x_209.x)) + vec3<f32>(x_212.x, x_212.y, x_212.z));
    let x_215 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
    let x_218 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_220 : vec3<f32> = vs_TEXCOORD5;
    let x_223 : vec4<f32> = u_xlat4;
    let x_225 : vec3<f32> = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.z, x_220.z, x_220.z)) + vec3<f32>(x_223.x, x_223.y, x_223.z));
    let x_226 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : vec4<f32> = u_xlat4;
    let x_231 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_233 : vec3<f32> = (vec3<f32>(x_228.x, x_228.y, x_228.z) + vec3<f32>(x_231.x, x_231.y, x_231.z));
    let x_234 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_236 : bool = u_xlatb23;
    if (x_236) {
      let x_240 : vec4<f32> = u_xlat4;
      x_237 = vec3<f32>(x_240.x, x_240.y, x_240.z);
    } else {
      let x_243 : vec3<f32> = vs_TEXCOORD5;
      x_237 = x_243;
    }
    let x_244 : vec3<f32> = x_237;
    let x_245 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_247 : vec4<f32> = u_xlat4;
    let x_251 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_253 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) + -(x_251));
    let x_254 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
    let x_256 : vec4<f32> = u_xlat4;
    let x_260 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_261 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) * x_260);
    let x_262 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_262.x, x_261.x, x_261.y, x_261.z);
    let x_265 : f32 = u_xlat4.y;
    u_xlat23 = ((x_265 * 0.25f) + 0.75f);
    let x_272 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_272 * 0.5f) + 0.75f);
    let x_276 : f32 = u_xlat23;
    let x_277 : f32 = u_xlat24;
    u_xlat4.x = max(x_276, x_277);
    let x_288 : vec4<f32> = u_xlat4;
    let x_290 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_288.x, x_288.z, x_288.w));
    u_xlat4 = x_290;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_296 : vec4<f32> = u_xlat4;
  let x_298 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_296, x_298);
  let x_300 : f32 = u_xlat23;
  u_xlat23 = clamp(x_300, 0.0f, 1.0f);
  let x_303 : vec4<f32> = vs_TEXCOORD7;
  let x_305 : vec4<f32> = vs_TEXCOORD7;
  let x_307 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) / vec2<f32>(x_305.w, x_305.w));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_308.z, x_308.w);
  let x_315 : vec4<f32> = u_xlat4;
  let x_317 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_315.x, x_315.y));
  u_xlat24 = x_317.x;
  let x_319 : f32 = u_xlat23;
  let x_320 : f32 = u_xlat24;
  u_xlat23 = (x_319 + -(x_320));
  let x_323 : f32 = u_xlat22;
  let x_324 : f32 = u_xlat23;
  let x_326 : f32 = u_xlat24;
  u_xlat22 = ((x_323 * x_324) + x_326);
  let x_328 : f32 = u_xlat22;
  let x_332 : vec4<f32> = x_33.x_LightColor0;
  let x_334 : vec3<f32> = (vec3<f32>(x_328, x_328, x_328) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_339 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_339) + 1.0f);
  let x_345 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_345;
  let x_349 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_349;
  let x_352 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_352;
  let x_355 : vec4<f32> = vs_TEXCOORD1;
  let x_358 : f32 = u_xlat21;
  let x_361 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_355.x, x_355.y, x_355.z)) * vec3<f32>(x_358, x_358, x_358)) + x_361);
  let x_363 : vec3<f32> = u_xlat6;
  let x_364 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_363, x_364);
  let x_366 : f32 = u_xlat21;
  u_xlat21 = max(x_366, 0.001f);
  let x_369 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_369);
  let x_371 : f32 = u_xlat21;
  let x_373 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_371, x_371, x_371) * x_373);
  let x_375 : vec4<f32> = u_xlat2;
  let x_377 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), -(x_377));
  let x_380 : vec4<f32> = u_xlat2;
  let x_382 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_380.x, x_380.y, x_380.z), x_382);
  let x_384 : f32 = u_xlat23;
  u_xlat23 = clamp(x_384, 0.0f, 1.0f);
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), x_388);
  let x_392 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_392, 0.0f, 1.0f);
  let x_396 : vec3<f32> = u_xlat5;
  let x_397 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_396, x_397);
  let x_399 : f32 = u_xlat9;
  u_xlat9 = clamp(x_399, 0.0f, 1.0f);
  let x_402 : f32 = u_xlat9;
  let x_403 : f32 = u_xlat9;
  u_xlat16 = (x_402 * x_403);
  let x_405 : f32 = u_xlat16;
  let x_407 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_405, x_405), vec2<f32>(x_407, x_407));
  let x_410 : f32 = u_xlat16;
  u_xlat16 = (x_410 + -0.5f);
  let x_413 : f32 = u_xlat23;
  u_xlat3.x = (-(x_413) + 1.0f);
  let x_419 : f32 = u_xlat3.x;
  let x_421 : f32 = u_xlat3.x;
  u_xlat10 = (x_419 * x_421);
  let x_423 : f32 = u_xlat10;
  let x_424 : f32 = u_xlat10;
  u_xlat10 = (x_423 * x_424);
  let x_427 : f32 = u_xlat3.x;
  let x_428 : f32 = u_xlat10;
  u_xlat3.x = (x_427 * x_428);
  let x_431 : f32 = u_xlat16;
  let x_433 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_431 * x_433) + 1.0f);
  let x_437 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_437)) + 1.0f);
  let x_442 : f32 = u_xlat10;
  let x_443 : f32 = u_xlat10;
  u_xlat17 = (x_442 * x_443);
  let x_445 : f32 = u_xlat17;
  let x_446 : f32 = u_xlat17;
  u_xlat17 = (x_445 * x_446);
  let x_448 : f32 = u_xlat10;
  let x_449 : f32 = u_xlat17;
  u_xlat10 = (x_448 * x_449);
  let x_451 : f32 = u_xlat16;
  let x_452 : f32 = u_xlat10;
  u_xlat16 = ((x_451 * x_452) + 1.0f);
  let x_455 : f32 = u_xlat16;
  let x_457 : f32 = u_xlat3.x;
  u_xlat16 = (x_455 * x_457);
  let x_459 : f32 = u_xlat23;
  let x_460 : f32 = u_xlat16;
  u_xlat16 = (x_459 * x_460);
  let x_462 : f32 = u_xlat22;
  let x_463 : f32 = u_xlat22;
  u_xlat22 = (x_462 * x_463);
  let x_465 : f32 = u_xlat22;
  u_xlat22 = max(x_465, 0.002f);
  let x_468 : f32 = u_xlat22;
  u_xlat3.x = (-(x_468) + 1.0f);
  let x_472 : f32 = u_xlat21;
  let x_475 : f32 = u_xlat3.x;
  let x_477 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_472) * x_475) + x_477);
  let x_479 : f32 = u_xlat23;
  let x_481 : f32 = u_xlat3.x;
  let x_483 : f32 = u_xlat22;
  u_xlat3.x = ((x_479 * x_481) + x_483);
  let x_486 : f32 = u_xlat21;
  let x_489 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_486) * x_489);
  let x_491 : f32 = u_xlat23;
  let x_492 : f32 = u_xlat10;
  let x_494 : f32 = u_xlat21;
  u_xlat21 = ((x_491 * x_492) + x_494);
  let x_496 : f32 = u_xlat21;
  u_xlat21 = (x_496 + 0.00001f);
  let x_499 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_499);
  let x_501 : f32 = u_xlat22;
  let x_502 : f32 = u_xlat22;
  u_xlat22 = (x_501 * x_502);
  let x_505 : f32 = u_xlat2.x;
  let x_506 : f32 = u_xlat22;
  let x_509 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_505 * x_506) + -(x_509));
  let x_514 : f32 = u_xlat3.x;
  let x_516 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_514 * x_516) + 1.0f);
  let x_520 : f32 = u_xlat22;
  u_xlat22 = (x_520 * 0.318309873f);
  let x_524 : f32 = u_xlat2.x;
  let x_526 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_524 * x_526) + 0.0000001f);
  let x_531 : f32 = u_xlat22;
  let x_533 : f32 = u_xlat2.x;
  u_xlat22 = (x_531 / x_533);
  let x_535 : f32 = u_xlat21;
  let x_536 : f32 = u_xlat22;
  u_xlat21 = (x_535 * x_536);
  let x_538 : f32 = u_xlat23;
  let x_539 : f32 = u_xlat21;
  u_xlat21 = (x_538 * x_539);
  let x_541 : f32 = u_xlat21;
  u_xlat21 = (x_541 * 3.141592741f);
  let x_544 : f32 = u_xlat21;
  u_xlat21 = max(x_544, 0.0f);
  let x_546 : vec3<f32> = u_xlat0;
  let x_547 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_546, x_547);
  let x_550 : f32 = u_xlat22;
  u_xlatb22 = !((x_550 == 0.0f));
  let x_552 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_552);
  let x_554 : f32 = u_xlat21;
  let x_555 : f32 = u_xlat22;
  u_xlat21 = (x_554 * x_555);
  let x_557 : f32 = u_xlat16;
  let x_559 : vec4<f32> = u_xlat4;
  let x_561 : vec3<f32> = (vec3<f32>(x_557, x_557, x_557) * vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_562.y, x_561.y, x_561.z);
  let x_564 : vec4<f32> = u_xlat4;
  let x_566 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_566, x_566, x_566));
  let x_569 : f32 = u_xlat9;
  u_xlat21 = (-(x_569) + 1.0f);
  let x_572 : f32 = u_xlat21;
  let x_573 : f32 = u_xlat21;
  u_xlat22 = (x_572 * x_573);
  let x_575 : f32 = u_xlat22;
  let x_576 : f32 = u_xlat22;
  u_xlat22 = (x_575 * x_576);
  let x_578 : f32 = u_xlat21;
  let x_579 : f32 = u_xlat22;
  u_xlat21 = (x_578 * x_579);
  let x_581 : vec3<f32> = u_xlat0;
  let x_584 : vec3<f32> = (-(x_581) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_585 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat4;
  let x_589 : f32 = u_xlat21;
  let x_592 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_587.x, x_587.y, x_587.z) * vec3<f32>(x_589, x_589, x_589)) + x_592);
  let x_594 : vec3<f32> = u_xlat0;
  let x_595 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_594 * x_595);
  let x_597 : vec3<f32> = u_xlat1;
  let x_598 : vec4<f32> = u_xlat2;
  let x_601 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_597 * vec3<f32>(x_598.x, x_598.z, x_598.w)) + x_601);
  let x_604 : f32 = vs_TEXCOORD1.w;
  let x_606 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_604 / x_606);
  let x_608 : f32 = u_xlat21;
  u_xlat21 = (-(x_608) + 1.0f);
  let x_611 : f32 = u_xlat21;
  let x_613 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_611 * x_613);
  let x_615 : f32 = u_xlat21;
  u_xlat21 = max(x_615, 0.0f);
  let x_617 : f32 = u_xlat21;
  let x_620 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_617 * x_620);
  let x_622 : f32 = u_xlat21;
  let x_623 : f32 = u_xlat21;
  u_xlat21 = (x_622 * -(x_623));
  let x_626 : f32 = u_xlat21;
  u_xlat21 = exp2(x_626);
  let x_630 : vec3<f32> = u_xlat0;
  let x_631 : f32 = u_xlat21;
  let x_633 : vec3<f32> = (x_630 * vec3<f32>(x_631, x_631, x_631));
  let x_634 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


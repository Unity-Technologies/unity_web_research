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
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var x_285 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat21 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  let x_53 : vec3<f32> = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_54 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_57 : vec4<f32> = x_46.x_Color;
  let x_59 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_59) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_64.x, x_64.x, x_64.x) * x_66) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_75) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.x, x_81.x) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_86.y, x_85.y, x_85.z);
  let x_93 : vec4<f32> = vs_TEXCOORD0;
  let x_95 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec3<f32> = vec3<f32>(x_95.x, x_95.y, x_95.w);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_101 : f32 = u_xlat2.z;
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_101 * x_103);
  let x_106 : vec4<f32> = u_xlat2;
  let x_113 : vec2<f32> = ((vec2<f32>(x_106.x, x_106.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_121 : f32 = x_46.x_BumpScale;
  let x_123 : vec2<f32> = (vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat22;
  u_xlat22 = min(x_132, 1.0f);
  let x_135 : f32 = u_xlat22;
  u_xlat22 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_138);
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec4<f32> = vs_TEXCOORD2;
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = u_xlat9;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD4;
  let x_160 : f32 = u_xlat22;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat22;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_188);
  let x_191 : f32 = u_xlat22;
  let x_193 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_191, x_191, x_191) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_199 : vec3<f32> = vs_TEXCOORD5;
  let x_204 : vec4<f32> = x_46.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_199.y, x_199.y, x_199.y) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_209 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_211 : vec3<f32> = vs_TEXCOORD5;
  let x_214 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_211.x, x_211.x, x_211.x)) + x_214);
  let x_218 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_220 : vec3<f32> = vs_TEXCOORD5;
  let x_223 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.z, x_220.z, x_220.z)) + x_223);
  let x_225 : vec3<f32> = u_xlat4;
  let x_228 : vec4<f32> = x_46.unity_WorldToLight[3i];
  u_xlat4 = (x_225 + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_235 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_235 == 1.0f);
  let x_237 : bool = u_xlatb22;
  if (x_237) {
    let x_242 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_242 == 1.0f);
    let x_245 : vec3<f32> = vs_TEXCOORD5;
    let x_249 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_251 : vec3<f32> = (vec3<f32>(x_245.y, x_245.y, x_245.y) * vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_252 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_255 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_257 : vec3<f32> = vs_TEXCOORD5;
    let x_260 : vec4<f32> = u_xlat5;
    let x_262 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_257.x, x_257.x, x_257.x)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
    let x_263 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_266 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_268 : vec3<f32> = vs_TEXCOORD5;
    let x_271 : vec4<f32> = u_xlat5;
    let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.z, x_268.z, x_268.z)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
    let x_274 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_276 : vec4<f32> = u_xlat5;
    let x_279 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_281 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) + vec3<f32>(x_279.x, x_279.y, x_279.z));
    let x_282 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : bool = u_xlatb22;
    if (x_284) {
      let x_288 : vec4<f32> = u_xlat5;
      x_285 = vec3<f32>(x_288.x, x_288.y, x_288.z);
    } else {
      let x_291 : vec3<f32> = vs_TEXCOORD5;
      x_285 = x_291;
    }
    let x_292 : vec3<f32> = x_285;
    let x_293 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
    let x_295 : vec4<f32> = u_xlat5;
    let x_300 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_302 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) + -(x_300));
    let x_303 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_302.x, x_302.y, x_302.z, x_303.w);
    let x_305 : vec4<f32> = u_xlat5;
    let x_309 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_310 : vec3<f32> = (vec3<f32>(x_305.x, x_305.y, x_305.z) * x_309);
    let x_311 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_311.x, x_310.x, x_310.y, x_310.z);
    let x_314 : f32 = u_xlat5.y;
    u_xlat22 = ((x_314 * 0.25f) + 0.75f);
    let x_321 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_321 * 0.5f) + 0.75f);
    let x_325 : f32 = u_xlat22;
    let x_326 : f32 = u_xlat23;
    u_xlat5.x = max(x_325, x_326);
    let x_337 : vec4<f32> = u_xlat5;
    let x_339 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_337.x, x_337.z, x_337.w));
    u_xlat5 = x_339;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_346 : vec4<f32> = u_xlat5;
  let x_348 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_346, x_348);
  let x_350 : f32 = u_xlat22;
  u_xlat22 = clamp(x_350, 0.0f, 1.0f);
  let x_353 : vec3<f32> = u_xlat4;
  let x_354 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(x_353, x_354);
  let x_361 : f32 = u_xlat23;
  let x_363 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_361, x_361));
  u_xlat23 = x_363.x;
  let x_365 : f32 = u_xlat22;
  let x_366 : f32 = u_xlat23;
  u_xlat22 = (x_365 * x_366);
  let x_370 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_370;
  let x_373 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_373;
  let x_376 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_376;
  let x_378 : vec3<f32> = u_xlat4;
  let x_379 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(x_378, x_379);
  let x_381 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_381);
  let x_383 : f32 = u_xlat23;
  let x_385 : vec3<f32> = u_xlat4;
  let x_386 : vec3<f32> = (vec3<f32>(x_383, x_383, x_383) * x_385);
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : f32 = u_xlat22;
  let x_394 : vec4<f32> = x_46.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_390, x_390, x_390) * vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_399 : f32 = u_xlat0.y;
  let x_403 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_399) * x_403) + 1.0f);
  let x_406 : vec3<f32> = u_xlat4;
  let x_407 : f32 = u_xlat23;
  let x_410 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_406 * vec3<f32>(x_407, x_407, x_407)) + -(x_410));
  let x_413 : vec3<f32> = u_xlat4;
  let x_414 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_413, x_414);
  let x_416 : f32 = u_xlat22;
  u_xlat22 = max(x_416, 0.001f);
  let x_419 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_419);
  let x_421 : f32 = u_xlat22;
  let x_423 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_421, x_421, x_421) * x_423);
  let x_425 : vec4<f32> = u_xlat2;
  let x_427 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_425.x, x_425.y, x_425.z), -(x_427));
  let x_430 : vec4<f32> = u_xlat2;
  let x_432 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat23;
  u_xlat23 = clamp(x_435, 0.0f, 1.0f);
  let x_437 : vec4<f32> = u_xlat2;
  let x_439 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_437.x, x_437.y, x_437.z), x_439);
  let x_443 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_443, 0.0f, 1.0f);
  let x_446 : vec4<f32> = u_xlat5;
  let x_448 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), x_448);
  let x_452 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_452, 0.0f, 1.0f);
  let x_457 : f32 = u_xlat9.x;
  let x_459 : f32 = u_xlat9.x;
  u_xlat16 = (x_457 * x_459);
  let x_461 : f32 = u_xlat16;
  let x_463 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_461, x_461), vec2<f32>(x_463, x_463));
  let x_466 : f32 = u_xlat16;
  u_xlat16 = (x_466 + -0.5f);
  let x_469 : f32 = u_xlat23;
  u_xlat3.x = (-(x_469) + 1.0f);
  let x_475 : f32 = u_xlat3.x;
  let x_477 : f32 = u_xlat3.x;
  u_xlat10 = (x_475 * x_477);
  let x_479 : f32 = u_xlat10;
  let x_480 : f32 = u_xlat10;
  u_xlat10 = (x_479 * x_480);
  let x_483 : f32 = u_xlat3.x;
  let x_484 : f32 = u_xlat10;
  u_xlat3.x = (x_483 * x_484);
  let x_487 : f32 = u_xlat16;
  let x_489 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_487 * x_489) + 1.0f);
  let x_493 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_493)) + 1.0f);
  let x_498 : f32 = u_xlat10;
  let x_499 : f32 = u_xlat10;
  u_xlat17 = (x_498 * x_499);
  let x_501 : f32 = u_xlat17;
  let x_502 : f32 = u_xlat17;
  u_xlat17 = (x_501 * x_502);
  let x_504 : f32 = u_xlat10;
  let x_505 : f32 = u_xlat17;
  u_xlat10 = (x_504 * x_505);
  let x_507 : f32 = u_xlat16;
  let x_508 : f32 = u_xlat10;
  u_xlat16 = ((x_507 * x_508) + 1.0f);
  let x_511 : f32 = u_xlat16;
  let x_513 : f32 = u_xlat3.x;
  u_xlat16 = (x_511 * x_513);
  let x_515 : f32 = u_xlat23;
  let x_516 : f32 = u_xlat16;
  u_xlat16 = (x_515 * x_516);
  let x_518 : f32 = u_xlat7;
  let x_519 : f32 = u_xlat7;
  u_xlat7 = (x_518 * x_519);
  let x_521 : f32 = u_xlat7;
  u_xlat7 = max(x_521, 0.002f);
  let x_524 : f32 = u_xlat7;
  u_xlat3.x = (-(x_524) + 1.0f);
  let x_528 : f32 = u_xlat22;
  let x_531 : f32 = u_xlat3.x;
  let x_533 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_528) * x_531) + x_533);
  let x_535 : f32 = u_xlat23;
  let x_537 : f32 = u_xlat3.x;
  let x_539 : f32 = u_xlat7;
  u_xlat3.x = ((x_535 * x_537) + x_539);
  let x_542 : f32 = u_xlat22;
  let x_545 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_542) * x_545);
  let x_547 : f32 = u_xlat23;
  let x_548 : f32 = u_xlat10;
  let x_550 : f32 = u_xlat22;
  u_xlat22 = ((x_547 * x_548) + x_550);
  let x_552 : f32 = u_xlat22;
  u_xlat22 = (x_552 + 0.00001f);
  let x_555 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_555);
  let x_557 : f32 = u_xlat7;
  let x_558 : f32 = u_xlat7;
  u_xlat7 = (x_557 * x_558);
  let x_561 : f32 = u_xlat2.x;
  let x_562 : f32 = u_xlat7;
  let x_565 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_561 * x_562) + -(x_565));
  let x_570 : f32 = u_xlat3.x;
  let x_572 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_570 * x_572) + 1.0f);
  let x_576 : f32 = u_xlat7;
  u_xlat7 = (x_576 * 0.318309873f);
  let x_580 : f32 = u_xlat2.x;
  let x_582 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_580 * x_582) + 0.0000001f);
  let x_587 : f32 = u_xlat7;
  let x_589 : f32 = u_xlat2.x;
  u_xlat7 = (x_587 / x_589);
  let x_591 : f32 = u_xlat7;
  let x_592 : f32 = u_xlat22;
  u_xlat7 = (x_591 * x_592);
  let x_594 : f32 = u_xlat23;
  let x_595 : f32 = u_xlat7;
  u_xlat7 = (x_594 * x_595);
  let x_597 : f32 = u_xlat7;
  u_xlat7 = (x_597 * 3.141592741f);
  let x_600 : f32 = u_xlat7;
  u_xlat7 = max(x_600, 0.0f);
  let x_602 : vec3<f32> = u_xlat1;
  let x_603 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_602, x_603);
  let x_605 : f32 = u_xlat22;
  u_xlatb22 = !((x_605 == 0.0f));
  let x_607 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_607);
  let x_609 : f32 = u_xlat7;
  let x_610 : f32 = u_xlat22;
  u_xlat7 = (x_609 * x_610);
  let x_612 : f32 = u_xlat16;
  let x_614 : vec3<f32> = u_xlat6;
  let x_615 : vec3<f32> = (vec3<f32>(x_612, x_612, x_612) * x_614);
  let x_616 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_615.x, x_616.y, x_615.y, x_615.z);
  let x_618 : vec3<f32> = u_xlat6;
  let x_619 : f32 = u_xlat7;
  u_xlat3 = (x_618 * vec3<f32>(x_619, x_619, x_619));
  let x_623 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_623) + 1.0f);
  let x_626 : f32 = u_xlat7;
  let x_627 : f32 = u_xlat7;
  u_xlat22 = (x_626 * x_627);
  let x_629 : f32 = u_xlat22;
  let x_630 : f32 = u_xlat22;
  u_xlat22 = (x_629 * x_630);
  let x_632 : f32 = u_xlat7;
  let x_633 : f32 = u_xlat22;
  u_xlat7 = (x_632 * x_633);
  let x_635 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_635) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_639 : vec3<f32> = u_xlat4;
  let x_640 : f32 = u_xlat7;
  let x_643 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_639 * vec3<f32>(x_640, x_640, x_640)) + x_643);
  let x_645 : vec3<f32> = u_xlat1;
  let x_646 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_645 * x_646);
  let x_648 : vec4<f32> = u_xlat0;
  let x_650 : vec4<f32> = u_xlat2;
  let x_653 : vec3<f32> = u_xlat1;
  let x_654 : vec3<f32> = ((vec3<f32>(x_648.x, x_648.z, x_648.w) * vec3<f32>(x_650.x, x_650.z, x_650.w)) + x_653);
  let x_655 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  let x_659 : f32 = vs_TEXCOORD1.w;
  let x_661 : f32 = x_46.x_ProjectionParams.y;
  u_xlat21 = (x_659 / x_661);
  let x_663 : f32 = u_xlat21;
  u_xlat21 = (-(x_663) + 1.0f);
  let x_666 : f32 = u_xlat21;
  let x_668 : f32 = x_46.x_ProjectionParams.z;
  u_xlat21 = (x_666 * x_668);
  let x_670 : f32 = u_xlat21;
  u_xlat21 = max(x_670, 0.0f);
  let x_672 : f32 = u_xlat21;
  let x_674 : f32 = x_46.unity_FogParams.x;
  u_xlat21 = (x_672 * x_674);
  let x_676 : f32 = u_xlat21;
  let x_677 : f32 = u_xlat21;
  u_xlat21 = (x_676 * -(x_677));
  let x_680 : f32 = u_xlat21;
  u_xlat21 = exp2(x_680);
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : f32 = u_xlat21;
  let x_688 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(x_686, x_686, x_686));
  let x_689 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlatb23 : bool;

var<private> u_xlat24 : f32;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat25 : f32;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

var<private> u_xlat7 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_349 : vec3<f32>;
  var txVec0 : vec4<f32>;
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
  let x_232 : vec3<f32> = vs_TEXCOORD5;
  let x_236 : vec3<f32> = x_46.x_WorldSpaceCameraPos;
  let x_237 : vec3<f32> = (-(x_232) + x_236);
  let x_238 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_243 : f32 = x_46.unity_MatrixV[0i].z;
  u_xlat6.x = x_243;
  let x_246 : f32 = x_46.unity_MatrixV[1i].z;
  u_xlat6.y = x_246;
  let x_250 : f32 = x_46.unity_MatrixV[2i].z;
  u_xlat6.z = x_250;
  let x_252 : vec4<f32> = u_xlat5;
  let x_254 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(vec3<f32>(x_252.x, x_252.y, x_252.z), x_254);
  let x_256 : vec3<f32> = vs_TEXCOORD5;
  let x_259 : vec4<f32> = x_46.unity_ShadowFadeCenterAndType;
  let x_262 : vec3<f32> = (x_256 + -(vec3<f32>(x_259.x, x_259.y, x_259.z)));
  let x_263 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec4<f32> = u_xlat5;
  let x_268 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_271);
  let x_273 : f32 = u_xlat22;
  let x_275 : f32 = u_xlat23;
  u_xlat23 = (-(x_273) + x_275);
  let x_279 : f32 = x_46.unity_ShadowFadeCenterAndType.w;
  let x_280 : f32 = u_xlat23;
  let x_282 : f32 = u_xlat22;
  u_xlat22 = ((x_279 * x_280) + x_282);
  let x_284 : f32 = u_xlat22;
  let x_287 : f32 = x_46.x_LightShadowData.z;
  let x_290 : f32 = x_46.x_LightShadowData.w;
  u_xlat22 = ((x_284 * x_287) + x_290);
  let x_292 : f32 = u_xlat22;
  u_xlat22 = clamp(x_292, 0.0f, 1.0f);
  let x_300 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_300 == 1.0f);
  let x_302 : bool = u_xlatb23;
  if (x_302) {
    let x_306 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_306 == 1.0f);
    let x_308 : vec3<f32> = vs_TEXCOORD5;
    let x_312 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_314 : vec3<f32> = (vec3<f32>(x_308.y, x_308.y, x_308.y) * vec3<f32>(x_312.x, x_312.y, x_312.z));
    let x_315 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_318 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_320 : vec3<f32> = vs_TEXCOORD5;
    let x_323 : vec4<f32> = u_xlat5;
    let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.x, x_320.x, x_320.x)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
    let x_326 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
    let x_329 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_331 : vec3<f32> = vs_TEXCOORD5;
    let x_334 : vec4<f32> = u_xlat5;
    let x_336 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.z, x_331.z, x_331.z)) + vec3<f32>(x_334.x, x_334.y, x_334.z));
    let x_337 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
    let x_339 : vec4<f32> = u_xlat5;
    let x_342 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_344 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) + vec3<f32>(x_342.x, x_342.y, x_342.z));
    let x_345 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
    let x_347 : bool = u_xlatb23;
    if (x_347) {
      let x_352 : vec4<f32> = u_xlat5;
      x_349 = vec3<f32>(x_352.x, x_352.y, x_352.z);
    } else {
      let x_355 : vec3<f32> = vs_TEXCOORD5;
      x_349 = x_355;
    }
    let x_356 : vec3<f32> = x_349;
    let x_357 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
    let x_359 : vec4<f32> = u_xlat5;
    let x_363 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_365 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) + -(x_363));
    let x_366 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
    let x_368 : vec4<f32> = u_xlat5;
    let x_372 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_373 : vec3<f32> = (vec3<f32>(x_368.x, x_368.y, x_368.z) * x_372);
    let x_374 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_374.x, x_373.x, x_373.y, x_373.z);
    let x_377 : f32 = u_xlat5.y;
    u_xlat23 = ((x_377 * 0.25f) + 0.75f);
    let x_384 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_384 * 0.5f) + 0.75f);
    let x_388 : f32 = u_xlat23;
    let x_389 : f32 = u_xlat24;
    u_xlat5.x = max(x_388, x_389);
    let x_400 : vec4<f32> = u_xlat5;
    let x_402 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_400.x, x_400.z, x_400.w));
    u_xlat5 = x_402;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_408 : vec4<f32> = u_xlat5;
  let x_410 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_408, x_410);
  let x_412 : f32 = u_xlat23;
  u_xlat23 = clamp(x_412, 0.0f, 1.0f);
  let x_414 : vec3<f32> = vs_TEXCOORD5;
  let x_416 : vec4<f32> = x_46.x_LightPositionRange;
  let x_419 : vec3<f32> = (x_414 + -(vec3<f32>(x_416.x, x_416.y, x_416.z)));
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_423 : f32 = u_xlat5.y;
  let x_426 : f32 = u_xlat5.x;
  u_xlat24 = max(abs(x_423), abs(x_426));
  let x_430 : f32 = u_xlat5.z;
  let x_432 : f32 = u_xlat24;
  u_xlat24 = max(abs(x_430), x_432);
  let x_434 : f32 = u_xlat24;
  let x_436 : f32 = x_46.x_LightProjectionParams.z;
  u_xlat24 = (x_434 + -(x_436));
  let x_439 : f32 = u_xlat24;
  u_xlat24 = max(x_439, 0.00001f);
  let x_442 : f32 = u_xlat24;
  let x_444 : f32 = x_46.x_LightProjectionParams.w;
  u_xlat24 = (x_442 * x_444);
  let x_447 : f32 = x_46.x_LightProjectionParams.y;
  let x_448 : f32 = u_xlat24;
  u_xlat24 = (x_447 / x_448);
  let x_450 : f32 = u_xlat24;
  let x_452 : f32 = x_46.x_LightProjectionParams.x;
  u_xlat24 = (x_450 + -(x_452));
  let x_455 : f32 = u_xlat24;
  u_xlat24 = (-(x_455) + 1.0f);
  let x_460 : vec4<f32> = u_xlat5;
  let x_461 : vec3<f32> = vec3<f32>(x_460.x, x_460.y, x_460.z);
  let x_462 : f32 = u_xlat24;
  txVec0 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462);
  let x_475 : vec4<f32> = txVec0;
  let x_477 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_475.xyz, x_475.w);
  u_xlat24 = x_477;
  let x_480 : f32 = x_46.x_LightShadowData.x;
  u_xlat25 = (-(x_480) + 1.0f);
  let x_483 : f32 = u_xlat24;
  let x_484 : f32 = u_xlat25;
  let x_487 : f32 = x_46.x_LightShadowData.x;
  u_xlat24 = ((x_483 * x_484) + x_487);
  let x_489 : f32 = u_xlat23;
  let x_490 : f32 = u_xlat24;
  u_xlat23 = (x_489 + -(x_490));
  let x_493 : f32 = u_xlat22;
  let x_494 : f32 = u_xlat23;
  let x_496 : f32 = u_xlat24;
  u_xlat22 = ((x_493 * x_494) + x_496);
  let x_498 : vec3<f32> = u_xlat4;
  let x_499 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(x_498, x_499);
  let x_506 : f32 = u_xlat23;
  let x_508 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_506, x_506));
  u_xlat23 = x_508.x;
  let x_510 : f32 = u_xlat22;
  let x_511 : f32 = u_xlat23;
  u_xlat22 = (x_510 * x_511);
  let x_515 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_515;
  let x_518 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_518;
  let x_521 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_521;
  let x_523 : vec3<f32> = u_xlat4;
  let x_524 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(x_523, x_524);
  let x_526 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_526);
  let x_528 : f32 = u_xlat23;
  let x_530 : vec3<f32> = u_xlat4;
  let x_531 : vec3<f32> = (vec3<f32>(x_528, x_528, x_528) * x_530);
  let x_532 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : f32 = u_xlat22;
  let x_538 : vec4<f32> = x_46.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_534, x_534, x_534) * vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_543 : f32 = u_xlat0.y;
  let x_547 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_543) * x_547) + 1.0f);
  let x_550 : vec3<f32> = u_xlat4;
  let x_551 : f32 = u_xlat23;
  let x_554 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_550 * vec3<f32>(x_551, x_551, x_551)) + -(x_554));
  let x_557 : vec3<f32> = u_xlat4;
  let x_558 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_557, x_558);
  let x_560 : f32 = u_xlat22;
  u_xlat22 = max(x_560, 0.001f);
  let x_563 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_563);
  let x_565 : f32 = u_xlat22;
  let x_567 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_565, x_565, x_565) * x_567);
  let x_569 : vec4<f32> = u_xlat2;
  let x_571 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_569.x, x_569.y, x_569.z), -(x_571));
  let x_574 : vec4<f32> = u_xlat2;
  let x_576 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_574.x, x_574.y, x_574.z), vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : f32 = u_xlat23;
  u_xlat23 = clamp(x_579, 0.0f, 1.0f);
  let x_581 : vec4<f32> = u_xlat2;
  let x_583 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_581.x, x_581.y, x_581.z), x_583);
  let x_587 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_587, 0.0f, 1.0f);
  let x_590 : vec4<f32> = u_xlat5;
  let x_592 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_590.x, x_590.y, x_590.z), x_592);
  let x_596 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_596, 0.0f, 1.0f);
  let x_601 : f32 = u_xlat9.x;
  let x_603 : f32 = u_xlat9.x;
  u_xlat16 = (x_601 * x_603);
  let x_605 : f32 = u_xlat16;
  let x_607 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_605, x_605), vec2<f32>(x_607, x_607));
  let x_610 : f32 = u_xlat16;
  u_xlat16 = (x_610 + -0.5f);
  let x_613 : f32 = u_xlat23;
  u_xlat3.x = (-(x_613) + 1.0f);
  let x_619 : f32 = u_xlat3.x;
  let x_621 : f32 = u_xlat3.x;
  u_xlat10 = (x_619 * x_621);
  let x_623 : f32 = u_xlat10;
  let x_624 : f32 = u_xlat10;
  u_xlat10 = (x_623 * x_624);
  let x_627 : f32 = u_xlat3.x;
  let x_628 : f32 = u_xlat10;
  u_xlat3.x = (x_627 * x_628);
  let x_631 : f32 = u_xlat16;
  let x_633 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_631 * x_633) + 1.0f);
  let x_637 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_637)) + 1.0f);
  let x_642 : f32 = u_xlat10;
  let x_643 : f32 = u_xlat10;
  u_xlat17 = (x_642 * x_643);
  let x_645 : f32 = u_xlat17;
  let x_646 : f32 = u_xlat17;
  u_xlat17 = (x_645 * x_646);
  let x_648 : f32 = u_xlat10;
  let x_649 : f32 = u_xlat17;
  u_xlat10 = (x_648 * x_649);
  let x_651 : f32 = u_xlat16;
  let x_652 : f32 = u_xlat10;
  u_xlat16 = ((x_651 * x_652) + 1.0f);
  let x_655 : f32 = u_xlat16;
  let x_657 : f32 = u_xlat3.x;
  u_xlat16 = (x_655 * x_657);
  let x_659 : f32 = u_xlat23;
  let x_660 : f32 = u_xlat16;
  u_xlat16 = (x_659 * x_660);
  let x_662 : f32 = u_xlat7;
  let x_663 : f32 = u_xlat7;
  u_xlat7 = (x_662 * x_663);
  let x_665 : f32 = u_xlat7;
  u_xlat7 = max(x_665, 0.002f);
  let x_668 : f32 = u_xlat7;
  u_xlat3.x = (-(x_668) + 1.0f);
  let x_672 : f32 = u_xlat22;
  let x_675 : f32 = u_xlat3.x;
  let x_677 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_672) * x_675) + x_677);
  let x_679 : f32 = u_xlat23;
  let x_681 : f32 = u_xlat3.x;
  let x_683 : f32 = u_xlat7;
  u_xlat3.x = ((x_679 * x_681) + x_683);
  let x_686 : f32 = u_xlat22;
  let x_689 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_686) * x_689);
  let x_691 : f32 = u_xlat23;
  let x_692 : f32 = u_xlat10;
  let x_694 : f32 = u_xlat22;
  u_xlat22 = ((x_691 * x_692) + x_694);
  let x_696 : f32 = u_xlat22;
  u_xlat22 = (x_696 + 0.00001f);
  let x_698 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_698);
  let x_700 : f32 = u_xlat7;
  let x_701 : f32 = u_xlat7;
  u_xlat7 = (x_700 * x_701);
  let x_704 : f32 = u_xlat2.x;
  let x_705 : f32 = u_xlat7;
  let x_708 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_704 * x_705) + -(x_708));
  let x_713 : f32 = u_xlat3.x;
  let x_715 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_713 * x_715) + 1.0f);
  let x_719 : f32 = u_xlat7;
  u_xlat7 = (x_719 * 0.318309873f);
  let x_723 : f32 = u_xlat2.x;
  let x_725 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_723 * x_725) + 0.0000001f);
  let x_730 : f32 = u_xlat7;
  let x_732 : f32 = u_xlat2.x;
  u_xlat7 = (x_730 / x_732);
  let x_734 : f32 = u_xlat7;
  let x_735 : f32 = u_xlat22;
  u_xlat7 = (x_734 * x_735);
  let x_737 : f32 = u_xlat23;
  let x_738 : f32 = u_xlat7;
  u_xlat7 = (x_737 * x_738);
  let x_740 : f32 = u_xlat7;
  u_xlat7 = (x_740 * 3.141592741f);
  let x_743 : f32 = u_xlat7;
  u_xlat7 = max(x_743, 0.0f);
  let x_745 : vec3<f32> = u_xlat1;
  let x_746 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_745, x_746);
  let x_749 : f32 = u_xlat22;
  u_xlatb22 = !((x_749 == 0.0f));
  let x_751 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_751);
  let x_753 : f32 = u_xlat7;
  let x_754 : f32 = u_xlat22;
  u_xlat7 = (x_753 * x_754);
  let x_756 : f32 = u_xlat16;
  let x_758 : vec3<f32> = u_xlat6;
  let x_759 : vec3<f32> = (vec3<f32>(x_756, x_756, x_756) * x_758);
  let x_760 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_759.x, x_760.y, x_759.y, x_759.z);
  let x_762 : vec3<f32> = u_xlat6;
  let x_763 : f32 = u_xlat7;
  u_xlat3 = (x_762 * vec3<f32>(x_763, x_763, x_763));
  let x_767 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_767) + 1.0f);
  let x_770 : f32 = u_xlat7;
  let x_771 : f32 = u_xlat7;
  u_xlat22 = (x_770 * x_771);
  let x_773 : f32 = u_xlat22;
  let x_774 : f32 = u_xlat22;
  u_xlat22 = (x_773 * x_774);
  let x_776 : f32 = u_xlat7;
  let x_777 : f32 = u_xlat22;
  u_xlat7 = (x_776 * x_777);
  let x_779 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_779) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_783 : vec3<f32> = u_xlat4;
  let x_784 : f32 = u_xlat7;
  let x_787 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_783 * vec3<f32>(x_784, x_784, x_784)) + x_787);
  let x_789 : vec3<f32> = u_xlat1;
  let x_790 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_789 * x_790);
  let x_794 : vec4<f32> = u_xlat0;
  let x_796 : vec4<f32> = u_xlat2;
  let x_799 : vec3<f32> = u_xlat1;
  let x_800 : vec3<f32> = ((vec3<f32>(x_794.x, x_794.z, x_794.w) * vec3<f32>(x_796.x, x_796.z, x_796.w)) + x_799);
  let x_801 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
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


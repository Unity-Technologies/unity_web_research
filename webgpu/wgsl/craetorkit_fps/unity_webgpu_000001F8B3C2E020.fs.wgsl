struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
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
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

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
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_348 : vec3<f32>;
  var u_xlat24 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat7 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
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
      let x_351 : vec4<f32> = u_xlat5;
      x_348 = vec3<f32>(x_351.x, x_351.y, x_351.z);
    } else {
      let x_354 : vec3<f32> = vs_TEXCOORD5;
      x_348 = x_354;
    }
    let x_355 : vec3<f32> = x_348;
    let x_356 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_358 : vec4<f32> = u_xlat5;
    let x_362 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_364 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) + -(x_362));
    let x_365 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_367 : vec4<f32> = u_xlat5;
    let x_371 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_372 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) * x_371);
    let x_373 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_373.x, x_372.x, x_372.y, x_372.z);
    let x_376 : f32 = u_xlat5.y;
    u_xlat23 = ((x_376 * 0.25f) + 0.75f);
    let x_383 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_383 * 0.5f) + 0.75f);
    let x_387 : f32 = u_xlat23;
    let x_388 : f32 = u_xlat24;
    u_xlat5.x = max(x_387, x_388);
    let x_399 : vec4<f32> = u_xlat5;
    let x_401 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_399.x, x_399.z, x_399.w));
    u_xlat5 = x_401;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_407 : vec4<f32> = u_xlat5;
  let x_410 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_407, x_410);
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
  let x_459 : vec4<f32> = u_xlat5;
  let x_460 : vec3<f32> = vec3<f32>(x_459.x, x_459.y, x_459.z);
  let x_461 : f32 = u_xlat24;
  txVec0 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461);
  let x_474 : vec4<f32> = txVec0;
  let x_476 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_474.xyz, x_474.w);
  u_xlat24 = x_476;
  let x_479 : f32 = x_46.x_LightShadowData.x;
  u_xlat25 = (-(x_479) + 1.0f);
  let x_482 : f32 = u_xlat24;
  let x_483 : f32 = u_xlat25;
  let x_486 : f32 = x_46.x_LightShadowData.x;
  u_xlat24 = ((x_482 * x_483) + x_486);
  let x_488 : f32 = u_xlat23;
  let x_489 : f32 = u_xlat24;
  u_xlat23 = (x_488 + -(x_489));
  let x_492 : f32 = u_xlat22;
  let x_493 : f32 = u_xlat23;
  let x_495 : f32 = u_xlat24;
  u_xlat22 = ((x_492 * x_493) + x_495);
  let x_497 : vec3<f32> = u_xlat4;
  let x_498 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(x_497, x_498);
  let x_505 : f32 = u_xlat23;
  let x_507 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_505, x_505));
  u_xlat23 = x_507.x;
  let x_509 : f32 = u_xlat22;
  let x_510 : f32 = u_xlat23;
  u_xlat22 = (x_509 * x_510);
  let x_514 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_514;
  let x_517 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_517;
  let x_520 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_520;
  let x_522 : vec3<f32> = u_xlat4;
  let x_523 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(x_522, x_523);
  let x_525 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_525);
  let x_527 : f32 = u_xlat23;
  let x_529 : vec3<f32> = u_xlat4;
  let x_530 : vec3<f32> = (vec3<f32>(x_527, x_527, x_527) * x_529);
  let x_531 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : f32 = u_xlat22;
  let x_537 : vec4<f32> = x_46.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_533, x_533, x_533) * vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_542 : f32 = u_xlat0.y;
  let x_546 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_542) * x_546) + 1.0f);
  let x_549 : vec3<f32> = u_xlat4;
  let x_550 : f32 = u_xlat23;
  let x_553 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_549 * vec3<f32>(x_550, x_550, x_550)) + -(x_553));
  let x_556 : vec3<f32> = u_xlat4;
  let x_557 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_556, x_557);
  let x_559 : f32 = u_xlat22;
  u_xlat22 = max(x_559, 0.001f);
  let x_562 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_562);
  let x_564 : f32 = u_xlat22;
  let x_566 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_564, x_564, x_564) * x_566);
  let x_568 : vec4<f32> = u_xlat2;
  let x_570 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_568.x, x_568.y, x_568.z), -(x_570));
  let x_573 : vec4<f32> = u_xlat2;
  let x_575 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_573.x, x_573.y, x_573.z), vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : f32 = u_xlat23;
  u_xlat23 = clamp(x_578, 0.0f, 1.0f);
  let x_580 : vec4<f32> = u_xlat2;
  let x_582 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_580.x, x_580.y, x_580.z), x_582);
  let x_586 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_586, 0.0f, 1.0f);
  let x_589 : vec4<f32> = u_xlat5;
  let x_591 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_589.x, x_589.y, x_589.z), x_591);
  let x_595 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_595, 0.0f, 1.0f);
  let x_600 : f32 = u_xlat9.x;
  let x_602 : f32 = u_xlat9.x;
  u_xlat16 = (x_600 * x_602);
  let x_604 : f32 = u_xlat16;
  let x_606 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_604, x_604), vec2<f32>(x_606, x_606));
  let x_609 : f32 = u_xlat16;
  u_xlat16 = (x_609 + -0.5f);
  let x_612 : f32 = u_xlat23;
  u_xlat3.x = (-(x_612) + 1.0f);
  let x_618 : f32 = u_xlat3.x;
  let x_620 : f32 = u_xlat3.x;
  u_xlat10 = (x_618 * x_620);
  let x_622 : f32 = u_xlat10;
  let x_623 : f32 = u_xlat10;
  u_xlat10 = (x_622 * x_623);
  let x_626 : f32 = u_xlat3.x;
  let x_627 : f32 = u_xlat10;
  u_xlat3.x = (x_626 * x_627);
  let x_630 : f32 = u_xlat16;
  let x_632 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_630 * x_632) + 1.0f);
  let x_636 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_636)) + 1.0f);
  let x_641 : f32 = u_xlat10;
  let x_642 : f32 = u_xlat10;
  u_xlat17 = (x_641 * x_642);
  let x_644 : f32 = u_xlat17;
  let x_645 : f32 = u_xlat17;
  u_xlat17 = (x_644 * x_645);
  let x_647 : f32 = u_xlat10;
  let x_648 : f32 = u_xlat17;
  u_xlat10 = (x_647 * x_648);
  let x_650 : f32 = u_xlat16;
  let x_651 : f32 = u_xlat10;
  u_xlat16 = ((x_650 * x_651) + 1.0f);
  let x_654 : f32 = u_xlat16;
  let x_656 : f32 = u_xlat3.x;
  u_xlat16 = (x_654 * x_656);
  let x_658 : f32 = u_xlat23;
  let x_659 : f32 = u_xlat16;
  u_xlat16 = (x_658 * x_659);
  let x_661 : f32 = u_xlat7;
  let x_662 : f32 = u_xlat7;
  u_xlat7 = (x_661 * x_662);
  let x_664 : f32 = u_xlat7;
  u_xlat7 = max(x_664, 0.002f);
  let x_667 : f32 = u_xlat7;
  u_xlat3.x = (-(x_667) + 1.0f);
  let x_671 : f32 = u_xlat22;
  let x_674 : f32 = u_xlat3.x;
  let x_676 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_671) * x_674) + x_676);
  let x_678 : f32 = u_xlat23;
  let x_680 : f32 = u_xlat3.x;
  let x_682 : f32 = u_xlat7;
  u_xlat3.x = ((x_678 * x_680) + x_682);
  let x_685 : f32 = u_xlat22;
  let x_688 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_685) * x_688);
  let x_690 : f32 = u_xlat23;
  let x_691 : f32 = u_xlat10;
  let x_693 : f32 = u_xlat22;
  u_xlat22 = ((x_690 * x_691) + x_693);
  let x_695 : f32 = u_xlat22;
  u_xlat22 = (x_695 + 0.00001f);
  let x_697 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_697);
  let x_699 : f32 = u_xlat7;
  let x_700 : f32 = u_xlat7;
  u_xlat7 = (x_699 * x_700);
  let x_703 : f32 = u_xlat2.x;
  let x_704 : f32 = u_xlat7;
  let x_707 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_703 * x_704) + -(x_707));
  let x_712 : f32 = u_xlat3.x;
  let x_714 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_712 * x_714) + 1.0f);
  let x_718 : f32 = u_xlat7;
  u_xlat7 = (x_718 * 0.318309873f);
  let x_722 : f32 = u_xlat2.x;
  let x_724 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_722 * x_724) + 0.0000001f);
  let x_729 : f32 = u_xlat7;
  let x_731 : f32 = u_xlat2.x;
  u_xlat7 = (x_729 / x_731);
  let x_733 : f32 = u_xlat7;
  let x_734 : f32 = u_xlat22;
  u_xlat7 = (x_733 * x_734);
  let x_736 : f32 = u_xlat23;
  let x_737 : f32 = u_xlat7;
  u_xlat7 = (x_736 * x_737);
  let x_739 : f32 = u_xlat7;
  u_xlat7 = (x_739 * 3.141592741f);
  let x_742 : f32 = u_xlat7;
  u_xlat7 = max(x_742, 0.0f);
  let x_744 : vec3<f32> = u_xlat1;
  let x_745 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_744, x_745);
  let x_748 : f32 = u_xlat22;
  u_xlatb22 = !((x_748 == 0.0f));
  let x_750 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_750);
  let x_752 : f32 = u_xlat7;
  let x_753 : f32 = u_xlat22;
  u_xlat7 = (x_752 * x_753);
  let x_755 : f32 = u_xlat16;
  let x_757 : vec3<f32> = u_xlat6;
  let x_758 : vec3<f32> = (vec3<f32>(x_755, x_755, x_755) * x_757);
  let x_759 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_758.x, x_759.y, x_758.y, x_758.z);
  let x_761 : vec3<f32> = u_xlat6;
  let x_762 : f32 = u_xlat7;
  u_xlat3 = (x_761 * vec3<f32>(x_762, x_762, x_762));
  let x_766 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_766) + 1.0f);
  let x_769 : f32 = u_xlat7;
  let x_770 : f32 = u_xlat7;
  u_xlat22 = (x_769 * x_770);
  let x_772 : f32 = u_xlat22;
  let x_773 : f32 = u_xlat22;
  u_xlat22 = (x_772 * x_773);
  let x_775 : f32 = u_xlat7;
  let x_776 : f32 = u_xlat22;
  u_xlat7 = (x_775 * x_776);
  let x_778 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_778) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_782 : vec3<f32> = u_xlat4;
  let x_783 : f32 = u_xlat7;
  let x_786 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_782 * vec3<f32>(x_783, x_783, x_783)) + x_786);
  let x_788 : vec3<f32> = u_xlat1;
  let x_789 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_788 * x_789);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : vec4<f32> = u_xlat2;
  let x_796 : vec3<f32> = u_xlat1;
  let x_797 : vec3<f32> = ((vec3<f32>(x_791.x, x_791.z, x_791.w) * vec3<f32>(x_793.x, x_793.z, x_793.w)) + x_796);
  let x_798 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_802 : f32 = vs_TEXCOORD1.w;
  let x_804 : f32 = x_46.x_ProjectionParams.y;
  u_xlat21 = (x_802 / x_804);
  let x_806 : f32 = u_xlat21;
  u_xlat21 = (-(x_806) + 1.0f);
  let x_809 : f32 = u_xlat21;
  let x_811 : f32 = x_46.x_ProjectionParams.z;
  u_xlat21 = (x_809 * x_811);
  let x_813 : f32 = u_xlat21;
  u_xlat21 = max(x_813, 0.0f);
  let x_815 : f32 = u_xlat21;
  let x_818 : f32 = x_46.unity_FogParams.x;
  u_xlat21 = (x_815 * x_818);
  let x_820 : f32 = u_xlat21;
  let x_821 : f32 = u_xlat21;
  u_xlat21 = (x_820 * -(x_821));
  let x_824 : f32 = u_xlat21;
  u_xlat21 = exp2(x_824);
  let x_828 : vec4<f32> = u_xlat0;
  let x_830 : f32 = u_xlat21;
  let x_832 : vec3<f32> = (vec3<f32>(x_828.x, x_828.y, x_828.z) * vec3<f32>(x_830, x_830, x_830));
  let x_833 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
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


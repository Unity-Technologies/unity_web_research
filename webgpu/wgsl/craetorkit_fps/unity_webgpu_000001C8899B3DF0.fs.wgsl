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
  let x_409 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_407, x_409);
  let x_411 : f32 = u_xlat23;
  u_xlat23 = clamp(x_411, 0.0f, 1.0f);
  let x_413 : vec3<f32> = vs_TEXCOORD5;
  let x_415 : vec4<f32> = x_46.x_LightPositionRange;
  let x_418 : vec3<f32> = (x_413 + -(vec3<f32>(x_415.x, x_415.y, x_415.z)));
  let x_419 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_422 : f32 = u_xlat5.y;
  let x_425 : f32 = u_xlat5.x;
  u_xlat24 = max(abs(x_422), abs(x_425));
  let x_429 : f32 = u_xlat5.z;
  let x_431 : f32 = u_xlat24;
  u_xlat24 = max(abs(x_429), x_431);
  let x_433 : f32 = u_xlat24;
  let x_435 : f32 = x_46.x_LightProjectionParams.z;
  u_xlat24 = (x_433 + -(x_435));
  let x_438 : f32 = u_xlat24;
  u_xlat24 = max(x_438, 0.00001f);
  let x_441 : f32 = u_xlat24;
  let x_443 : f32 = x_46.x_LightProjectionParams.w;
  u_xlat24 = (x_441 * x_443);
  let x_446 : f32 = x_46.x_LightProjectionParams.y;
  let x_447 : f32 = u_xlat24;
  u_xlat24 = (x_446 / x_447);
  let x_449 : f32 = u_xlat24;
  let x_451 : f32 = x_46.x_LightProjectionParams.x;
  u_xlat24 = (x_449 + -(x_451));
  let x_454 : f32 = u_xlat24;
  u_xlat24 = (-(x_454) + 1.0f);
  let x_458 : vec4<f32> = u_xlat5;
  let x_459 : vec3<f32> = vec3<f32>(x_458.x, x_458.y, x_458.z);
  let x_460 : f32 = u_xlat24;
  txVec0 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460);
  let x_473 : vec4<f32> = txVec0;
  let x_475 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_473.xyz, x_473.w);
  u_xlat24 = x_475;
  let x_478 : f32 = x_46.x_LightShadowData.x;
  u_xlat25 = (-(x_478) + 1.0f);
  let x_481 : f32 = u_xlat24;
  let x_482 : f32 = u_xlat25;
  let x_485 : f32 = x_46.x_LightShadowData.x;
  u_xlat24 = ((x_481 * x_482) + x_485);
  let x_487 : f32 = u_xlat23;
  let x_488 : f32 = u_xlat24;
  u_xlat23 = (x_487 + -(x_488));
  let x_491 : f32 = u_xlat22;
  let x_492 : f32 = u_xlat23;
  let x_494 : f32 = u_xlat24;
  u_xlat22 = ((x_491 * x_492) + x_494);
  let x_496 : vec3<f32> = u_xlat4;
  let x_497 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(x_496, x_497);
  let x_504 : f32 = u_xlat23;
  let x_506 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_504, x_504));
  u_xlat23 = x_506.x;
  let x_508 : f32 = u_xlat22;
  let x_509 : f32 = u_xlat23;
  u_xlat22 = (x_508 * x_509);
  let x_513 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_513;
  let x_516 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_516;
  let x_519 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_519;
  let x_521 : vec3<f32> = u_xlat4;
  let x_522 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(x_521, x_522);
  let x_524 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_524);
  let x_526 : f32 = u_xlat23;
  let x_528 : vec3<f32> = u_xlat4;
  let x_529 : vec3<f32> = (vec3<f32>(x_526, x_526, x_526) * x_528);
  let x_530 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : f32 = u_xlat22;
  let x_536 : vec4<f32> = x_46.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_532, x_532, x_532) * vec3<f32>(x_536.x, x_536.y, x_536.z));
  let x_541 : f32 = u_xlat0.y;
  let x_545 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_541) * x_545) + 1.0f);
  let x_548 : vec3<f32> = u_xlat4;
  let x_549 : f32 = u_xlat23;
  let x_552 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_548 * vec3<f32>(x_549, x_549, x_549)) + -(x_552));
  let x_555 : vec3<f32> = u_xlat4;
  let x_556 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_555, x_556);
  let x_558 : f32 = u_xlat22;
  u_xlat22 = max(x_558, 0.001f);
  let x_561 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_561);
  let x_563 : f32 = u_xlat22;
  let x_565 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_563, x_563, x_563) * x_565);
  let x_567 : vec4<f32> = u_xlat2;
  let x_569 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_567.x, x_567.y, x_567.z), -(x_569));
  let x_572 : vec4<f32> = u_xlat2;
  let x_574 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_572.x, x_572.y, x_572.z), vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : f32 = u_xlat23;
  u_xlat23 = clamp(x_577, 0.0f, 1.0f);
  let x_579 : vec4<f32> = u_xlat2;
  let x_581 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_579.x, x_579.y, x_579.z), x_581);
  let x_585 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_585, 0.0f, 1.0f);
  let x_588 : vec4<f32> = u_xlat5;
  let x_590 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_588.x, x_588.y, x_588.z), x_590);
  let x_594 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_594, 0.0f, 1.0f);
  let x_599 : f32 = u_xlat9.x;
  let x_601 : f32 = u_xlat9.x;
  u_xlat16 = (x_599 * x_601);
  let x_603 : f32 = u_xlat16;
  let x_605 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_603, x_603), vec2<f32>(x_605, x_605));
  let x_608 : f32 = u_xlat16;
  u_xlat16 = (x_608 + -0.5f);
  let x_611 : f32 = u_xlat23;
  u_xlat3.x = (-(x_611) + 1.0f);
  let x_617 : f32 = u_xlat3.x;
  let x_619 : f32 = u_xlat3.x;
  u_xlat10 = (x_617 * x_619);
  let x_621 : f32 = u_xlat10;
  let x_622 : f32 = u_xlat10;
  u_xlat10 = (x_621 * x_622);
  let x_625 : f32 = u_xlat3.x;
  let x_626 : f32 = u_xlat10;
  u_xlat3.x = (x_625 * x_626);
  let x_629 : f32 = u_xlat16;
  let x_631 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_629 * x_631) + 1.0f);
  let x_635 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_635)) + 1.0f);
  let x_640 : f32 = u_xlat10;
  let x_641 : f32 = u_xlat10;
  u_xlat17 = (x_640 * x_641);
  let x_643 : f32 = u_xlat17;
  let x_644 : f32 = u_xlat17;
  u_xlat17 = (x_643 * x_644);
  let x_646 : f32 = u_xlat10;
  let x_647 : f32 = u_xlat17;
  u_xlat10 = (x_646 * x_647);
  let x_649 : f32 = u_xlat16;
  let x_650 : f32 = u_xlat10;
  u_xlat16 = ((x_649 * x_650) + 1.0f);
  let x_653 : f32 = u_xlat16;
  let x_655 : f32 = u_xlat3.x;
  u_xlat16 = (x_653 * x_655);
  let x_657 : f32 = u_xlat23;
  let x_658 : f32 = u_xlat16;
  u_xlat16 = (x_657 * x_658);
  let x_660 : f32 = u_xlat7;
  let x_661 : f32 = u_xlat7;
  u_xlat7 = (x_660 * x_661);
  let x_663 : f32 = u_xlat7;
  u_xlat7 = max(x_663, 0.002f);
  let x_666 : f32 = u_xlat7;
  u_xlat3.x = (-(x_666) + 1.0f);
  let x_670 : f32 = u_xlat22;
  let x_673 : f32 = u_xlat3.x;
  let x_675 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_670) * x_673) + x_675);
  let x_677 : f32 = u_xlat23;
  let x_679 : f32 = u_xlat3.x;
  let x_681 : f32 = u_xlat7;
  u_xlat3.x = ((x_677 * x_679) + x_681);
  let x_684 : f32 = u_xlat22;
  let x_687 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_684) * x_687);
  let x_689 : f32 = u_xlat23;
  let x_690 : f32 = u_xlat10;
  let x_692 : f32 = u_xlat22;
  u_xlat22 = ((x_689 * x_690) + x_692);
  let x_694 : f32 = u_xlat22;
  u_xlat22 = (x_694 + 0.00001f);
  let x_696 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_696);
  let x_698 : f32 = u_xlat7;
  let x_699 : f32 = u_xlat7;
  u_xlat7 = (x_698 * x_699);
  let x_702 : f32 = u_xlat2.x;
  let x_703 : f32 = u_xlat7;
  let x_706 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_702 * x_703) + -(x_706));
  let x_711 : f32 = u_xlat3.x;
  let x_713 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_711 * x_713) + 1.0f);
  let x_717 : f32 = u_xlat7;
  u_xlat7 = (x_717 * 0.318309873f);
  let x_721 : f32 = u_xlat2.x;
  let x_723 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_721 * x_723) + 0.0000001f);
  let x_728 : f32 = u_xlat7;
  let x_730 : f32 = u_xlat2.x;
  u_xlat7 = (x_728 / x_730);
  let x_732 : f32 = u_xlat7;
  let x_733 : f32 = u_xlat22;
  u_xlat7 = (x_732 * x_733);
  let x_735 : f32 = u_xlat23;
  let x_736 : f32 = u_xlat7;
  u_xlat7 = (x_735 * x_736);
  let x_738 : f32 = u_xlat7;
  u_xlat7 = (x_738 * 3.141592741f);
  let x_741 : f32 = u_xlat7;
  u_xlat7 = max(x_741, 0.0f);
  let x_743 : vec3<f32> = u_xlat1;
  let x_744 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_743, x_744);
  let x_747 : f32 = u_xlat22;
  u_xlatb22 = !((x_747 == 0.0f));
  let x_749 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_749);
  let x_751 : f32 = u_xlat7;
  let x_752 : f32 = u_xlat22;
  u_xlat7 = (x_751 * x_752);
  let x_754 : f32 = u_xlat16;
  let x_756 : vec3<f32> = u_xlat6;
  let x_757 : vec3<f32> = (vec3<f32>(x_754, x_754, x_754) * x_756);
  let x_758 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_757.x, x_758.y, x_757.y, x_757.z);
  let x_760 : vec3<f32> = u_xlat6;
  let x_761 : f32 = u_xlat7;
  u_xlat3 = (x_760 * vec3<f32>(x_761, x_761, x_761));
  let x_765 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_765) + 1.0f);
  let x_768 : f32 = u_xlat7;
  let x_769 : f32 = u_xlat7;
  u_xlat22 = (x_768 * x_769);
  let x_771 : f32 = u_xlat22;
  let x_772 : f32 = u_xlat22;
  u_xlat22 = (x_771 * x_772);
  let x_774 : f32 = u_xlat7;
  let x_775 : f32 = u_xlat22;
  u_xlat7 = (x_774 * x_775);
  let x_777 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_777) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_781 : vec3<f32> = u_xlat4;
  let x_782 : f32 = u_xlat7;
  let x_785 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_781 * vec3<f32>(x_782, x_782, x_782)) + x_785);
  let x_787 : vec3<f32> = u_xlat1;
  let x_788 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_787 * x_788);
  let x_792 : vec4<f32> = u_xlat0;
  let x_794 : vec4<f32> = u_xlat2;
  let x_797 : vec3<f32> = u_xlat1;
  let x_798 : vec3<f32> = ((vec3<f32>(x_792.x, x_792.z, x_792.w) * vec3<f32>(x_794.x, x_794.z, x_794.w)) + x_797);
  let x_799 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
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


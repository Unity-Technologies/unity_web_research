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
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

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
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_359 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
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
  let x_206 : vec2<f32> = (vec2<f32>(x_199.y, x_199.y) * vec2<f32>(x_204.x, x_204.y));
  let x_207 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_206.x, x_206.y, x_207.z);
  let x_211 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_213 : vec3<f32> = vs_TEXCOORD5;
  let x_216 : vec3<f32> = u_xlat4;
  let x_218 : vec2<f32> = ((vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_213.x, x_213.x)) + vec2<f32>(x_216.x, x_216.y));
  let x_219 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_223 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_225 : vec3<f32> = vs_TEXCOORD5;
  let x_228 : vec3<f32> = u_xlat4;
  let x_230 : vec2<f32> = ((vec2<f32>(x_223.x, x_223.y) * vec2<f32>(x_225.z, x_225.z)) + vec2<f32>(x_228.x, x_228.y));
  let x_231 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_230.x, x_230.y, x_231.z);
  let x_233 : vec3<f32> = u_xlat4;
  let x_237 : vec4<f32> = x_46.unity_WorldToLight[3i];
  let x_239 : vec2<f32> = (vec2<f32>(x_233.x, x_233.y) + vec2<f32>(x_237.x, x_237.y));
  let x_240 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_239.x, x_239.y, x_240.z);
  let x_243 : vec3<f32> = vs_TEXCOORD5;
  let x_247 : vec3<f32> = x_46.x_WorldSpaceCameraPos;
  let x_248 : vec3<f32> = (-(x_243) + x_247);
  let x_249 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_254 : f32 = x_46.unity_MatrixV[0i].z;
  u_xlat6.x = x_254;
  let x_257 : f32 = x_46.unity_MatrixV[1i].z;
  u_xlat6.y = x_257;
  let x_261 : f32 = x_46.unity_MatrixV[2i].z;
  u_xlat6.z = x_261;
  let x_264 : vec4<f32> = u_xlat5;
  let x_266 : vec3<f32> = u_xlat6;
  u_xlat23 = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), x_266);
  let x_268 : vec3<f32> = vs_TEXCOORD5;
  let x_271 : vec4<f32> = x_46.unity_ShadowFadeCenterAndType;
  let x_274 : vec3<f32> = (x_268 + -(vec3<f32>(x_271.x, x_271.y, x_271.z)));
  let x_275 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_278 : vec4<f32> = u_xlat5;
  let x_280 : vec4<f32> = u_xlat5;
  u_xlat24 = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : f32 = u_xlat24;
  u_xlat24 = sqrt(x_283);
  let x_285 : f32 = u_xlat23;
  let x_287 : f32 = u_xlat24;
  u_xlat24 = (-(x_285) + x_287);
  let x_291 : f32 = x_46.unity_ShadowFadeCenterAndType.w;
  let x_292 : f32 = u_xlat24;
  let x_294 : f32 = u_xlat23;
  u_xlat23 = ((x_291 * x_292) + x_294);
  let x_296 : f32 = u_xlat23;
  let x_298 : f32 = x_46.x_LightShadowData.z;
  let x_301 : f32 = x_46.x_LightShadowData.w;
  u_xlat23 = ((x_296 * x_298) + x_301);
  let x_303 : f32 = u_xlat23;
  u_xlat23 = clamp(x_303, 0.0f, 1.0f);
  let x_311 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb24 = (x_311 == 1.0f);
  let x_313 : bool = u_xlatb24;
  if (x_313) {
    let x_317 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb24 = (x_317 == 1.0f);
    let x_319 : vec3<f32> = vs_TEXCOORD5;
    let x_323 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_325 : vec3<f32> = (vec3<f32>(x_319.y, x_319.y, x_319.y) * vec3<f32>(x_323.x, x_323.y, x_323.z));
    let x_326 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
    let x_329 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_331 : vec3<f32> = vs_TEXCOORD5;
    let x_334 : vec4<f32> = u_xlat5;
    let x_336 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.z) * vec3<f32>(x_331.x, x_331.x, x_331.x)) + vec3<f32>(x_334.x, x_334.y, x_334.z));
    let x_337 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
    let x_340 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_342 : vec3<f32> = vs_TEXCOORD5;
    let x_345 : vec4<f32> = u_xlat5;
    let x_347 : vec3<f32> = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342.z, x_342.z, x_342.z)) + vec3<f32>(x_345.x, x_345.y, x_345.z));
    let x_348 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
    let x_350 : vec4<f32> = u_xlat5;
    let x_353 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_355 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) + vec3<f32>(x_353.x, x_353.y, x_353.z));
    let x_356 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_358 : bool = u_xlatb24;
    if (x_358) {
      let x_362 : vec4<f32> = u_xlat5;
      x_359 = vec3<f32>(x_362.x, x_362.y, x_362.z);
    } else {
      let x_365 : vec3<f32> = vs_TEXCOORD5;
      x_359 = x_365;
    }
    let x_366 : vec3<f32> = x_359;
    let x_367 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
    let x_369 : vec4<f32> = u_xlat5;
    let x_373 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_375 : vec3<f32> = (vec3<f32>(x_369.x, x_369.y, x_369.z) + -(x_373));
    let x_376 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
    let x_378 : vec4<f32> = u_xlat5;
    let x_382 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_383 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) * x_382);
    let x_384 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_384.x, x_383.x, x_383.y, x_383.z);
    let x_387 : f32 = u_xlat5.y;
    u_xlat24 = ((x_387 * 0.25f) + 0.75f);
    let x_395 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat18.x = ((x_395 * 0.5f) + 0.75f);
    let x_400 : f32 = u_xlat24;
    let x_402 : f32 = u_xlat18.x;
    u_xlat5.x = max(x_400, x_402);
    let x_413 : vec4<f32> = u_xlat5;
    let x_415 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_413.x, x_413.z, x_413.w));
    u_xlat5 = x_415;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_421 : vec4<f32> = u_xlat5;
  let x_423 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat24 = dot(x_421, x_423);
  let x_425 : f32 = u_xlat24;
  u_xlat24 = clamp(x_425, 0.0f, 1.0f);
  let x_428 : vec4<f32> = vs_TEXCOORD7;
  let x_430 : vec4<f32> = vs_TEXCOORD7;
  u_xlat18 = (vec2<f32>(x_428.x, x_428.y) / vec2<f32>(x_430.w, x_430.w));
  let x_438 : vec2<f32> = u_xlat18;
  let x_439 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_438);
  u_xlat18.x = x_439.x;
  let x_442 : f32 = u_xlat24;
  let x_444 : f32 = u_xlat18.x;
  u_xlat24 = (x_442 + -(x_444));
  let x_447 : f32 = u_xlat23;
  let x_448 : f32 = u_xlat24;
  let x_451 : f32 = u_xlat18.x;
  u_xlat23 = ((x_447 * x_448) + x_451);
  let x_458 : vec3<f32> = u_xlat4;
  let x_460 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_458.x, x_458.y));
  u_xlat24 = x_460.w;
  let x_462 : f32 = u_xlat23;
  let x_463 : f32 = u_xlat24;
  u_xlat23 = (x_462 * x_463);
  let x_465 : f32 = u_xlat23;
  let x_469 : vec4<f32> = x_46.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_465, x_465, x_465) * vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_474 : f32 = u_xlat0.y;
  let x_478 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_474) * x_478) + 1.0f);
  let x_483 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_483;
  let x_486 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_486;
  let x_489 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_489;
  let x_491 : vec4<f32> = vs_TEXCOORD1;
  let x_494 : f32 = u_xlat22;
  let x_497 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_491.x, x_491.y, x_491.z)) * vec3<f32>(x_494, x_494, x_494)) + vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : vec3<f32> = u_xlat6;
  let x_501 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_500, x_501);
  let x_503 : f32 = u_xlat22;
  u_xlat22 = max(x_503, 0.001f);
  let x_506 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_506);
  let x_508 : f32 = u_xlat22;
  let x_510 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_508, x_508, x_508) * x_510);
  let x_512 : vec4<f32> = u_xlat2;
  let x_514 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_512.x, x_512.y, x_512.z), -(x_514));
  let x_517 : vec4<f32> = u_xlat2;
  let x_519 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_517.x, x_517.y, x_517.z), vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : f32 = u_xlat23;
  u_xlat23 = clamp(x_522, 0.0f, 1.0f);
  let x_524 : vec4<f32> = u_xlat2;
  let x_526 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_524.x, x_524.y, x_524.z), x_526);
  let x_530 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_530, 0.0f, 1.0f);
  let x_533 : vec4<f32> = u_xlat5;
  let x_535 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), x_535);
  let x_539 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_539, 0.0f, 1.0f);
  let x_544 : f32 = u_xlat9.x;
  let x_546 : f32 = u_xlat9.x;
  u_xlat16 = (x_544 * x_546);
  let x_548 : f32 = u_xlat16;
  let x_550 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_548, x_548), vec2<f32>(x_550, x_550));
  let x_553 : f32 = u_xlat16;
  u_xlat16 = (x_553 + -0.5f);
  let x_556 : f32 = u_xlat23;
  u_xlat3.x = (-(x_556) + 1.0f);
  let x_562 : f32 = u_xlat3.x;
  let x_564 : f32 = u_xlat3.x;
  u_xlat10 = (x_562 * x_564);
  let x_566 : f32 = u_xlat10;
  let x_567 : f32 = u_xlat10;
  u_xlat10 = (x_566 * x_567);
  let x_570 : f32 = u_xlat3.x;
  let x_571 : f32 = u_xlat10;
  u_xlat3.x = (x_570 * x_571);
  let x_574 : f32 = u_xlat16;
  let x_576 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_574 * x_576) + 1.0f);
  let x_580 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_580)) + 1.0f);
  let x_585 : f32 = u_xlat10;
  let x_586 : f32 = u_xlat10;
  u_xlat17 = (x_585 * x_586);
  let x_588 : f32 = u_xlat17;
  let x_589 : f32 = u_xlat17;
  u_xlat17 = (x_588 * x_589);
  let x_591 : f32 = u_xlat10;
  let x_592 : f32 = u_xlat17;
  u_xlat10 = (x_591 * x_592);
  let x_594 : f32 = u_xlat16;
  let x_595 : f32 = u_xlat10;
  u_xlat16 = ((x_594 * x_595) + 1.0f);
  let x_598 : f32 = u_xlat16;
  let x_600 : f32 = u_xlat3.x;
  u_xlat16 = (x_598 * x_600);
  let x_602 : f32 = u_xlat23;
  let x_603 : f32 = u_xlat16;
  u_xlat16 = (x_602 * x_603);
  let x_605 : f32 = u_xlat7;
  let x_606 : f32 = u_xlat7;
  u_xlat7 = (x_605 * x_606);
  let x_608 : f32 = u_xlat7;
  u_xlat7 = max(x_608, 0.002f);
  let x_611 : f32 = u_xlat7;
  u_xlat3.x = (-(x_611) + 1.0f);
  let x_615 : f32 = u_xlat22;
  let x_618 : f32 = u_xlat3.x;
  let x_620 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_615) * x_618) + x_620);
  let x_622 : f32 = u_xlat23;
  let x_624 : f32 = u_xlat3.x;
  let x_626 : f32 = u_xlat7;
  u_xlat3.x = ((x_622 * x_624) + x_626);
  let x_629 : f32 = u_xlat22;
  let x_632 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_629) * x_632);
  let x_634 : f32 = u_xlat23;
  let x_635 : f32 = u_xlat10;
  let x_637 : f32 = u_xlat22;
  u_xlat22 = ((x_634 * x_635) + x_637);
  let x_639 : f32 = u_xlat22;
  u_xlat22 = (x_639 + 0.00001f);
  let x_642 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_642);
  let x_644 : f32 = u_xlat7;
  let x_645 : f32 = u_xlat7;
  u_xlat7 = (x_644 * x_645);
  let x_648 : f32 = u_xlat2.x;
  let x_649 : f32 = u_xlat7;
  let x_652 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_648 * x_649) + -(x_652));
  let x_657 : f32 = u_xlat3.x;
  let x_659 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_657 * x_659) + 1.0f);
  let x_663 : f32 = u_xlat7;
  u_xlat7 = (x_663 * 0.318309873f);
  let x_667 : f32 = u_xlat2.x;
  let x_669 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_667 * x_669) + 0.0000001f);
  let x_674 : f32 = u_xlat7;
  let x_676 : f32 = u_xlat2.x;
  u_xlat7 = (x_674 / x_676);
  let x_678 : f32 = u_xlat7;
  let x_679 : f32 = u_xlat22;
  u_xlat7 = (x_678 * x_679);
  let x_681 : f32 = u_xlat23;
  let x_682 : f32 = u_xlat7;
  u_xlat7 = (x_681 * x_682);
  let x_684 : f32 = u_xlat7;
  u_xlat7 = (x_684 * 3.141592741f);
  let x_687 : f32 = u_xlat7;
  u_xlat7 = max(x_687, 0.0f);
  let x_689 : vec3<f32> = u_xlat1;
  let x_690 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_689, x_690);
  let x_693 : f32 = u_xlat22;
  u_xlatb22 = !((x_693 == 0.0f));
  let x_695 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_695);
  let x_697 : f32 = u_xlat7;
  let x_698 : f32 = u_xlat22;
  u_xlat7 = (x_697 * x_698);
  let x_700 : f32 = u_xlat16;
  let x_702 : vec3<f32> = u_xlat4;
  let x_703 : vec3<f32> = (vec3<f32>(x_700, x_700, x_700) * x_702);
  let x_704 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_703.x, x_704.y, x_703.y, x_703.z);
  let x_706 : vec3<f32> = u_xlat4;
  let x_707 : f32 = u_xlat7;
  u_xlat3 = (x_706 * vec3<f32>(x_707, x_707, x_707));
  let x_711 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_711) + 1.0f);
  let x_714 : f32 = u_xlat7;
  let x_715 : f32 = u_xlat7;
  u_xlat22 = (x_714 * x_715);
  let x_717 : f32 = u_xlat22;
  let x_718 : f32 = u_xlat22;
  u_xlat22 = (x_717 * x_718);
  let x_720 : f32 = u_xlat7;
  let x_721 : f32 = u_xlat22;
  u_xlat7 = (x_720 * x_721);
  let x_723 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_723) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_727 : vec3<f32> = u_xlat4;
  let x_728 : f32 = u_xlat7;
  let x_731 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_727 * vec3<f32>(x_728, x_728, x_728)) + x_731);
  let x_733 : vec3<f32> = u_xlat1;
  let x_734 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_733 * x_734);
  let x_736 : vec4<f32> = u_xlat0;
  let x_738 : vec4<f32> = u_xlat2;
  let x_741 : vec3<f32> = u_xlat1;
  let x_742 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.z, x_736.w) * vec3<f32>(x_738.x, x_738.z, x_738.w)) + x_741);
  let x_743 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  let x_747 : f32 = vs_TEXCOORD1.w;
  let x_749 : f32 = x_46.x_ProjectionParams.y;
  u_xlat21 = (x_747 / x_749);
  let x_751 : f32 = u_xlat21;
  u_xlat21 = (-(x_751) + 1.0f);
  let x_754 : f32 = u_xlat21;
  let x_756 : f32 = x_46.x_ProjectionParams.z;
  u_xlat21 = (x_754 * x_756);
  let x_758 : f32 = u_xlat21;
  u_xlat21 = max(x_758, 0.0f);
  let x_760 : f32 = u_xlat21;
  let x_763 : f32 = x_46.unity_FogParams.x;
  u_xlat21 = (x_760 * x_763);
  let x_765 : f32 = u_xlat21;
  let x_766 : f32 = u_xlat21;
  u_xlat21 = (x_765 * -(x_766));
  let x_769 : f32 = u_xlat21;
  u_xlat21 = exp2(x_769);
  let x_773 : vec4<f32> = u_xlat0;
  let x_775 : f32 = u_xlat21;
  let x_777 : vec3<f32> = (vec3<f32>(x_773.x, x_773.y, x_773.z) * vec3<f32>(x_775, x_775, x_775));
  let x_778 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


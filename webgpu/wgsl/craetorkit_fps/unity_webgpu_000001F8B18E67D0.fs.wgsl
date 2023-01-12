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

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_319 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
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
  let x_204 : vec3<f32> = x_46.x_WorldSpaceCameraPos;
  let x_205 : vec3<f32> = (-(x_199) + x_204);
  let x_206 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_211 : f32 = x_46.unity_MatrixV[0i].z;
  u_xlat5.x = x_211;
  let x_215 : f32 = x_46.unity_MatrixV[1i].z;
  u_xlat5.y = x_215;
  let x_220 : f32 = x_46.unity_MatrixV[2i].z;
  u_xlat5.z = x_220;
  let x_223 : vec4<f32> = u_xlat4;
  let x_225 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), x_225);
  let x_227 : vec3<f32> = vs_TEXCOORD5;
  let x_230 : vec4<f32> = x_46.unity_ShadowFadeCenterAndType;
  let x_233 : vec3<f32> = (x_227 + -(vec3<f32>(x_230.x, x_230.y, x_230.z)));
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_237 : vec4<f32> = u_xlat4;
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_237.x, x_237.y, x_237.z), vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : f32 = u_xlat24;
  u_xlat24 = sqrt(x_242);
  let x_244 : f32 = u_xlat23;
  let x_246 : f32 = u_xlat24;
  u_xlat24 = (-(x_244) + x_246);
  let x_250 : f32 = x_46.unity_ShadowFadeCenterAndType.w;
  let x_251 : f32 = u_xlat24;
  let x_253 : f32 = u_xlat23;
  u_xlat23 = ((x_250 * x_251) + x_253);
  let x_255 : f32 = u_xlat23;
  let x_258 : f32 = x_46.x_LightShadowData.z;
  let x_261 : f32 = x_46.x_LightShadowData.w;
  u_xlat23 = ((x_255 * x_258) + x_261);
  let x_263 : f32 = u_xlat23;
  u_xlat23 = clamp(x_263, 0.0f, 1.0f);
  let x_271 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb24 = (x_271 == 1.0f);
  let x_273 : bool = u_xlatb24;
  if (x_273) {
    let x_277 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb24 = (x_277 == 1.0f);
    let x_279 : vec3<f32> = vs_TEXCOORD5;
    let x_283 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_285 : vec3<f32> = (vec3<f32>(x_279.y, x_279.y, x_279.y) * vec3<f32>(x_283.x, x_283.y, x_283.z));
    let x_286 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_289 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_291 : vec3<f32> = vs_TEXCOORD5;
    let x_294 : vec4<f32> = u_xlat4;
    let x_296 : vec3<f32> = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(x_291.x, x_291.x, x_291.x)) + vec3<f32>(x_294.x, x_294.y, x_294.z));
    let x_297 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
    let x_300 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_302 : vec3<f32> = vs_TEXCOORD5;
    let x_305 : vec4<f32> = u_xlat4;
    let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.z, x_302.z, x_302.z)) + vec3<f32>(x_305.x, x_305.y, x_305.z));
    let x_308 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_310 : vec4<f32> = u_xlat4;
    let x_313 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_315 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) + vec3<f32>(x_313.x, x_313.y, x_313.z));
    let x_316 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
    let x_318 : bool = u_xlatb24;
    if (x_318) {
      let x_322 : vec4<f32> = u_xlat4;
      x_319 = vec3<f32>(x_322.x, x_322.y, x_322.z);
    } else {
      let x_325 : vec3<f32> = vs_TEXCOORD5;
      x_319 = x_325;
    }
    let x_326 : vec3<f32> = x_319;
    let x_327 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
    let x_329 : vec4<f32> = u_xlat4;
    let x_333 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_335 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) + -(x_333));
    let x_336 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
    let x_338 : vec4<f32> = u_xlat4;
    let x_342 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_343 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * x_342);
    let x_344 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_344.x, x_343.x, x_343.y, x_343.z);
    let x_347 : f32 = u_xlat4.y;
    u_xlat24 = ((x_347 * 0.25f) + 0.75f);
    let x_354 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat11 = ((x_354 * 0.5f) + 0.75f);
    let x_358 : f32 = u_xlat24;
    let x_359 : f32 = u_xlat11;
    u_xlat4.x = max(x_358, x_359);
    let x_370 : vec4<f32> = u_xlat4;
    let x_372 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_370.x, x_370.z, x_370.w));
    u_xlat4 = x_372;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_378 : vec4<f32> = u_xlat4;
  let x_380 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat24 = dot(x_378, x_380);
  let x_382 : f32 = u_xlat24;
  u_xlat24 = clamp(x_382, 0.0f, 1.0f);
  let x_385 : vec4<f32> = vs_TEXCOORD7;
  let x_387 : vec4<f32> = vs_TEXCOORD7;
  let x_389 : vec2<f32> = (vec2<f32>(x_385.x, x_385.y) / vec2<f32>(x_387.w, x_387.w));
  let x_390 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
  let x_397 : vec4<f32> = u_xlat4;
  let x_399 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_397.x, x_397.y));
  u_xlat4.x = x_399.x;
  let x_402 : f32 = u_xlat24;
  let x_404 : f32 = u_xlat4.x;
  u_xlat24 = (x_402 + -(x_404));
  let x_407 : f32 = u_xlat23;
  let x_408 : f32 = u_xlat24;
  let x_411 : f32 = u_xlat4.x;
  u_xlat23 = ((x_407 * x_408) + x_411);
  let x_413 : f32 = u_xlat23;
  let x_417 : vec4<f32> = x_46.x_LightColor0;
  let x_419 : vec3<f32> = (vec3<f32>(x_413, x_413, x_413) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_424 : f32 = u_xlat0.y;
  let x_428 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_424) * x_428) + 1.0f);
  let x_433 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_433;
  let x_436 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_436;
  let x_439 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_439;
  let x_442 : vec4<f32> = vs_TEXCOORD1;
  let x_445 : f32 = u_xlat22;
  let x_448 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_442.x, x_442.y, x_442.z)) * vec3<f32>(x_445, x_445, x_445)) + x_448);
  let x_450 : vec3<f32> = u_xlat6;
  let x_451 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_450, x_451);
  let x_453 : f32 = u_xlat22;
  u_xlat22 = max(x_453, 0.001f);
  let x_456 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_456);
  let x_458 : f32 = u_xlat22;
  let x_460 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_458, x_458, x_458) * x_460);
  let x_462 : vec4<f32> = u_xlat2;
  let x_464 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_462.x, x_462.y, x_462.z), -(x_464));
  let x_467 : vec4<f32> = u_xlat2;
  let x_469 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), x_469);
  let x_471 : f32 = u_xlat23;
  u_xlat23 = clamp(x_471, 0.0f, 1.0f);
  let x_473 : vec4<f32> = u_xlat2;
  let x_475 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_473.x, x_473.y, x_473.z), x_475);
  let x_479 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_479, 0.0f, 1.0f);
  let x_482 : vec3<f32> = u_xlat5;
  let x_483 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(x_482, x_483);
  let x_487 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_487, 0.0f, 1.0f);
  let x_492 : f32 = u_xlat9.x;
  let x_494 : f32 = u_xlat9.x;
  u_xlat16 = (x_492 * x_494);
  let x_496 : f32 = u_xlat16;
  let x_498 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_496, x_496), vec2<f32>(x_498, x_498));
  let x_501 : f32 = u_xlat16;
  u_xlat16 = (x_501 + -0.5f);
  let x_504 : f32 = u_xlat23;
  u_xlat3.x = (-(x_504) + 1.0f);
  let x_510 : f32 = u_xlat3.x;
  let x_512 : f32 = u_xlat3.x;
  u_xlat10 = (x_510 * x_512);
  let x_514 : f32 = u_xlat10;
  let x_515 : f32 = u_xlat10;
  u_xlat10 = (x_514 * x_515);
  let x_518 : f32 = u_xlat3.x;
  let x_519 : f32 = u_xlat10;
  u_xlat3.x = (x_518 * x_519);
  let x_522 : f32 = u_xlat16;
  let x_524 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_522 * x_524) + 1.0f);
  let x_528 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_528)) + 1.0f);
  let x_533 : f32 = u_xlat10;
  let x_534 : f32 = u_xlat10;
  u_xlat17 = (x_533 * x_534);
  let x_536 : f32 = u_xlat17;
  let x_537 : f32 = u_xlat17;
  u_xlat17 = (x_536 * x_537);
  let x_539 : f32 = u_xlat10;
  let x_540 : f32 = u_xlat17;
  u_xlat10 = (x_539 * x_540);
  let x_542 : f32 = u_xlat16;
  let x_543 : f32 = u_xlat10;
  u_xlat16 = ((x_542 * x_543) + 1.0f);
  let x_546 : f32 = u_xlat16;
  let x_548 : f32 = u_xlat3.x;
  u_xlat16 = (x_546 * x_548);
  let x_550 : f32 = u_xlat23;
  let x_551 : f32 = u_xlat16;
  u_xlat16 = (x_550 * x_551);
  let x_553 : f32 = u_xlat7;
  let x_554 : f32 = u_xlat7;
  u_xlat7 = (x_553 * x_554);
  let x_556 : f32 = u_xlat7;
  u_xlat7 = max(x_556, 0.002f);
  let x_559 : f32 = u_xlat7;
  u_xlat3.x = (-(x_559) + 1.0f);
  let x_563 : f32 = u_xlat22;
  let x_566 : f32 = u_xlat3.x;
  let x_568 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_563) * x_566) + x_568);
  let x_570 : f32 = u_xlat23;
  let x_572 : f32 = u_xlat3.x;
  let x_574 : f32 = u_xlat7;
  u_xlat3.x = ((x_570 * x_572) + x_574);
  let x_577 : f32 = u_xlat22;
  let x_580 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_577) * x_580);
  let x_582 : f32 = u_xlat23;
  let x_583 : f32 = u_xlat10;
  let x_585 : f32 = u_xlat22;
  u_xlat22 = ((x_582 * x_583) + x_585);
  let x_587 : f32 = u_xlat22;
  u_xlat22 = (x_587 + 0.00001f);
  let x_590 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_590);
  let x_592 : f32 = u_xlat7;
  let x_593 : f32 = u_xlat7;
  u_xlat7 = (x_592 * x_593);
  let x_596 : f32 = u_xlat2.x;
  let x_597 : f32 = u_xlat7;
  let x_600 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_596 * x_597) + -(x_600));
  let x_605 : f32 = u_xlat3.x;
  let x_607 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_605 * x_607) + 1.0f);
  let x_611 : f32 = u_xlat7;
  u_xlat7 = (x_611 * 0.318309873f);
  let x_615 : f32 = u_xlat2.x;
  let x_617 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_615 * x_617) + 0.0000001f);
  let x_622 : f32 = u_xlat7;
  let x_624 : f32 = u_xlat2.x;
  u_xlat7 = (x_622 / x_624);
  let x_626 : f32 = u_xlat7;
  let x_627 : f32 = u_xlat22;
  u_xlat7 = (x_626 * x_627);
  let x_629 : f32 = u_xlat23;
  let x_630 : f32 = u_xlat7;
  u_xlat7 = (x_629 * x_630);
  let x_632 : f32 = u_xlat7;
  u_xlat7 = (x_632 * 3.141592741f);
  let x_635 : f32 = u_xlat7;
  u_xlat7 = max(x_635, 0.0f);
  let x_637 : vec3<f32> = u_xlat1;
  let x_638 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_637, x_638);
  let x_641 : f32 = u_xlat22;
  u_xlatb22 = !((x_641 == 0.0f));
  let x_643 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_643);
  let x_645 : f32 = u_xlat7;
  let x_646 : f32 = u_xlat22;
  u_xlat7 = (x_645 * x_646);
  let x_648 : f32 = u_xlat16;
  let x_650 : vec4<f32> = u_xlat4;
  let x_652 : vec3<f32> = (vec3<f32>(x_648, x_648, x_648) * vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_652.x, x_653.y, x_652.y, x_652.z);
  let x_655 : vec4<f32> = u_xlat4;
  let x_657 : f32 = u_xlat7;
  u_xlat3 = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(x_657, x_657, x_657));
  let x_661 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_661) + 1.0f);
  let x_664 : f32 = u_xlat7;
  let x_665 : f32 = u_xlat7;
  u_xlat22 = (x_664 * x_665);
  let x_667 : f32 = u_xlat22;
  let x_668 : f32 = u_xlat22;
  u_xlat22 = (x_667 * x_668);
  let x_670 : f32 = u_xlat7;
  let x_671 : f32 = u_xlat22;
  u_xlat7 = (x_670 * x_671);
  let x_673 : vec3<f32> = u_xlat1;
  let x_676 : vec3<f32> = (-(x_673) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_677 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  let x_679 : vec4<f32> = u_xlat4;
  let x_681 : f32 = u_xlat7;
  let x_684 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_679.x, x_679.y, x_679.z) * vec3<f32>(x_681, x_681, x_681)) + x_684);
  let x_686 : vec3<f32> = u_xlat1;
  let x_687 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_686 * x_687);
  let x_689 : vec4<f32> = u_xlat0;
  let x_691 : vec4<f32> = u_xlat2;
  let x_694 : vec3<f32> = u_xlat1;
  let x_695 : vec3<f32> = ((vec3<f32>(x_689.x, x_689.z, x_689.w) * vec3<f32>(x_691.x, x_691.z, x_691.w)) + x_694);
  let x_696 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_700 : f32 = vs_TEXCOORD1.w;
  let x_702 : f32 = x_46.x_ProjectionParams.y;
  u_xlat21 = (x_700 / x_702);
  let x_704 : f32 = u_xlat21;
  u_xlat21 = (-(x_704) + 1.0f);
  let x_707 : f32 = u_xlat21;
  let x_709 : f32 = x_46.x_ProjectionParams.z;
  u_xlat21 = (x_707 * x_709);
  let x_711 : f32 = u_xlat21;
  u_xlat21 = max(x_711, 0.0f);
  let x_713 : f32 = u_xlat21;
  let x_716 : f32 = x_46.unity_FogParams.x;
  u_xlat21 = (x_713 * x_716);
  let x_718 : f32 = u_xlat21;
  let x_719 : f32 = u_xlat21;
  u_xlat21 = (x_718 * -(x_719));
  let x_722 : f32 = u_xlat21;
  u_xlat21 = exp2(x_722);
  let x_726 : vec4<f32> = u_xlat0;
  let x_728 : f32 = u_xlat21;
  let x_730 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(x_728, x_728, x_728));
  let x_731 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
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


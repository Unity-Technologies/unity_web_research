struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
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
  x_OcclusionStrength : f32,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat46 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlatb46 : bool;
  var u_xlatb47 : bool;
  var x_328 : vec3<f32>;
  var u_xlat47 : f32;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlatb45 : bool;
  var u_xlat8 : vec4<f32>;
  var x_522 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_707 : f32;
  var x_719 : f32;
  var x_731 : f32;
  var u_xlatb48 : bool;
  var u_xlat48 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_888 : f32;
  var x_900 : f32;
  var x_912 : f32;
  var u_xlat18 : f32;
  var u_xlat33 : f32;
  var u_xlat19 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = vec2<f32>(x_25.x, x_25.w);
  let x_35 : vec4<f32> = vs_TEXCOORD0;
  let x_37 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_35.x, x_35.y));
  u_xlat1 = vec3<f32>(x_37.x, x_37.y, x_37.z);
  let x_40 : vec3<f32> = u_xlat1;
  let x_49 : vec4<f32> = x_44.x_Color;
  u_xlat2 = (x_40 * vec3<f32>(x_49.x, x_49.y, x_49.z));
  let x_53 : vec4<f32> = x_44.x_Color;
  let x_55 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * x_55) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_60 : vec2<f32> = u_xlat0;
  let x_62 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_71 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_71) * 0.959999979f) + 0.959999979f);
  let x_77 : vec2<f32> = u_xlat0;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_77.x, x_77.x, x_77.x) * x_79);
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_88.x, x_88.y));
  let x_91 : vec3<f32> = vec3<f32>(x_90.x, x_90.y, x_90.w);
  let x_92 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_96 : f32 = u_xlat3.z;
  let x_98 : f32 = u_xlat3.x;
  u_xlat3.x = (x_96 * x_98);
  let x_102 : vec4<f32> = u_xlat3;
  u_xlat30 = ((vec2<f32>(x_102.x, x_102.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_110 : vec2<f32> = u_xlat30;
  let x_114 : f32 = x_44.x_BumpScale;
  u_xlat30 = (x_110 * vec2<f32>(x_114, x_114));
  let x_118 : vec2<f32> = u_xlat30;
  let x_119 : vec2<f32> = u_xlat30;
  u_xlat46 = dot(x_118, x_119);
  let x_121 : f32 = u_xlat46;
  u_xlat46 = min(x_121, 1.0f);
  let x_124 : f32 = u_xlat46;
  u_xlat46 = (-(x_124) + 1.0f);
  let x_127 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_127);
  let x_129 : vec2<f32> = u_xlat30;
  let x_132 : vec4<f32> = vs_TEXCOORD3;
  let x_134 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec4<f32> = vs_TEXCOORD2;
  let x_140 : vec2<f32> = u_xlat30;
  let x_143 : vec4<f32> = u_xlat3;
  let x_145 : vec3<f32> = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec4<f32> = vs_TEXCOORD4;
  let x_151 : f32 = u_xlat46;
  let x_154 : vec4<f32> = u_xlat3;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151, x_151, x_151)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_159 : vec4<f32> = u_xlat3;
  let x_161 : vec4<f32> = u_xlat3;
  u_xlat30.x = dot(vec3<f32>(x_159.x, x_159.y, x_159.z), vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_166 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_166);
  let x_169 : vec2<f32> = u_xlat30;
  let x_171 : vec4<f32> = u_xlat3;
  let x_173 : vec3<f32> = (vec3<f32>(x_169.x, x_169.x, x_169.x) * vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec4<f32> = vs_TEXCOORD1;
  let x_179 : vec4<f32> = vs_TEXCOORD1;
  u_xlat30.x = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_184 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_184);
  let x_188 : vec2<f32> = u_xlat30;
  let x_190 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_188.x, x_188.x, x_188.x) * vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_197 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_197;
  let x_200 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_200;
  let x_204 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_204;
  let x_207 : vec4<f32> = u_xlat5;
  let x_213 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_214 : vec3<f32> = (-(vec3<f32>(x_207.x, x_207.y, x_207.z)) + x_213);
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_220 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat7.x = x_220;
  let x_224 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat7.y = x_224;
  let x_228 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat7.z = x_228;
  let x_231 : vec4<f32> = u_xlat6;
  let x_233 : vec3<f32> = u_xlat7;
  u_xlat45 = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), x_233);
  let x_235 : vec4<f32> = u_xlat5;
  let x_239 : vec4<f32> = x_44.unity_ShadowFadeCenterAndType;
  let x_242 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) + -(vec3<f32>(x_239.x, x_239.y, x_239.z)));
  let x_243 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat6;
  let x_247 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_250 : f32 = u_xlat46;
  u_xlat46 = sqrt(x_250);
  let x_252 : f32 = u_xlat45;
  let x_254 : f32 = u_xlat46;
  u_xlat46 = (-(x_252) + x_254);
  let x_257 : f32 = x_44.unity_ShadowFadeCenterAndType.w;
  let x_258 : f32 = u_xlat46;
  let x_260 : f32 = u_xlat45;
  u_xlat45 = ((x_257 * x_258) + x_260);
  let x_262 : f32 = u_xlat45;
  let x_265 : f32 = x_44.x_LightShadowData.z;
  let x_268 : f32 = x_44.x_LightShadowData.w;
  u_xlat45 = ((x_262 * x_265) + x_268);
  let x_270 : f32 = u_xlat45;
  u_xlat45 = clamp(x_270, 0.0f, 1.0f);
  let x_278 : f32 = x_44.unity_ProbeVolumeParams.x;
  u_xlatb46 = (x_278 == 1.0f);
  let x_280 : bool = u_xlatb46;
  if (x_280) {
    let x_285 : f32 = x_44.unity_ProbeVolumeParams.y;
    u_xlatb47 = (x_285 == 1.0f);
    let x_287 : vec4<f32> = vs_TEXCOORD3;
    let x_291 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[1i];
    let x_293 : vec3<f32> = (vec3<f32>(x_287.w, x_287.w, x_287.w) * vec3<f32>(x_291.x, x_291.y, x_291.z));
    let x_294 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
    let x_297 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[0i];
    let x_299 : vec4<f32> = vs_TEXCOORD2;
    let x_302 : vec4<f32> = u_xlat6;
    let x_304 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.w, x_299.w, x_299.w)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
    let x_305 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_308 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[2i];
    let x_310 : vec4<f32> = vs_TEXCOORD4;
    let x_313 : vec4<f32> = u_xlat6;
    let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.w, x_310.w, x_310.w)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
    let x_316 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
    let x_318 : vec4<f32> = u_xlat6;
    let x_322 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[3i];
    let x_324 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) + vec3<f32>(x_322.x, x_322.y, x_322.z));
    let x_325 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
    let x_327 : bool = u_xlatb47;
    if (x_327) {
      let x_331 : vec4<f32> = u_xlat6;
      x_328 = vec3<f32>(x_331.x, x_331.y, x_331.z);
    } else {
      let x_334 : vec4<f32> = u_xlat5;
      x_328 = vec3<f32>(x_334.x, x_334.y, x_334.z);
    }
    let x_336 : vec3<f32> = x_328;
    let x_337 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
    let x_339 : vec4<f32> = u_xlat6;
    let x_343 : vec3<f32> = x_44.unity_ProbeVolumeMin;
    let x_345 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) + -(x_343));
    let x_346 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
    let x_348 : vec4<f32> = u_xlat6;
    let x_352 : vec3<f32> = x_44.unity_ProbeVolumeSizeInv;
    let x_353 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) * x_352);
    let x_354 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_354.x, x_353.x, x_353.y, x_353.z);
    let x_358 : f32 = u_xlat6.y;
    u_xlat47 = ((x_358 * 0.25f) + 0.75f);
    let x_365 : f32 = x_44.unity_ProbeVolumeParams.z;
    u_xlat49 = ((x_365 * 0.5f) + 0.75f);
    let x_369 : f32 = u_xlat47;
    let x_370 : f32 = u_xlat49;
    u_xlat6.x = max(x_369, x_370);
    let x_381 : vec4<f32> = u_xlat6;
    let x_383 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_381.x, x_381.z, x_381.w));
    u_xlat6 = x_383;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_389 : vec4<f32> = u_xlat6;
  let x_392 : vec4<f32> = x_44.unity_OcclusionMaskSelector;
  u_xlat47 = dot(x_389, x_392);
  let x_394 : f32 = u_xlat47;
  u_xlat47 = clamp(x_394, 0.0f, 1.0f);
  let x_397 : vec4<f32> = vs_TEXCOORD7;
  let x_399 : vec4<f32> = vs_TEXCOORD7;
  let x_401 : vec2<f32> = (vec2<f32>(x_397.x, x_397.y) / vec2<f32>(x_399.w, x_399.w));
  let x_402 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
  let x_409 : vec4<f32> = u_xlat6;
  let x_411 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_409.x, x_409.y));
  u_xlat49 = x_411.x;
  let x_413 : f32 = u_xlat47;
  let x_414 : f32 = u_xlat49;
  u_xlat47 = (x_413 + -(x_414));
  let x_417 : f32 = u_xlat45;
  let x_418 : f32 = u_xlat47;
  let x_420 : f32 = u_xlat49;
  u_xlat45 = ((x_417 * x_418) + x_420);
  let x_427 : vec4<f32> = vs_TEXCOORD0;
  let x_429 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_427.x, x_427.y));
  u_xlat47 = x_429.y;
  let x_433 : f32 = x_44.x_OcclusionStrength;
  u_xlat49 = (-(x_433) + 1.0f);
  let x_436 : f32 = u_xlat47;
  let x_438 : f32 = x_44.x_OcclusionStrength;
  let x_440 : f32 = u_xlat49;
  u_xlat47 = ((x_436 * x_438) + x_440);
  let x_443 : f32 = u_xlat0.y;
  let x_447 : f32 = x_44.x_GlossMapScale;
  u_xlat49 = ((-(x_443) * x_447) + 1.0f);
  let x_451 : vec3<f32> = u_xlat4;
  let x_452 : vec4<f32> = u_xlat3;
  u_xlat50 = dot(x_451, vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : f32 = u_xlat50;
  let x_456 : f32 = u_xlat50;
  u_xlat50 = (x_455 + x_456);
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : f32 = u_xlat50;
  let x_464 : vec3<f32> = u_xlat4;
  let x_465 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * -(vec3<f32>(x_460, x_460, x_460))) + x_464);
  let x_466 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : f32 = u_xlat45;
  let x_472 : vec4<f32> = x_44.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_468, x_468, x_468) * vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_475 : bool = u_xlatb46;
  if (x_475) {
    let x_480 : f32 = x_44.unity_ProbeVolumeParams.y;
    u_xlatb45 = (x_480 == 1.0f);
    let x_483 : vec4<f32> = vs_TEXCOORD3;
    let x_486 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[1i];
    let x_488 : vec3<f32> = (vec3<f32>(x_483.w, x_483.w, x_483.w) * vec3<f32>(x_486.x, x_486.y, x_486.z));
    let x_489 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
    let x_492 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[0i];
    let x_494 : vec4<f32> = vs_TEXCOORD2;
    let x_497 : vec4<f32> = u_xlat8;
    let x_499 : vec3<f32> = ((vec3<f32>(x_492.x, x_492.y, x_492.z) * vec3<f32>(x_494.w, x_494.w, x_494.w)) + vec3<f32>(x_497.x, x_497.y, x_497.z));
    let x_500 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
    let x_503 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[2i];
    let x_505 : vec4<f32> = vs_TEXCOORD4;
    let x_508 : vec4<f32> = u_xlat8;
    let x_510 : vec3<f32> = ((vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_505.w, x_505.w, x_505.w)) + vec3<f32>(x_508.x, x_508.y, x_508.z));
    let x_511 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
    let x_513 : vec4<f32> = u_xlat8;
    let x_516 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[3i];
    let x_518 : vec3<f32> = (vec3<f32>(x_513.x, x_513.y, x_513.z) + vec3<f32>(x_516.x, x_516.y, x_516.z));
    let x_519 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
    let x_521 : bool = u_xlatb45;
    if (x_521) {
      let x_525 : vec4<f32> = u_xlat8;
      x_522 = vec3<f32>(x_525.x, x_525.y, x_525.z);
    } else {
      let x_528 : vec4<f32> = u_xlat5;
      x_522 = vec3<f32>(x_528.x, x_528.y, x_528.z);
    }
    let x_530 : vec3<f32> = x_522;
    let x_531 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
    let x_533 : vec4<f32> = u_xlat8;
    let x_536 : vec3<f32> = x_44.unity_ProbeVolumeMin;
    let x_538 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) + -(x_536));
    let x_539 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
    let x_541 : vec4<f32> = u_xlat8;
    let x_544 : vec3<f32> = x_44.unity_ProbeVolumeSizeInv;
    let x_545 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) * x_544);
    let x_546 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_546.x, x_545.x, x_545.y, x_545.z);
    let x_549 : f32 = u_xlat8.y;
    u_xlat45 = (x_549 * 0.25f);
    let x_552 : f32 = x_44.unity_ProbeVolumeParams.z;
    u_xlat46 = (x_552 * 0.5f);
    let x_555 : f32 = x_44.unity_ProbeVolumeParams.z;
    u_xlat50 = ((-(x_555) * 0.5f) + 0.25f);
    let x_559 : f32 = u_xlat45;
    let x_560 : f32 = u_xlat46;
    u_xlat45 = max(x_559, x_560);
    let x_562 : f32 = u_xlat50;
    let x_563 : f32 = u_xlat45;
    u_xlat8.x = min(x_562, x_563);
    let x_570 : vec4<f32> = u_xlat8;
    let x_572 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_570.x, x_570.z, x_570.w));
    u_xlat9 = x_572;
    let x_574 : vec4<f32> = u_xlat8;
    let x_577 : vec3<f32> = (vec3<f32>(x_574.x, x_574.z, x_574.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_578 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
    let x_583 : vec4<f32> = u_xlat10;
    let x_585 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_583.x, x_583.y, x_583.z));
    u_xlat10 = x_585;
    let x_586 : vec4<f32> = u_xlat8;
    let x_589 : vec3<f32> = (vec3<f32>(x_586.x, x_586.z, x_586.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_590 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
    let x_595 : vec4<f32> = u_xlat8;
    let x_597 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_595.x, x_595.y, x_595.z));
    u_xlat8 = x_597;
    u_xlat3.w = 1.0f;
    let x_599 : vec4<f32> = u_xlat9;
    let x_600 : vec4<f32> = u_xlat3;
    u_xlat9.x = dot(x_599, x_600);
    let x_603 : vec4<f32> = u_xlat10;
    let x_604 : vec4<f32> = u_xlat3;
    u_xlat9.y = dot(x_603, x_604);
    let x_607 : vec4<f32> = u_xlat8;
    let x_608 : vec4<f32> = u_xlat3;
    u_xlat9.z = dot(x_607, x_608);
  } else {
    u_xlat3.w = 1.0f;
    let x_614 : vec4<f32> = x_44.unity_SHAr;
    let x_615 : vec4<f32> = u_xlat3;
    u_xlat9.x = dot(x_614, x_615);
    let x_619 : vec4<f32> = x_44.unity_SHAg;
    let x_620 : vec4<f32> = u_xlat3;
    u_xlat9.y = dot(x_619, x_620);
    let x_625 : vec4<f32> = x_44.unity_SHAb;
    let x_626 : vec4<f32> = u_xlat3;
    u_xlat9.z = dot(x_625, x_626);
  }
  let x_629 : vec4<f32> = u_xlat9;
  let x_632 : vec4<f32> = vs_TEXCOORD5;
  let x_634 : vec3<f32> = (vec3<f32>(x_629.x, x_629.y, x_629.z) + vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat8;
  let x_640 : vec3<f32> = max(vec3<f32>(x_637.x, x_637.y, x_637.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_641 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_645 : f32 = x_44.unity_SpecCube0_ProbePosition.w;
  u_xlatb45 = (0.0f < x_645);
  let x_647 : bool = u_xlatb45;
  if (x_647) {
    let x_650 : vec4<f32> = u_xlat6;
    let x_652 : vec4<f32> = u_xlat6;
    u_xlat45 = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(x_652.x, x_652.y, x_652.z));
    let x_655 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_655);
    let x_657 : f32 = u_xlat45;
    let x_659 : vec4<f32> = u_xlat6;
    let x_661 : vec3<f32> = (vec3<f32>(x_657, x_657, x_657) * vec3<f32>(x_659.x, x_659.y, x_659.z));
    let x_662 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
    let x_664 : vec4<f32> = u_xlat5;
    let x_669 : vec4<f32> = x_44.unity_SpecCube0_BoxMax;
    let x_671 : vec3<f32> = (-(vec3<f32>(x_664.x, x_664.y, x_664.z)) + vec3<f32>(x_669.x, x_669.y, x_669.z));
    let x_672 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
    let x_674 : vec4<f32> = u_xlat10;
    let x_676 : vec4<f32> = u_xlat9;
    let x_678 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) / vec3<f32>(x_676.x, x_676.y, x_676.z));
    let x_679 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
    let x_682 : vec4<f32> = u_xlat5;
    let x_687 : vec4<f32> = x_44.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_682.x, x_682.y, x_682.z)) + vec3<f32>(x_687.x, x_687.y, x_687.z));
    let x_690 : vec3<f32> = u_xlat11;
    let x_691 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_690 / vec3<f32>(x_691.x, x_691.y, x_691.z));
    let x_698 : vec4<f32> = u_xlat9;
    let x_701 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_698.x, x_698.y, x_698.z, x_698.x));
    u_xlatb12 = vec3<bool>(x_701.x, x_701.y, x_701.z);
    let x_704 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_704;
    let x_706 : bool = u_xlatb12.x;
    if (x_706) {
      let x_711 : f32 = u_xlat10.x;
      x_707 = x_711;
    } else {
      let x_714 : f32 = u_xlat11.x;
      x_707 = x_714;
    }
    let x_715 : f32 = x_707;
    hlslcc_movcTemp.x = x_715;
    let x_718 : bool = u_xlatb12.y;
    if (x_718) {
      let x_723 : f32 = u_xlat10.y;
      x_719 = x_723;
    } else {
      let x_726 : f32 = u_xlat11.y;
      x_719 = x_726;
    }
    let x_727 : f32 = x_719;
    hlslcc_movcTemp.y = x_727;
    let x_730 : bool = u_xlatb12.z;
    if (x_730) {
      let x_735 : f32 = u_xlat10.z;
      x_731 = x_735;
    } else {
      let x_738 : f32 = u_xlat11.z;
      x_731 = x_738;
    }
    let x_739 : f32 = x_731;
    hlslcc_movcTemp.z = x_739;
    let x_741 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_741;
    let x_743 : f32 = u_xlat10.y;
    let x_745 : f32 = u_xlat10.x;
    u_xlat45 = min(x_743, x_745);
    let x_748 : f32 = u_xlat10.z;
    let x_749 : f32 = u_xlat45;
    u_xlat45 = min(x_748, x_749);
    let x_751 : vec4<f32> = u_xlat5;
    let x_754 : vec4<f32> = x_44.unity_SpecCube0_ProbePosition;
    let x_757 : vec3<f32> = (vec3<f32>(x_751.x, x_751.y, x_751.z) + -(vec3<f32>(x_754.x, x_754.y, x_754.z)));
    let x_758 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
    let x_760 : vec4<f32> = u_xlat9;
    let x_762 : f32 = u_xlat45;
    let x_765 : vec4<f32> = u_xlat10;
    let x_767 : vec3<f32> = ((vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_762, x_762, x_762)) + vec3<f32>(x_765.x, x_765.y, x_765.z));
    let x_768 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  } else {
    let x_771 : vec4<f32> = u_xlat6;
    let x_772 : vec3<f32> = vec3<f32>(x_771.x, x_771.y, x_771.z);
    let x_773 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  }
  let x_775 : f32 = u_xlat49;
  u_xlat45 = ((-(x_775) * 0.699999988f) + 1.700000048f);
  let x_781 : f32 = u_xlat45;
  let x_782 : f32 = u_xlat49;
  u_xlat45 = (x_781 * x_782);
  let x_784 : f32 = u_xlat45;
  u_xlat45 = (x_784 * 6.0f);
  let x_795 : vec4<f32> = u_xlat9;
  let x_797 : f32 = u_xlat45;
  let x_798 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_795.x, x_795.y, x_795.z), x_797);
  u_xlat9 = x_798;
  let x_800 : f32 = u_xlat9.w;
  u_xlat46 = (x_800 + -1.0f);
  let x_804 : f32 = x_44.unity_SpecCube0_HDR.w;
  let x_805 : f32 = u_xlat46;
  u_xlat46 = ((x_804 * x_805) + 1.0f);
  let x_808 : f32 = u_xlat46;
  u_xlat46 = log2(x_808);
  let x_810 : f32 = u_xlat46;
  let x_812 : f32 = x_44.unity_SpecCube0_HDR.y;
  u_xlat46 = (x_810 * x_812);
  let x_814 : f32 = u_xlat46;
  u_xlat46 = exp2(x_814);
  let x_816 : f32 = u_xlat46;
  let x_818 : f32 = x_44.unity_SpecCube0_HDR.x;
  u_xlat46 = (x_816 * x_818);
  let x_820 : vec4<f32> = u_xlat9;
  let x_822 : f32 = u_xlat46;
  let x_824 : vec3<f32> = (vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(x_822, x_822, x_822));
  let x_825 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_829 : f32 = x_44.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_829 < 0.999989986f);
  let x_832 : bool = u_xlatb48;
  if (x_832) {
    let x_837 : f32 = x_44.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_837);
    let x_839 : bool = u_xlatb48;
    if (x_839) {
      let x_843 : vec4<f32> = u_xlat6;
      let x_845 : vec4<f32> = u_xlat6;
      u_xlat48 = dot(vec3<f32>(x_843.x, x_843.y, x_843.z), vec3<f32>(x_845.x, x_845.y, x_845.z));
      let x_848 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_848);
      let x_850 : f32 = u_xlat48;
      let x_852 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_850, x_850, x_850) * vec3<f32>(x_852.x, x_852.y, x_852.z));
      let x_856 : vec4<f32> = u_xlat5;
      let x_861 : vec4<f32> = x_44.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_856.x, x_856.y, x_856.z)) + vec3<f32>(x_861.x, x_861.y, x_861.z));
      let x_864 : vec3<f32> = u_xlat12;
      let x_865 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_864 / x_865);
      let x_868 : vec4<f32> = u_xlat5;
      let x_873 : vec4<f32> = x_44.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_868.x, x_868.y, x_868.z)) + vec3<f32>(x_873.x, x_873.y, x_873.z));
      let x_876 : vec3<f32> = u_xlat13;
      let x_877 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_876 / x_877);
      let x_880 : vec3<f32> = u_xlat11;
      let x_882 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_880.x, x_880.y, x_880.z, x_880.x));
      u_xlatb14 = vec3<bool>(x_882.x, x_882.y, x_882.z);
      let x_885 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_885;
      let x_887 : bool = u_xlatb14.x;
      if (x_887) {
        let x_892 : f32 = u_xlat12.x;
        x_888 = x_892;
      } else {
        let x_895 : f32 = u_xlat13.x;
        x_888 = x_895;
      }
      let x_896 : f32 = x_888;
      hlslcc_movcTemp_1.x = x_896;
      let x_899 : bool = u_xlatb14.y;
      if (x_899) {
        let x_904 : f32 = u_xlat12.y;
        x_900 = x_904;
      } else {
        let x_907 : f32 = u_xlat13.y;
        x_900 = x_907;
      }
      let x_908 : f32 = x_900;
      hlslcc_movcTemp_1.y = x_908;
      let x_911 : bool = u_xlatb14.z;
      if (x_911) {
        let x_916 : f32 = u_xlat12.z;
        x_912 = x_916;
      } else {
        let x_919 : f32 = u_xlat13.z;
        x_912 = x_919;
      }
      let x_920 : f32 = x_912;
      hlslcc_movcTemp_1.z = x_920;
      let x_922 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_922;
      let x_924 : f32 = u_xlat12.y;
      let x_926 : f32 = u_xlat12.x;
      u_xlat48 = min(x_924, x_926);
      let x_929 : f32 = u_xlat12.z;
      let x_930 : f32 = u_xlat48;
      u_xlat48 = min(x_929, x_930);
      let x_932 : vec4<f32> = u_xlat5;
      let x_935 : vec4<f32> = x_44.unity_SpecCube1_ProbePosition;
      let x_938 : vec3<f32> = (vec3<f32>(x_932.x, x_932.y, x_932.z) + -(vec3<f32>(x_935.x, x_935.y, x_935.z)));
      let x_939 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
      let x_941 : vec3<f32> = u_xlat11;
      let x_942 : f32 = u_xlat48;
      let x_945 : vec4<f32> = u_xlat5;
      let x_947 : vec3<f32> = ((x_941 * vec3<f32>(x_942, x_942, x_942)) + vec3<f32>(x_945.x, x_945.y, x_945.z));
      let x_948 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
    }
    let x_954 : vec4<f32> = u_xlat6;
    let x_956 : f32 = u_xlat45;
    let x_957 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_954.x, x_954.y, x_954.z), x_956);
    u_xlat5 = x_957;
    let x_959 : f32 = u_xlat5.w;
    u_xlat45 = (x_959 + -1.0f);
    let x_963 : f32 = x_44.unity_SpecCube1_HDR.w;
    let x_964 : f32 = u_xlat45;
    u_xlat45 = ((x_963 * x_964) + 1.0f);
    let x_967 : f32 = u_xlat45;
    u_xlat45 = log2(x_967);
    let x_969 : f32 = u_xlat45;
    let x_971 : f32 = x_44.unity_SpecCube1_HDR.y;
    u_xlat45 = (x_969 * x_971);
    let x_973 : f32 = u_xlat45;
    u_xlat45 = exp2(x_973);
    let x_975 : f32 = u_xlat45;
    let x_977 : f32 = x_44.unity_SpecCube1_HDR.x;
    u_xlat45 = (x_975 * x_977);
    let x_979 : vec4<f32> = u_xlat5;
    let x_981 : f32 = u_xlat45;
    let x_983 : vec3<f32> = (vec3<f32>(x_979.x, x_979.y, x_979.z) * vec3<f32>(x_981, x_981, x_981));
    let x_984 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
    let x_986 : f32 = u_xlat46;
    let x_988 : vec4<f32> = u_xlat9;
    let x_991 : vec4<f32> = u_xlat5;
    let x_994 : vec3<f32> = ((vec3<f32>(x_986, x_986, x_986) * vec3<f32>(x_988.x, x_988.y, x_988.z)) + -(vec3<f32>(x_991.x, x_991.y, x_991.z)));
    let x_995 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
    let x_998 : vec4<f32> = x_44.unity_SpecCube0_BoxMin;
    let x_1000 : vec4<f32> = u_xlat6;
    let x_1003 : vec4<f32> = u_xlat5;
    let x_1005 : vec3<f32> = ((vec3<f32>(x_998.w, x_998.w, x_998.w) * vec3<f32>(x_1000.x, x_1000.y, x_1000.z)) + vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
    let x_1006 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  }
  let x_1008 : f32 = u_xlat47;
  let x_1010 : vec4<f32> = u_xlat10;
  let x_1012 : vec3<f32> = (vec3<f32>(x_1008, x_1008, x_1008) * vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1013 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec4<f32> = vs_TEXCOORD1;
  let x_1018 : vec2<f32> = u_xlat30;
  let x_1022 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  let x_1024 : vec3<f32> = ((-(vec3<f32>(x_1015.x, x_1015.y, x_1015.z)) * vec3<f32>(x_1018.x, x_1018.x, x_1018.x)) + vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1027 : vec4<f32> = u_xlat6;
  let x_1029 : vec4<f32> = u_xlat6;
  u_xlat30.x = dot(vec3<f32>(x_1027.x, x_1027.y, x_1027.z), vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1034 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1034, 0.001f);
  let x_1039 : f32 = u_xlat30.x;
  u_xlat30.x = inverseSqrt(x_1039);
  let x_1042 : vec2<f32> = u_xlat30;
  let x_1044 : vec4<f32> = u_xlat6;
  let x_1046 : vec3<f32> = (vec3<f32>(x_1042.x, x_1042.x, x_1042.x) * vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1049 : vec4<f32> = u_xlat3;
  let x_1051 : vec3<f32> = u_xlat4;
  u_xlat30.x = dot(vec3<f32>(x_1049.x, x_1049.y, x_1049.z), -(x_1051));
  let x_1055 : vec4<f32> = u_xlat3;
  let x_1058 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  u_xlat45 = dot(vec3<f32>(x_1055.x, x_1055.y, x_1055.z), vec3<f32>(x_1058.x, x_1058.y, x_1058.z));
  let x_1061 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1061, 0.0f, 1.0f);
  let x_1063 : vec4<f32> = u_xlat3;
  let x_1065 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_1063.x, x_1063.y, x_1063.z), vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
  let x_1068 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1068, 0.0f, 1.0f);
  let x_1071 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  let x_1073 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_1071.x, x_1071.y, x_1071.z), vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1078 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1078, 0.0f, 1.0f);
  let x_1083 : f32 = u_xlat3.x;
  let x_1085 : f32 = u_xlat3.x;
  u_xlat18 = (x_1083 * x_1085);
  let x_1087 : f32 = u_xlat18;
  let x_1089 : f32 = u_xlat49;
  u_xlat18 = dot(vec2<f32>(x_1087, x_1087), vec2<f32>(x_1089, x_1089));
  let x_1092 : f32 = u_xlat18;
  u_xlat18 = (x_1092 + -0.5f);
  let x_1096 : f32 = u_xlat45;
  u_xlat33 = (-(x_1096) + 1.0f);
  let x_1099 : f32 = u_xlat33;
  let x_1100 : f32 = u_xlat33;
  u_xlat48 = (x_1099 * x_1100);
  let x_1102 : f32 = u_xlat48;
  let x_1103 : f32 = u_xlat48;
  u_xlat48 = (x_1102 * x_1103);
  let x_1105 : f32 = u_xlat33;
  let x_1106 : f32 = u_xlat48;
  u_xlat33 = (x_1105 * x_1106);
  let x_1108 : f32 = u_xlat18;
  let x_1109 : f32 = u_xlat33;
  u_xlat33 = ((x_1108 * x_1109) + 1.0f);
  let x_1113 : f32 = u_xlat30.x;
  u_xlat48 = (-(abs(x_1113)) + 1.0f);
  let x_1117 : f32 = u_xlat48;
  let x_1118 : f32 = u_xlat48;
  u_xlat4.x = (x_1117 * x_1118);
  let x_1122 : f32 = u_xlat4.x;
  let x_1124 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1122 * x_1124);
  let x_1127 : f32 = u_xlat48;
  let x_1129 : f32 = u_xlat4.x;
  u_xlat48 = (x_1127 * x_1129);
  let x_1131 : f32 = u_xlat18;
  let x_1132 : f32 = u_xlat48;
  u_xlat18 = ((x_1131 * x_1132) + 1.0f);
  let x_1135 : f32 = u_xlat18;
  let x_1136 : f32 = u_xlat33;
  u_xlat18 = (x_1135 * x_1136);
  let x_1138 : f32 = u_xlat45;
  let x_1139 : f32 = u_xlat18;
  u_xlat18 = (x_1138 * x_1139);
  let x_1141 : f32 = u_xlat49;
  let x_1142 : f32 = u_xlat49;
  u_xlat33 = (x_1141 * x_1142);
  let x_1144 : f32 = u_xlat33;
  u_xlat33 = max(x_1144, 0.002f);
  let x_1147 : f32 = u_xlat33;
  u_xlat4.x = (-(x_1147) + 1.0f);
  let x_1153 : f32 = u_xlat30.x;
  let x_1156 : f32 = u_xlat4.x;
  let x_1158 : f32 = u_xlat33;
  u_xlat19 = ((abs(x_1153) * x_1156) + x_1158);
  let x_1160 : f32 = u_xlat45;
  let x_1162 : f32 = u_xlat4.x;
  let x_1164 : f32 = u_xlat33;
  u_xlat4.x = ((x_1160 * x_1162) + x_1164);
  let x_1168 : f32 = u_xlat30.x;
  let x_1171 : f32 = u_xlat4.x;
  u_xlat30.x = (abs(x_1168) * x_1171);
  let x_1174 : f32 = u_xlat45;
  let x_1175 : f32 = u_xlat19;
  let x_1178 : f32 = u_xlat30.x;
  u_xlat30.x = ((x_1174 * x_1175) + x_1178);
  let x_1182 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1182 + 0.00001f);
  let x_1187 : f32 = u_xlat30.x;
  u_xlat30.x = (0.5f / x_1187);
  let x_1190 : f32 = u_xlat33;
  let x_1191 : f32 = u_xlat33;
  u_xlat4.x = (x_1190 * x_1191);
  let x_1194 : f32 = u_xlat46;
  let x_1196 : f32 = u_xlat4.x;
  let x_1198 : f32 = u_xlat46;
  u_xlat19 = ((x_1194 * x_1196) + -(x_1198));
  let x_1201 : f32 = u_xlat19;
  let x_1202 : f32 = u_xlat46;
  u_xlat46 = ((x_1201 * x_1202) + 1.0f);
  let x_1206 : f32 = u_xlat4.x;
  u_xlat4.x = (x_1206 * 0.318309873f);
  let x_1210 : f32 = u_xlat46;
  let x_1211 : f32 = u_xlat46;
  u_xlat46 = ((x_1210 * x_1211) + 0.0000001f);
  let x_1216 : f32 = u_xlat4.x;
  let x_1217 : f32 = u_xlat46;
  u_xlat46 = (x_1216 / x_1217);
  let x_1220 : f32 = u_xlat30.x;
  let x_1221 : f32 = u_xlat46;
  u_xlat30.x = (x_1220 * x_1221);
  let x_1224 : f32 = u_xlat45;
  let x_1226 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1224 * x_1226);
  let x_1230 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1230 * 3.141592741f);
  let x_1235 : f32 = u_xlat30.x;
  u_xlat30.x = max(x_1235, 0.0f);
  let x_1238 : f32 = u_xlat33;
  let x_1239 : f32 = u_xlat33;
  u_xlat45 = ((x_1238 * x_1239) + 1.0f);
  let x_1242 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1242);
  let x_1244 : vec3<f32> = u_xlat1;
  let x_1245 : vec3<f32> = u_xlat1;
  u_xlat46 = dot(x_1244, x_1245);
  let x_1247 : f32 = u_xlat46;
  u_xlatb46 = !((x_1247 == 0.0f));
  let x_1249 : bool = u_xlatb46;
  u_xlat46 = select(0.0f, 1.0f, x_1249);
  let x_1252 : f32 = u_xlat30.x;
  let x_1253 : f32 = u_xlat46;
  u_xlat30.x = (x_1252 * x_1253);
  let x_1257 : f32 = u_xlat0.y;
  let x_1259 : f32 = x_44.x_GlossMapScale;
  let x_1262 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1257 * x_1259) + -(x_1262));
  let x_1267 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1267 + 1.0f);
  let x_1271 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1271, 0.0f, 1.0f);
  let x_1274 : f32 = u_xlat18;
  let x_1276 : vec3<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_1274, x_1274, x_1274) * x_1276);
  let x_1278 : vec4<f32> = u_xlat8;
  let x_1280 : f32 = u_xlat47;
  let x_1283 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_1278.x, x_1278.y, x_1278.z) * vec3<f32>(x_1280, x_1280, x_1280)) + x_1283);
  let x_1285 : vec3<f32> = u_xlat7;
  let x_1286 : vec2<f32> = u_xlat30;
  let x_1288 : vec3<f32> = (x_1285 * vec3<f32>(x_1286.x, x_1286.x, x_1286.x));
  let x_1289 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
  let x_1293 : f32 = u_xlat3.x;
  u_xlat15.x = (-(x_1293) + 1.0f);
  let x_1298 : f32 = u_xlat15.x;
  let x_1300 : f32 = u_xlat15.x;
  u_xlat30.x = (x_1298 * x_1300);
  let x_1304 : f32 = u_xlat30.x;
  let x_1306 : f32 = u_xlat30.x;
  u_xlat30.x = (x_1304 * x_1306);
  let x_1310 : f32 = u_xlat15.x;
  let x_1312 : f32 = u_xlat30.x;
  u_xlat15.x = (x_1310 * x_1312);
  let x_1315 : vec3<f32> = u_xlat1;
  let x_1318 : vec3<f32> = (-(x_1315) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
  let x_1321 : vec4<f32> = u_xlat3;
  let x_1323 : vec3<f32> = u_xlat15;
  let x_1326 : vec3<f32> = u_xlat1;
  let x_1327 : vec3<f32> = ((vec3<f32>(x_1321.x, x_1321.y, x_1321.z) * vec3<f32>(x_1323.x, x_1323.x, x_1323.x)) + x_1326);
  let x_1328 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
  let x_1330 : vec4<f32> = u_xlat3;
  let x_1332 : vec4<f32> = u_xlat6;
  let x_1334 : vec3<f32> = (vec3<f32>(x_1330.x, x_1330.y, x_1330.z) * vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
  let x_1335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
  let x_1337 : vec3<f32> = u_xlat2;
  let x_1338 : vec3<f32> = u_xlat4;
  let x_1340 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_1337 * x_1338) + vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
  let x_1343 : vec4<f32> = u_xlat5;
  let x_1345 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1343.x, x_1343.y, x_1343.z) * vec3<f32>(x_1345, x_1345, x_1345));
  let x_1348 : vec3<f32> = u_xlat1;
  let x_1350 : vec2<f32> = u_xlat0;
  let x_1352 : vec3<f32> = (-(x_1348) + vec3<f32>(x_1350.x, x_1350.x, x_1350.x));
  let x_1353 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
  let x_1355 : f32 = u_xlat48;
  let x_1357 : vec4<f32> = u_xlat3;
  let x_1360 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1355, x_1355, x_1355) * vec3<f32>(x_1357.x, x_1357.y, x_1357.z)) + x_1360);
  let x_1364 : vec3<f32> = u_xlat15;
  let x_1365 : vec3<f32> = u_xlat1;
  let x_1367 : vec3<f32> = u_xlat2;
  let x_1368 : vec3<f32> = ((x_1364 * x_1365) + x_1367);
  let x_1369 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


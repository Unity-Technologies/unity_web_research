struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat43 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlatb43 : bool;
  var x_311 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlatb42 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb11 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_516 : f32;
  var x_528 : f32;
  var x_540 : f32;
  var u_xlatb46 : bool;
  var u_xlat46 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_692 : f32;
  var x_704 : f32;
  var x_716 : f32;
  var u_xlat17 : f32;
  var u_xlat31 : f32;
  var u_xlat14 : vec3<f32>;
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
  let x_87 : vec4<f32> = vs_TEXCOORD0;
  let x_89 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_87.x, x_87.y));
  u_xlat3 = vec3<f32>(x_89.x, x_89.y, x_89.w);
  let x_93 : f32 = u_xlat3.z;
  let x_95 : f32 = u_xlat3.x;
  u_xlat3.x = (x_93 * x_95);
  let x_99 : vec3<f32> = u_xlat3;
  u_xlat28 = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat28;
  let x_111 : f32 = x_44.x_BumpScale;
  u_xlat28 = (x_107 * vec2<f32>(x_111, x_111));
  let x_115 : vec2<f32> = u_xlat28;
  let x_116 : vec2<f32> = u_xlat28;
  u_xlat43 = dot(x_115, x_116);
  let x_118 : f32 = u_xlat43;
  u_xlat43 = min(x_118, 1.0f);
  let x_121 : f32 = u_xlat43;
  u_xlat43 = (-(x_121) + 1.0f);
  let x_124 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_124);
  let x_126 : vec2<f32> = u_xlat28;
  let x_129 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_126.y, x_126.y, x_126.y) * vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_133 : vec4<f32> = vs_TEXCOORD2;
  let x_135 : vec2<f32> = u_xlat28;
  let x_138 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135.x, x_135.x, x_135.x)) + x_138);
  let x_141 : vec4<f32> = vs_TEXCOORD4;
  let x_143 : f32 = u_xlat43;
  let x_146 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143, x_143, x_143)) + x_146);
  let x_148 : vec3<f32> = u_xlat3;
  let x_149 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_153);
  let x_156 : vec2<f32> = u_xlat28;
  let x_158 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_156.x, x_156.x, x_156.x) * x_158);
  let x_161 : vec4<f32> = vs_TEXCOORD1;
  let x_163 : vec4<f32> = vs_TEXCOORD1;
  u_xlat28.x = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_168 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_168);
  let x_172 : vec2<f32> = u_xlat28;
  let x_174 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_172.x, x_172.x, x_172.x) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_182 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_182;
  let x_185 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_185;
  let x_189 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_189;
  let x_192 : vec4<f32> = u_xlat5;
  let x_198 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_199 : vec3<f32> = (-(vec3<f32>(x_192.x, x_192.y, x_192.z)) + x_198);
  let x_200 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_205 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat7.x = x_205;
  let x_209 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat7.y = x_209;
  let x_213 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat7.z = x_213;
  let x_216 : vec4<f32> = u_xlat6;
  let x_218 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), x_218);
  let x_220 : vec4<f32> = u_xlat5;
  let x_224 : vec4<f32> = x_44.unity_ShadowFadeCenterAndType;
  let x_227 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) + -(vec3<f32>(x_224.x, x_224.y, x_224.z)));
  let x_228 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec4<f32> = u_xlat6;
  let x_232 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_235);
  let x_237 : f32 = u_xlat42;
  let x_239 : f32 = u_xlat43;
  u_xlat43 = (-(x_237) + x_239);
  let x_242 : f32 = x_44.unity_ShadowFadeCenterAndType.w;
  let x_243 : f32 = u_xlat43;
  let x_245 : f32 = u_xlat42;
  u_xlat42 = ((x_242 * x_243) + x_245);
  let x_247 : f32 = u_xlat42;
  let x_250 : f32 = x_44.x_LightShadowData.z;
  let x_253 : f32 = x_44.x_LightShadowData.w;
  u_xlat42 = ((x_247 * x_250) + x_253);
  let x_255 : f32 = u_xlat42;
  u_xlat42 = clamp(x_255, 0.0f, 1.0f);
  let x_263 : f32 = x_44.unity_ProbeVolumeParams.x;
  u_xlatb43 = (x_263 == 1.0f);
  let x_265 : bool = u_xlatb43;
  if (x_265) {
    let x_269 : f32 = x_44.unity_ProbeVolumeParams.y;
    u_xlatb43 = (x_269 == 1.0f);
    let x_271 : vec4<f32> = vs_TEXCOORD3;
    let x_275 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[1i];
    let x_277 : vec3<f32> = (vec3<f32>(x_271.w, x_271.w, x_271.w) * vec3<f32>(x_275.x, x_275.y, x_275.z));
    let x_278 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_281 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[0i];
    let x_283 : vec4<f32> = vs_TEXCOORD2;
    let x_286 : vec4<f32> = u_xlat6;
    let x_288 : vec3<f32> = ((vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_283.w, x_283.w, x_283.w)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
    let x_289 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_292 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[2i];
    let x_294 : vec4<f32> = vs_TEXCOORD4;
    let x_297 : vec4<f32> = u_xlat6;
    let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.w, x_294.w, x_294.w)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
    let x_300 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat6;
    let x_305 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[3i];
    let x_307 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_305.x, x_305.y, x_305.z));
    let x_308 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_310 : bool = u_xlatb43;
    if (x_310) {
      let x_314 : vec4<f32> = u_xlat6;
      x_311 = vec3<f32>(x_314.x, x_314.y, x_314.z);
    } else {
      let x_317 : vec4<f32> = u_xlat5;
      x_311 = vec3<f32>(x_317.x, x_317.y, x_317.z);
    }
    let x_319 : vec3<f32> = x_311;
    let x_320 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat6;
    let x_326 : vec3<f32> = x_44.unity_ProbeVolumeMin;
    let x_328 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) + -(x_326));
    let x_329 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : vec4<f32> = u_xlat6;
    let x_335 : vec3<f32> = x_44.unity_ProbeVolumeSizeInv;
    let x_336 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * x_335);
    let x_337 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_337.x, x_336.x, x_336.y, x_336.z);
    let x_340 : f32 = u_xlat6.y;
    u_xlat43 = ((x_340 * 0.25f) + 0.75f);
    let x_347 : f32 = x_44.unity_ProbeVolumeParams.z;
    u_xlat44 = ((x_347 * 0.5f) + 0.75f);
    let x_351 : f32 = u_xlat43;
    let x_352 : f32 = u_xlat44;
    u_xlat6.x = max(x_351, x_352);
    let x_363 : vec4<f32> = u_xlat6;
    let x_365 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_363.x, x_363.z, x_363.w));
    u_xlat6 = x_365;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_371 : vec4<f32> = u_xlat6;
  let x_373 : vec4<f32> = x_44.unity_OcclusionMaskSelector;
  u_xlat43 = dot(x_371, x_373);
  let x_375 : f32 = u_xlat43;
  u_xlat43 = clamp(x_375, 0.0f, 1.0f);
  let x_378 : vec4<f32> = vs_TEXCOORD7;
  let x_380 : vec4<f32> = vs_TEXCOORD7;
  let x_382 : vec2<f32> = (vec2<f32>(x_378.x, x_378.y) / vec2<f32>(x_380.w, x_380.w));
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
  let x_390 : vec4<f32> = u_xlat6;
  let x_392 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_390.x, x_390.y));
  u_xlat44 = x_392.x;
  let x_394 : f32 = u_xlat43;
  let x_395 : f32 = u_xlat44;
  u_xlat43 = (x_394 + -(x_395));
  let x_398 : f32 = u_xlat42;
  let x_399 : f32 = u_xlat43;
  let x_401 : f32 = u_xlat44;
  u_xlat42 = ((x_398 * x_399) + x_401);
  let x_408 : vec4<f32> = vs_TEXCOORD0;
  let x_410 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_408.x, x_408.y));
  u_xlat43 = x_410.y;
  let x_414 : f32 = x_44.x_OcclusionStrength;
  u_xlat44 = (-(x_414) + 1.0f);
  let x_417 : f32 = u_xlat43;
  let x_419 : f32 = x_44.x_OcclusionStrength;
  let x_421 : f32 = u_xlat44;
  u_xlat43 = ((x_417 * x_419) + x_421);
  let x_424 : f32 = u_xlat0.y;
  let x_428 : f32 = x_44.x_GlossMapScale;
  u_xlat44 = ((-(x_424) * x_428) + 1.0f);
  let x_432 : vec3<f32> = u_xlat4;
  let x_433 : vec3<f32> = u_xlat3;
  u_xlat45 = dot(x_432, x_433);
  let x_435 : f32 = u_xlat45;
  let x_436 : f32 = u_xlat45;
  u_xlat45 = (x_435 + x_436);
  let x_438 : vec3<f32> = u_xlat3;
  let x_439 : f32 = u_xlat45;
  let x_443 : vec3<f32> = u_xlat4;
  let x_444 : vec3<f32> = ((x_438 * -(vec3<f32>(x_439, x_439, x_439))) + x_443);
  let x_445 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : f32 = u_xlat42;
  let x_451 : vec4<f32> = x_44.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_447, x_447, x_447) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_457 : f32 = x_44.unity_SpecCube0_ProbePosition.w;
  u_xlatb42 = (0.0f < x_457);
  let x_459 : bool = u_xlatb42;
  if (x_459) {
    let x_462 : vec4<f32> = u_xlat6;
    let x_464 : vec4<f32> = u_xlat6;
    u_xlat42 = dot(vec3<f32>(x_462.x, x_462.y, x_462.z), vec3<f32>(x_464.x, x_464.y, x_464.z));
    let x_467 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_467);
    let x_470 : f32 = u_xlat42;
    let x_472 : vec4<f32> = u_xlat6;
    let x_474 : vec3<f32> = (vec3<f32>(x_470, x_470, x_470) * vec3<f32>(x_472.x, x_472.y, x_472.z));
    let x_475 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
    let x_478 : vec4<f32> = u_xlat5;
    let x_483 : vec4<f32> = x_44.unity_SpecCube0_BoxMax;
    u_xlat9 = (-(vec3<f32>(x_478.x, x_478.y, x_478.z)) + vec3<f32>(x_483.x, x_483.y, x_483.z));
    let x_486 : vec3<f32> = u_xlat9;
    let x_487 : vec4<f32> = u_xlat8;
    u_xlat9 = (x_486 / vec3<f32>(x_487.x, x_487.y, x_487.z));
    let x_491 : vec4<f32> = u_xlat5;
    let x_496 : vec4<f32> = x_44.unity_SpecCube0_BoxMin;
    u_xlat10 = (-(vec3<f32>(x_491.x, x_491.y, x_491.z)) + vec3<f32>(x_496.x, x_496.y, x_496.z));
    let x_499 : vec3<f32> = u_xlat10;
    let x_500 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_499 / vec3<f32>(x_500.x, x_500.y, x_500.z));
    let x_507 : vec4<f32> = u_xlat8;
    let x_510 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_507.x, x_507.y, x_507.z, x_507.x));
    u_xlatb11 = vec3<bool>(x_510.x, x_510.y, x_510.z);
    let x_513 : vec3<f32> = u_xlat9;
    hlslcc_movcTemp = x_513;
    let x_515 : bool = u_xlatb11.x;
    if (x_515) {
      let x_520 : f32 = u_xlat9.x;
      x_516 = x_520;
    } else {
      let x_523 : f32 = u_xlat10.x;
      x_516 = x_523;
    }
    let x_524 : f32 = x_516;
    hlslcc_movcTemp.x = x_524;
    let x_527 : bool = u_xlatb11.y;
    if (x_527) {
      let x_532 : f32 = u_xlat9.y;
      x_528 = x_532;
    } else {
      let x_535 : f32 = u_xlat10.y;
      x_528 = x_535;
    }
    let x_536 : f32 = x_528;
    hlslcc_movcTemp.y = x_536;
    let x_539 : bool = u_xlatb11.z;
    if (x_539) {
      let x_544 : f32 = u_xlat9.z;
      x_540 = x_544;
    } else {
      let x_547 : f32 = u_xlat10.z;
      x_540 = x_547;
    }
    let x_548 : f32 = x_540;
    hlslcc_movcTemp.z = x_548;
    let x_550 : vec3<f32> = hlslcc_movcTemp;
    u_xlat9 = x_550;
    let x_552 : f32 = u_xlat9.y;
    let x_554 : f32 = u_xlat9.x;
    u_xlat42 = min(x_552, x_554);
    let x_557 : f32 = u_xlat9.z;
    let x_558 : f32 = u_xlat42;
    u_xlat42 = min(x_557, x_558);
    let x_560 : vec4<f32> = u_xlat5;
    let x_563 : vec4<f32> = x_44.unity_SpecCube0_ProbePosition;
    u_xlat9 = (vec3<f32>(x_560.x, x_560.y, x_560.z) + -(vec3<f32>(x_563.x, x_563.y, x_563.z)));
    let x_567 : vec4<f32> = u_xlat8;
    let x_569 : f32 = u_xlat42;
    let x_572 : vec3<f32> = u_xlat9;
    let x_573 : vec3<f32> = ((vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(x_569, x_569, x_569)) + x_572);
    let x_574 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  } else {
    let x_577 : vec4<f32> = u_xlat6;
    let x_578 : vec3<f32> = vec3<f32>(x_577.x, x_577.y, x_577.z);
    let x_579 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  }
  let x_581 : f32 = u_xlat44;
  u_xlat42 = ((-(x_581) * 0.699999988f) + 1.700000048f);
  let x_587 : f32 = u_xlat42;
  let x_588 : f32 = u_xlat44;
  u_xlat42 = (x_587 * x_588);
  let x_590 : f32 = u_xlat42;
  u_xlat42 = (x_590 * 6.0f);
  let x_601 : vec4<f32> = u_xlat8;
  let x_603 : f32 = u_xlat42;
  let x_604 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_601.x, x_601.y, x_601.z), x_603);
  u_xlat8 = x_604;
  let x_606 : f32 = u_xlat8.w;
  u_xlat45 = (x_606 + -1.0f);
  let x_610 : f32 = x_44.unity_SpecCube0_HDR.w;
  let x_611 : f32 = u_xlat45;
  u_xlat45 = ((x_610 * x_611) + 1.0f);
  let x_614 : f32 = u_xlat45;
  u_xlat45 = log2(x_614);
  let x_616 : f32 = u_xlat45;
  let x_618 : f32 = x_44.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_616 * x_618);
  let x_620 : f32 = u_xlat45;
  u_xlat45 = exp2(x_620);
  let x_622 : f32 = u_xlat45;
  let x_624 : f32 = x_44.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_622 * x_624);
  let x_626 : vec4<f32> = u_xlat8;
  let x_628 : f32 = u_xlat45;
  u_xlat9 = (vec3<f32>(x_626.x, x_626.y, x_626.z) * vec3<f32>(x_628, x_628, x_628));
  let x_633 : f32 = x_44.unity_SpecCube0_BoxMin.w;
  u_xlatb46 = (x_633 < 0.999989986f);
  let x_636 : bool = u_xlatb46;
  if (x_636) {
    let x_641 : f32 = x_44.unity_SpecCube1_ProbePosition.w;
    u_xlatb46 = (0.0f < x_641);
    let x_643 : bool = u_xlatb46;
    if (x_643) {
      let x_647 : vec4<f32> = u_xlat6;
      let x_649 : vec4<f32> = u_xlat6;
      u_xlat46 = dot(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(x_649.x, x_649.y, x_649.z));
      let x_652 : f32 = u_xlat46;
      u_xlat46 = inverseSqrt(x_652);
      let x_654 : f32 = u_xlat46;
      let x_656 : vec4<f32> = u_xlat6;
      u_xlat10 = (vec3<f32>(x_654, x_654, x_654) * vec3<f32>(x_656.x, x_656.y, x_656.z));
      let x_660 : vec4<f32> = u_xlat5;
      let x_665 : vec4<f32> = x_44.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(vec3<f32>(x_660.x, x_660.y, x_660.z)) + vec3<f32>(x_665.x, x_665.y, x_665.z));
      let x_668 : vec3<f32> = u_xlat11;
      let x_669 : vec3<f32> = u_xlat10;
      u_xlat11 = (x_668 / x_669);
      let x_672 : vec4<f32> = u_xlat5;
      let x_677 : vec4<f32> = x_44.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(vec3<f32>(x_672.x, x_672.y, x_672.z)) + vec3<f32>(x_677.x, x_677.y, x_677.z));
      let x_680 : vec3<f32> = u_xlat12;
      let x_681 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_680 / x_681);
      let x_684 : vec3<f32> = u_xlat10;
      let x_686 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_684.x, x_684.y, x_684.z, x_684.x));
      u_xlatb13 = vec3<bool>(x_686.x, x_686.y, x_686.z);
      let x_689 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_689;
      let x_691 : bool = u_xlatb13.x;
      if (x_691) {
        let x_696 : f32 = u_xlat11.x;
        x_692 = x_696;
      } else {
        let x_699 : f32 = u_xlat12.x;
        x_692 = x_699;
      }
      let x_700 : f32 = x_692;
      hlslcc_movcTemp_1.x = x_700;
      let x_703 : bool = u_xlatb13.y;
      if (x_703) {
        let x_708 : f32 = u_xlat11.y;
        x_704 = x_708;
      } else {
        let x_711 : f32 = u_xlat12.y;
        x_704 = x_711;
      }
      let x_712 : f32 = x_704;
      hlslcc_movcTemp_1.y = x_712;
      let x_715 : bool = u_xlatb13.z;
      if (x_715) {
        let x_720 : f32 = u_xlat11.z;
        x_716 = x_720;
      } else {
        let x_723 : f32 = u_xlat12.z;
        x_716 = x_723;
      }
      let x_724 : f32 = x_716;
      hlslcc_movcTemp_1.z = x_724;
      let x_726 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_726;
      let x_728 : f32 = u_xlat11.y;
      let x_730 : f32 = u_xlat11.x;
      u_xlat46 = min(x_728, x_730);
      let x_733 : f32 = u_xlat11.z;
      let x_734 : f32 = u_xlat46;
      u_xlat46 = min(x_733, x_734);
      let x_736 : vec4<f32> = u_xlat5;
      let x_739 : vec4<f32> = x_44.unity_SpecCube1_ProbePosition;
      let x_742 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) + -(vec3<f32>(x_739.x, x_739.y, x_739.z)));
      let x_743 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
      let x_745 : vec3<f32> = u_xlat10;
      let x_746 : f32 = u_xlat46;
      let x_749 : vec4<f32> = u_xlat5;
      let x_751 : vec3<f32> = ((x_745 * vec3<f32>(x_746, x_746, x_746)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
      let x_752 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
    }
    let x_758 : vec4<f32> = u_xlat6;
    let x_760 : f32 = u_xlat42;
    let x_761 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_758.x, x_758.y, x_758.z), x_760);
    u_xlat5 = x_761;
    let x_763 : f32 = u_xlat5.w;
    u_xlat42 = (x_763 + -1.0f);
    let x_767 : f32 = x_44.unity_SpecCube1_HDR.w;
    let x_768 : f32 = u_xlat42;
    u_xlat42 = ((x_767 * x_768) + 1.0f);
    let x_771 : f32 = u_xlat42;
    u_xlat42 = log2(x_771);
    let x_773 : f32 = u_xlat42;
    let x_775 : f32 = x_44.unity_SpecCube1_HDR.y;
    u_xlat42 = (x_773 * x_775);
    let x_777 : f32 = u_xlat42;
    u_xlat42 = exp2(x_777);
    let x_779 : f32 = u_xlat42;
    let x_781 : f32 = x_44.unity_SpecCube1_HDR.x;
    u_xlat42 = (x_779 * x_781);
    let x_783 : vec4<f32> = u_xlat5;
    let x_785 : f32 = u_xlat42;
    let x_787 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_785, x_785, x_785));
    let x_788 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
    let x_790 : f32 = u_xlat45;
    let x_792 : vec4<f32> = u_xlat8;
    let x_795 : vec4<f32> = u_xlat5;
    let x_798 : vec3<f32> = ((vec3<f32>(x_790, x_790, x_790) * vec3<f32>(x_792.x, x_792.y, x_792.z)) + -(vec3<f32>(x_795.x, x_795.y, x_795.z)));
    let x_799 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
    let x_802 : vec4<f32> = x_44.unity_SpecCube0_BoxMin;
    let x_804 : vec4<f32> = u_xlat6;
    let x_807 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_802.w, x_802.w, x_802.w) * vec3<f32>(x_804.x, x_804.y, x_804.z)) + vec3<f32>(x_807.x, x_807.y, x_807.z));
  }
  let x_810 : f32 = u_xlat43;
  let x_812 : vec3<f32> = u_xlat9;
  let x_813 : vec3<f32> = (vec3<f32>(x_810, x_810, x_810) * x_812);
  let x_814 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_816 : vec4<f32> = vs_TEXCOORD1;
  let x_819 : vec2<f32> = u_xlat28;
  let x_823 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  let x_825 : vec3<f32> = ((-(vec3<f32>(x_816.x, x_816.y, x_816.z)) * vec3<f32>(x_819.x, x_819.x, x_819.x)) + vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_826 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec4<f32> = u_xlat6;
  let x_830 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_828.x, x_828.y, x_828.z), vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_835 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_835, 0.001f);
  let x_840 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_840);
  let x_843 : vec2<f32> = u_xlat28;
  let x_845 : vec4<f32> = u_xlat6;
  let x_847 : vec3<f32> = (vec3<f32>(x_843.x, x_843.x, x_843.x) * vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec3<f32> = u_xlat3;
  let x_851 : vec3<f32> = u_xlat4;
  u_xlat28.x = dot(x_850, -(x_851));
  let x_855 : vec3<f32> = u_xlat3;
  let x_857 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  u_xlat42 = dot(x_855, vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_860 : f32 = u_xlat42;
  u_xlat42 = clamp(x_860, 0.0f, 1.0f);
  let x_862 : vec3<f32> = u_xlat3;
  let x_863 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(x_862, vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : f32 = u_xlat43;
  u_xlat43 = clamp(x_866, 0.0f, 1.0f);
  let x_869 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  let x_871 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_869.x, x_869.y, x_869.z), vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_876 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_876, 0.0f, 1.0f);
  let x_881 : f32 = u_xlat3.x;
  let x_883 : f32 = u_xlat3.x;
  u_xlat17 = (x_881 * x_883);
  let x_885 : f32 = u_xlat17;
  let x_887 : f32 = u_xlat44;
  u_xlat17 = dot(vec2<f32>(x_885, x_885), vec2<f32>(x_887, x_887));
  let x_890 : f32 = u_xlat17;
  u_xlat17 = (x_890 + -0.5f);
  let x_894 : f32 = u_xlat42;
  u_xlat31 = (-(x_894) + 1.0f);
  let x_897 : f32 = u_xlat31;
  let x_898 : f32 = u_xlat31;
  u_xlat45 = (x_897 * x_898);
  let x_900 : f32 = u_xlat45;
  let x_901 : f32 = u_xlat45;
  u_xlat45 = (x_900 * x_901);
  let x_903 : f32 = u_xlat31;
  let x_904 : f32 = u_xlat45;
  u_xlat31 = (x_903 * x_904);
  let x_906 : f32 = u_xlat17;
  let x_907 : f32 = u_xlat31;
  u_xlat31 = ((x_906 * x_907) + 1.0f);
  let x_911 : f32 = u_xlat28.x;
  u_xlat45 = (-(abs(x_911)) + 1.0f);
  let x_915 : f32 = u_xlat45;
  let x_916 : f32 = u_xlat45;
  u_xlat4.x = (x_915 * x_916);
  let x_920 : f32 = u_xlat4.x;
  let x_922 : f32 = u_xlat4.x;
  u_xlat4.x = (x_920 * x_922);
  let x_925 : f32 = u_xlat45;
  let x_927 : f32 = u_xlat4.x;
  u_xlat45 = (x_925 * x_927);
  let x_929 : f32 = u_xlat17;
  let x_930 : f32 = u_xlat45;
  u_xlat17 = ((x_929 * x_930) + 1.0f);
  let x_933 : f32 = u_xlat17;
  let x_934 : f32 = u_xlat31;
  u_xlat17 = (x_933 * x_934);
  let x_936 : f32 = u_xlat42;
  let x_937 : f32 = u_xlat17;
  u_xlat17 = (x_936 * x_937);
  let x_939 : f32 = u_xlat44;
  let x_940 : f32 = u_xlat44;
  u_xlat44 = (x_939 * x_940);
  let x_942 : f32 = u_xlat44;
  u_xlat44 = max(x_942, 0.002f);
  let x_945 : f32 = u_xlat44;
  u_xlat31 = (-(x_945) + 1.0f);
  let x_949 : f32 = u_xlat28.x;
  let x_951 : f32 = u_xlat31;
  let x_953 : f32 = u_xlat44;
  u_xlat4.x = ((abs(x_949) * x_951) + x_953);
  let x_956 : f32 = u_xlat42;
  let x_957 : f32 = u_xlat31;
  let x_959 : f32 = u_xlat44;
  u_xlat31 = ((x_956 * x_957) + x_959);
  let x_962 : f32 = u_xlat28.x;
  let x_964 : f32 = u_xlat31;
  u_xlat28.x = (abs(x_962) * x_964);
  let x_967 : f32 = u_xlat42;
  let x_969 : f32 = u_xlat4.x;
  let x_972 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_967 * x_969) + x_972);
  let x_976 : f32 = u_xlat28.x;
  u_xlat28.x = (x_976 + 0.00001f);
  let x_981 : f32 = u_xlat28.x;
  u_xlat28.x = (0.5f / x_981);
  let x_984 : f32 = u_xlat44;
  let x_985 : f32 = u_xlat44;
  u_xlat31 = (x_984 * x_985);
  let x_987 : f32 = u_xlat43;
  let x_988 : f32 = u_xlat31;
  let x_990 : f32 = u_xlat43;
  u_xlat4.x = ((x_987 * x_988) + -(x_990));
  let x_995 : f32 = u_xlat4.x;
  let x_996 : f32 = u_xlat43;
  u_xlat43 = ((x_995 * x_996) + 1.0f);
  let x_999 : f32 = u_xlat31;
  u_xlat31 = (x_999 * 0.318309873f);
  let x_1002 : f32 = u_xlat43;
  let x_1003 : f32 = u_xlat43;
  u_xlat43 = ((x_1002 * x_1003) + 0.0000001f);
  let x_1007 : f32 = u_xlat31;
  let x_1008 : f32 = u_xlat43;
  u_xlat43 = (x_1007 / x_1008);
  let x_1011 : f32 = u_xlat28.x;
  let x_1012 : f32 = u_xlat43;
  u_xlat28.x = (x_1011 * x_1012);
  let x_1015 : f32 = u_xlat42;
  let x_1017 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1015 * x_1017);
  let x_1021 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1021 * 3.141592741f);
  let x_1026 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_1026, 0.0f);
  let x_1029 : f32 = u_xlat44;
  let x_1030 : f32 = u_xlat44;
  u_xlat42 = ((x_1029 * x_1030) + 1.0f);
  let x_1033 : f32 = u_xlat42;
  u_xlat42 = (1.0f / x_1033);
  let x_1035 : vec3<f32> = u_xlat1;
  let x_1036 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_1035, x_1036);
  let x_1038 : f32 = u_xlat43;
  u_xlatb43 = !((x_1038 == 0.0f));
  let x_1040 : bool = u_xlatb43;
  u_xlat43 = select(0.0f, 1.0f, x_1040);
  let x_1043 : f32 = u_xlat28.x;
  let x_1044 : f32 = u_xlat43;
  u_xlat28.x = (x_1043 * x_1044);
  let x_1048 : f32 = u_xlat0.y;
  let x_1050 : f32 = x_44.x_GlossMapScale;
  let x_1053 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1048 * x_1050) + -(x_1053));
  let x_1058 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1058 + 1.0f);
  let x_1062 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1062, 0.0f, 1.0f);
  let x_1065 : f32 = u_xlat17;
  let x_1067 : vec3<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_1065, x_1065, x_1065) * x_1067);
  let x_1069 : vec3<f32> = u_xlat7;
  let x_1070 : vec2<f32> = u_xlat28;
  let x_1072 : vec3<f32> = (x_1069 * vec3<f32>(x_1070.x, x_1070.x, x_1070.x));
  let x_1073 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1077 : f32 = u_xlat3.x;
  u_xlat14.x = (-(x_1077) + 1.0f);
  let x_1082 : f32 = u_xlat14.x;
  let x_1084 : f32 = u_xlat14.x;
  u_xlat28.x = (x_1082 * x_1084);
  let x_1088 : f32 = u_xlat28.x;
  let x_1090 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1088 * x_1090);
  let x_1094 : f32 = u_xlat14.x;
  let x_1096 : f32 = u_xlat28.x;
  u_xlat14.x = (x_1094 * x_1096);
  let x_1099 : vec3<f32> = u_xlat1;
  u_xlat3 = (-(x_1099) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1103 : vec3<f32> = u_xlat3;
  let x_1104 : vec3<f32> = u_xlat14;
  let x_1107 : vec3<f32> = u_xlat1;
  u_xlat3 = ((x_1103 * vec3<f32>(x_1104.x, x_1104.x, x_1104.x)) + x_1107);
  let x_1109 : vec3<f32> = u_xlat3;
  let x_1110 : vec4<f32> = u_xlat6;
  u_xlat3 = (x_1109 * vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec3<f32> = u_xlat2;
  let x_1114 : vec3<f32> = u_xlat4;
  let x_1116 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_1113 * x_1114) + x_1116);
  let x_1118 : vec4<f32> = u_xlat5;
  let x_1120 : f32 = u_xlat42;
  u_xlat14 = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(x_1120, x_1120, x_1120));
  let x_1123 : vec3<f32> = u_xlat1;
  let x_1125 : vec2<f32> = u_xlat0;
  u_xlat3 = (-(x_1123) + vec3<f32>(x_1125.x, x_1125.x, x_1125.x));
  let x_1128 : f32 = u_xlat45;
  let x_1130 : vec3<f32> = u_xlat3;
  let x_1132 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1128, x_1128, x_1128) * x_1130) + x_1132);
  let x_1136 : vec3<f32> = u_xlat14;
  let x_1137 : vec3<f32> = u_xlat1;
  let x_1139 : vec3<f32> = u_xlat2;
  let x_1140 : vec3<f32> = ((x_1136 * x_1137) + x_1139);
  let x_1141 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


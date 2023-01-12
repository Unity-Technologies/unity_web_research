struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_AmbientColor : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(10) var sampler_Normal : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb43 : bool;
  var u_xlat6 : vec4<f32>;
  var u_xlat44 : f32;
  var u_xlatb44 : bool;
  var x_294 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb11 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_504 : f32;
  var x_516 : f32;
  var x_528 : f32;
  var u_xlatb46 : bool;
  var u_xlat46 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_677 : f32;
  var x_689 : f32;
  var x_701 : f32;
  var u_xlat16 : f32;
  var u_xlat15 : f32;
  var u_xlat29 : f32;
  var u_xlat30 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_28;
  let x_32 : vec3<f32> = u_xlat0;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat42 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat42;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_71 : vec4<f32> = vs_TEXCOORD0;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_71.x, x_71.y));
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_79 : vec4<f32> = x_37.x_Color;
  let x_81 : vec3<f32> = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec4<f32> = u_xlat3;
  let x_88 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_85.x, x_85.y, x_85.z) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_95 : f32 = x_37.x_Time.x;
  let x_98 : f32 = x_37.x_MovementSpeed;
  let x_101 : f32 = vs_TEXCOORD0.z;
  u_xlat5.x = ((x_95 * x_98) + x_101);
  let x_105 : f32 = x_37.x_Time.x;
  let x_108 : f32 = x_37.x_MovementSpeed;
  let x_111 : f32 = vs_TEXCOORD0.w;
  u_xlat5.y = ((-(x_105) * x_108) + x_111);
  let x_119 : vec3<f32> = u_xlat5;
  let x_121 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_119.x, x_119.y));
  u_xlat5 = vec3<f32>(x_121.x, x_121.y, x_121.w);
  let x_124 : f32 = u_xlat5.z;
  let x_126 : f32 = u_xlat5.x;
  u_xlat5.x = (x_124 * x_126);
  let x_129 : vec3<f32> = u_xlat5;
  let x_136 : vec2<f32> = ((vec2<f32>(x_129.x, x_129.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_137 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_136.x, x_136.y, x_137.z);
  let x_139 : vec3<f32> = u_xlat5;
  let x_143 : f32 = x_37.x_NormalSacle;
  let x_145 : vec2<f32> = (vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_143, x_143));
  let x_146 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_145.x, x_145.y, x_146.z);
  let x_149 : vec3<f32> = u_xlat5;
  let x_151 : vec3<f32> = u_xlat5;
  u_xlat43 = dot(vec2<f32>(x_149.x, x_149.y), vec2<f32>(x_151.x, x_151.y));
  let x_154 : f32 = u_xlat43;
  u_xlat43 = min(x_154, 1.0f);
  let x_157 : f32 = u_xlat43;
  u_xlat43 = (-(x_157) + 1.0f);
  let x_160 : f32 = u_xlat43;
  u_xlat5.z = sqrt(x_160);
  let x_164 : f32 = vs_COLOR0.w;
  u_xlat43 = (-(x_164) + 1.0f);
  let x_168 : f32 = u_xlat3.w;
  let x_170 : f32 = x_37.x_Color.w;
  let x_172 : f32 = u_xlat43;
  u_xlat43 = ((x_168 * x_170) + -(x_172));
  let x_178 : f32 = u_xlat43;
  u_xlatb43 = (x_178 < 0.0f);
  let x_181 : bool = u_xlatb43;
  if (((select(0i, 1i, x_181) * -1i) != 0i)) {
    discard;
  }
  let x_192 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat6.x = x_192;
  let x_195 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat6.y = x_195;
  let x_199 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat6.z = x_199;
  let x_201 : vec3<f32> = u_xlat1;
  let x_202 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(x_201, vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec3<f32> = u_xlat0;
  let x_208 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_211 : vec3<f32> = (x_205 + -(vec3<f32>(x_208.x, x_208.y, x_208.z)));
  let x_212 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_215 : vec4<f32> = u_xlat6;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : f32 = u_xlat44;
  u_xlat44 = sqrt(x_220);
  let x_222 : f32 = u_xlat43;
  let x_224 : f32 = u_xlat44;
  u_xlat44 = (-(x_222) + x_224);
  let x_227 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_228 : f32 = u_xlat44;
  let x_230 : f32 = u_xlat43;
  u_xlat43 = ((x_227 * x_228) + x_230);
  let x_232 : f32 = u_xlat43;
  let x_235 : f32 = x_37.x_LightShadowData.z;
  let x_238 : f32 = x_37.x_LightShadowData.w;
  u_xlat43 = ((x_232 * x_235) + x_238);
  let x_240 : f32 = u_xlat43;
  u_xlat43 = clamp(x_240, 0.0f, 1.0f);
  let x_245 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb44 = (x_245 == 1.0f);
  let x_247 : bool = u_xlatb44;
  if (x_247) {
    let x_251 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb44 = (x_251 == 1.0f);
    let x_253 : vec4<f32> = vs_TEXCOORD2;
    let x_257 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_259 : vec3<f32> = (vec3<f32>(x_253.w, x_253.w, x_253.w) * vec3<f32>(x_257.x, x_257.y, x_257.z));
    let x_260 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_263 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_265 : vec4<f32> = vs_TEXCOORD1;
    let x_268 : vec4<f32> = u_xlat6;
    let x_270 : vec3<f32> = ((vec3<f32>(x_263.x, x_263.y, x_263.z) * vec3<f32>(x_265.w, x_265.w, x_265.w)) + vec3<f32>(x_268.x, x_268.y, x_268.z));
    let x_271 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
    let x_274 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_276 : vec4<f32> = vs_TEXCOORD3;
    let x_279 : vec4<f32> = u_xlat6;
    let x_281 : vec3<f32> = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_276.w, x_276.w, x_276.w)) + vec3<f32>(x_279.x, x_279.y, x_279.z));
    let x_282 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat6;
    let x_288 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_290 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) + vec3<f32>(x_288.x, x_288.y, x_288.z));
    let x_291 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_293 : bool = u_xlatb44;
    if (x_293) {
      let x_297 : vec4<f32> = u_xlat6;
      x_294 = vec3<f32>(x_297.x, x_297.y, x_297.z);
    } else {
      let x_300 : vec3<f32> = u_xlat0;
      x_294 = x_300;
    }
    let x_301 : vec3<f32> = x_294;
    let x_302 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
    let x_304 : vec4<f32> = u_xlat6;
    let x_308 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_310 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) + -(x_308));
    let x_311 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
    let x_313 : vec4<f32> = u_xlat6;
    let x_317 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_318 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) * x_317);
    let x_319 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_319.x, x_318.x, x_318.y, x_318.z);
    let x_322 : f32 = u_xlat6.y;
    u_xlat44 = ((x_322 * 0.25f) + 0.75f);
    let x_329 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat45 = ((x_329 * 0.5f) + 0.75f);
    let x_333 : f32 = u_xlat44;
    let x_334 : f32 = u_xlat45;
    u_xlat6.x = max(x_333, x_334);
    let x_345 : vec4<f32> = u_xlat6;
    let x_347 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_345.x, x_345.z, x_345.w));
    u_xlat6 = x_347;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_353 : vec4<f32> = u_xlat6;
  let x_356 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat44 = dot(x_353, x_356);
  let x_358 : f32 = u_xlat44;
  u_xlat44 = clamp(x_358, 0.0f, 1.0f);
  let x_361 : vec4<f32> = vs_TEXCOORD7;
  let x_363 : vec4<f32> = vs_TEXCOORD7;
  let x_365 : vec2<f32> = (vec2<f32>(x_361.x, x_361.y) / vec2<f32>(x_363.w, x_363.w));
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_366.w);
  let x_373 : vec4<f32> = u_xlat6;
  let x_375 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_373.x, x_373.y));
  u_xlat45 = x_375.x;
  let x_377 : f32 = u_xlat44;
  let x_378 : f32 = u_xlat45;
  u_xlat44 = (x_377 + -(x_378));
  let x_381 : f32 = u_xlat43;
  let x_382 : f32 = u_xlat44;
  let x_384 : f32 = u_xlat45;
  u_xlat43 = ((x_381 * x_382) + x_384);
  let x_386 : vec4<f32> = vs_TEXCOORD1;
  let x_388 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), x_388);
  let x_391 : vec4<f32> = vs_TEXCOORD2;
  let x_393 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_391.x, x_391.y, x_391.z), x_393);
  let x_396 : vec4<f32> = vs_TEXCOORD3;
  let x_398 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), x_398);
  let x_401 : vec4<f32> = u_xlat6;
  let x_403 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_406);
  let x_408 : f32 = u_xlat44;
  let x_410 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_408, x_408, x_408) * vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_415 : f32 = x_37.x_Glossiness;
  u_xlat44 = (-(x_415) + 1.0f);
  let x_418 : vec4<f32> = u_xlat2;
  let x_421 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(-(vec3<f32>(x_418.x, x_418.y, x_418.z)), x_421);
  let x_423 : f32 = u_xlat45;
  let x_424 : f32 = u_xlat45;
  u_xlat45 = (x_423 + x_424);
  let x_426 : vec3<f32> = u_xlat5;
  let x_427 : f32 = u_xlat45;
  let x_431 : vec4<f32> = u_xlat2;
  let x_434 : vec3<f32> = ((x_426 * -(vec3<f32>(x_427, x_427, x_427))) + -(vec3<f32>(x_431.x, x_431.y, x_431.z)));
  let x_435 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_438 : f32 = u_xlat43;
  let x_442 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_438, x_438, x_438) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_447 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb43 = (0.0f < x_447);
  let x_449 : bool = u_xlatb43;
  if (x_449) {
    let x_452 : vec4<f32> = u_xlat6;
    let x_454 : vec4<f32> = u_xlat6;
    u_xlat43 = dot(vec3<f32>(x_452.x, x_452.y, x_452.z), vec3<f32>(x_454.x, x_454.y, x_454.z));
    let x_457 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_457);
    let x_460 : f32 = u_xlat43;
    let x_462 : vec4<f32> = u_xlat6;
    let x_464 : vec3<f32> = (vec3<f32>(x_460, x_460, x_460) * vec3<f32>(x_462.x, x_462.y, x_462.z));
    let x_465 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
    let x_468 : vec3<f32> = u_xlat0;
    let x_472 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    u_xlat9 = (-(x_468) + vec3<f32>(x_472.x, x_472.y, x_472.z));
    let x_475 : vec3<f32> = u_xlat9;
    let x_476 : vec4<f32> = u_xlat8;
    u_xlat9 = (x_475 / vec3<f32>(x_476.x, x_476.y, x_476.z));
    let x_480 : vec3<f32> = u_xlat0;
    let x_484 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat10 = (-(x_480) + vec3<f32>(x_484.x, x_484.y, x_484.z));
    let x_487 : vec3<f32> = u_xlat10;
    let x_488 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_487 / vec3<f32>(x_488.x, x_488.y, x_488.z));
    let x_495 : vec4<f32> = u_xlat8;
    let x_498 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_495.x, x_495.y, x_495.z, x_495.x));
    u_xlatb11 = vec3<bool>(x_498.x, x_498.y, x_498.z);
    let x_501 : vec3<f32> = u_xlat9;
    hlslcc_movcTemp = x_501;
    let x_503 : bool = u_xlatb11.x;
    if (x_503) {
      let x_508 : f32 = u_xlat9.x;
      x_504 = x_508;
    } else {
      let x_511 : f32 = u_xlat10.x;
      x_504 = x_511;
    }
    let x_512 : f32 = x_504;
    hlslcc_movcTemp.x = x_512;
    let x_515 : bool = u_xlatb11.y;
    if (x_515) {
      let x_520 : f32 = u_xlat9.y;
      x_516 = x_520;
    } else {
      let x_523 : f32 = u_xlat10.y;
      x_516 = x_523;
    }
    let x_524 : f32 = x_516;
    hlslcc_movcTemp.y = x_524;
    let x_527 : bool = u_xlatb11.z;
    if (x_527) {
      let x_532 : f32 = u_xlat9.z;
      x_528 = x_532;
    } else {
      let x_535 : f32 = u_xlat10.z;
      x_528 = x_535;
    }
    let x_536 : f32 = x_528;
    hlslcc_movcTemp.z = x_536;
    let x_538 : vec3<f32> = hlslcc_movcTemp;
    u_xlat9 = x_538;
    let x_540 : f32 = u_xlat9.y;
    let x_542 : f32 = u_xlat9.x;
    u_xlat43 = min(x_540, x_542);
    let x_545 : f32 = u_xlat9.z;
    let x_546 : f32 = u_xlat43;
    u_xlat43 = min(x_545, x_546);
    let x_548 : vec3<f32> = u_xlat0;
    let x_550 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    u_xlat9 = (x_548 + -(vec3<f32>(x_550.x, x_550.y, x_550.z)));
    let x_554 : vec4<f32> = u_xlat8;
    let x_556 : f32 = u_xlat43;
    let x_559 : vec3<f32> = u_xlat9;
    let x_560 : vec3<f32> = ((vec3<f32>(x_554.x, x_554.y, x_554.z) * vec3<f32>(x_556, x_556, x_556)) + x_559);
    let x_561 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  } else {
    let x_564 : vec4<f32> = u_xlat6;
    let x_565 : vec3<f32> = vec3<f32>(x_564.x, x_564.y, x_564.z);
    let x_566 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  }
  let x_568 : f32 = u_xlat44;
  u_xlat43 = ((-(x_568) * 0.699999988f) + 1.700000048f);
  let x_574 : f32 = u_xlat43;
  let x_575 : f32 = u_xlat44;
  u_xlat43 = (x_574 * x_575);
  let x_577 : f32 = u_xlat43;
  u_xlat43 = (x_577 * 6.0f);
  let x_588 : vec4<f32> = u_xlat8;
  let x_590 : f32 = u_xlat43;
  let x_591 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_588.x, x_588.y, x_588.z), x_590);
  u_xlat8 = x_591;
  let x_593 : f32 = u_xlat8.w;
  u_xlat45 = (x_593 + -1.0f);
  let x_597 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_598 : f32 = u_xlat45;
  u_xlat45 = ((x_597 * x_598) + 1.0f);
  let x_601 : f32 = u_xlat45;
  u_xlat45 = log2(x_601);
  let x_603 : f32 = u_xlat45;
  let x_605 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_603 * x_605);
  let x_607 : f32 = u_xlat45;
  u_xlat45 = exp2(x_607);
  let x_609 : f32 = u_xlat45;
  let x_611 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_609 * x_611);
  let x_613 : vec4<f32> = u_xlat8;
  let x_615 : f32 = u_xlat45;
  u_xlat9 = (vec3<f32>(x_613.x, x_613.y, x_613.z) * vec3<f32>(x_615, x_615, x_615));
  let x_620 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb46 = (x_620 < 0.999989986f);
  let x_623 : bool = u_xlatb46;
  if (x_623) {
    let x_628 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb46 = (0.0f < x_628);
    let x_630 : bool = u_xlatb46;
    if (x_630) {
      let x_634 : vec4<f32> = u_xlat6;
      let x_636 : vec4<f32> = u_xlat6;
      u_xlat46 = dot(vec3<f32>(x_634.x, x_634.y, x_634.z), vec3<f32>(x_636.x, x_636.y, x_636.z));
      let x_639 : f32 = u_xlat46;
      u_xlat46 = inverseSqrt(x_639);
      let x_641 : f32 = u_xlat46;
      let x_643 : vec4<f32> = u_xlat6;
      u_xlat10 = (vec3<f32>(x_641, x_641, x_641) * vec3<f32>(x_643.x, x_643.y, x_643.z));
      let x_647 : vec3<f32> = u_xlat0;
      let x_651 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(x_647) + vec3<f32>(x_651.x, x_651.y, x_651.z));
      let x_654 : vec3<f32> = u_xlat11;
      let x_655 : vec3<f32> = u_xlat10;
      u_xlat11 = (x_654 / x_655);
      let x_658 : vec3<f32> = u_xlat0;
      let x_662 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(x_658) + vec3<f32>(x_662.x, x_662.y, x_662.z));
      let x_665 : vec3<f32> = u_xlat12;
      let x_666 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_665 / x_666);
      let x_669 : vec3<f32> = u_xlat10;
      let x_671 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_669.x, x_669.y, x_669.z, x_669.x));
      u_xlatb13 = vec3<bool>(x_671.x, x_671.y, x_671.z);
      let x_674 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_674;
      let x_676 : bool = u_xlatb13.x;
      if (x_676) {
        let x_681 : f32 = u_xlat11.x;
        x_677 = x_681;
      } else {
        let x_684 : f32 = u_xlat12.x;
        x_677 = x_684;
      }
      let x_685 : f32 = x_677;
      hlslcc_movcTemp_1.x = x_685;
      let x_688 : bool = u_xlatb13.y;
      if (x_688) {
        let x_693 : f32 = u_xlat11.y;
        x_689 = x_693;
      } else {
        let x_696 : f32 = u_xlat12.y;
        x_689 = x_696;
      }
      let x_697 : f32 = x_689;
      hlslcc_movcTemp_1.y = x_697;
      let x_700 : bool = u_xlatb13.z;
      if (x_700) {
        let x_705 : f32 = u_xlat11.z;
        x_701 = x_705;
      } else {
        let x_708 : f32 = u_xlat12.z;
        x_701 = x_708;
      }
      let x_709 : f32 = x_701;
      hlslcc_movcTemp_1.z = x_709;
      let x_711 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_711;
      let x_713 : f32 = u_xlat11.y;
      let x_715 : f32 = u_xlat11.x;
      u_xlat46 = min(x_713, x_715);
      let x_718 : f32 = u_xlat11.z;
      let x_719 : f32 = u_xlat46;
      u_xlat46 = min(x_718, x_719);
      let x_721 : vec3<f32> = u_xlat0;
      let x_723 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_721 + -(vec3<f32>(x_723.x, x_723.y, x_723.z)));
      let x_727 : vec3<f32> = u_xlat10;
      let x_728 : f32 = u_xlat46;
      let x_731 : vec3<f32> = u_xlat0;
      let x_732 : vec3<f32> = ((x_727 * vec3<f32>(x_728, x_728, x_728)) + x_731);
      let x_733 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
    }
    let x_739 : vec4<f32> = u_xlat6;
    let x_741 : f32 = u_xlat43;
    let x_742 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_739.x, x_739.y, x_739.z), x_741);
    u_xlat6 = x_742;
    let x_744 : f32 = u_xlat6.w;
    u_xlat0.x = (x_744 + -1.0f);
    let x_749 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_751 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_749 * x_751) + 1.0f);
    let x_756 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_756);
    let x_760 : f32 = u_xlat0.x;
    let x_762 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_760 * x_762);
    let x_766 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_766);
    let x_770 : f32 = u_xlat0.x;
    let x_772 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_770 * x_772);
    let x_775 : vec4<f32> = u_xlat6;
    let x_777 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_777.x, x_777.x, x_777.x));
    let x_780 : f32 = u_xlat45;
    let x_782 : vec4<f32> = u_xlat8;
    let x_785 : vec3<f32> = u_xlat0;
    let x_787 : vec3<f32> = ((vec3<f32>(x_780, x_780, x_780) * vec3<f32>(x_782.x, x_782.y, x_782.z)) + -(x_785));
    let x_788 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
    let x_791 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_793 : vec4<f32> = u_xlat6;
    let x_796 : vec3<f32> = u_xlat0;
    u_xlat9 = ((vec3<f32>(x_791.w, x_791.w, x_791.w) * vec3<f32>(x_793.x, x_793.y, x_793.z)) + x_796);
  }
  let x_798 : vec4<f32> = u_xlat3;
  let x_800 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_800.x, x_800.y, x_800.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_808 : f32 = x_37.x_Metallic;
  let x_810 : f32 = x_37.x_Metallic;
  let x_812 : f32 = x_37.x_Metallic;
  let x_813 : vec3<f32> = vec3<f32>(x_808, x_810, x_812);
  let x_818 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_813.x, x_813.y, x_813.z) * x_818) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_824 : f32 = x_37.x_Metallic;
  u_xlat43 = ((-(x_824) * 0.959999979f) + 0.959999979f);
  let x_829 : f32 = u_xlat43;
  let x_831 : vec3<f32> = u_xlat4;
  let x_832 : vec3<f32> = (vec3<f32>(x_829, x_829, x_829) * x_831);
  let x_833 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec3<f32> = u_xlat1;
  let x_836 : f32 = u_xlat42;
  let x_840 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_835 * vec3<f32>(x_836, x_836, x_836)) + vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec3<f32> = u_xlat1;
  let x_844 : vec3<f32> = u_xlat1;
  u_xlat42 = dot(x_843, x_844);
  let x_846 : f32 = u_xlat42;
  u_xlat42 = max(x_846, 0.001f);
  let x_849 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_849);
  let x_851 : f32 = u_xlat42;
  let x_853 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_851, x_851, x_851) * x_853);
  let x_855 : vec3<f32> = u_xlat5;
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat42 = dot(x_855, vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec3<f32> = u_xlat5;
  let x_861 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_859, vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_866 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_866, 0.0f, 1.0f);
  let x_870 : vec3<f32> = u_xlat5;
  let x_871 : vec3<f32> = u_xlat1;
  u_xlat16 = dot(x_870, x_871);
  let x_873 : f32 = u_xlat16;
  u_xlat16 = clamp(x_873, 0.0f, 1.0f);
  let x_876 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_878 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_876.x, x_876.y, x_876.z), x_878);
  let x_882 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_882, 0.0f, 1.0f);
  let x_887 : f32 = u_xlat1.x;
  let x_889 : f32 = u_xlat1.x;
  u_xlat15 = (x_887 * x_889);
  let x_891 : f32 = u_xlat15;
  let x_893 : f32 = u_xlat44;
  u_xlat15 = dot(vec2<f32>(x_891, x_891), vec2<f32>(x_893, x_893));
  let x_896 : f32 = u_xlat15;
  u_xlat15 = (x_896 + -0.5f);
  let x_901 : f32 = u_xlat2.x;
  u_xlat29 = (-(x_901) + 1.0f);
  let x_905 : f32 = u_xlat29;
  let x_906 : f32 = u_xlat29;
  u_xlat30 = (x_905 * x_906);
  let x_908 : f32 = u_xlat30;
  let x_909 : f32 = u_xlat30;
  u_xlat30 = (x_908 * x_909);
  let x_911 : f32 = u_xlat29;
  let x_912 : f32 = u_xlat30;
  u_xlat29 = (x_911 * x_912);
  let x_914 : f32 = u_xlat15;
  let x_915 : f32 = u_xlat29;
  u_xlat29 = ((x_914 * x_915) + 1.0f);
  let x_918 : f32 = u_xlat42;
  u_xlat30 = (-(abs(x_918)) + 1.0f);
  let x_922 : f32 = u_xlat30;
  let x_923 : f32 = u_xlat30;
  u_xlat45 = (x_922 * x_923);
  let x_925 : f32 = u_xlat45;
  let x_926 : f32 = u_xlat45;
  u_xlat45 = (x_925 * x_926);
  let x_928 : f32 = u_xlat30;
  let x_929 : f32 = u_xlat45;
  u_xlat30 = (x_928 * x_929);
  let x_931 : f32 = u_xlat15;
  let x_932 : f32 = u_xlat30;
  u_xlat15 = ((x_931 * x_932) + 1.0f);
  let x_935 : f32 = u_xlat15;
  let x_936 : f32 = u_xlat29;
  u_xlat15 = (x_935 * x_936);
  let x_939 : f32 = u_xlat2.x;
  let x_940 : f32 = u_xlat15;
  u_xlat15 = (x_939 * x_940);
  let x_942 : f32 = u_xlat44;
  let x_943 : f32 = u_xlat44;
  u_xlat29 = (x_942 * x_943);
  let x_945 : f32 = u_xlat29;
  u_xlat29 = max(x_945, 0.002f);
  let x_948 : f32 = u_xlat29;
  u_xlat44 = (-(x_948) + 1.0f);
  let x_951 : f32 = u_xlat42;
  let x_953 : f32 = u_xlat44;
  let x_955 : f32 = u_xlat29;
  u_xlat45 = ((abs(x_951) * x_953) + x_955);
  let x_958 : f32 = u_xlat2.x;
  let x_959 : f32 = u_xlat44;
  let x_961 : f32 = u_xlat29;
  u_xlat44 = ((x_958 * x_959) + x_961);
  let x_963 : f32 = u_xlat42;
  let x_965 : f32 = u_xlat44;
  u_xlat42 = (abs(x_963) * x_965);
  let x_968 : f32 = u_xlat2.x;
  let x_969 : f32 = u_xlat45;
  let x_971 : f32 = u_xlat42;
  u_xlat42 = ((x_968 * x_969) + x_971);
  let x_973 : f32 = u_xlat42;
  u_xlat42 = (x_973 + 0.00001f);
  let x_976 : f32 = u_xlat42;
  u_xlat42 = (0.5f / x_976);
  let x_978 : f32 = u_xlat29;
  let x_979 : f32 = u_xlat29;
  u_xlat44 = (x_978 * x_979);
  let x_981 : f32 = u_xlat16;
  let x_982 : f32 = u_xlat44;
  let x_984 : f32 = u_xlat16;
  u_xlat45 = ((x_981 * x_982) + -(x_984));
  let x_987 : f32 = u_xlat45;
  let x_988 : f32 = u_xlat16;
  u_xlat16 = ((x_987 * x_988) + 1.0f);
  let x_991 : f32 = u_xlat44;
  u_xlat44 = (x_991 * 0.318309873f);
  let x_994 : f32 = u_xlat16;
  let x_995 : f32 = u_xlat16;
  u_xlat16 = ((x_994 * x_995) + 0.0000001f);
  let x_999 : f32 = u_xlat44;
  let x_1000 : f32 = u_xlat16;
  u_xlat16 = (x_999 / x_1000);
  let x_1002 : f32 = u_xlat42;
  let x_1003 : f32 = u_xlat16;
  u_xlat42 = (x_1002 * x_1003);
  let x_1006 : f32 = u_xlat2.x;
  let x_1007 : f32 = u_xlat42;
  u_xlat42 = (x_1006 * x_1007);
  let x_1009 : f32 = u_xlat42;
  u_xlat42 = (x_1009 * 3.141592741f);
  let x_1012 : f32 = u_xlat42;
  u_xlat42 = max(x_1012, 0.0f);
  let x_1014 : f32 = u_xlat29;
  let x_1015 : f32 = u_xlat29;
  u_xlat29 = ((x_1014 * x_1015) + 1.0f);
  let x_1018 : f32 = u_xlat29;
  u_xlat29 = (1.0f / x_1018);
  let x_1020 : vec3<f32> = u_xlat0;
  let x_1021 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1020, x_1021);
  let x_1026 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1026 == 0.0f));
  let x_1028 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1028);
  let x_1031 : f32 = u_xlat42;
  let x_1033 : f32 = u_xlat2.x;
  u_xlat42 = (x_1031 * x_1033);
  let x_1035 : f32 = u_xlat43;
  let x_1038 : f32 = x_37.x_Glossiness;
  u_xlat43 = (-(x_1035) + x_1038);
  let x_1040 : f32 = u_xlat43;
  u_xlat43 = (x_1040 + 1.0f);
  let x_1042 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1042, 0.0f, 1.0f);
  let x_1044 : f32 = u_xlat15;
  let x_1046 : vec3<f32> = u_xlat7;
  let x_1047 : vec3<f32> = (vec3<f32>(x_1044, x_1044, x_1044) * x_1046);
  let x_1048 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1047.z);
  let x_1050 : vec3<f32> = u_xlat7;
  let x_1051 : f32 = u_xlat42;
  u_xlat4 = (x_1050 * vec3<f32>(x_1051, x_1051, x_1051));
  let x_1055 : f32 = u_xlat1.x;
  u_xlat42 = (-(x_1055) + 1.0f);
  let x_1058 : f32 = u_xlat42;
  let x_1059 : f32 = u_xlat42;
  u_xlat1.x = (x_1058 * x_1059);
  let x_1063 : f32 = u_xlat1.x;
  let x_1065 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1063 * x_1065);
  let x_1068 : f32 = u_xlat42;
  let x_1070 : f32 = u_xlat1.x;
  u_xlat42 = (x_1068 * x_1070);
  let x_1072 : vec3<f32> = u_xlat0;
  u_xlat5 = (-(x_1072) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1076 : vec3<f32> = u_xlat5;
  let x_1077 : f32 = u_xlat42;
  let x_1080 : vec3<f32> = u_xlat0;
  u_xlat5 = ((x_1076 * vec3<f32>(x_1077, x_1077, x_1077)) + x_1080);
  let x_1082 : vec3<f32> = u_xlat4;
  let x_1083 : vec3<f32> = u_xlat5;
  u_xlat4 = (x_1082 * x_1083);
  let x_1085 : vec4<f32> = u_xlat3;
  let x_1087 : vec4<f32> = u_xlat2;
  let x_1090 : vec3<f32> = u_xlat4;
  let x_1091 : vec3<f32> = ((vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * vec3<f32>(x_1087.x, x_1087.y, x_1087.w)) + x_1090);
  let x_1092 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1091.z);
  let x_1094 : vec3<f32> = u_xlat9;
  let x_1095 : f32 = u_xlat29;
  u_xlat1 = (x_1094 * vec3<f32>(x_1095, x_1095, x_1095));
  let x_1098 : vec3<f32> = u_xlat0;
  let x_1100 : f32 = u_xlat43;
  let x_1102 : vec3<f32> = (-(x_1098) + vec3<f32>(x_1100, x_1100, x_1100));
  let x_1103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
  let x_1105 : f32 = u_xlat30;
  let x_1107 : vec4<f32> = u_xlat3;
  let x_1110 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1105, x_1105, x_1105) * vec3<f32>(x_1107.x, x_1107.y, x_1107.z)) + x_1110);
  let x_1112 : vec3<f32> = u_xlat1;
  let x_1113 : vec3<f32> = u_xlat0;
  let x_1115 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1112 * x_1113) + vec3<f32>(x_1115.x, x_1115.y, x_1115.w));
  let x_1118 : vec3<f32> = u_xlat0;
  let x_1121 : vec4<f32> = x_37.x_AmbientColor;
  u_xlat0 = (x_1118 + vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
  let x_1125 : f32 = vs_TEXCOORD6;
  let x_1127 : f32 = x_37.x_ProjectionParams.y;
  u_xlat42 = (x_1125 / x_1127);
  let x_1129 : f32 = u_xlat42;
  u_xlat42 = (-(x_1129) + 1.0f);
  let x_1132 : f32 = u_xlat42;
  let x_1134 : f32 = x_37.x_ProjectionParams.z;
  u_xlat42 = (x_1132 * x_1134);
  let x_1136 : f32 = u_xlat42;
  u_xlat42 = max(x_1136, 0.0f);
  let x_1138 : f32 = u_xlat42;
  let x_1141 : f32 = x_37.unity_FogParams.x;
  u_xlat42 = (x_1138 * x_1141);
  let x_1143 : f32 = u_xlat42;
  let x_1144 : f32 = u_xlat42;
  u_xlat42 = (x_1143 * -(x_1144));
  let x_1147 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1147);
  let x_1149 : vec3<f32> = u_xlat0;
  let x_1152 : vec4<f32> = x_37.unity_FogColor;
  u_xlat0 = (x_1149 + -(vec3<f32>(x_1152.x, x_1152.y, x_1152.z)));
  let x_1158 : f32 = u_xlat42;
  let x_1160 : vec3<f32> = u_xlat0;
  let x_1163 : vec4<f32> = x_37.unity_FogColor;
  let x_1165 : vec3<f32> = ((vec3<f32>(x_1158, x_1158, x_1158) * x_1160) + vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
  let x_1166 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


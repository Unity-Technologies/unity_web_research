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
  x_Metallic : f32,
  x_Glossiness : f32,
}

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlatb41 : bool;
  var u_xlatb42 : bool;
  var x_195 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat17 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb40 : bool;
  var u_xlat6 : vec4<f32>;
  var x_375 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_568 : f32;
  var x_580 : f32;
  var x_592 : f32;
  var u_xlatb43 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_750 : f32;
  var x_762 : f32;
  var x_774 : f32;
  var u_xlat14 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD1;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_24 : vec3<f32> = (-(x_13) + x_23);
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_24.z, x_25.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_34 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat39;
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec3<f32> = (vec3<f32>(x_37, x_37, x_37) * vec3<f32>(x_39.x, x_39.y, x_39.z));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_59 : vec2<f32> = vs_TEXCOORD2;
  let x_60 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_59);
  u_xlat2 = vec3<f32>(x_60.x, x_60.y, x_60.z);
  let x_62 : vec3<f32> = u_xlat2;
  let x_66 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (x_62 * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_70 : vec3<f32> = u_xlat2;
  let x_73 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (x_70 * vec3<f32>(x_73.x, x_73.y, x_73.z));
  let x_82 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat4.x = x_82;
  let x_87 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat4.y = x_87;
  let x_92 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat4.z = x_92;
  let x_95 : vec4<f32> = u_xlat0;
  let x_97 : vec4<f32> = u_xlat4;
  u_xlat40 = dot(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : vec3<f32> = vs_TEXCOORD1;
  let x_103 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_106 : vec3<f32> = (x_100 + -(vec3<f32>(x_103.x, x_103.y, x_103.z)));
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : vec4<f32> = u_xlat4;
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat41 = dot(vec3<f32>(x_110.x, x_110.y, x_110.z), vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : f32 = u_xlat41;
  u_xlat41 = sqrt(x_115);
  let x_117 : f32 = u_xlat40;
  let x_119 : f32 = u_xlat41;
  u_xlat41 = (-(x_117) + x_119);
  let x_123 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_124 : f32 = u_xlat41;
  let x_126 : f32 = u_xlat40;
  u_xlat40 = ((x_123 * x_124) + x_126);
  let x_128 : f32 = u_xlat40;
  let x_131 : f32 = x_18.x_LightShadowData.z;
  let x_134 : f32 = x_18.x_LightShadowData.w;
  u_xlat40 = ((x_128 * x_131) + x_134);
  let x_136 : f32 = u_xlat40;
  u_xlat40 = clamp(x_136, 0.0f, 1.0f);
  let x_145 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb41 = (x_145 == 1.0f);
  let x_147 : bool = u_xlatb41;
  if (x_147) {
    let x_152 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb42 = (x_152 == 1.0f);
    let x_154 : vec3<f32> = vs_TEXCOORD1;
    let x_158 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_160 : vec3<f32> = (vec3<f32>(x_154.y, x_154.y, x_154.y) * vec3<f32>(x_158.x, x_158.y, x_158.z));
    let x_161 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_164 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_166 : vec3<f32> = vs_TEXCOORD1;
    let x_169 : vec4<f32> = u_xlat4;
    let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.x, x_166.x, x_166.x)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
    let x_172 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_175 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_177 : vec3<f32> = vs_TEXCOORD1;
    let x_180 : vec4<f32> = u_xlat4;
    let x_182 : vec3<f32> = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.z, x_177.z, x_177.z)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
    let x_183 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
    let x_185 : vec4<f32> = u_xlat4;
    let x_189 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_191 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + vec3<f32>(x_189.x, x_189.y, x_189.z));
    let x_192 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_194 : bool = u_xlatb42;
    if (x_194) {
      let x_198 : vec4<f32> = u_xlat4;
      x_195 = vec3<f32>(x_198.x, x_198.y, x_198.z);
    } else {
      let x_201 : vec3<f32> = vs_TEXCOORD1;
      x_195 = x_201;
    }
    let x_202 : vec3<f32> = x_195;
    let x_203 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_205 : vec4<f32> = u_xlat4;
    let x_209 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_211 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) + -(x_209));
    let x_212 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
    let x_214 : vec4<f32> = u_xlat4;
    let x_218 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_219 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * x_218);
    let x_220 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_220.x, x_219.x, x_219.y, x_219.z);
    let x_224 : f32 = u_xlat4.y;
    u_xlat42 = ((x_224 * 0.25f) + 0.75f);
    let x_231 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat17 = ((x_231 * 0.5f) + 0.75f);
    let x_235 : f32 = u_xlat42;
    let x_236 : f32 = u_xlat17;
    u_xlat4.x = max(x_235, x_236);
    let x_247 : vec4<f32> = u_xlat4;
    let x_249 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_247.x, x_247.z, x_247.w));
    u_xlat4 = x_249;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_255 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat42 = dot(x_255, x_258);
  let x_260 : f32 = u_xlat42;
  u_xlat42 = clamp(x_260, 0.0f, 1.0f);
  let x_263 : vec4<f32> = vs_TEXCOORD6;
  let x_265 : vec4<f32> = vs_TEXCOORD6;
  let x_267 : vec2<f32> = (vec2<f32>(x_263.x, x_263.y) / vec2<f32>(x_265.w, x_265.w));
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_267.x, x_267.y, x_268.z, x_268.w);
  let x_275 : vec4<f32> = u_xlat4;
  let x_277 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_275.x, x_275.y));
  u_xlat4.x = x_277.x;
  let x_280 : f32 = u_xlat42;
  let x_282 : f32 = u_xlat4.x;
  u_xlat42 = (x_280 + -(x_282));
  let x_285 : f32 = u_xlat40;
  let x_286 : f32 = u_xlat42;
  let x_289 : f32 = u_xlat4.x;
  u_xlat40 = ((x_285 * x_286) + x_289);
  let x_293 : f32 = x_18.x_Glossiness;
  u_xlat42 = (-(x_293) + 1.0f);
  let x_296 : vec4<f32> = u_xlat1;
  let x_300 : vec3<f32> = vs_TEXCOORD0;
  u_xlat4.x = dot(-(vec3<f32>(x_296.x, x_296.y, x_296.z)), x_300);
  let x_304 : f32 = u_xlat4.x;
  let x_306 : f32 = u_xlat4.x;
  u_xlat4.x = (x_304 + x_306);
  let x_309 : vec3<f32> = vs_TEXCOORD0;
  let x_310 : vec4<f32> = u_xlat4;
  let x_314 : vec4<f32> = u_xlat1;
  let x_317 : vec3<f32> = ((x_309 * -(vec3<f32>(x_310.x, x_310.x, x_310.x))) + -(vec3<f32>(x_314.x, x_314.y, x_314.z)));
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_321 : f32 = u_xlat40;
  let x_325 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_321, x_321, x_321) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : bool = u_xlatb41;
  if (x_328) {
    let x_333 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb40 = (x_333 == 1.0f);
    let x_336 : vec3<f32> = vs_TEXCOORD1;
    let x_339 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_341 : vec3<f32> = (vec3<f32>(x_336.y, x_336.y, x_336.y) * vec3<f32>(x_339.x, x_339.y, x_339.z));
    let x_342 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
    let x_345 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_347 : vec3<f32> = vs_TEXCOORD1;
    let x_350 : vec4<f32> = u_xlat6;
    let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.x, x_347.x, x_347.x)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
    let x_353 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
    let x_356 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_358 : vec3<f32> = vs_TEXCOORD1;
    let x_361 : vec4<f32> = u_xlat6;
    let x_363 : vec3<f32> = ((vec3<f32>(x_356.x, x_356.y, x_356.z) * vec3<f32>(x_358.z, x_358.z, x_358.z)) + vec3<f32>(x_361.x, x_361.y, x_361.z));
    let x_364 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
    let x_366 : vec4<f32> = u_xlat6;
    let x_369 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_371 : vec3<f32> = (vec3<f32>(x_366.x, x_366.y, x_366.z) + vec3<f32>(x_369.x, x_369.y, x_369.z));
    let x_372 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
    let x_374 : bool = u_xlatb40;
    if (x_374) {
      let x_378 : vec4<f32> = u_xlat6;
      x_375 = vec3<f32>(x_378.x, x_378.y, x_378.z);
    } else {
      let x_381 : vec3<f32> = vs_TEXCOORD1;
      x_375 = x_381;
    }
    let x_382 : vec3<f32> = x_375;
    let x_383 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
    let x_385 : vec4<f32> = u_xlat6;
    let x_388 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_390 : vec3<f32> = (vec3<f32>(x_385.x, x_385.y, x_385.z) + -(x_388));
    let x_391 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
    let x_393 : vec4<f32> = u_xlat6;
    let x_396 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_397 : vec3<f32> = (vec3<f32>(x_393.x, x_393.y, x_393.z) * x_396);
    let x_398 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_398.x, x_397.x, x_397.y, x_397.z);
    let x_401 : f32 = u_xlat6.y;
    u_xlat40 = (x_401 * 0.25f);
    let x_404 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat41 = (x_404 * 0.5f);
    let x_408 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat43 = ((-(x_408) * 0.5f) + 0.25f);
    let x_412 : f32 = u_xlat40;
    let x_413 : f32 = u_xlat41;
    u_xlat40 = max(x_412, x_413);
    let x_415 : f32 = u_xlat43;
    let x_416 : f32 = u_xlat40;
    u_xlat6.x = min(x_415, x_416);
    let x_423 : vec4<f32> = u_xlat6;
    let x_425 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_423.x, x_423.z, x_423.w));
    u_xlat7 = x_425;
    let x_427 : vec4<f32> = u_xlat6;
    let x_430 : vec3<f32> = (vec3<f32>(x_427.x, x_427.z, x_427.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_431 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
    let x_436 : vec4<f32> = u_xlat8;
    let x_438 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_436.x, x_436.y, x_436.z));
    u_xlat8 = x_438;
    let x_439 : vec4<f32> = u_xlat6;
    let x_442 : vec3<f32> = (vec3<f32>(x_439.x, x_439.z, x_439.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_443 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
    let x_448 : vec4<f32> = u_xlat6;
    let x_450 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_448.x, x_448.y, x_448.z));
    u_xlat6 = x_450;
    let x_452 : vec3<f32> = vs_TEXCOORD0;
    let x_453 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
    u_xlat9.w = 1.0f;
    let x_456 : vec4<f32> = u_xlat7;
    let x_457 : vec4<f32> = u_xlat9;
    u_xlat7.x = dot(x_456, x_457);
    let x_460 : vec4<f32> = u_xlat8;
    let x_461 : vec4<f32> = u_xlat9;
    u_xlat7.y = dot(x_460, x_461);
    let x_464 : vec4<f32> = u_xlat6;
    let x_465 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(x_464, x_465);
  } else {
    let x_469 : vec3<f32> = vs_TEXCOORD0;
    let x_470 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
    u_xlat6.w = 1.0f;
    let x_474 : vec4<f32> = x_18.unity_SHAr;
    let x_475 : vec4<f32> = u_xlat6;
    u_xlat7.x = dot(x_474, x_475);
    let x_479 : vec4<f32> = x_18.unity_SHAg;
    let x_480 : vec4<f32> = u_xlat6;
    u_xlat7.y = dot(x_479, x_480);
    let x_485 : vec4<f32> = x_18.unity_SHAb;
    let x_486 : vec4<f32> = u_xlat6;
    u_xlat7.z = dot(x_485, x_486);
  }
  let x_489 : vec4<f32> = u_xlat7;
  let x_492 : vec3<f32> = vs_TEXCOORD4;
  let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) + x_492);
  let x_494 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat6;
  let x_499 : vec3<f32> = max(vec3<f32>(x_496.x, x_496.y, x_496.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_500 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_504 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb40 = (0.0f < x_504);
  let x_506 : bool = u_xlatb40;
  if (x_506) {
    let x_509 : vec4<f32> = u_xlat4;
    let x_511 : vec4<f32> = u_xlat4;
    u_xlat40 = dot(vec3<f32>(x_509.x, x_509.y, x_509.z), vec3<f32>(x_511.x, x_511.y, x_511.z));
    let x_514 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_514);
    let x_516 : f32 = u_xlat40;
    let x_518 : vec4<f32> = u_xlat4;
    let x_520 : vec3<f32> = (vec3<f32>(x_516, x_516, x_516) * vec3<f32>(x_518.x, x_518.y, x_518.z));
    let x_521 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
    let x_523 : vec3<f32> = vs_TEXCOORD1;
    let x_527 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    let x_529 : vec3<f32> = (-(x_523) + vec3<f32>(x_527.x, x_527.y, x_527.z));
    let x_530 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
    let x_532 : vec4<f32> = u_xlat8;
    let x_534 : vec4<f32> = u_xlat7;
    let x_536 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) / vec3<f32>(x_534.x, x_534.y, x_534.z));
    let x_537 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_539 : vec3<f32> = vs_TEXCOORD1;
    let x_543 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_545 : vec3<f32> = (-(x_539) + vec3<f32>(x_543.x, x_543.y, x_543.z));
    let x_546 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
    let x_548 : vec4<f32> = u_xlat9;
    let x_550 : vec4<f32> = u_xlat7;
    let x_552 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) / vec3<f32>(x_550.x, x_550.y, x_550.z));
    let x_553 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
    let x_559 : vec4<f32> = u_xlat7;
    let x_562 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_559.x, x_559.y, x_559.z, x_559.x));
    u_xlatb10 = vec3<bool>(x_562.x, x_562.y, x_562.z);
    let x_565 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_565;
    let x_567 : bool = u_xlatb10.x;
    if (x_567) {
      let x_572 : f32 = u_xlat8.x;
      x_568 = x_572;
    } else {
      let x_575 : f32 = u_xlat9.x;
      x_568 = x_575;
    }
    let x_576 : f32 = x_568;
    hlslcc_movcTemp.x = x_576;
    let x_579 : bool = u_xlatb10.y;
    if (x_579) {
      let x_584 : f32 = u_xlat8.y;
      x_580 = x_584;
    } else {
      let x_587 : f32 = u_xlat9.y;
      x_580 = x_587;
    }
    let x_588 : f32 = x_580;
    hlslcc_movcTemp.y = x_588;
    let x_591 : bool = u_xlatb10.z;
    if (x_591) {
      let x_596 : f32 = u_xlat8.z;
      x_592 = x_596;
    } else {
      let x_599 : f32 = u_xlat9.z;
      x_592 = x_599;
    }
    let x_600 : f32 = x_592;
    hlslcc_movcTemp.z = x_600;
    let x_602 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_602;
    let x_604 : f32 = u_xlat8.y;
    let x_606 : f32 = u_xlat8.x;
    u_xlat40 = min(x_604, x_606);
    let x_609 : f32 = u_xlat8.z;
    let x_610 : f32 = u_xlat40;
    u_xlat40 = min(x_609, x_610);
    let x_612 : vec3<f32> = vs_TEXCOORD1;
    let x_614 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    let x_617 : vec3<f32> = (x_612 + -(vec3<f32>(x_614.x, x_614.y, x_614.z)));
    let x_618 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
    let x_620 : vec4<f32> = u_xlat7;
    let x_622 : f32 = u_xlat40;
    let x_625 : vec4<f32> = u_xlat8;
    let x_627 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.y, x_620.z) * vec3<f32>(x_622, x_622, x_622)) + vec3<f32>(x_625.x, x_625.y, x_625.z));
    let x_628 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  } else {
    let x_631 : vec4<f32> = u_xlat4;
    let x_632 : vec3<f32> = vec3<f32>(x_631.x, x_631.y, x_631.z);
    let x_633 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  }
  let x_635 : f32 = u_xlat42;
  u_xlat40 = ((-(x_635) * 0.699999988f) + 1.700000048f);
  let x_641 : f32 = u_xlat40;
  let x_642 : f32 = u_xlat42;
  u_xlat40 = (x_641 * x_642);
  let x_644 : f32 = u_xlat40;
  u_xlat40 = (x_644 * 6.0f);
  let x_655 : vec4<f32> = u_xlat7;
  let x_657 : f32 = u_xlat40;
  let x_658 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_655.x, x_655.y, x_655.z), x_657);
  u_xlat7 = x_658;
  let x_660 : f32 = u_xlat7.w;
  u_xlat41 = (x_660 + -1.0f);
  let x_665 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_666 : f32 = u_xlat41;
  u_xlat41 = ((x_665 * x_666) + 1.0f);
  let x_669 : f32 = u_xlat41;
  u_xlat41 = log2(x_669);
  let x_671 : f32 = u_xlat41;
  let x_673 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat41 = (x_671 * x_673);
  let x_675 : f32 = u_xlat41;
  u_xlat41 = exp2(x_675);
  let x_677 : f32 = u_xlat41;
  let x_679 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat41 = (x_677 * x_679);
  let x_681 : vec4<f32> = u_xlat7;
  let x_683 : f32 = u_xlat41;
  let x_685 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_683, x_683, x_683));
  let x_686 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_690 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb43 = (x_690 < 0.999989986f);
  let x_693 : bool = u_xlatb43;
  if (x_693) {
    let x_698 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb43 = (0.0f < x_698);
    let x_700 : bool = u_xlatb43;
    if (x_700) {
      let x_703 : vec4<f32> = u_xlat4;
      let x_705 : vec4<f32> = u_xlat4;
      u_xlat43 = dot(vec3<f32>(x_703.x, x_703.y, x_703.z), vec3<f32>(x_705.x, x_705.y, x_705.z));
      let x_708 : f32 = u_xlat43;
      u_xlat43 = inverseSqrt(x_708);
      let x_710 : f32 = u_xlat43;
      let x_712 : vec4<f32> = u_xlat4;
      let x_714 : vec3<f32> = (vec3<f32>(x_710, x_710, x_710) * vec3<f32>(x_712.x, x_712.y, x_712.z));
      let x_715 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
      let x_718 : vec3<f32> = vs_TEXCOORD1;
      let x_722 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_718) + vec3<f32>(x_722.x, x_722.y, x_722.z));
      let x_725 : vec3<f32> = u_xlat10;
      let x_726 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_725 / vec3<f32>(x_726.x, x_726.y, x_726.z));
      let x_730 : vec3<f32> = vs_TEXCOORD1;
      let x_734 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_730) + vec3<f32>(x_734.x, x_734.y, x_734.z));
      let x_737 : vec3<f32> = u_xlat11;
      let x_738 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_737 / vec3<f32>(x_738.x, x_738.y, x_738.z));
      let x_742 : vec4<f32> = u_xlat9;
      let x_744 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_742.x, x_742.y, x_742.z, x_742.x));
      u_xlatb12 = vec3<bool>(x_744.x, x_744.y, x_744.z);
      let x_747 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_747;
      let x_749 : bool = u_xlatb12.x;
      if (x_749) {
        let x_754 : f32 = u_xlat10.x;
        x_750 = x_754;
      } else {
        let x_757 : f32 = u_xlat11.x;
        x_750 = x_757;
      }
      let x_758 : f32 = x_750;
      hlslcc_movcTemp_1.x = x_758;
      let x_761 : bool = u_xlatb12.y;
      if (x_761) {
        let x_766 : f32 = u_xlat10.y;
        x_762 = x_766;
      } else {
        let x_769 : f32 = u_xlat11.y;
        x_762 = x_769;
      }
      let x_770 : f32 = x_762;
      hlslcc_movcTemp_1.y = x_770;
      let x_773 : bool = u_xlatb12.z;
      if (x_773) {
        let x_778 : f32 = u_xlat10.z;
        x_774 = x_778;
      } else {
        let x_781 : f32 = u_xlat11.z;
        x_774 = x_781;
      }
      let x_782 : f32 = x_774;
      hlslcc_movcTemp_1.z = x_782;
      let x_784 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_784;
      let x_786 : f32 = u_xlat10.y;
      let x_788 : f32 = u_xlat10.x;
      u_xlat43 = min(x_786, x_788);
      let x_791 : f32 = u_xlat10.z;
      let x_792 : f32 = u_xlat43;
      u_xlat43 = min(x_791, x_792);
      let x_794 : vec3<f32> = vs_TEXCOORD1;
      let x_796 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_794 + -(vec3<f32>(x_796.x, x_796.y, x_796.z)));
      let x_800 : vec4<f32> = u_xlat9;
      let x_802 : f32 = u_xlat43;
      let x_805 : vec3<f32> = u_xlat10;
      let x_806 : vec3<f32> = ((vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_802, x_802, x_802)) + x_805);
      let x_807 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
    }
    let x_813 : vec4<f32> = u_xlat4;
    let x_815 : f32 = u_xlat40;
    let x_816 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_813.x, x_813.y, x_813.z), x_815);
    u_xlat4 = x_816;
    let x_818 : f32 = u_xlat4.w;
    u_xlat40 = (x_818 + -1.0f);
    let x_822 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_823 : f32 = u_xlat40;
    u_xlat40 = ((x_822 * x_823) + 1.0f);
    let x_826 : f32 = u_xlat40;
    u_xlat40 = log2(x_826);
    let x_828 : f32 = u_xlat40;
    let x_830 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat40 = (x_828 * x_830);
    let x_832 : f32 = u_xlat40;
    u_xlat40 = exp2(x_832);
    let x_834 : f32 = u_xlat40;
    let x_836 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat40 = (x_834 * x_836);
    let x_838 : vec4<f32> = u_xlat4;
    let x_840 : f32 = u_xlat40;
    let x_842 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(x_840, x_840, x_840));
    let x_843 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
    let x_845 : f32 = u_xlat41;
    let x_847 : vec4<f32> = u_xlat7;
    let x_850 : vec4<f32> = u_xlat4;
    let x_853 : vec3<f32> = ((vec3<f32>(x_845, x_845, x_845) * vec3<f32>(x_847.x, x_847.y, x_847.z)) + -(vec3<f32>(x_850.x, x_850.y, x_850.z)));
    let x_854 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
    let x_857 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_859 : vec4<f32> = u_xlat7;
    let x_862 : vec4<f32> = u_xlat4;
    let x_864 : vec3<f32> = ((vec3<f32>(x_857.w, x_857.w, x_857.w) * vec3<f32>(x_859.x, x_859.y, x_859.z)) + vec3<f32>(x_862.x, x_862.y, x_862.z));
    let x_865 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  }
  let x_867 : vec3<f32> = vs_TEXCOORD0;
  let x_868 : vec3<f32> = vs_TEXCOORD0;
  u_xlat40 = dot(x_867, x_868);
  let x_870 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_870);
  let x_872 : f32 = u_xlat40;
  let x_874 : vec3<f32> = vs_TEXCOORD0;
  let x_875 : vec3<f32> = (vec3<f32>(x_872, x_872, x_872) * x_874);
  let x_876 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec3<f32> = u_xlat2;
  let x_879 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_878 * vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_887 : f32 = x_18.x_Metallic;
  let x_889 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_887, x_887, x_887) * x_889) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_895 : f32 = x_18.x_Metallic;
  u_xlat40 = ((-(x_895) * 0.959999979f) + 0.959999979f);
  let x_900 : f32 = u_xlat40;
  let x_902 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_900, x_900, x_900) * x_902);
  let x_904 : vec4<f32> = u_xlat0;
  let x_906 : f32 = u_xlat39;
  let x_910 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_912 : vec3<f32> = ((vec3<f32>(x_904.x, x_904.y, x_904.z) * vec3<f32>(x_906, x_906, x_906)) + vec3<f32>(x_910.x, x_910.y, x_910.z));
  let x_913 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_915 : vec4<f32> = u_xlat0;
  let x_917 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_915.x, x_915.y, x_915.z), vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : f32 = u_xlat39;
  u_xlat39 = max(x_920, 0.001f);
  let x_923 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_923);
  let x_925 : f32 = u_xlat39;
  let x_927 : vec4<f32> = u_xlat0;
  let x_929 : vec3<f32> = (vec3<f32>(x_925, x_925, x_925) * vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_930 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat4;
  let x_934 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(vec3<f32>(x_932.x, x_932.y, x_932.z), vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_937 : vec4<f32> = u_xlat4;
  let x_940 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_937.x, x_937.y, x_937.z), vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_945 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_945, 0.0f, 1.0f);
  let x_949 : vec4<f32> = u_xlat4;
  let x_951 : vec4<f32> = u_xlat0;
  u_xlat14 = dot(vec3<f32>(x_949.x, x_949.y, x_949.z), vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : f32 = u_xlat14;
  u_xlat14 = clamp(x_954, 0.0f, 1.0f);
  let x_957 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_959 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_957.x, x_957.y, x_957.z), vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_964 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_964, 0.0f, 1.0f);
  let x_969 : f32 = u_xlat0.x;
  let x_971 : f32 = u_xlat0.x;
  u_xlat13.x = (x_969 * x_971);
  let x_974 : vec3<f32> = u_xlat13;
  let x_976 : f32 = u_xlat42;
  u_xlat13.x = dot(vec2<f32>(x_974.x, x_974.x), vec2<f32>(x_976, x_976));
  let x_981 : f32 = u_xlat13.x;
  u_xlat13.x = (x_981 + -0.5f);
  let x_987 : f32 = u_xlat1.x;
  u_xlat26 = (-(x_987) + 1.0f);
  let x_991 : f32 = u_xlat26;
  let x_992 : f32 = u_xlat26;
  u_xlat27 = (x_991 * x_992);
  let x_994 : f32 = u_xlat27;
  let x_995 : f32 = u_xlat27;
  u_xlat27 = (x_994 * x_995);
  let x_997 : f32 = u_xlat26;
  let x_998 : f32 = u_xlat27;
  u_xlat26 = (x_997 * x_998);
  let x_1001 : f32 = u_xlat13.x;
  let x_1002 : f32 = u_xlat26;
  u_xlat26 = ((x_1001 * x_1002) + 1.0f);
  let x_1005 : f32 = u_xlat39;
  u_xlat27 = (-(abs(x_1005)) + 1.0f);
  let x_1009 : f32 = u_xlat27;
  let x_1010 : f32 = u_xlat27;
  u_xlat41 = (x_1009 * x_1010);
  let x_1012 : f32 = u_xlat41;
  let x_1013 : f32 = u_xlat41;
  u_xlat41 = (x_1012 * x_1013);
  let x_1015 : f32 = u_xlat27;
  let x_1016 : f32 = u_xlat41;
  u_xlat27 = (x_1015 * x_1016);
  let x_1019 : f32 = u_xlat13.x;
  let x_1020 : f32 = u_xlat27;
  u_xlat13.x = ((x_1019 * x_1020) + 1.0f);
  let x_1025 : f32 = u_xlat13.x;
  let x_1026 : f32 = u_xlat26;
  u_xlat13.x = (x_1025 * x_1026);
  let x_1029 : f32 = u_xlat42;
  let x_1030 : f32 = u_xlat42;
  u_xlat26 = (x_1029 * x_1030);
  let x_1032 : f32 = u_xlat26;
  u_xlat26 = max(x_1032, 0.002f);
  let x_1035 : f32 = u_xlat26;
  u_xlat41 = (-(x_1035) + 1.0f);
  let x_1038 : f32 = u_xlat39;
  let x_1040 : f32 = u_xlat41;
  let x_1042 : f32 = u_xlat26;
  u_xlat42 = ((abs(x_1038) * x_1040) + x_1042);
  let x_1045 : f32 = u_xlat1.x;
  let x_1046 : f32 = u_xlat41;
  let x_1048 : f32 = u_xlat26;
  u_xlat41 = ((x_1045 * x_1046) + x_1048);
  let x_1050 : f32 = u_xlat39;
  let x_1052 : f32 = u_xlat41;
  u_xlat39 = (abs(x_1050) * x_1052);
  let x_1055 : f32 = u_xlat1.x;
  let x_1056 : f32 = u_xlat42;
  let x_1058 : f32 = u_xlat39;
  u_xlat39 = ((x_1055 * x_1056) + x_1058);
  let x_1060 : f32 = u_xlat39;
  u_xlat39 = (x_1060 + 0.00001f);
  let x_1063 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_1063);
  let x_1065 : f32 = u_xlat26;
  let x_1066 : f32 = u_xlat26;
  u_xlat41 = (x_1065 * x_1066);
  let x_1068 : f32 = u_xlat14;
  let x_1069 : f32 = u_xlat41;
  let x_1071 : f32 = u_xlat14;
  u_xlat42 = ((x_1068 * x_1069) + -(x_1071));
  let x_1074 : f32 = u_xlat42;
  let x_1075 : f32 = u_xlat14;
  u_xlat14 = ((x_1074 * x_1075) + 1.0f);
  let x_1078 : f32 = u_xlat41;
  u_xlat41 = (x_1078 * 0.318309873f);
  let x_1081 : f32 = u_xlat14;
  let x_1082 : f32 = u_xlat14;
  u_xlat14 = ((x_1081 * x_1082) + 0.0000001f);
  let x_1086 : f32 = u_xlat41;
  let x_1087 : f32 = u_xlat14;
  u_xlat14 = (x_1086 / x_1087);
  let x_1089 : f32 = u_xlat39;
  let x_1090 : f32 = u_xlat14;
  u_xlat13.z = (x_1089 * x_1090);
  let x_1093 : vec4<f32> = u_xlat1;
  let x_1095 : vec3<f32> = u_xlat13;
  let x_1097 : vec2<f32> = (vec2<f32>(x_1093.x, x_1093.x) * vec2<f32>(x_1095.x, x_1095.z));
  let x_1098 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_1097.x, x_1098.y, x_1097.y);
  let x_1101 : f32 = u_xlat13.z;
  u_xlat39 = (x_1101 * 3.141592741f);
  let x_1104 : f32 = u_xlat39;
  u_xlat39 = max(x_1104, 0.0f);
  let x_1106 : f32 = u_xlat26;
  let x_1107 : f32 = u_xlat26;
  u_xlat26 = ((x_1106 * x_1107) + 1.0f);
  let x_1110 : f32 = u_xlat26;
  u_xlat26 = (1.0f / x_1110);
  let x_1112 : vec3<f32> = u_xlat2;
  let x_1113 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_1112, x_1113);
  let x_1118 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1118 == 0.0f));
  let x_1120 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1120);
  let x_1123 : f32 = u_xlat39;
  let x_1125 : f32 = u_xlat1.x;
  u_xlat39 = (x_1123 * x_1125);
  let x_1127 : f32 = u_xlat40;
  let x_1130 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_1127) + x_1130);
  let x_1134 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1134 + 1.0f);
  let x_1138 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1138, 0.0f, 1.0f);
  let x_1141 : vec3<f32> = u_xlat5;
  let x_1142 : vec3<f32> = u_xlat13;
  let x_1145 : vec4<f32> = u_xlat6;
  let x_1147 : vec3<f32> = ((x_1141 * vec3<f32>(x_1142.x, x_1142.x, x_1142.x)) + vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec3<f32> = u_xlat5;
  let x_1151 : f32 = u_xlat39;
  u_xlat5 = (x_1150 * vec3<f32>(x_1151, x_1151, x_1151));
  let x_1155 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1155) + 1.0f);
  let x_1160 : f32 = u_xlat0.x;
  let x_1162 : f32 = u_xlat0.x;
  u_xlat13.x = (x_1160 * x_1162);
  let x_1166 : f32 = u_xlat13.x;
  let x_1168 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1166 * x_1168);
  let x_1172 : f32 = u_xlat0.x;
  let x_1174 : f32 = u_xlat13.x;
  u_xlat0.x = (x_1172 * x_1174);
  let x_1177 : vec3<f32> = u_xlat2;
  let x_1180 : vec3<f32> = (-(x_1177) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1181 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
  let x_1183 : vec4<f32> = u_xlat6;
  let x_1185 : vec4<f32> = u_xlat0;
  let x_1188 : vec3<f32> = u_xlat2;
  let x_1189 : vec3<f32> = ((vec3<f32>(x_1183.x, x_1183.y, x_1183.z) * vec3<f32>(x_1185.x, x_1185.x, x_1185.x)) + x_1188);
  let x_1190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1189.x, x_1189.y, x_1190.z, x_1189.z);
  let x_1192 : vec4<f32> = u_xlat0;
  let x_1194 : vec3<f32> = u_xlat5;
  let x_1195 : vec3<f32> = (vec3<f32>(x_1192.x, x_1192.y, x_1192.w) * x_1194);
  let x_1196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1195.x, x_1195.y, x_1196.z, x_1195.z);
  let x_1198 : vec3<f32> = u_xlat3;
  let x_1199 : vec4<f32> = u_xlat4;
  let x_1202 : vec4<f32> = u_xlat0;
  let x_1204 : vec3<f32> = ((x_1198 * vec3<f32>(x_1199.x, x_1199.y, x_1199.z)) + vec3<f32>(x_1202.x, x_1202.y, x_1202.w));
  let x_1205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1204.z);
  let x_1207 : vec4<f32> = u_xlat8;
  let x_1209 : f32 = u_xlat26;
  u_xlat3 = (vec3<f32>(x_1207.x, x_1207.y, x_1207.z) * vec3<f32>(x_1209, x_1209, x_1209));
  let x_1212 : vec3<f32> = u_xlat2;
  let x_1214 : vec4<f32> = u_xlat1;
  let x_1216 : vec3<f32> = (-(x_1212) + vec3<f32>(x_1214.x, x_1214.x, x_1214.x));
  let x_1217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1216.x, x_1216.y, x_1217.z, x_1216.z);
  let x_1219 : f32 = u_xlat27;
  let x_1221 : vec4<f32> = u_xlat1;
  let x_1224 : vec3<f32> = u_xlat2;
  let x_1225 : vec3<f32> = ((vec3<f32>(x_1219, x_1219, x_1219) * vec3<f32>(x_1221.x, x_1221.y, x_1221.w)) + x_1224);
  let x_1226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
  let x_1230 : vec3<f32> = u_xlat3;
  let x_1231 : vec4<f32> = u_xlat1;
  let x_1234 : vec4<f32> = u_xlat0;
  let x_1236 : vec3<f32> = ((x_1230 * vec3<f32>(x_1231.x, x_1231.y, x_1231.z)) + vec3<f32>(x_1234.x, x_1234.y, x_1234.w));
  let x_1237 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


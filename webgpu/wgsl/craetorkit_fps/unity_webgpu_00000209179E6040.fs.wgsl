struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> vs_TEXCOORD4 : f32;

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
  var x_569 : f32;
  var x_581 : f32;
  var x_593 : f32;
  var u_xlatb43 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_751 : f32;
  var x_763 : f32;
  var x_775 : f32;
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
  let x_263 : vec4<f32> = vs_TEXCOORD5;
  let x_265 : vec4<f32> = vs_TEXCOORD5;
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
    let x_480 : vec4<f32> = x_18.unity_SHAg;
    let x_481 : vec4<f32> = u_xlat6;
    u_xlat7.y = dot(x_480, x_481);
    let x_486 : vec4<f32> = x_18.unity_SHAb;
    let x_487 : vec4<f32> = u_xlat6;
    u_xlat7.z = dot(x_486, x_487);
  }
  let x_490 : vec4<f32> = u_xlat7;
  let x_493 : vec3<f32> = vs_TEXCOORD3;
  let x_494 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) + x_493);
  let x_495 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat6;
  let x_500 : vec3<f32> = max(vec3<f32>(x_497.x, x_497.y, x_497.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_501 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_505 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb40 = (0.0f < x_505);
  let x_507 : bool = u_xlatb40;
  if (x_507) {
    let x_510 : vec4<f32> = u_xlat4;
    let x_512 : vec4<f32> = u_xlat4;
    u_xlat40 = dot(vec3<f32>(x_510.x, x_510.y, x_510.z), vec3<f32>(x_512.x, x_512.y, x_512.z));
    let x_515 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_515);
    let x_517 : f32 = u_xlat40;
    let x_519 : vec4<f32> = u_xlat4;
    let x_521 : vec3<f32> = (vec3<f32>(x_517, x_517, x_517) * vec3<f32>(x_519.x, x_519.y, x_519.z));
    let x_522 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_524 : vec3<f32> = vs_TEXCOORD1;
    let x_528 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    let x_530 : vec3<f32> = (-(x_524) + vec3<f32>(x_528.x, x_528.y, x_528.z));
    let x_531 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
    let x_533 : vec4<f32> = u_xlat8;
    let x_535 : vec4<f32> = u_xlat7;
    let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) / vec3<f32>(x_535.x, x_535.y, x_535.z));
    let x_538 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
    let x_540 : vec3<f32> = vs_TEXCOORD1;
    let x_544 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_546 : vec3<f32> = (-(x_540) + vec3<f32>(x_544.x, x_544.y, x_544.z));
    let x_547 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
    let x_549 : vec4<f32> = u_xlat9;
    let x_551 : vec4<f32> = u_xlat7;
    let x_553 : vec3<f32> = (vec3<f32>(x_549.x, x_549.y, x_549.z) / vec3<f32>(x_551.x, x_551.y, x_551.z));
    let x_554 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
    let x_560 : vec4<f32> = u_xlat7;
    let x_563 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_560.x, x_560.y, x_560.z, x_560.x));
    u_xlatb10 = vec3<bool>(x_563.x, x_563.y, x_563.z);
    let x_566 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_566;
    let x_568 : bool = u_xlatb10.x;
    if (x_568) {
      let x_573 : f32 = u_xlat8.x;
      x_569 = x_573;
    } else {
      let x_576 : f32 = u_xlat9.x;
      x_569 = x_576;
    }
    let x_577 : f32 = x_569;
    hlslcc_movcTemp.x = x_577;
    let x_580 : bool = u_xlatb10.y;
    if (x_580) {
      let x_585 : f32 = u_xlat8.y;
      x_581 = x_585;
    } else {
      let x_588 : f32 = u_xlat9.y;
      x_581 = x_588;
    }
    let x_589 : f32 = x_581;
    hlslcc_movcTemp.y = x_589;
    let x_592 : bool = u_xlatb10.z;
    if (x_592) {
      let x_597 : f32 = u_xlat8.z;
      x_593 = x_597;
    } else {
      let x_600 : f32 = u_xlat9.z;
      x_593 = x_600;
    }
    let x_601 : f32 = x_593;
    hlslcc_movcTemp.z = x_601;
    let x_603 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_603;
    let x_605 : f32 = u_xlat8.y;
    let x_607 : f32 = u_xlat8.x;
    u_xlat40 = min(x_605, x_607);
    let x_610 : f32 = u_xlat8.z;
    let x_611 : f32 = u_xlat40;
    u_xlat40 = min(x_610, x_611);
    let x_613 : vec3<f32> = vs_TEXCOORD1;
    let x_615 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    let x_618 : vec3<f32> = (x_613 + -(vec3<f32>(x_615.x, x_615.y, x_615.z)));
    let x_619 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
    let x_621 : vec4<f32> = u_xlat7;
    let x_623 : f32 = u_xlat40;
    let x_626 : vec4<f32> = u_xlat8;
    let x_628 : vec3<f32> = ((vec3<f32>(x_621.x, x_621.y, x_621.z) * vec3<f32>(x_623, x_623, x_623)) + vec3<f32>(x_626.x, x_626.y, x_626.z));
    let x_629 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  } else {
    let x_632 : vec4<f32> = u_xlat4;
    let x_633 : vec3<f32> = vec3<f32>(x_632.x, x_632.y, x_632.z);
    let x_634 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  }
  let x_636 : f32 = u_xlat42;
  u_xlat40 = ((-(x_636) * 0.699999988f) + 1.700000048f);
  let x_642 : f32 = u_xlat40;
  let x_643 : f32 = u_xlat42;
  u_xlat40 = (x_642 * x_643);
  let x_645 : f32 = u_xlat40;
  u_xlat40 = (x_645 * 6.0f);
  let x_656 : vec4<f32> = u_xlat7;
  let x_658 : f32 = u_xlat40;
  let x_659 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_656.x, x_656.y, x_656.z), x_658);
  u_xlat7 = x_659;
  let x_661 : f32 = u_xlat7.w;
  u_xlat41 = (x_661 + -1.0f);
  let x_666 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_667 : f32 = u_xlat41;
  u_xlat41 = ((x_666 * x_667) + 1.0f);
  let x_670 : f32 = u_xlat41;
  u_xlat41 = log2(x_670);
  let x_672 : f32 = u_xlat41;
  let x_674 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat41 = (x_672 * x_674);
  let x_676 : f32 = u_xlat41;
  u_xlat41 = exp2(x_676);
  let x_678 : f32 = u_xlat41;
  let x_680 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat41 = (x_678 * x_680);
  let x_682 : vec4<f32> = u_xlat7;
  let x_684 : f32 = u_xlat41;
  let x_686 : vec3<f32> = (vec3<f32>(x_682.x, x_682.y, x_682.z) * vec3<f32>(x_684, x_684, x_684));
  let x_687 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_691 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb43 = (x_691 < 0.999989986f);
  let x_694 : bool = u_xlatb43;
  if (x_694) {
    let x_699 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb43 = (0.0f < x_699);
    let x_701 : bool = u_xlatb43;
    if (x_701) {
      let x_704 : vec4<f32> = u_xlat4;
      let x_706 : vec4<f32> = u_xlat4;
      u_xlat43 = dot(vec3<f32>(x_704.x, x_704.y, x_704.z), vec3<f32>(x_706.x, x_706.y, x_706.z));
      let x_709 : f32 = u_xlat43;
      u_xlat43 = inverseSqrt(x_709);
      let x_711 : f32 = u_xlat43;
      let x_713 : vec4<f32> = u_xlat4;
      let x_715 : vec3<f32> = (vec3<f32>(x_711, x_711, x_711) * vec3<f32>(x_713.x, x_713.y, x_713.z));
      let x_716 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
      let x_719 : vec3<f32> = vs_TEXCOORD1;
      let x_723 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_719) + vec3<f32>(x_723.x, x_723.y, x_723.z));
      let x_726 : vec3<f32> = u_xlat10;
      let x_727 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_726 / vec3<f32>(x_727.x, x_727.y, x_727.z));
      let x_731 : vec3<f32> = vs_TEXCOORD1;
      let x_735 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_731) + vec3<f32>(x_735.x, x_735.y, x_735.z));
      let x_738 : vec3<f32> = u_xlat11;
      let x_739 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_738 / vec3<f32>(x_739.x, x_739.y, x_739.z));
      let x_743 : vec4<f32> = u_xlat9;
      let x_745 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_743.x, x_743.y, x_743.z, x_743.x));
      u_xlatb12 = vec3<bool>(x_745.x, x_745.y, x_745.z);
      let x_748 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_748;
      let x_750 : bool = u_xlatb12.x;
      if (x_750) {
        let x_755 : f32 = u_xlat10.x;
        x_751 = x_755;
      } else {
        let x_758 : f32 = u_xlat11.x;
        x_751 = x_758;
      }
      let x_759 : f32 = x_751;
      hlslcc_movcTemp_1.x = x_759;
      let x_762 : bool = u_xlatb12.y;
      if (x_762) {
        let x_767 : f32 = u_xlat10.y;
        x_763 = x_767;
      } else {
        let x_770 : f32 = u_xlat11.y;
        x_763 = x_770;
      }
      let x_771 : f32 = x_763;
      hlslcc_movcTemp_1.y = x_771;
      let x_774 : bool = u_xlatb12.z;
      if (x_774) {
        let x_779 : f32 = u_xlat10.z;
        x_775 = x_779;
      } else {
        let x_782 : f32 = u_xlat11.z;
        x_775 = x_782;
      }
      let x_783 : f32 = x_775;
      hlslcc_movcTemp_1.z = x_783;
      let x_785 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_785;
      let x_787 : f32 = u_xlat10.y;
      let x_789 : f32 = u_xlat10.x;
      u_xlat43 = min(x_787, x_789);
      let x_792 : f32 = u_xlat10.z;
      let x_793 : f32 = u_xlat43;
      u_xlat43 = min(x_792, x_793);
      let x_795 : vec3<f32> = vs_TEXCOORD1;
      let x_797 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_795 + -(vec3<f32>(x_797.x, x_797.y, x_797.z)));
      let x_801 : vec4<f32> = u_xlat9;
      let x_803 : f32 = u_xlat43;
      let x_806 : vec3<f32> = u_xlat10;
      let x_807 : vec3<f32> = ((vec3<f32>(x_801.x, x_801.y, x_801.z) * vec3<f32>(x_803, x_803, x_803)) + x_806);
      let x_808 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
    }
    let x_814 : vec4<f32> = u_xlat4;
    let x_816 : f32 = u_xlat40;
    let x_817 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_814.x, x_814.y, x_814.z), x_816);
    u_xlat4 = x_817;
    let x_819 : f32 = u_xlat4.w;
    u_xlat40 = (x_819 + -1.0f);
    let x_823 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_824 : f32 = u_xlat40;
    u_xlat40 = ((x_823 * x_824) + 1.0f);
    let x_827 : f32 = u_xlat40;
    u_xlat40 = log2(x_827);
    let x_829 : f32 = u_xlat40;
    let x_831 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat40 = (x_829 * x_831);
    let x_833 : f32 = u_xlat40;
    u_xlat40 = exp2(x_833);
    let x_835 : f32 = u_xlat40;
    let x_837 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat40 = (x_835 * x_837);
    let x_839 : vec4<f32> = u_xlat4;
    let x_841 : f32 = u_xlat40;
    let x_843 : vec3<f32> = (vec3<f32>(x_839.x, x_839.y, x_839.z) * vec3<f32>(x_841, x_841, x_841));
    let x_844 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
    let x_846 : f32 = u_xlat41;
    let x_848 : vec4<f32> = u_xlat7;
    let x_851 : vec4<f32> = u_xlat4;
    let x_854 : vec3<f32> = ((vec3<f32>(x_846, x_846, x_846) * vec3<f32>(x_848.x, x_848.y, x_848.z)) + -(vec3<f32>(x_851.x, x_851.y, x_851.z)));
    let x_855 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
    let x_858 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_860 : vec4<f32> = u_xlat7;
    let x_863 : vec4<f32> = u_xlat4;
    let x_865 : vec3<f32> = ((vec3<f32>(x_858.w, x_858.w, x_858.w) * vec3<f32>(x_860.x, x_860.y, x_860.z)) + vec3<f32>(x_863.x, x_863.y, x_863.z));
    let x_866 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  }
  let x_868 : vec3<f32> = vs_TEXCOORD0;
  let x_869 : vec3<f32> = vs_TEXCOORD0;
  u_xlat40 = dot(x_868, x_869);
  let x_871 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_871);
  let x_873 : f32 = u_xlat40;
  let x_875 : vec3<f32> = vs_TEXCOORD0;
  let x_876 : vec3<f32> = (vec3<f32>(x_873, x_873, x_873) * x_875);
  let x_877 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec3<f32> = u_xlat2;
  let x_880 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_879 * vec3<f32>(x_880.x, x_880.y, x_880.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_888 : f32 = x_18.x_Metallic;
  let x_890 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_888, x_888, x_888) * x_890) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_896 : f32 = x_18.x_Metallic;
  u_xlat40 = ((-(x_896) * 0.959999979f) + 0.959999979f);
  let x_901 : f32 = u_xlat40;
  let x_903 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_901, x_901, x_901) * x_903);
  let x_905 : vec4<f32> = u_xlat0;
  let x_907 : f32 = u_xlat39;
  let x_911 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_913 : vec3<f32> = ((vec3<f32>(x_905.x, x_905.y, x_905.z) * vec3<f32>(x_907, x_907, x_907)) + vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat0;
  let x_918 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_916.x, x_916.y, x_916.z), vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : f32 = u_xlat39;
  u_xlat39 = max(x_921, 0.001f);
  let x_924 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_924);
  let x_926 : f32 = u_xlat39;
  let x_928 : vec4<f32> = u_xlat0;
  let x_930 : vec3<f32> = (vec3<f32>(x_926, x_926, x_926) * vec3<f32>(x_928.x, x_928.y, x_928.z));
  let x_931 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec4<f32> = u_xlat4;
  let x_935 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(vec3<f32>(x_933.x, x_933.y, x_933.z), vec3<f32>(x_935.x, x_935.y, x_935.z));
  let x_938 : vec4<f32> = u_xlat4;
  let x_941 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_938.x, x_938.y, x_938.z), vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_946 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_946, 0.0f, 1.0f);
  let x_950 : vec4<f32> = u_xlat4;
  let x_952 : vec4<f32> = u_xlat0;
  u_xlat14 = dot(vec3<f32>(x_950.x, x_950.y, x_950.z), vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : f32 = u_xlat14;
  u_xlat14 = clamp(x_955, 0.0f, 1.0f);
  let x_958 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_960 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_958.x, x_958.y, x_958.z), vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_965 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_965, 0.0f, 1.0f);
  let x_970 : f32 = u_xlat0.x;
  let x_972 : f32 = u_xlat0.x;
  u_xlat13.x = (x_970 * x_972);
  let x_975 : vec3<f32> = u_xlat13;
  let x_977 : f32 = u_xlat42;
  u_xlat13.x = dot(vec2<f32>(x_975.x, x_975.x), vec2<f32>(x_977, x_977));
  let x_982 : f32 = u_xlat13.x;
  u_xlat13.x = (x_982 + -0.5f);
  let x_988 : f32 = u_xlat1.x;
  u_xlat26 = (-(x_988) + 1.0f);
  let x_992 : f32 = u_xlat26;
  let x_993 : f32 = u_xlat26;
  u_xlat27 = (x_992 * x_993);
  let x_995 : f32 = u_xlat27;
  let x_996 : f32 = u_xlat27;
  u_xlat27 = (x_995 * x_996);
  let x_998 : f32 = u_xlat26;
  let x_999 : f32 = u_xlat27;
  u_xlat26 = (x_998 * x_999);
  let x_1002 : f32 = u_xlat13.x;
  let x_1003 : f32 = u_xlat26;
  u_xlat26 = ((x_1002 * x_1003) + 1.0f);
  let x_1006 : f32 = u_xlat39;
  u_xlat27 = (-(abs(x_1006)) + 1.0f);
  let x_1010 : f32 = u_xlat27;
  let x_1011 : f32 = u_xlat27;
  u_xlat41 = (x_1010 * x_1011);
  let x_1013 : f32 = u_xlat41;
  let x_1014 : f32 = u_xlat41;
  u_xlat41 = (x_1013 * x_1014);
  let x_1016 : f32 = u_xlat27;
  let x_1017 : f32 = u_xlat41;
  u_xlat27 = (x_1016 * x_1017);
  let x_1020 : f32 = u_xlat13.x;
  let x_1021 : f32 = u_xlat27;
  u_xlat13.x = ((x_1020 * x_1021) + 1.0f);
  let x_1026 : f32 = u_xlat13.x;
  let x_1027 : f32 = u_xlat26;
  u_xlat13.x = (x_1026 * x_1027);
  let x_1030 : f32 = u_xlat42;
  let x_1031 : f32 = u_xlat42;
  u_xlat26 = (x_1030 * x_1031);
  let x_1033 : f32 = u_xlat26;
  u_xlat26 = max(x_1033, 0.002f);
  let x_1036 : f32 = u_xlat26;
  u_xlat41 = (-(x_1036) + 1.0f);
  let x_1039 : f32 = u_xlat39;
  let x_1041 : f32 = u_xlat41;
  let x_1043 : f32 = u_xlat26;
  u_xlat42 = ((abs(x_1039) * x_1041) + x_1043);
  let x_1046 : f32 = u_xlat1.x;
  let x_1047 : f32 = u_xlat41;
  let x_1049 : f32 = u_xlat26;
  u_xlat41 = ((x_1046 * x_1047) + x_1049);
  let x_1051 : f32 = u_xlat39;
  let x_1053 : f32 = u_xlat41;
  u_xlat39 = (abs(x_1051) * x_1053);
  let x_1056 : f32 = u_xlat1.x;
  let x_1057 : f32 = u_xlat42;
  let x_1059 : f32 = u_xlat39;
  u_xlat39 = ((x_1056 * x_1057) + x_1059);
  let x_1061 : f32 = u_xlat39;
  u_xlat39 = (x_1061 + 0.00001f);
  let x_1064 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_1064);
  let x_1066 : f32 = u_xlat26;
  let x_1067 : f32 = u_xlat26;
  u_xlat41 = (x_1066 * x_1067);
  let x_1069 : f32 = u_xlat14;
  let x_1070 : f32 = u_xlat41;
  let x_1072 : f32 = u_xlat14;
  u_xlat42 = ((x_1069 * x_1070) + -(x_1072));
  let x_1075 : f32 = u_xlat42;
  let x_1076 : f32 = u_xlat14;
  u_xlat14 = ((x_1075 * x_1076) + 1.0f);
  let x_1079 : f32 = u_xlat41;
  u_xlat41 = (x_1079 * 0.318309873f);
  let x_1082 : f32 = u_xlat14;
  let x_1083 : f32 = u_xlat14;
  u_xlat14 = ((x_1082 * x_1083) + 0.0000001f);
  let x_1087 : f32 = u_xlat41;
  let x_1088 : f32 = u_xlat14;
  u_xlat14 = (x_1087 / x_1088);
  let x_1090 : f32 = u_xlat39;
  let x_1091 : f32 = u_xlat14;
  u_xlat13.z = (x_1090 * x_1091);
  let x_1094 : vec4<f32> = u_xlat1;
  let x_1096 : vec3<f32> = u_xlat13;
  let x_1098 : vec2<f32> = (vec2<f32>(x_1094.x, x_1094.x) * vec2<f32>(x_1096.x, x_1096.z));
  let x_1099 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_1098.x, x_1099.y, x_1098.y);
  let x_1102 : f32 = u_xlat13.z;
  u_xlat39 = (x_1102 * 3.141592741f);
  let x_1105 : f32 = u_xlat39;
  u_xlat39 = max(x_1105, 0.0f);
  let x_1107 : f32 = u_xlat26;
  let x_1108 : f32 = u_xlat26;
  u_xlat26 = ((x_1107 * x_1108) + 1.0f);
  let x_1111 : f32 = u_xlat26;
  u_xlat26 = (1.0f / x_1111);
  let x_1113 : vec3<f32> = u_xlat2;
  let x_1114 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_1113, x_1114);
  let x_1119 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1119 == 0.0f));
  let x_1121 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1121);
  let x_1124 : f32 = u_xlat39;
  let x_1126 : f32 = u_xlat1.x;
  u_xlat39 = (x_1124 * x_1126);
  let x_1128 : f32 = u_xlat40;
  let x_1131 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_1128) + x_1131);
  let x_1135 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1135 + 1.0f);
  let x_1139 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1139, 0.0f, 1.0f);
  let x_1142 : vec3<f32> = u_xlat5;
  let x_1143 : vec3<f32> = u_xlat13;
  let x_1146 : vec4<f32> = u_xlat6;
  let x_1148 : vec3<f32> = ((x_1142 * vec3<f32>(x_1143.x, x_1143.x, x_1143.x)) + vec3<f32>(x_1146.x, x_1146.y, x_1146.z));
  let x_1149 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1149.w);
  let x_1151 : vec3<f32> = u_xlat5;
  let x_1152 : f32 = u_xlat39;
  u_xlat5 = (x_1151 * vec3<f32>(x_1152, x_1152, x_1152));
  let x_1156 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1156) + 1.0f);
  let x_1161 : f32 = u_xlat0.x;
  let x_1163 : f32 = u_xlat0.x;
  u_xlat13.x = (x_1161 * x_1163);
  let x_1167 : f32 = u_xlat13.x;
  let x_1169 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1167 * x_1169);
  let x_1173 : f32 = u_xlat0.x;
  let x_1175 : f32 = u_xlat13.x;
  u_xlat0.x = (x_1173 * x_1175);
  let x_1178 : vec3<f32> = u_xlat2;
  let x_1181 : vec3<f32> = (-(x_1178) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1182 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : vec4<f32> = u_xlat6;
  let x_1186 : vec4<f32> = u_xlat0;
  let x_1189 : vec3<f32> = u_xlat2;
  let x_1190 : vec3<f32> = ((vec3<f32>(x_1184.x, x_1184.y, x_1184.z) * vec3<f32>(x_1186.x, x_1186.x, x_1186.x)) + x_1189);
  let x_1191 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1190.z);
  let x_1193 : vec4<f32> = u_xlat0;
  let x_1195 : vec3<f32> = u_xlat5;
  let x_1196 : vec3<f32> = (vec3<f32>(x_1193.x, x_1193.y, x_1193.w) * x_1195);
  let x_1197 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1196.x, x_1196.y, x_1197.z, x_1196.z);
  let x_1199 : vec3<f32> = u_xlat3;
  let x_1200 : vec4<f32> = u_xlat4;
  let x_1203 : vec4<f32> = u_xlat0;
  let x_1205 : vec3<f32> = ((x_1199 * vec3<f32>(x_1200.x, x_1200.y, x_1200.z)) + vec3<f32>(x_1203.x, x_1203.y, x_1203.w));
  let x_1206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1205.z);
  let x_1208 : vec4<f32> = u_xlat8;
  let x_1210 : f32 = u_xlat26;
  u_xlat3 = (vec3<f32>(x_1208.x, x_1208.y, x_1208.z) * vec3<f32>(x_1210, x_1210, x_1210));
  let x_1213 : vec3<f32> = u_xlat2;
  let x_1215 : vec4<f32> = u_xlat1;
  let x_1217 : vec3<f32> = (-(x_1213) + vec3<f32>(x_1215.x, x_1215.x, x_1215.x));
  let x_1218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1217.x, x_1217.y, x_1218.z, x_1217.z);
  let x_1220 : f32 = u_xlat27;
  let x_1222 : vec4<f32> = u_xlat1;
  let x_1225 : vec3<f32> = u_xlat2;
  let x_1226 : vec3<f32> = ((vec3<f32>(x_1220, x_1220, x_1220) * vec3<f32>(x_1222.x, x_1222.y, x_1222.w)) + x_1225);
  let x_1227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1227.w);
  let x_1229 : vec3<f32> = u_xlat3;
  let x_1230 : vec4<f32> = u_xlat1;
  let x_1233 : vec4<f32> = u_xlat0;
  let x_1235 : vec3<f32> = ((x_1229 * vec3<f32>(x_1230.x, x_1230.y, x_1230.z)) + vec3<f32>(x_1233.x, x_1233.y, x_1233.w));
  let x_1236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1240 : f32 = vs_TEXCOORD4;
  let x_1242 : f32 = x_18.x_ProjectionParams.y;
  u_xlat39 = (x_1240 / x_1242);
  let x_1244 : f32 = u_xlat39;
  u_xlat39 = (-(x_1244) + 1.0f);
  let x_1247 : f32 = u_xlat39;
  let x_1249 : f32 = x_18.x_ProjectionParams.z;
  u_xlat39 = (x_1247 * x_1249);
  let x_1251 : f32 = u_xlat39;
  u_xlat39 = max(x_1251, 0.0f);
  let x_1253 : f32 = u_xlat39;
  let x_1256 : f32 = x_18.unity_FogParams.x;
  u_xlat39 = (x_1253 * x_1256);
  let x_1258 : f32 = u_xlat39;
  let x_1259 : f32 = u_xlat39;
  u_xlat39 = (x_1258 * -(x_1259));
  let x_1262 : f32 = u_xlat39;
  u_xlat39 = exp2(x_1262);
  let x_1264 : vec4<f32> = u_xlat0;
  let x_1268 : vec4<f32> = x_18.unity_FogColor;
  let x_1271 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.y, x_1264.z) + -(vec3<f32>(x_1268.x, x_1268.y, x_1268.z)));
  let x_1272 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
  let x_1276 : f32 = u_xlat39;
  let x_1278 : vec4<f32> = u_xlat0;
  let x_1282 : vec4<f32> = x_18.unity_FogColor;
  let x_1284 : vec3<f32> = ((vec3<f32>(x_1276, x_1276, x_1276) * vec3<f32>(x_1278.x, x_1278.y, x_1278.z)) + vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1285 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(6) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(5) vs_TEXCOORD3_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


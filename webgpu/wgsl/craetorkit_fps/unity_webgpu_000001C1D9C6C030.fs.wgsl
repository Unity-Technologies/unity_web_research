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

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var x_349 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlatb27 : bool;
  var txVec0 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat28 : f32;
  var u_xlat8 : f32;
  var u_xlat18 : f32;
  var u_xlat11 : f32;
  var u_xlat19 : f32;
  var u_xlatb25 : bool;
  var u_xlat24 : f32;
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
  u_xlat25 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat25;
  u_xlat25 = min(x_132, 1.0f);
  let x_135 : f32 = u_xlat25;
  u_xlat25 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_138);
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = vs_TEXCOORD3;
  u_xlat10 = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec4<f32> = vs_TEXCOORD2;
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = u_xlat10;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD4;
  let x_160 : f32 = u_xlat25;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat25;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  u_xlat25 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_188);
  let x_191 : f32 = u_xlat25;
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
  let x_254 : vec4<f32> = u_xlat6;
  u_xlat25 = dot(vec3<f32>(x_252.x, x_252.y, x_252.z), vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec3<f32> = vs_TEXCOORD5;
  let x_260 : vec4<f32> = x_46.unity_ShadowFadeCenterAndType;
  let x_263 : vec3<f32> = (x_257 + -(vec3<f32>(x_260.x, x_260.y, x_260.z)));
  let x_264 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : vec4<f32> = u_xlat5;
  let x_269 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_267.x, x_267.y, x_267.z), vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : f32 = u_xlat26;
  u_xlat26 = sqrt(x_272);
  let x_274 : f32 = u_xlat25;
  let x_276 : f32 = u_xlat26;
  u_xlat26 = (-(x_274) + x_276);
  let x_280 : f32 = x_46.unity_ShadowFadeCenterAndType.w;
  let x_281 : f32 = u_xlat26;
  let x_283 : f32 = u_xlat25;
  u_xlat25 = ((x_280 * x_281) + x_283);
  let x_285 : f32 = u_xlat25;
  let x_288 : f32 = x_46.x_LightShadowData.z;
  let x_291 : f32 = x_46.x_LightShadowData.w;
  u_xlat25 = ((x_285 * x_288) + x_291);
  let x_293 : f32 = u_xlat25;
  u_xlat25 = clamp(x_293, 0.0f, 1.0f);
  let x_301 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb26 = (x_301 == 1.0f);
  let x_303 : bool = u_xlatb26;
  if (x_303) {
    let x_307 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb26 = (x_307 == 1.0f);
    let x_309 : vec3<f32> = vs_TEXCOORD5;
    let x_313 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_315 : vec3<f32> = (vec3<f32>(x_309.y, x_309.y, x_309.y) * vec3<f32>(x_313.x, x_313.y, x_313.z));
    let x_316 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
    let x_319 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_321 : vec3<f32> = vs_TEXCOORD5;
    let x_324 : vec4<f32> = u_xlat5;
    let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.x, x_321.x)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
    let x_327 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
    let x_330 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_332 : vec3<f32> = vs_TEXCOORD5;
    let x_335 : vec4<f32> = u_xlat5;
    let x_337 : vec3<f32> = ((vec3<f32>(x_330.x, x_330.y, x_330.z) * vec3<f32>(x_332.z, x_332.z, x_332.z)) + vec3<f32>(x_335.x, x_335.y, x_335.z));
    let x_338 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_340 : vec4<f32> = u_xlat5;
    let x_343 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_345 : vec3<f32> = (vec3<f32>(x_340.x, x_340.y, x_340.z) + vec3<f32>(x_343.x, x_343.y, x_343.z));
    let x_346 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
    let x_348 : bool = u_xlatb26;
    if (x_348) {
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
    u_xlat26 = ((x_377 * 0.25f) + 0.75f);
    let x_384 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_384 * 0.5f) + 0.75f);
    let x_388 : f32 = u_xlat26;
    let x_389 : f32 = u_xlat27;
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
  let x_411 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat26 = dot(x_408, x_411);
  let x_413 : f32 = u_xlat26;
  u_xlat26 = clamp(x_413, 0.0f, 1.0f);
  let x_416 : f32 = u_xlat25;
  u_xlatb27 = (x_416 < 0.99000001f);
  let x_419 : bool = u_xlatb27;
  if (x_419) {
    let x_422 : vec3<f32> = vs_TEXCOORD5;
    let x_424 : vec4<f32> = x_46.x_LightPositionRange;
    let x_427 : vec3<f32> = (x_422 + -(vec3<f32>(x_424.x, x_424.y, x_424.z)));
    let x_428 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
    let x_431 : f32 = u_xlat5.y;
    let x_434 : f32 = u_xlat5.x;
    u_xlat27 = max(abs(x_431), abs(x_434));
    let x_438 : f32 = u_xlat5.z;
    let x_440 : f32 = u_xlat27;
    u_xlat27 = max(abs(x_438), x_440);
    let x_442 : f32 = u_xlat27;
    let x_444 : f32 = x_46.x_LightProjectionParams.z;
    u_xlat27 = (x_442 + -(x_444));
    let x_447 : f32 = u_xlat27;
    u_xlat27 = max(x_447, 0.00001f);
    let x_450 : f32 = u_xlat27;
    let x_452 : f32 = x_46.x_LightProjectionParams.w;
    u_xlat27 = (x_450 * x_452);
    let x_455 : f32 = x_46.x_LightProjectionParams.y;
    let x_456 : f32 = u_xlat27;
    u_xlat27 = (x_455 / x_456);
    let x_458 : f32 = u_xlat27;
    let x_460 : f32 = x_46.x_LightProjectionParams.x;
    u_xlat27 = (x_458 + -(x_460));
    let x_463 : f32 = u_xlat27;
    u_xlat27 = (-(x_463) + 1.0f);
    let x_466 : vec4<f32> = u_xlat5;
    let x_470 : vec3<f32> = (vec3<f32>(x_466.x, x_466.y, x_466.z) + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_471 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
    let x_474 : vec4<f32> = u_xlat6;
    let x_475 : vec3<f32> = vec3<f32>(x_474.x, x_474.y, x_474.z);
    let x_476 : f32 = u_xlat27;
    txVec0 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476);
    let x_489 : vec4<f32> = txVec0;
    let x_491 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_489.xyz, x_489.w);
    u_xlat6.x = x_491;
    let x_494 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_494.x, x_494.y, x_494.z) + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_500 : vec3<f32> = u_xlat7;
    let x_501 : f32 = u_xlat27;
    txVec1 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501);
    let x_509 : vec4<f32> = txVec1;
    let x_511 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_509.xyz, x_509.w);
    u_xlat6.y = x_511;
    let x_513 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec3<f32>(x_513.x, x_513.y, x_513.z) + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_518 : vec3<f32> = u_xlat7;
    let x_519 : f32 = u_xlat27;
    txVec2 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519);
    let x_527 : vec4<f32> = txVec2;
    let x_529 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_527.xyz, x_527.w);
    u_xlat6.z = x_529;
    let x_531 : vec4<f32> = u_xlat5;
    let x_534 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_535 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
    let x_538 : vec4<f32> = u_xlat5;
    let x_539 : vec3<f32> = vec3<f32>(x_538.x, x_538.y, x_538.z);
    let x_540 : f32 = u_xlat27;
    txVec3 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540);
    let x_548 : vec4<f32> = txVec3;
    let x_550 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_548.xyz, x_548.w);
    u_xlat6.w = x_550;
    let x_552 : vec4<f32> = u_xlat6;
    u_xlat27 = dot(x_552, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_557 : f32 = x_46.x_LightShadowData.x;
    u_xlat28 = (-(x_557) + 1.0f);
    let x_560 : f32 = u_xlat27;
    let x_561 : f32 = u_xlat28;
    let x_564 : f32 = x_46.x_LightShadowData.x;
    u_xlat27 = ((x_560 * x_561) + x_564);
  } else {
    u_xlat27 = 1.0f;
  }
  let x_567 : f32 = u_xlat26;
  let x_568 : f32 = u_xlat27;
  u_xlat26 = (x_567 + -(x_568));
  let x_571 : f32 = u_xlat25;
  let x_572 : f32 = u_xlat26;
  let x_574 : f32 = u_xlat27;
  u_xlat25 = ((x_571 * x_572) + x_574);
  let x_576 : vec3<f32> = u_xlat4;
  let x_577 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_576, x_577);
  let x_584 : f32 = u_xlat26;
  let x_586 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_584, x_584));
  u_xlat26 = x_586.x;
  let x_596 : vec3<f32> = u_xlat4;
  let x_597 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_596);
  u_xlat27 = x_597.w;
  let x_599 : f32 = u_xlat26;
  let x_600 : f32 = u_xlat27;
  u_xlat26 = (x_599 * x_600);
  let x_602 : f32 = u_xlat25;
  let x_603 : f32 = u_xlat26;
  u_xlat25 = (x_602 * x_603);
  let x_607 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_607;
  let x_610 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_610;
  let x_613 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_613;
  let x_615 : vec3<f32> = u_xlat4;
  let x_616 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_615, x_616);
  let x_618 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_618);
  let x_620 : f32 = u_xlat26;
  let x_622 : vec3<f32> = u_xlat4;
  let x_623 : vec3<f32> = (vec3<f32>(x_620, x_620, x_620) * x_622);
  let x_624 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : f32 = u_xlat25;
  let x_630 : vec4<f32> = x_46.x_LightColor0;
  let x_632 : vec3<f32> = (vec3<f32>(x_626, x_626, x_626) * vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_637 : f32 = u_xlat0.y;
  let x_641 : f32 = x_46.x_GlossMapScale;
  u_xlat8 = ((-(x_637) * x_641) + 1.0f);
  let x_644 : vec3<f32> = u_xlat4;
  let x_645 : f32 = u_xlat26;
  let x_648 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_644 * vec3<f32>(x_645, x_645, x_645)) + -(x_648));
  let x_651 : vec3<f32> = u_xlat4;
  let x_652 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_651, x_652);
  let x_654 : f32 = u_xlat25;
  u_xlat25 = max(x_654, 0.001f);
  let x_657 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_657);
  let x_659 : f32 = u_xlat25;
  let x_661 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_659, x_659, x_659) * x_661);
  let x_663 : vec4<f32> = u_xlat2;
  let x_665 : vec3<f32> = u_xlat3;
  u_xlat25 = dot(vec3<f32>(x_663.x, x_663.y, x_663.z), -(x_665));
  let x_668 : vec4<f32> = u_xlat2;
  let x_670 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_668.x, x_668.y, x_668.z), vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : f32 = u_xlat26;
  u_xlat26 = clamp(x_673, 0.0f, 1.0f);
  let x_675 : vec4<f32> = u_xlat2;
  let x_677 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_675.x, x_675.y, x_675.z), x_677);
  let x_681 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_681, 0.0f, 1.0f);
  let x_684 : vec4<f32> = u_xlat5;
  let x_686 : vec3<f32> = u_xlat4;
  u_xlat10.x = dot(vec3<f32>(x_684.x, x_684.y, x_684.z), x_686);
  let x_690 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_690, 0.0f, 1.0f);
  let x_695 : f32 = u_xlat10.x;
  let x_697 : f32 = u_xlat10.x;
  u_xlat18 = (x_695 * x_697);
  let x_699 : f32 = u_xlat18;
  let x_701 : f32 = u_xlat8;
  u_xlat18 = dot(vec2<f32>(x_699, x_699), vec2<f32>(x_701, x_701));
  let x_704 : f32 = u_xlat18;
  u_xlat18 = (x_704 + -0.5f);
  let x_707 : f32 = u_xlat26;
  u_xlat3.x = (-(x_707) + 1.0f);
  let x_713 : f32 = u_xlat3.x;
  let x_715 : f32 = u_xlat3.x;
  u_xlat11 = (x_713 * x_715);
  let x_717 : f32 = u_xlat11;
  let x_718 : f32 = u_xlat11;
  u_xlat11 = (x_717 * x_718);
  let x_721 : f32 = u_xlat3.x;
  let x_722 : f32 = u_xlat11;
  u_xlat3.x = (x_721 * x_722);
  let x_725 : f32 = u_xlat18;
  let x_727 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_725 * x_727) + 1.0f);
  let x_731 : f32 = u_xlat25;
  u_xlat11 = (-(abs(x_731)) + 1.0f);
  let x_736 : f32 = u_xlat11;
  let x_737 : f32 = u_xlat11;
  u_xlat19 = (x_736 * x_737);
  let x_739 : f32 = u_xlat19;
  let x_740 : f32 = u_xlat19;
  u_xlat19 = (x_739 * x_740);
  let x_742 : f32 = u_xlat11;
  let x_743 : f32 = u_xlat19;
  u_xlat11 = (x_742 * x_743);
  let x_745 : f32 = u_xlat18;
  let x_746 : f32 = u_xlat11;
  u_xlat18 = ((x_745 * x_746) + 1.0f);
  let x_749 : f32 = u_xlat18;
  let x_751 : f32 = u_xlat3.x;
  u_xlat18 = (x_749 * x_751);
  let x_753 : f32 = u_xlat26;
  let x_754 : f32 = u_xlat18;
  u_xlat18 = (x_753 * x_754);
  let x_756 : f32 = u_xlat8;
  let x_757 : f32 = u_xlat8;
  u_xlat8 = (x_756 * x_757);
  let x_759 : f32 = u_xlat8;
  u_xlat8 = max(x_759, 0.002f);
  let x_762 : f32 = u_xlat8;
  u_xlat3.x = (-(x_762) + 1.0f);
  let x_766 : f32 = u_xlat25;
  let x_769 : f32 = u_xlat3.x;
  let x_771 : f32 = u_xlat8;
  u_xlat11 = ((abs(x_766) * x_769) + x_771);
  let x_773 : f32 = u_xlat26;
  let x_775 : f32 = u_xlat3.x;
  let x_777 : f32 = u_xlat8;
  u_xlat3.x = ((x_773 * x_775) + x_777);
  let x_780 : f32 = u_xlat25;
  let x_783 : f32 = u_xlat3.x;
  u_xlat25 = (abs(x_780) * x_783);
  let x_785 : f32 = u_xlat26;
  let x_786 : f32 = u_xlat11;
  let x_788 : f32 = u_xlat25;
  u_xlat25 = ((x_785 * x_786) + x_788);
  let x_790 : f32 = u_xlat25;
  u_xlat25 = (x_790 + 0.00001f);
  let x_792 : f32 = u_xlat25;
  u_xlat25 = (0.5f / x_792);
  let x_794 : f32 = u_xlat8;
  let x_795 : f32 = u_xlat8;
  u_xlat8 = (x_794 * x_795);
  let x_798 : f32 = u_xlat2.x;
  let x_799 : f32 = u_xlat8;
  let x_802 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_798 * x_799) + -(x_802));
  let x_807 : f32 = u_xlat3.x;
  let x_809 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_807 * x_809) + 1.0f);
  let x_813 : f32 = u_xlat8;
  u_xlat8 = (x_813 * 0.318309873f);
  let x_817 : f32 = u_xlat2.x;
  let x_819 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_817 * x_819) + 0.0000001f);
  let x_824 : f32 = u_xlat8;
  let x_826 : f32 = u_xlat2.x;
  u_xlat8 = (x_824 / x_826);
  let x_828 : f32 = u_xlat8;
  let x_829 : f32 = u_xlat25;
  u_xlat8 = (x_828 * x_829);
  let x_831 : f32 = u_xlat26;
  let x_832 : f32 = u_xlat8;
  u_xlat8 = (x_831 * x_832);
  let x_834 : f32 = u_xlat8;
  u_xlat8 = (x_834 * 3.141592741f);
  let x_837 : f32 = u_xlat8;
  u_xlat8 = max(x_837, 0.0f);
  let x_839 : vec3<f32> = u_xlat1;
  let x_840 : vec3<f32> = u_xlat1;
  u_xlat25 = dot(x_839, x_840);
  let x_843 : f32 = u_xlat25;
  u_xlatb25 = !((x_843 == 0.0f));
  let x_845 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_845);
  let x_847 : f32 = u_xlat8;
  let x_848 : f32 = u_xlat25;
  u_xlat8 = (x_847 * x_848);
  let x_850 : f32 = u_xlat18;
  let x_852 : vec4<f32> = u_xlat6;
  let x_854 : vec3<f32> = (vec3<f32>(x_850, x_850, x_850) * vec3<f32>(x_852.x, x_852.y, x_852.z));
  let x_855 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_854.x, x_855.y, x_854.y, x_854.z);
  let x_857 : vec4<f32> = u_xlat6;
  let x_859 : f32 = u_xlat8;
  u_xlat3 = (vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(x_859, x_859, x_859));
  let x_863 : f32 = u_xlat10.x;
  u_xlat8 = (-(x_863) + 1.0f);
  let x_866 : f32 = u_xlat8;
  let x_867 : f32 = u_xlat8;
  u_xlat25 = (x_866 * x_867);
  let x_869 : f32 = u_xlat25;
  let x_870 : f32 = u_xlat25;
  u_xlat25 = (x_869 * x_870);
  let x_872 : f32 = u_xlat8;
  let x_873 : f32 = u_xlat25;
  u_xlat8 = (x_872 * x_873);
  let x_875 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_875) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_879 : vec3<f32> = u_xlat4;
  let x_880 : f32 = u_xlat8;
  let x_883 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_879 * vec3<f32>(x_880, x_880, x_880)) + x_883);
  let x_885 : vec3<f32> = u_xlat1;
  let x_886 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_885 * x_886);
  let x_888 : vec4<f32> = u_xlat0;
  let x_890 : vec4<f32> = u_xlat2;
  let x_893 : vec3<f32> = u_xlat1;
  let x_894 : vec3<f32> = ((vec3<f32>(x_888.x, x_888.z, x_888.w) * vec3<f32>(x_890.x, x_890.z, x_890.w)) + x_893);
  let x_895 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_899 : f32 = vs_TEXCOORD1.w;
  let x_901 : f32 = x_46.x_ProjectionParams.y;
  u_xlat24 = (x_899 / x_901);
  let x_903 : f32 = u_xlat24;
  u_xlat24 = (-(x_903) + 1.0f);
  let x_906 : f32 = u_xlat24;
  let x_908 : f32 = x_46.x_ProjectionParams.z;
  u_xlat24 = (x_906 * x_908);
  let x_910 : f32 = u_xlat24;
  u_xlat24 = max(x_910, 0.0f);
  let x_912 : f32 = u_xlat24;
  let x_915 : f32 = x_46.unity_FogParams.x;
  u_xlat24 = (x_912 * x_915);
  let x_917 : f32 = u_xlat24;
  let x_918 : f32 = u_xlat24;
  u_xlat24 = (x_917 * -(x_918));
  let x_921 : f32 = u_xlat24;
  u_xlat24 = exp2(x_921);
  let x_925 : vec4<f32> = u_xlat0;
  let x_927 : f32 = u_xlat24;
  let x_929 : vec3<f32> = (vec3<f32>(x_925.x, x_925.y, x_925.z) * vec3<f32>(x_927, x_927, x_927));
  let x_930 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
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


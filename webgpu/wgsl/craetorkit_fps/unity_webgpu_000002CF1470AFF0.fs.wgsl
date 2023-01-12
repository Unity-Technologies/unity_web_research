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
  @size(4)
  padding_3 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_OcclusionMap : sampler;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(7) var unity_SpecCube1 : texture_cube<f32>;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
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
  var x_313 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlatb42 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb11 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_518 : f32;
  var x_530 : f32;
  var x_542 : f32;
  var u_xlatb46 : bool;
  var u_xlat46 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_694 : f32;
  var x_706 : f32;
  var x_718 : f32;
  var u_xlat17 : f32;
  var u_xlat31 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_24.x, x_24.y));
  let x_27 : vec2<f32> = vec2<f32>(x_26.x, x_26.w);
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_27.x, x_27.y, x_28.z);
  let x_36 : vec4<f32> = vs_TEXCOORD0;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_36.x, x_36.y));
  u_xlat1 = vec3<f32>(x_38.x, x_38.y, x_38.z);
  let x_41 : vec3<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_45.x_Color;
  u_xlat2 = (x_41 * vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_54 : vec4<f32> = x_45.x_Color;
  let x_56 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * x_56) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_72) * 0.959999979f) + 0.959999979f);
  let x_78 : vec3<f32> = u_xlat0;
  let x_80 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * x_80);
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_88.x, x_88.y));
  u_xlat3 = vec3<f32>(x_90.x, x_90.y, x_90.w);
  let x_94 : f32 = u_xlat3.z;
  let x_96 : f32 = u_xlat3.x;
  u_xlat3.x = (x_94 * x_96);
  let x_101 : vec3<f32> = u_xlat3;
  u_xlat28 = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec2<f32> = u_xlat28;
  let x_113 : f32 = x_45.x_BumpScale;
  u_xlat28 = (x_109 * vec2<f32>(x_113, x_113));
  let x_117 : vec2<f32> = u_xlat28;
  let x_118 : vec2<f32> = u_xlat28;
  u_xlat43 = dot(x_117, x_118);
  let x_120 : f32 = u_xlat43;
  u_xlat43 = min(x_120, 1.0f);
  let x_123 : f32 = u_xlat43;
  u_xlat43 = (-(x_123) + 1.0f);
  let x_126 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_126);
  let x_128 : vec2<f32> = u_xlat28;
  let x_131 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_128.y, x_128.y, x_128.y) * vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_135 : vec4<f32> = vs_TEXCOORD2;
  let x_137 : vec2<f32> = u_xlat28;
  let x_140 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_135.x, x_135.y, x_135.z) * vec3<f32>(x_137.x, x_137.x, x_137.x)) + x_140);
  let x_143 : vec4<f32> = vs_TEXCOORD4;
  let x_145 : f32 = u_xlat43;
  let x_148 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_145, x_145, x_145)) + x_148);
  let x_150 : vec3<f32> = u_xlat3;
  let x_151 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_155);
  let x_158 : vec2<f32> = u_xlat28;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158.x, x_158.x, x_158.x) * x_160);
  let x_163 : vec4<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = vs_TEXCOORD1;
  u_xlat28.x = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_170 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_170);
  let x_174 : vec2<f32> = u_xlat28;
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_174.x, x_174.x, x_174.x) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_184 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_184;
  let x_187 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_187;
  let x_191 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_191;
  let x_194 : vec4<f32> = u_xlat5;
  let x_200 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_201 : vec3<f32> = (-(vec3<f32>(x_194.x, x_194.y, x_194.z)) + x_200);
  let x_202 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_207 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat7.x = x_207;
  let x_211 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat7.y = x_211;
  let x_215 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat7.z = x_215;
  let x_218 : vec4<f32> = u_xlat6;
  let x_220 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_218.x, x_218.y, x_218.z), x_220);
  let x_222 : vec4<f32> = u_xlat5;
  let x_226 : vec4<f32> = x_45.unity_ShadowFadeCenterAndType;
  let x_229 : vec3<f32> = (vec3<f32>(x_222.x, x_222.y, x_222.z) + -(vec3<f32>(x_226.x, x_226.y, x_226.z)));
  let x_230 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat6;
  let x_234 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_232.x, x_232.y, x_232.z), vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_237);
  let x_239 : f32 = u_xlat42;
  let x_241 : f32 = u_xlat43;
  u_xlat43 = (-(x_239) + x_241);
  let x_244 : f32 = x_45.unity_ShadowFadeCenterAndType.w;
  let x_245 : f32 = u_xlat43;
  let x_247 : f32 = u_xlat42;
  u_xlat42 = ((x_244 * x_245) + x_247);
  let x_249 : f32 = u_xlat42;
  let x_252 : f32 = x_45.x_LightShadowData.z;
  let x_255 : f32 = x_45.x_LightShadowData.w;
  u_xlat42 = ((x_249 * x_252) + x_255);
  let x_257 : f32 = u_xlat42;
  u_xlat42 = clamp(x_257, 0.0f, 1.0f);
  let x_265 : f32 = x_45.unity_ProbeVolumeParams.x;
  u_xlatb43 = (x_265 == 1.0f);
  let x_267 : bool = u_xlatb43;
  if (x_267) {
    let x_271 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb43 = (x_271 == 1.0f);
    let x_273 : vec4<f32> = vs_TEXCOORD3;
    let x_277 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_279 : vec3<f32> = (vec3<f32>(x_273.w, x_273.w, x_273.w) * vec3<f32>(x_277.x, x_277.y, x_277.z));
    let x_280 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
    let x_283 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_285 : vec4<f32> = vs_TEXCOORD2;
    let x_288 : vec4<f32> = u_xlat6;
    let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_285.w, x_285.w, x_285.w)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
    let x_291 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_294 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_296 : vec4<f32> = vs_TEXCOORD4;
    let x_299 : vec4<f32> = u_xlat6;
    let x_301 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_296.w, x_296.w, x_296.w)) + vec3<f32>(x_299.x, x_299.y, x_299.z));
    let x_302 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
    let x_304 : vec4<f32> = u_xlat6;
    let x_307 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_309 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) + vec3<f32>(x_307.x, x_307.y, x_307.z));
    let x_310 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
    let x_312 : bool = u_xlatb43;
    if (x_312) {
      let x_316 : vec4<f32> = u_xlat6;
      x_313 = vec3<f32>(x_316.x, x_316.y, x_316.z);
    } else {
      let x_319 : vec4<f32> = u_xlat5;
      x_313 = vec3<f32>(x_319.x, x_319.y, x_319.z);
    }
    let x_321 : vec3<f32> = x_313;
    let x_322 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
    let x_324 : vec4<f32> = u_xlat6;
    let x_328 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_330 : vec3<f32> = (vec3<f32>(x_324.x, x_324.y, x_324.z) + -(x_328));
    let x_331 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
    let x_333 : vec4<f32> = u_xlat6;
    let x_337 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_338 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) * x_337);
    let x_339 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_339.x, x_338.x, x_338.y, x_338.z);
    let x_342 : f32 = u_xlat6.y;
    u_xlat43 = ((x_342 * 0.25f) + 0.75f);
    let x_349 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat44 = ((x_349 * 0.5f) + 0.75f);
    let x_353 : f32 = u_xlat43;
    let x_354 : f32 = u_xlat44;
    u_xlat6.x = max(x_353, x_354);
    let x_365 : vec4<f32> = u_xlat6;
    let x_367 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_365.x, x_365.z, x_365.w));
    u_xlat6 = x_367;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_373 : vec4<f32> = u_xlat6;
  let x_375 : vec4<f32> = x_45.unity_OcclusionMaskSelector;
  u_xlat43 = dot(x_373, x_375);
  let x_377 : f32 = u_xlat43;
  u_xlat43 = clamp(x_377, 0.0f, 1.0f);
  let x_380 : vec4<f32> = vs_TEXCOORD7;
  let x_382 : vec4<f32> = vs_TEXCOORD7;
  let x_384 : vec2<f32> = (vec2<f32>(x_380.x, x_380.y) / vec2<f32>(x_382.w, x_382.w));
  let x_385 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
  let x_392 : vec4<f32> = u_xlat6;
  let x_394 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_392.x, x_392.y));
  u_xlat44 = x_394.x;
  let x_396 : f32 = u_xlat43;
  let x_397 : f32 = u_xlat44;
  u_xlat43 = (x_396 + -(x_397));
  let x_400 : f32 = u_xlat42;
  let x_401 : f32 = u_xlat43;
  let x_403 : f32 = u_xlat44;
  u_xlat42 = ((x_400 * x_401) + x_403);
  let x_410 : vec4<f32> = vs_TEXCOORD0;
  let x_412 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_410.x, x_410.y));
  u_xlat43 = x_412.y;
  let x_416 : f32 = x_45.x_OcclusionStrength;
  u_xlat44 = (-(x_416) + 1.0f);
  let x_419 : f32 = u_xlat43;
  let x_421 : f32 = x_45.x_OcclusionStrength;
  let x_423 : f32 = u_xlat44;
  u_xlat43 = ((x_419 * x_421) + x_423);
  let x_426 : f32 = u_xlat0.y;
  let x_430 : f32 = x_45.x_GlossMapScale;
  u_xlat44 = ((-(x_426) * x_430) + 1.0f);
  let x_434 : vec3<f32> = u_xlat4;
  let x_435 : vec3<f32> = u_xlat3;
  u_xlat45 = dot(x_434, x_435);
  let x_437 : f32 = u_xlat45;
  let x_438 : f32 = u_xlat45;
  u_xlat45 = (x_437 + x_438);
  let x_440 : vec3<f32> = u_xlat3;
  let x_441 : f32 = u_xlat45;
  let x_445 : vec3<f32> = u_xlat4;
  let x_446 : vec3<f32> = ((x_440 * -(vec3<f32>(x_441, x_441, x_441))) + x_445);
  let x_447 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_446.x, x_446.y, x_446.z, x_447.w);
  let x_449 : f32 = u_xlat42;
  let x_453 : vec4<f32> = x_45.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_449, x_449, x_449) * vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_459 : f32 = x_45.unity_SpecCube0_ProbePosition.w;
  u_xlatb42 = (0.0f < x_459);
  let x_461 : bool = u_xlatb42;
  if (x_461) {
    let x_464 : vec4<f32> = u_xlat6;
    let x_466 : vec4<f32> = u_xlat6;
    u_xlat42 = dot(vec3<f32>(x_464.x, x_464.y, x_464.z), vec3<f32>(x_466.x, x_466.y, x_466.z));
    let x_469 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_469);
    let x_472 : f32 = u_xlat42;
    let x_474 : vec4<f32> = u_xlat6;
    let x_476 : vec3<f32> = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_474.x, x_474.y, x_474.z));
    let x_477 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
    let x_480 : vec4<f32> = u_xlat5;
    let x_485 : vec4<f32> = x_45.unity_SpecCube0_BoxMax;
    u_xlat9 = (-(vec3<f32>(x_480.x, x_480.y, x_480.z)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
    let x_488 : vec3<f32> = u_xlat9;
    let x_489 : vec4<f32> = u_xlat8;
    u_xlat9 = (x_488 / vec3<f32>(x_489.x, x_489.y, x_489.z));
    let x_493 : vec4<f32> = u_xlat5;
    let x_498 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    u_xlat10 = (-(vec3<f32>(x_493.x, x_493.y, x_493.z)) + vec3<f32>(x_498.x, x_498.y, x_498.z));
    let x_501 : vec3<f32> = u_xlat10;
    let x_502 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_501 / vec3<f32>(x_502.x, x_502.y, x_502.z));
    let x_509 : vec4<f32> = u_xlat8;
    let x_512 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_509.x, x_509.y, x_509.z, x_509.x));
    u_xlatb11 = vec3<bool>(x_512.x, x_512.y, x_512.z);
    let x_515 : vec3<f32> = u_xlat9;
    hlslcc_movcTemp = x_515;
    let x_517 : bool = u_xlatb11.x;
    if (x_517) {
      let x_522 : f32 = u_xlat9.x;
      x_518 = x_522;
    } else {
      let x_525 : f32 = u_xlat10.x;
      x_518 = x_525;
    }
    let x_526 : f32 = x_518;
    hlslcc_movcTemp.x = x_526;
    let x_529 : bool = u_xlatb11.y;
    if (x_529) {
      let x_534 : f32 = u_xlat9.y;
      x_530 = x_534;
    } else {
      let x_537 : f32 = u_xlat10.y;
      x_530 = x_537;
    }
    let x_538 : f32 = x_530;
    hlslcc_movcTemp.y = x_538;
    let x_541 : bool = u_xlatb11.z;
    if (x_541) {
      let x_546 : f32 = u_xlat9.z;
      x_542 = x_546;
    } else {
      let x_549 : f32 = u_xlat10.z;
      x_542 = x_549;
    }
    let x_550 : f32 = x_542;
    hlslcc_movcTemp.z = x_550;
    let x_552 : vec3<f32> = hlslcc_movcTemp;
    u_xlat9 = x_552;
    let x_554 : f32 = u_xlat9.y;
    let x_556 : f32 = u_xlat9.x;
    u_xlat42 = min(x_554, x_556);
    let x_559 : f32 = u_xlat9.z;
    let x_560 : f32 = u_xlat42;
    u_xlat42 = min(x_559, x_560);
    let x_562 : vec4<f32> = u_xlat5;
    let x_565 : vec4<f32> = x_45.unity_SpecCube0_ProbePosition;
    u_xlat9 = (vec3<f32>(x_562.x, x_562.y, x_562.z) + -(vec3<f32>(x_565.x, x_565.y, x_565.z)));
    let x_569 : vec4<f32> = u_xlat8;
    let x_571 : f32 = u_xlat42;
    let x_574 : vec3<f32> = u_xlat9;
    let x_575 : vec3<f32> = ((vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_571, x_571, x_571)) + x_574);
    let x_576 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  } else {
    let x_579 : vec4<f32> = u_xlat6;
    let x_580 : vec3<f32> = vec3<f32>(x_579.x, x_579.y, x_579.z);
    let x_581 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  }
  let x_583 : f32 = u_xlat44;
  u_xlat42 = ((-(x_583) * 0.699999988f) + 1.700000048f);
  let x_589 : f32 = u_xlat42;
  let x_590 : f32 = u_xlat44;
  u_xlat42 = (x_589 * x_590);
  let x_592 : f32 = u_xlat42;
  u_xlat42 = (x_592 * 6.0f);
  let x_603 : vec4<f32> = u_xlat8;
  let x_605 : f32 = u_xlat42;
  let x_606 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_603.x, x_603.y, x_603.z), x_605);
  u_xlat8 = x_606;
  let x_608 : f32 = u_xlat8.w;
  u_xlat45 = (x_608 + -1.0f);
  let x_612 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_613 : f32 = u_xlat45;
  u_xlat45 = ((x_612 * x_613) + 1.0f);
  let x_616 : f32 = u_xlat45;
  u_xlat45 = log2(x_616);
  let x_618 : f32 = u_xlat45;
  let x_620 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_618 * x_620);
  let x_622 : f32 = u_xlat45;
  u_xlat45 = exp2(x_622);
  let x_624 : f32 = u_xlat45;
  let x_626 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_624 * x_626);
  let x_628 : vec4<f32> = u_xlat8;
  let x_630 : f32 = u_xlat45;
  u_xlat9 = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(x_630, x_630, x_630));
  let x_635 : f32 = x_45.unity_SpecCube0_BoxMin.w;
  u_xlatb46 = (x_635 < 0.999989986f);
  let x_638 : bool = u_xlatb46;
  if (x_638) {
    let x_643 : f32 = x_45.unity_SpecCube1_ProbePosition.w;
    u_xlatb46 = (0.0f < x_643);
    let x_645 : bool = u_xlatb46;
    if (x_645) {
      let x_649 : vec4<f32> = u_xlat6;
      let x_651 : vec4<f32> = u_xlat6;
      u_xlat46 = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), vec3<f32>(x_651.x, x_651.y, x_651.z));
      let x_654 : f32 = u_xlat46;
      u_xlat46 = inverseSqrt(x_654);
      let x_656 : f32 = u_xlat46;
      let x_658 : vec4<f32> = u_xlat6;
      u_xlat10 = (vec3<f32>(x_656, x_656, x_656) * vec3<f32>(x_658.x, x_658.y, x_658.z));
      let x_662 : vec4<f32> = u_xlat5;
      let x_667 : vec4<f32> = x_45.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(vec3<f32>(x_662.x, x_662.y, x_662.z)) + vec3<f32>(x_667.x, x_667.y, x_667.z));
      let x_670 : vec3<f32> = u_xlat11;
      let x_671 : vec3<f32> = u_xlat10;
      u_xlat11 = (x_670 / x_671);
      let x_674 : vec4<f32> = u_xlat5;
      let x_679 : vec4<f32> = x_45.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(vec3<f32>(x_674.x, x_674.y, x_674.z)) + vec3<f32>(x_679.x, x_679.y, x_679.z));
      let x_682 : vec3<f32> = u_xlat12;
      let x_683 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_682 / x_683);
      let x_686 : vec3<f32> = u_xlat10;
      let x_688 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_686.x, x_686.y, x_686.z, x_686.x));
      u_xlatb13 = vec3<bool>(x_688.x, x_688.y, x_688.z);
      let x_691 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_691;
      let x_693 : bool = u_xlatb13.x;
      if (x_693) {
        let x_698 : f32 = u_xlat11.x;
        x_694 = x_698;
      } else {
        let x_701 : f32 = u_xlat12.x;
        x_694 = x_701;
      }
      let x_702 : f32 = x_694;
      hlslcc_movcTemp_1.x = x_702;
      let x_705 : bool = u_xlatb13.y;
      if (x_705) {
        let x_710 : f32 = u_xlat11.y;
        x_706 = x_710;
      } else {
        let x_713 : f32 = u_xlat12.y;
        x_706 = x_713;
      }
      let x_714 : f32 = x_706;
      hlslcc_movcTemp_1.y = x_714;
      let x_717 : bool = u_xlatb13.z;
      if (x_717) {
        let x_722 : f32 = u_xlat11.z;
        x_718 = x_722;
      } else {
        let x_725 : f32 = u_xlat12.z;
        x_718 = x_725;
      }
      let x_726 : f32 = x_718;
      hlslcc_movcTemp_1.z = x_726;
      let x_728 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_728;
      let x_730 : f32 = u_xlat11.y;
      let x_732 : f32 = u_xlat11.x;
      u_xlat46 = min(x_730, x_732);
      let x_735 : f32 = u_xlat11.z;
      let x_736 : f32 = u_xlat46;
      u_xlat46 = min(x_735, x_736);
      let x_738 : vec4<f32> = u_xlat5;
      let x_741 : vec4<f32> = x_45.unity_SpecCube1_ProbePosition;
      let x_744 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) + -(vec3<f32>(x_741.x, x_741.y, x_741.z)));
      let x_745 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
      let x_747 : vec3<f32> = u_xlat10;
      let x_748 : f32 = u_xlat46;
      let x_751 : vec4<f32> = u_xlat5;
      let x_753 : vec3<f32> = ((x_747 * vec3<f32>(x_748, x_748, x_748)) + vec3<f32>(x_751.x, x_751.y, x_751.z));
      let x_754 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
    }
    let x_760 : vec4<f32> = u_xlat6;
    let x_762 : f32 = u_xlat42;
    let x_763 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_760.x, x_760.y, x_760.z), x_762);
    u_xlat5 = x_763;
    let x_765 : f32 = u_xlat5.w;
    u_xlat42 = (x_765 + -1.0f);
    let x_769 : f32 = x_45.unity_SpecCube1_HDR.w;
    let x_770 : f32 = u_xlat42;
    u_xlat42 = ((x_769 * x_770) + 1.0f);
    let x_773 : f32 = u_xlat42;
    u_xlat42 = log2(x_773);
    let x_775 : f32 = u_xlat42;
    let x_777 : f32 = x_45.unity_SpecCube1_HDR.y;
    u_xlat42 = (x_775 * x_777);
    let x_779 : f32 = u_xlat42;
    u_xlat42 = exp2(x_779);
    let x_781 : f32 = u_xlat42;
    let x_783 : f32 = x_45.unity_SpecCube1_HDR.x;
    u_xlat42 = (x_781 * x_783);
    let x_785 : vec4<f32> = u_xlat5;
    let x_787 : f32 = u_xlat42;
    let x_789 : vec3<f32> = (vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_787, x_787, x_787));
    let x_790 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
    let x_792 : f32 = u_xlat45;
    let x_794 : vec4<f32> = u_xlat8;
    let x_797 : vec4<f32> = u_xlat5;
    let x_800 : vec3<f32> = ((vec3<f32>(x_792, x_792, x_792) * vec3<f32>(x_794.x, x_794.y, x_794.z)) + -(vec3<f32>(x_797.x, x_797.y, x_797.z)));
    let x_801 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
    let x_804 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    let x_806 : vec4<f32> = u_xlat6;
    let x_809 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_804.w, x_804.w, x_804.w) * vec3<f32>(x_806.x, x_806.y, x_806.z)) + vec3<f32>(x_809.x, x_809.y, x_809.z));
  }
  let x_812 : f32 = u_xlat43;
  let x_814 : vec3<f32> = u_xlat9;
  let x_815 : vec3<f32> = (vec3<f32>(x_812, x_812, x_812) * x_814);
  let x_816 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = vs_TEXCOORD1;
  let x_821 : vec2<f32> = u_xlat28;
  let x_825 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_827 : vec3<f32> = ((-(vec3<f32>(x_818.x, x_818.y, x_818.z)) * vec3<f32>(x_821.x, x_821.x, x_821.x)) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat6;
  let x_832 : vec4<f32> = u_xlat6;
  u_xlat28.x = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_837 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_837, 0.001f);
  let x_842 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_842);
  let x_845 : vec2<f32> = u_xlat28;
  let x_847 : vec4<f32> = u_xlat6;
  let x_849 : vec3<f32> = (vec3<f32>(x_845.x, x_845.x, x_845.x) * vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_850 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec3<f32> = u_xlat3;
  let x_853 : vec3<f32> = u_xlat4;
  u_xlat28.x = dot(x_852, -(x_853));
  let x_857 : vec3<f32> = u_xlat3;
  let x_859 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat42 = dot(x_857, vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : f32 = u_xlat42;
  u_xlat42 = clamp(x_862, 0.0f, 1.0f);
  let x_864 : vec3<f32> = u_xlat3;
  let x_865 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(x_864, vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : f32 = u_xlat43;
  u_xlat43 = clamp(x_868, 0.0f, 1.0f);
  let x_871 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_873 : vec4<f32> = u_xlat6;
  u_xlat3.x = dot(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_878 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_878, 0.0f, 1.0f);
  let x_883 : f32 = u_xlat3.x;
  let x_885 : f32 = u_xlat3.x;
  u_xlat17 = (x_883 * x_885);
  let x_887 : f32 = u_xlat17;
  let x_889 : f32 = u_xlat44;
  u_xlat17 = dot(vec2<f32>(x_887, x_887), vec2<f32>(x_889, x_889));
  let x_892 : f32 = u_xlat17;
  u_xlat17 = (x_892 + -0.5f);
  let x_896 : f32 = u_xlat42;
  u_xlat31 = (-(x_896) + 1.0f);
  let x_899 : f32 = u_xlat31;
  let x_900 : f32 = u_xlat31;
  u_xlat45 = (x_899 * x_900);
  let x_902 : f32 = u_xlat45;
  let x_903 : f32 = u_xlat45;
  u_xlat45 = (x_902 * x_903);
  let x_905 : f32 = u_xlat31;
  let x_906 : f32 = u_xlat45;
  u_xlat31 = (x_905 * x_906);
  let x_908 : f32 = u_xlat17;
  let x_909 : f32 = u_xlat31;
  u_xlat31 = ((x_908 * x_909) + 1.0f);
  let x_913 : f32 = u_xlat28.x;
  u_xlat45 = (-(abs(x_913)) + 1.0f);
  let x_917 : f32 = u_xlat45;
  let x_918 : f32 = u_xlat45;
  u_xlat4.x = (x_917 * x_918);
  let x_922 : f32 = u_xlat4.x;
  let x_924 : f32 = u_xlat4.x;
  u_xlat4.x = (x_922 * x_924);
  let x_927 : f32 = u_xlat45;
  let x_929 : f32 = u_xlat4.x;
  u_xlat45 = (x_927 * x_929);
  let x_931 : f32 = u_xlat17;
  let x_932 : f32 = u_xlat45;
  u_xlat17 = ((x_931 * x_932) + 1.0f);
  let x_935 : f32 = u_xlat17;
  let x_936 : f32 = u_xlat31;
  u_xlat17 = (x_935 * x_936);
  let x_938 : f32 = u_xlat42;
  let x_939 : f32 = u_xlat17;
  u_xlat17 = (x_938 * x_939);
  let x_941 : f32 = u_xlat44;
  let x_942 : f32 = u_xlat44;
  u_xlat44 = (x_941 * x_942);
  let x_944 : f32 = u_xlat44;
  u_xlat44 = max(x_944, 0.002f);
  let x_947 : f32 = u_xlat44;
  u_xlat31 = (-(x_947) + 1.0f);
  let x_951 : f32 = u_xlat28.x;
  let x_953 : f32 = u_xlat31;
  let x_955 : f32 = u_xlat44;
  u_xlat4.x = ((abs(x_951) * x_953) + x_955);
  let x_958 : f32 = u_xlat42;
  let x_959 : f32 = u_xlat31;
  let x_961 : f32 = u_xlat44;
  u_xlat31 = ((x_958 * x_959) + x_961);
  let x_964 : f32 = u_xlat28.x;
  let x_966 : f32 = u_xlat31;
  u_xlat28.x = (abs(x_964) * x_966);
  let x_969 : f32 = u_xlat42;
  let x_971 : f32 = u_xlat4.x;
  let x_974 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_969 * x_971) + x_974);
  let x_978 : f32 = u_xlat28.x;
  u_xlat28.x = (x_978 + 0.00001f);
  let x_983 : f32 = u_xlat28.x;
  u_xlat28.x = (0.5f / x_983);
  let x_986 : f32 = u_xlat44;
  let x_987 : f32 = u_xlat44;
  u_xlat31 = (x_986 * x_987);
  let x_989 : f32 = u_xlat43;
  let x_990 : f32 = u_xlat31;
  let x_992 : f32 = u_xlat43;
  u_xlat4.x = ((x_989 * x_990) + -(x_992));
  let x_997 : f32 = u_xlat4.x;
  let x_998 : f32 = u_xlat43;
  u_xlat43 = ((x_997 * x_998) + 1.0f);
  let x_1001 : f32 = u_xlat31;
  u_xlat31 = (x_1001 * 0.318309873f);
  let x_1004 : f32 = u_xlat43;
  let x_1005 : f32 = u_xlat43;
  u_xlat43 = ((x_1004 * x_1005) + 0.0000001f);
  let x_1009 : f32 = u_xlat31;
  let x_1010 : f32 = u_xlat43;
  u_xlat43 = (x_1009 / x_1010);
  let x_1013 : f32 = u_xlat28.x;
  let x_1014 : f32 = u_xlat43;
  u_xlat28.x = (x_1013 * x_1014);
  let x_1017 : f32 = u_xlat42;
  let x_1019 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1017 * x_1019);
  let x_1023 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1023 * 3.141592741f);
  let x_1028 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_1028, 0.0f);
  let x_1031 : f32 = u_xlat44;
  let x_1032 : f32 = u_xlat44;
  u_xlat42 = ((x_1031 * x_1032) + 1.0f);
  let x_1035 : f32 = u_xlat42;
  u_xlat42 = (1.0f / x_1035);
  let x_1037 : vec3<f32> = u_xlat1;
  let x_1038 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_1037, x_1038);
  let x_1040 : f32 = u_xlat43;
  u_xlatb43 = !((x_1040 == 0.0f));
  let x_1042 : bool = u_xlatb43;
  u_xlat43 = select(0.0f, 1.0f, x_1042);
  let x_1045 : f32 = u_xlat28.x;
  let x_1046 : f32 = u_xlat43;
  u_xlat28.x = (x_1045 * x_1046);
  let x_1050 : f32 = u_xlat0.y;
  let x_1052 : f32 = x_45.x_GlossMapScale;
  let x_1055 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1050 * x_1052) + -(x_1055));
  let x_1060 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1060 + 1.0f);
  let x_1064 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1064, 0.0f, 1.0f);
  let x_1067 : f32 = u_xlat17;
  let x_1069 : vec3<f32> = u_xlat7;
  u_xlat4 = (vec3<f32>(x_1067, x_1067, x_1067) * x_1069);
  let x_1071 : vec3<f32> = u_xlat7;
  let x_1072 : vec2<f32> = u_xlat28;
  let x_1074 : vec3<f32> = (x_1071 * vec3<f32>(x_1072.x, x_1072.x, x_1072.x));
  let x_1075 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1079 : f32 = u_xlat3.x;
  u_xlat14.x = (-(x_1079) + 1.0f);
  let x_1084 : f32 = u_xlat14.x;
  let x_1086 : f32 = u_xlat14.x;
  u_xlat28.x = (x_1084 * x_1086);
  let x_1090 : f32 = u_xlat28.x;
  let x_1092 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1090 * x_1092);
  let x_1096 : f32 = u_xlat14.x;
  let x_1098 : f32 = u_xlat28.x;
  u_xlat14.x = (x_1096 * x_1098);
  let x_1101 : vec3<f32> = u_xlat1;
  u_xlat3 = (-(x_1101) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1105 : vec3<f32> = u_xlat3;
  let x_1106 : vec3<f32> = u_xlat14;
  let x_1109 : vec3<f32> = u_xlat1;
  u_xlat3 = ((x_1105 * vec3<f32>(x_1106.x, x_1106.x, x_1106.x)) + x_1109);
  let x_1111 : vec3<f32> = u_xlat3;
  let x_1112 : vec4<f32> = u_xlat6;
  u_xlat3 = (x_1111 * vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
  let x_1115 : vec3<f32> = u_xlat2;
  let x_1116 : vec3<f32> = u_xlat4;
  let x_1118 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_1115 * x_1116) + x_1118);
  let x_1120 : vec4<f32> = u_xlat5;
  let x_1122 : f32 = u_xlat42;
  u_xlat14 = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) * vec3<f32>(x_1122, x_1122, x_1122));
  let x_1125 : vec3<f32> = u_xlat1;
  let x_1127 : vec3<f32> = u_xlat0;
  u_xlat3 = (-(x_1125) + vec3<f32>(x_1127.x, x_1127.x, x_1127.x));
  let x_1130 : f32 = u_xlat45;
  let x_1132 : vec3<f32> = u_xlat3;
  let x_1134 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1130, x_1130, x_1130) * x_1132) + x_1134);
  let x_1136 : vec3<f32> = u_xlat14;
  let x_1137 : vec3<f32> = u_xlat1;
  let x_1139 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_1136 * x_1137) + x_1139);
  let x_1146 : vec4<f32> = vs_TEXCOORD0;
  let x_1148 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1146.x, x_1146.y));
  u_xlat1 = vec3<f32>(x_1148.x, x_1148.y, x_1148.z);
  let x_1152 : vec3<f32> = u_xlat1;
  let x_1155 : vec4<f32> = x_45.x_EmissionColor;
  let x_1158 : vec3<f32> = u_xlat0;
  let x_1159 : vec3<f32> = ((x_1152 * vec3<f32>(x_1155.x, x_1155.y, x_1155.z)) + x_1158);
  let x_1160 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
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


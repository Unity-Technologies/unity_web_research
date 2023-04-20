diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_72 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlat36 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> u_xlat15 : vec3<f32>;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_PointRepeat : sampler;

var<private> u_xlatb27 : bool;

@group(1) @binding(2) var<uniform> x_187 : UnityPerDraw;

var<private> u_xlatb15 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_355 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlat37 : f32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat13 : vec2<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu13 : u32;

var<private> u_xlatu42 : u32;

var<private> u_xlati43 : i32;

var<private> u_xlat42 : f32;

var<private> u_xlati42 : i32;

@group(1) @binding(1) var<uniform> x_1193 : AdditionalLights;

var<private> u_xlat43 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu17 : u32;

var<private> u_xlatb42 : bool;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_194 : f32;
  var x_271 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_787 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1328 : f32;
  var x_1339 : f32;
  var txVec1 : vec3<f32>;
  var x_1617 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_41 : vec2<f32> = vs_TEXCOORD0;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_41, x_51);
  u_xlat0 = x_52;
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_45.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_60, x_62);
  let x_64 : vec2<f32> = vec2<f32>(x_63.x, x_63.w);
  let x_65 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_64.x, x_64.y, x_65.z);
  let x_68 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = x_72.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_68.w, x_68.x, x_68.y, x_68.z) * vec4<f32>(x_76.w, x_76.x, x_76.y, x_76.z));
  let x_85 : vec2<f32> = vs_TEXCOORD0;
  let x_87 : f32 = x_45.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_85, x_87);
  u_xlat3 = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_92 : f32 = u_xlat3.x;
  let x_95 : f32 = u_xlat3.z;
  u_xlat3.x = (x_92 * x_95);
  let x_100 : vec3<f32> = u_xlat3;
  u_xlat25 = ((vec2<f32>(x_100.x, x_100.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec2<f32> = u_xlat25;
  let x_110 : vec2<f32> = u_xlat25;
  u_xlat36 = dot(x_109, x_110);
  let x_112 : f32 = u_xlat36;
  u_xlat36 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat36;
  u_xlat36 = (-(x_114) + 1.0f);
  let x_117 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_117);
  let x_119 : f32 = u_xlat36;
  u_xlat36 = max(x_119, 0.0000000000000001f);
  let x_122 : vec2<f32> = u_xlat25;
  let x_125 : f32 = x_72.x_BumpScale;
  let x_127 : f32 = x_72.x_BumpScale;
  let x_128 : vec2<f32> = vec2<f32>(x_125, x_127);
  u_xlat25 = (x_122 * vec2<f32>(x_128.x, x_128.y));
  let x_138 : vec2<f32> = vs_TEXCOORD0;
  let x_140 : f32 = x_45.x_GlobalMipBias.x;
  let x_141 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_138, x_140);
  u_xlat3.x = x_141.y;
  let x_148 : f32 = x_72.x_OcclusionStrength;
  u_xlat15.x = (-(x_148) + 1.0f);
  let x_153 : f32 = u_xlat3.x;
  let x_155 : f32 = x_72.x_OcclusionStrength;
  let x_158 : f32 = u_xlat15.x;
  u_xlat3.x = ((x_153 * x_155) + x_158);
  let x_161 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_45.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_161.x, x_161.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_166.x, x_166.y, x_167.z);
  let x_174 : vec3<f32> = u_xlat15;
  let x_177 : f32 = x_45.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_174.x, x_174.y), x_177);
  u_xlat15.x = x_178.w;
  let x_189 : f32 = x_187.unity_LODFade.x;
  u_xlatb27 = (x_189 >= 0.0f);
  let x_192 : bool = u_xlatb27;
  if (x_192) {
    let x_198 : f32 = u_xlat15.x;
    x_194 = abs(x_198);
  } else {
    let x_202 : f32 = u_xlat15.x;
    x_194 = -(abs(x_202));
  }
  let x_205 : f32 = x_194;
  u_xlat15.x = x_205;
  let x_208 : f32 = u_xlat15.x;
  let x_211 : f32 = x_187.unity_LODFade.x;
  u_xlat15.x = (-(x_208) + x_211);
  let x_216 : f32 = u_xlat15.x;
  u_xlatb15 = (x_216 < 0.0f);
  let x_218 : bool = u_xlatb15;
  if (((select(0i, 1i, x_218) * -1i) != 0i)) {
    discard;
  }
  let x_229 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb15 = (x_229 == 0.0f);
  let x_234 : vec3<f32> = vs_TEXCOORD1;
  let x_239 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_240 : vec3<f32> = (-(x_234) + x_239);
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_244 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_249);
  let x_251 : f32 = u_xlat27;
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec3<f32> = (vec3<f32>(x_251, x_251, x_251) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_261 : f32 = x_45.unity_MatrixV[0i].z;
  u_xlat5.x = x_261;
  let x_264 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat5.y = x_264;
  let x_267 : f32 = x_45.unity_MatrixV[2i].z;
  u_xlat5.z = x_267;
  let x_269 : bool = u_xlatb15;
  if (x_269) {
    let x_274 : vec4<f32> = u_xlat4;
    x_271 = vec3<f32>(x_274.x, x_274.y, x_274.z);
  } else {
    let x_277 : vec4<f32> = u_xlat5;
    x_271 = vec3<f32>(x_277.x, x_277.y, x_277.z);
  }
  let x_279 : vec3<f32> = x_271;
  u_xlat15 = x_279;
  let x_281 : vec3<f32> = vs_TEXCOORD2;
  let x_284 : vec4<f32> = vs_TEXCOORD3;
  let x_286 : vec3<f32> = (vec3<f32>(x_281.z, x_281.x, x_281.y) * vec3<f32>(x_284.y, x_284.z, x_284.x));
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec3<f32> = vs_TEXCOORD2;
  let x_291 : vec4<f32> = vs_TEXCOORD3;
  let x_294 : vec4<f32> = u_xlat4;
  let x_297 : vec3<f32> = ((vec3<f32>(x_289.y, x_289.z, x_289.x) * vec3<f32>(x_291.z, x_291.x, x_291.y)) + -(vec3<f32>(x_294.x, x_294.y, x_294.z)));
  let x_298 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : vec4<f32> = u_xlat4;
  let x_302 : vec4<f32> = vs_TEXCOORD3;
  let x_304 : vec3<f32> = (vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(x_302.w, x_302.w, x_302.w));
  let x_305 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec2<f32> = u_xlat25;
  let x_309 : vec4<f32> = u_xlat4;
  let x_311 : vec3<f32> = (vec3<f32>(x_307.y, x_307.y, x_307.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec2<f32> = u_xlat25;
  let x_316 : vec4<f32> = vs_TEXCOORD3;
  let x_319 : vec4<f32> = u_xlat4;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.x, x_314.x) * vec3<f32>(x_316.x, x_316.y, x_316.z)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_324 : f32 = u_xlat36;
  let x_326 : vec3<f32> = vs_TEXCOORD2;
  let x_328 : vec4<f32> = u_xlat4;
  let x_330 : vec3<f32> = ((vec3<f32>(x_324, x_324, x_324) * x_326) + vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat36 = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_338);
  let x_340 : f32 = u_xlat36;
  let x_342 : vec4<f32> = u_xlat4;
  let x_344 : vec3<f32> = (vec3<f32>(x_340, x_340, x_340) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_347 : vec3<f32> = vs_TEXCOORD1;
  let x_357 : vec4<f32> = x_355.x_CascadeShadowSplitSpheres0;
  let x_360 : vec3<f32> = (x_347 + -(vec3<f32>(x_357.x, x_357.y, x_357.z)));
  let x_361 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : vec3<f32> = vs_TEXCOORD1;
  let x_366 : vec4<f32> = x_355.x_CascadeShadowSplitSpheres1;
  let x_369 : vec3<f32> = (x_364 + -(vec3<f32>(x_366.x, x_366.y, x_366.z)));
  let x_370 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : vec3<f32> = vs_TEXCOORD1;
  let x_376 : vec4<f32> = x_355.x_CascadeShadowSplitSpheres2;
  let x_379 : vec3<f32> = (x_373 + -(vec3<f32>(x_376.x, x_376.y, x_376.z)));
  let x_380 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_383 : vec3<f32> = vs_TEXCOORD1;
  let x_385 : vec4<f32> = x_355.x_CascadeShadowSplitSpheres3;
  u_xlat8 = (x_383 + -(vec3<f32>(x_385.x, x_385.y, x_385.z)));
  let x_389 : vec4<f32> = u_xlat5;
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_395 : vec4<f32> = u_xlat6;
  let x_397 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_395.x, x_395.y, x_395.z), vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_401 : vec4<f32> = u_xlat7;
  let x_403 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_407 : vec3<f32> = u_xlat8;
  let x_408 : vec3<f32> = u_xlat8;
  u_xlat5.w = dot(x_407, x_408);
  let x_414 : vec4<f32> = u_xlat5;
  let x_417 : vec4<f32> = x_355.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_414 < x_417);
  let x_420 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_420);
  let x_424 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_424);
  let x_428 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_428);
  let x_432 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_432);
  let x_436 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_436);
  let x_441 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_441);
  let x_445 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_445);
  let x_448 : vec4<f32> = u_xlat5;
  let x_450 : vec4<f32> = u_xlat6;
  let x_452 : vec3<f32> = (vec3<f32>(x_448.x, x_448.y, x_448.z) + vec3<f32>(x_450.y, x_450.z, x_450.w));
  let x_453 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_455 : vec4<f32> = u_xlat5;
  let x_458 : vec3<f32> = max(vec3<f32>(x_455.x, x_455.y, x_455.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_459 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_459.x, x_458.x, x_458.y, x_458.z);
  let x_461 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_461, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_466 : f32 = u_xlat36;
  u_xlat36 = (-(x_466) + 4.0f);
  let x_471 : f32 = u_xlat36;
  u_xlatu36 = u32(x_471);
  let x_475 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_475) << bitcast<u32>(2i));
  let x_478 : vec3<f32> = vs_TEXCOORD1;
  let x_480 : i32 = u_xlati36;
  let x_483 : i32 = u_xlati36;
  let x_487 : vec4<f32> = x_355.x_MainLightWorldToShadow[((x_480 + 1i) / 4i)][((x_483 + 1i) % 4i)];
  let x_489 : vec3<f32> = (vec3<f32>(x_478.y, x_478.y, x_478.y) * vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : i32 = u_xlati36;
  let x_494 : i32 = u_xlati36;
  let x_497 : vec4<f32> = x_355.x_MainLightWorldToShadow[(x_492 / 4i)][(x_494 % 4i)];
  let x_499 : vec3<f32> = vs_TEXCOORD1;
  let x_502 : vec4<f32> = u_xlat5;
  let x_504 : vec3<f32> = ((vec3<f32>(x_497.x, x_497.y, x_497.z) * vec3<f32>(x_499.x, x_499.x, x_499.x)) + vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : i32 = u_xlati36;
  let x_510 : i32 = u_xlati36;
  let x_514 : vec4<f32> = x_355.x_MainLightWorldToShadow[((x_507 + 2i) / 4i)][((x_510 + 2i) % 4i)];
  let x_516 : vec3<f32> = vs_TEXCOORD1;
  let x_519 : vec4<f32> = u_xlat5;
  let x_521 : vec3<f32> = ((vec3<f32>(x_514.x, x_514.y, x_514.z) * vec3<f32>(x_516.z, x_516.z, x_516.z)) + vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_524 : vec4<f32> = u_xlat5;
  let x_526 : i32 = u_xlati36;
  let x_529 : i32 = u_xlati36;
  let x_533 : vec4<f32> = x_355.x_MainLightWorldToShadow[((x_526 + 3i) / 4i)][((x_529 + 3i) % 4i)];
  let x_535 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_539 : f32 = vs_TEXCOORD1.y;
  let x_541 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat36 = (x_539 * x_541);
  let x_544 : f32 = x_45.unity_MatrixV[0i].z;
  let x_546 : f32 = vs_TEXCOORD1.x;
  let x_548 : f32 = u_xlat36;
  u_xlat36 = ((x_544 * x_546) + x_548);
  let x_551 : f32 = x_45.unity_MatrixV[2i].z;
  let x_553 : f32 = vs_TEXCOORD1.z;
  let x_555 : f32 = u_xlat36;
  u_xlat36 = ((x_551 * x_553) + x_555);
  let x_557 : f32 = u_xlat36;
  let x_559 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat36 = (x_557 + x_559);
  let x_561 : f32 = u_xlat36;
  let x_564 : f32 = x_45.x_ProjectionParams.y;
  u_xlat36 = (-(x_561) + -(x_564));
  let x_567 : f32 = u_xlat36;
  u_xlat36 = max(x_567, 0.0f);
  let x_569 : f32 = u_xlat36;
  let x_572 : f32 = x_45.unity_FogParams.x;
  u_xlat36 = (x_569 * x_572);
  u_xlat4.w = 1.0f;
  let x_577 : vec4<f32> = x_187.unity_SHAr;
  let x_578 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_577, x_578);
  let x_583 : vec4<f32> = x_187.unity_SHAg;
  let x_584 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_583, x_584);
  let x_589 : vec4<f32> = x_187.unity_SHAb;
  let x_590 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_589, x_590);
  let x_593 : vec4<f32> = u_xlat4;
  let x_595 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_593.y, x_593.z, x_593.z, x_593.x) * vec4<f32>(x_595.x, x_595.y, x_595.z, x_595.z));
  let x_600 : vec4<f32> = x_187.unity_SHBr;
  let x_601 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_600, x_601);
  let x_606 : vec4<f32> = x_187.unity_SHBg;
  let x_607 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_606, x_607);
  let x_612 : vec4<f32> = x_187.unity_SHBb;
  let x_613 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_612, x_613);
  let x_617 : f32 = u_xlat4.y;
  let x_619 : f32 = u_xlat4.y;
  u_xlat25.x = (x_617 * x_619);
  let x_623 : f32 = u_xlat4.x;
  let x_625 : f32 = u_xlat4.x;
  let x_628 : f32 = u_xlat25.x;
  u_xlat25.x = ((x_623 * x_625) + -(x_628));
  let x_634 : vec4<f32> = x_187.unity_SHC;
  let x_636 : vec2<f32> = u_xlat25;
  let x_639 : vec3<f32> = u_xlat8;
  let x_640 : vec3<f32> = ((vec3<f32>(x_634.x, x_634.y, x_634.z) * vec3<f32>(x_636.x, x_636.x, x_636.x)) + x_639);
  let x_641 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat6;
  let x_645 : vec4<f32> = u_xlat7;
  let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) + vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat6;
  let x_652 : vec3<f32> = max(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_656 : f32 = u_xlat1.x;
  u_xlat25.x = ((-(x_656) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_664 : f32 = u_xlat25.x;
  u_xlat37 = (-(x_664) + 1.0f);
  let x_668 : vec2<f32> = u_xlat25;
  let x_670 : vec4<f32> = u_xlat2;
  u_xlat14 = (vec3<f32>(x_668.x, x_668.x, x_668.x) * vec3<f32>(x_670.y, x_670.z, x_670.w));
  let x_673 : vec4<f32> = u_xlat0;
  let x_676 : vec4<f32> = x_72.x_BaseColor;
  let x_681 : vec3<f32> = ((vec3<f32>(x_673.x, x_673.y, x_673.z) * vec3<f32>(x_676.x, x_676.y, x_676.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_682 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_684 : vec3<f32> = u_xlat1;
  let x_686 : vec4<f32> = u_xlat0;
  let x_691 : vec3<f32> = ((vec3<f32>(x_684.x, x_684.x, x_684.x) * vec3<f32>(x_686.x, x_686.y, x_686.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_692 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_695 : f32 = u_xlat1.y;
  let x_698 : f32 = x_72.x_Smoothness;
  u_xlat1.x = ((-(x_695) * x_698) + 1.0f);
  let x_703 : f32 = u_xlat1.x;
  let x_705 : f32 = u_xlat1.x;
  u_xlat25.x = (x_703 * x_705);
  let x_709 : f32 = u_xlat25.x;
  u_xlat25.x = max(x_709, 0.0078125f);
  let x_715 : f32 = u_xlat25.x;
  let x_717 : f32 = u_xlat25.x;
  u_xlat40 = (x_715 * x_717);
  let x_721 : f32 = u_xlat1.y;
  let x_723 : f32 = x_72.x_Smoothness;
  let x_725 : f32 = u_xlat37;
  u_xlat13.x = ((x_721 * x_723) + x_725);
  let x_729 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_729, 0.0f, 1.0f);
  let x_733 : f32 = u_xlat25.x;
  u_xlat37 = ((x_733 * 4.0f) + 2.0f);
  let x_737 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_737, 1.0f);
  let x_741 : vec4<f32> = u_xlat5;
  let x_742 : vec2<f32> = vec2<f32>(x_741.x, x_741.y);
  let x_744 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_742.x, x_742.y, x_744);
  let x_756 : vec3<f32> = txVec0;
  let x_758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_756.xy, x_756.z);
  u_xlat5.x = x_758;
  let x_762 : f32 = x_355.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_762) + 1.0f);
  let x_767 : f32 = u_xlat5.x;
  let x_769 : f32 = x_355.x_MainLightShadowParams.x;
  let x_772 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_767 * x_769) + x_772);
  let x_777 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_777);
  let x_781 : f32 = u_xlat5.z;
  u_xlatb29 = (x_781 >= 1.0f);
  let x_783 : bool = u_xlatb29;
  let x_784 : bool = u_xlatb17;
  u_xlatb17 = (x_783 | x_784);
  let x_786 : bool = u_xlatb17;
  if (x_786) {
    x_787 = 1.0f;
  } else {
    let x_792 : f32 = u_xlat5.x;
    x_787 = x_792;
  }
  let x_793 : f32 = x_787;
  u_xlat5.x = x_793;
  let x_795 : vec3<f32> = vs_TEXCOORD1;
  let x_797 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat17 = (x_795 + -(x_797));
  let x_800 : vec3<f32> = u_xlat17;
  let x_801 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_800, x_801);
  let x_806 : f32 = u_xlat17.x;
  let x_808 : f32 = x_355.x_MainLightShadowParams.z;
  let x_811 : f32 = x_355.x_MainLightShadowParams.w;
  u_xlat29 = ((x_806 * x_808) + x_811);
  let x_813 : f32 = u_xlat29;
  u_xlat29 = clamp(x_813, 0.0f, 1.0f);
  let x_817 : f32 = u_xlat5.x;
  u_xlat41 = (-(x_817) + 1.0f);
  let x_820 : f32 = u_xlat29;
  let x_821 : f32 = u_xlat41;
  let x_824 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_820 * x_821) + x_824);
  let x_827 : vec3<f32> = u_xlat15;
  let x_829 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(-(x_827), vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : f32 = u_xlat29;
  let x_833 : f32 = u_xlat29;
  u_xlat29 = (x_832 + x_833);
  let x_835 : vec4<f32> = u_xlat4;
  let x_837 : f32 = u_xlat29;
  let x_841 : vec3<f32> = u_xlat15;
  let x_843 : vec3<f32> = ((vec3<f32>(x_835.x, x_835.y, x_835.z) * -(vec3<f32>(x_837, x_837, x_837))) + -(x_841));
  let x_844 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat4;
  let x_848 : vec3<f32> = u_xlat15;
  u_xlat29 = dot(vec3<f32>(x_846.x, x_846.y, x_846.z), x_848);
  let x_850 : f32 = u_xlat29;
  u_xlat29 = clamp(x_850, 0.0f, 1.0f);
  let x_852 : f32 = u_xlat29;
  u_xlat29 = (-(x_852) + 1.0f);
  let x_855 : f32 = u_xlat29;
  let x_856 : f32 = u_xlat29;
  u_xlat29 = (x_855 * x_856);
  let x_858 : f32 = u_xlat29;
  let x_859 : f32 = u_xlat29;
  u_xlat29 = (x_858 * x_859);
  let x_862 : f32 = u_xlat1.x;
  u_xlat41 = ((-(x_862) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_869 : f32 = u_xlat1.x;
  let x_870 : f32 = u_xlat41;
  u_xlat1.x = (x_869 * x_870);
  let x_874 : f32 = u_xlat1.x;
  u_xlat1.x = (x_874 * 6.0f);
  let x_886 : vec4<f32> = u_xlat7;
  let x_889 : f32 = u_xlat1.x;
  let x_890 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_886.x, x_886.y, x_886.z), x_889);
  u_xlat7 = x_890;
  let x_892 : f32 = u_xlat7.w;
  u_xlat1.x = (x_892 + -1.0f);
  let x_896 : f32 = x_187.unity_SpecCube0_HDR.w;
  let x_898 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_896 * x_898) + 1.0f);
  let x_903 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_903, 0.0f);
  let x_907 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_907);
  let x_911 : f32 = u_xlat1.x;
  let x_913 : f32 = x_187.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_911 * x_913);
  let x_917 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_917);
  let x_921 : f32 = u_xlat1.x;
  let x_923 : f32 = x_187.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_921 * x_923);
  let x_926 : vec4<f32> = u_xlat7;
  let x_928 : vec3<f32> = u_xlat1;
  let x_930 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(x_928.x, x_928.x, x_928.x));
  let x_931 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec2<f32> = u_xlat25;
  let x_935 : vec2<f32> = u_xlat25;
  let x_939 : vec2<f32> = ((vec2<f32>(x_933.x, x_933.x) * vec2<f32>(x_935.x, x_935.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_940 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_939.x, x_940.y, x_939.y);
  let x_943 : f32 = u_xlat1.z;
  u_xlat25.x = (1.0f / x_943);
  let x_946 : vec4<f32> = u_xlat0;
  let x_949 : vec2<f32> = u_xlat13;
  u_xlat8 = (-(vec3<f32>(x_946.x, x_946.y, x_946.z)) + vec3<f32>(x_949.x, x_949.x, x_949.x));
  let x_952 : f32 = u_xlat29;
  let x_954 : vec3<f32> = u_xlat8;
  let x_956 : vec4<f32> = u_xlat0;
  u_xlat8 = ((vec3<f32>(x_952, x_952, x_952) * x_954) + vec3<f32>(x_956.x, x_956.y, x_956.z));
  let x_959 : vec2<f32> = u_xlat25;
  let x_961 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(x_959.x, x_959.x, x_959.x) * x_961);
  let x_963 : vec4<f32> = u_xlat7;
  let x_965 : vec3<f32> = u_xlat8;
  let x_966 : vec3<f32> = (vec3<f32>(x_963.x, x_963.y, x_963.z) * x_965);
  let x_967 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : vec4<f32> = u_xlat6;
  let x_971 : vec3<f32> = u_xlat14;
  let x_973 : vec4<f32> = u_xlat7;
  let x_975 : vec3<f32> = ((vec3<f32>(x_969.x, x_969.y, x_969.z) * x_971) + vec3<f32>(x_973.x, x_973.y, x_973.z));
  let x_976 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_979 : f32 = u_xlat5.x;
  let x_981 : f32 = x_187.unity_LightData.z;
  u_xlat13.x = (x_979 * x_981);
  let x_984 : vec4<f32> = u_xlat4;
  let x_987 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat25.x = dot(vec3<f32>(x_984.x, x_984.y, x_984.z), vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_992 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_992, 0.0f, 1.0f);
  let x_996 : f32 = u_xlat25.x;
  let x_998 : f32 = u_xlat13.x;
  u_xlat13.x = (x_996 * x_998);
  let x_1001 : vec2<f32> = u_xlat13;
  let x_1004 : vec4<f32> = x_45.x_MainLightColor;
  let x_1006 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.x, x_1001.x) * vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1006.x, x_1007.y, x_1006.y, x_1006.z);
  let x_1009 : vec3<f32> = u_xlat15;
  let x_1011 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1013 : vec3<f32> = (x_1009 + vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1016 : vec4<f32> = u_xlat7;
  let x_1018 : vec4<f32> = u_xlat7;
  u_xlat13.x = dot(vec3<f32>(x_1016.x, x_1016.y, x_1016.z), vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1023 : f32 = u_xlat13.x;
  u_xlat13.x = max(x_1023, 1.17549435e-38f);
  let x_1028 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_1028);
  let x_1031 : vec2<f32> = u_xlat13;
  let x_1033 : vec4<f32> = u_xlat7;
  let x_1035 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.x, x_1031.x) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat4;
  let x_1040 : vec4<f32> = u_xlat7;
  u_xlat13.x = dot(vec3<f32>(x_1038.x, x_1038.y, x_1038.z), vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1045 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_1045, 0.0f, 1.0f);
  let x_1049 : vec4<f32> = x_45.x_MainLightPosition;
  let x_1051 : vec4<f32> = u_xlat7;
  u_xlat13.y = dot(vec3<f32>(x_1049.x, x_1049.y, x_1049.z), vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1056 : f32 = u_xlat13.y;
  u_xlat13.y = clamp(x_1056, 0.0f, 1.0f);
  let x_1059 : vec2<f32> = u_xlat13;
  let x_1060 : vec2<f32> = u_xlat13;
  u_xlat13 = (x_1059 * x_1060);
  let x_1063 : f32 = u_xlat13.x;
  let x_1065 : f32 = u_xlat1.x;
  u_xlat13.x = ((x_1063 * x_1065) + 1.00001001358032226562f);
  let x_1071 : f32 = u_xlat13.x;
  let x_1073 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1071 * x_1073);
  let x_1077 : f32 = u_xlat13.y;
  u_xlat25.x = max(x_1077, 0.10000000149011611938f);
  let x_1082 : f32 = u_xlat25.x;
  let x_1084 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1082 * x_1084);
  let x_1087 : f32 = u_xlat37;
  let x_1089 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1087 * x_1089);
  let x_1092 : f32 = u_xlat40;
  let x_1094 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1092 / x_1094);
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1099 : vec2<f32> = u_xlat13;
  let x_1102 : vec3<f32> = u_xlat14;
  let x_1103 : vec3<f32> = ((vec3<f32>(x_1097.x, x_1097.y, x_1097.z) * vec3<f32>(x_1099.x, x_1099.x, x_1099.x)) + x_1102);
  let x_1104 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1106 : vec4<f32> = u_xlat5;
  let x_1108 : vec4<f32> = u_xlat7;
  let x_1110 : vec3<f32> = (vec3<f32>(x_1106.x, x_1106.z, x_1106.w) * vec3<f32>(x_1108.x, x_1108.y, x_1108.z));
  let x_1111 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1110.x, x_1111.y, x_1110.y, x_1110.z);
  let x_1114 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1116 : f32 = x_187.unity_LightData.y;
  u_xlat13.x = min(x_1114, x_1116);
  let x_1121 : f32 = u_xlat13.x;
  u_xlatu13 = bitcast<u32>(i32(x_1121));
  let x_1125 : f32 = u_xlat17.x;
  let x_1128 : f32 = x_355.x_AdditionalShadowFadeParams.x;
  let x_1131 : f32 = x_355.x_AdditionalShadowFadeParams.y;
  u_xlat25.x = ((x_1125 * x_1128) + x_1131);
  let x_1135 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1135, 0.0f, 1.0f);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1148 : u32 = u_xlatu_loop_1;
    let x_1149 : u32 = u_xlatu13;
    if ((x_1148 < x_1149)) {
    } else {
      break;
    }
    let x_1152 : u32 = u_xlatu_loop_1;
    u_xlatu42 = (x_1152 >> 2u);
    let x_1155 : u32 = u_xlatu_loop_1;
    u_xlati43 = bitcast<i32>((x_1155 & 3u));
    let x_1159 : u32 = u_xlatu42;
    let x_1162 : vec4<f32> = x_187.unity_LightIndices[bitcast<i32>(x_1159)];
    let x_1172 : i32 = u_xlati43;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1177 : vec4<u32> = indexable[x_1172];
    u_xlat42 = dot(x_1162, bitcast<vec4<f32>>(x_1177));
    let x_1181 : f32 = u_xlat42;
    u_xlati42 = i32(x_1181);
    let x_1183 : vec3<f32> = vs_TEXCOORD1;
    let x_1194 : i32 = u_xlati42;
    let x_1196 : vec4<f32> = x_1193.x_AdditionalLightsPosition[x_1194];
    let x_1199 : i32 = u_xlati42;
    let x_1201 : vec4<f32> = x_1193.x_AdditionalLightsPosition[x_1199];
    u_xlat8 = ((-(x_1183) * vec3<f32>(x_1196.w, x_1196.w, x_1196.w)) + vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
    let x_1205 : vec3<f32> = u_xlat8;
    let x_1206 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1205, x_1206);
    let x_1208 : f32 = u_xlat43;
    u_xlat43 = max(x_1208, 0.00006103515625f);
    let x_1212 : f32 = u_xlat43;
    u_xlat44 = inverseSqrt(x_1212);
    let x_1215 : f32 = u_xlat44;
    let x_1217 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1215, x_1215, x_1215) * x_1217);
    let x_1220 : f32 = u_xlat43;
    u_xlat45 = (1.0f / x_1220);
    let x_1222 : f32 = u_xlat43;
    let x_1223 : i32 = u_xlati42;
    let x_1225 : f32 = x_1193.x_AdditionalLightsAttenuation[x_1223].x;
    u_xlat43 = (x_1222 * x_1225);
    let x_1227 : f32 = u_xlat43;
    let x_1229 : f32 = u_xlat43;
    u_xlat43 = ((-(x_1227) * x_1229) + 1.0f);
    let x_1232 : f32 = u_xlat43;
    u_xlat43 = max(x_1232, 0.0f);
    let x_1234 : f32 = u_xlat43;
    let x_1235 : f32 = u_xlat43;
    u_xlat43 = (x_1234 * x_1235);
    let x_1237 : f32 = u_xlat43;
    let x_1238 : f32 = u_xlat45;
    u_xlat43 = (x_1237 * x_1238);
    let x_1240 : i32 = u_xlati42;
    let x_1242 : vec4<f32> = x_1193.x_AdditionalLightsSpotDir[x_1240];
    let x_1244 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1242.x, x_1242.y, x_1242.z), x_1244);
    let x_1246 : f32 = u_xlat45;
    let x_1247 : i32 = u_xlati42;
    let x_1249 : f32 = x_1193.x_AdditionalLightsAttenuation[x_1247].z;
    let x_1251 : i32 = u_xlati42;
    let x_1253 : f32 = x_1193.x_AdditionalLightsAttenuation[x_1251].w;
    u_xlat45 = ((x_1246 * x_1249) + x_1253);
    let x_1255 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1255, 0.0f, 1.0f);
    let x_1257 : f32 = u_xlat45;
    let x_1258 : f32 = u_xlat45;
    u_xlat45 = (x_1257 * x_1258);
    let x_1260 : f32 = u_xlat43;
    let x_1261 : f32 = u_xlat45;
    u_xlat43 = (x_1260 * x_1261);
    let x_1265 : i32 = u_xlati42;
    let x_1267 : f32 = x_355.x_AdditionalShadowParams[x_1265].w;
    u_xlati45 = i32(x_1267);
    let x_1272 : i32 = u_xlati45;
    u_xlatb10.x = (x_1272 >= 0i);
    let x_1276 : bool = u_xlatb10.x;
    if (x_1276) {
      let x_1280 : i32 = u_xlati42;
      let x_1282 : f32 = x_355.x_AdditionalShadowParams[x_1280].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1282, x_1282, x_1282, x_1282))));
      let x_1288 : bool = u_xlatb10.x;
      if (x_1288) {
        let x_1291 : vec3<f32> = u_xlat9;
        let x_1294 : vec3<f32> = u_xlat9;
        let x_1297 : vec4<bool> = (abs(vec4<f32>(x_1291.z, x_1291.z, x_1291.y, x_1291.z)) >= abs(vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.x)));
        u_xlatb10 = vec3<bool>(x_1297.x, x_1297.y, x_1297.z);
        let x_1300 : bool = u_xlatb10.y;
        let x_1302 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_1300 & x_1302);
        let x_1306 : vec3<f32> = u_xlat9;
        let x_1309 : vec4<bool> = (-(vec4<f32>(x_1306.z, x_1306.y, x_1306.x, x_1306.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_1309.x, x_1309.y, x_1309.z);
        let x_1313 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_1313);
        let x_1318 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_1318);
        let x_1323 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_1323);
        let x_1327 : bool = u_xlatb10.z;
        if (x_1327) {
          let x_1332 : f32 = u_xlat22.z;
          x_1328 = x_1332;
        } else {
          let x_1334 : f32 = u_xlat11;
          x_1328 = x_1334;
        }
        let x_1335 : f32 = x_1328;
        u_xlat34 = x_1335;
        let x_1338 : bool = u_xlatb10.x;
        if (x_1338) {
          let x_1343 : f32 = u_xlat22.x;
          x_1339 = x_1343;
        } else {
          let x_1345 : f32 = u_xlat34;
          x_1339 = x_1345;
        }
        let x_1346 : f32 = x_1339;
        u_xlat10.x = x_1346;
        let x_1348 : i32 = u_xlati42;
        let x_1350 : f32 = x_355.x_AdditionalShadowParams[x_1348].w;
        u_xlat22.x = trunc(x_1350);
        let x_1354 : f32 = u_xlat10.x;
        let x_1356 : f32 = u_xlat22.x;
        u_xlat10.x = (x_1354 + x_1356);
        let x_1360 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_1360);
      }
      let x_1362 : i32 = u_xlati45;
      u_xlati45 = (x_1362 << bitcast<u32>(2i));
      let x_1364 : vec3<f32> = vs_TEXCOORD1;
      let x_1367 : i32 = u_xlati45;
      let x_1370 : i32 = u_xlati45;
      let x_1374 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_1367 + 1i) / 4i)][((x_1370 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_1364.y, x_1364.y, x_1364.y, x_1364.y) * x_1374);
      let x_1376 : i32 = u_xlati45;
      let x_1378 : i32 = u_xlati45;
      let x_1381 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[(x_1376 / 4i)][(x_1378 % 4i)];
      let x_1382 : vec3<f32> = vs_TEXCOORD1;
      let x_1385 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1381 * vec4<f32>(x_1382.x, x_1382.x, x_1382.x, x_1382.x)) + x_1385);
      let x_1387 : i32 = u_xlati45;
      let x_1390 : i32 = u_xlati45;
      let x_1394 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_1387 + 2i) / 4i)][((x_1390 + 2i) % 4i)];
      let x_1395 : vec3<f32> = vs_TEXCOORD1;
      let x_1398 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_1394 * vec4<f32>(x_1395.z, x_1395.z, x_1395.z, x_1395.z)) + x_1398);
      let x_1400 : vec4<f32> = u_xlat10;
      let x_1401 : i32 = u_xlati45;
      let x_1404 : i32 = u_xlati45;
      let x_1408 : vec4<f32> = x_355.x_AdditionalLightsWorldToShadow[((x_1401 + 3i) / 4i)][((x_1404 + 3i) % 4i)];
      u_xlat10 = (x_1400 + x_1408);
      let x_1410 : vec4<f32> = u_xlat10;
      let x_1412 : vec4<f32> = u_xlat10;
      let x_1414 : vec3<f32> = (vec3<f32>(x_1410.x, x_1410.y, x_1410.z) / vec3<f32>(x_1412.w, x_1412.w, x_1412.w));
      let x_1415 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1414.x, x_1414.y, x_1414.z, x_1415.w);
      let x_1418 : vec4<f32> = u_xlat10;
      let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
      let x_1421 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
      let x_1429 : vec3<f32> = txVec1;
      let x_1431 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1429.xy, x_1429.z);
      u_xlat45 = x_1431;
      let x_1432 : i32 = u_xlati42;
      let x_1434 : f32 = x_355.x_AdditionalShadowParams[x_1432].x;
      u_xlat10.x = (1.0f + -(x_1434));
      let x_1438 : f32 = u_xlat45;
      let x_1439 : i32 = u_xlati42;
      let x_1441 : f32 = x_355.x_AdditionalShadowParams[x_1439].x;
      let x_1444 : f32 = u_xlat10.x;
      u_xlat45 = ((x_1438 * x_1441) + x_1444);
      let x_1447 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_1447);
      let x_1452 : f32 = u_xlat10.z;
      u_xlatb22 = (x_1452 >= 1.0f);
      let x_1454 : bool = u_xlatb22;
      let x_1456 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_1454 | x_1456);
      let x_1460 : bool = u_xlatb10.x;
      let x_1461 : f32 = u_xlat45;
      u_xlat45 = select(x_1461, 1.0f, x_1460);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1464 : f32 = u_xlat45;
    u_xlat10.x = (-(x_1464) + 1.0f);
    let x_1469 : f32 = u_xlat25.x;
    let x_1471 : f32 = u_xlat10.x;
    let x_1473 : f32 = u_xlat45;
    u_xlat45 = ((x_1469 * x_1471) + x_1473);
    let x_1475 : f32 = u_xlat43;
    let x_1476 : f32 = u_xlat45;
    u_xlat43 = (x_1475 * x_1476);
    let x_1478 : vec4<f32> = u_xlat4;
    let x_1480 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1478.x, x_1478.y, x_1478.z), x_1480);
    let x_1482 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1482, 0.0f, 1.0f);
    let x_1484 : f32 = u_xlat43;
    let x_1485 : f32 = u_xlat45;
    u_xlat43 = (x_1484 * x_1485);
    let x_1487 : f32 = u_xlat43;
    let x_1489 : i32 = u_xlati42;
    let x_1491 : vec4<f32> = x_1193.x_AdditionalLightsColor[x_1489];
    let x_1493 : vec3<f32> = (vec3<f32>(x_1487, x_1487, x_1487) * vec3<f32>(x_1491.x, x_1491.y, x_1491.z));
    let x_1494 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1493.x, x_1493.y, x_1493.z, x_1494.w);
    let x_1496 : vec3<f32> = u_xlat8;
    let x_1497 : f32 = u_xlat44;
    let x_1500 : vec3<f32> = u_xlat15;
    u_xlat8 = ((x_1496 * vec3<f32>(x_1497, x_1497, x_1497)) + x_1500);
    let x_1502 : vec3<f32> = u_xlat8;
    let x_1503 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1502, x_1503);
    let x_1505 : f32 = u_xlat42;
    u_xlat42 = max(x_1505, 1.17549435e-38f);
    let x_1507 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_1507);
    let x_1509 : f32 = u_xlat42;
    let x_1511 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1509, x_1509, x_1509) * x_1511);
    let x_1513 : vec4<f32> = u_xlat4;
    let x_1515 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(vec3<f32>(x_1513.x, x_1513.y, x_1513.z), x_1515);
    let x_1517 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1517, 0.0f, 1.0f);
    let x_1519 : vec3<f32> = u_xlat9;
    let x_1520 : vec3<f32> = u_xlat8;
    u_xlat43 = dot(x_1519, x_1520);
    let x_1522 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1522, 0.0f, 1.0f);
    let x_1524 : f32 = u_xlat42;
    let x_1525 : f32 = u_xlat42;
    u_xlat42 = (x_1524 * x_1525);
    let x_1527 : f32 = u_xlat42;
    let x_1529 : f32 = u_xlat1.x;
    u_xlat42 = ((x_1527 * x_1529) + 1.00001001358032226562f);
    let x_1532 : f32 = u_xlat43;
    let x_1533 : f32 = u_xlat43;
    u_xlat43 = (x_1532 * x_1533);
    let x_1535 : f32 = u_xlat42;
    let x_1536 : f32 = u_xlat42;
    u_xlat42 = (x_1535 * x_1536);
    let x_1538 : f32 = u_xlat43;
    u_xlat43 = max(x_1538, 0.10000000149011611938f);
    let x_1540 : f32 = u_xlat42;
    let x_1541 : f32 = u_xlat43;
    u_xlat42 = (x_1540 * x_1541);
    let x_1543 : f32 = u_xlat37;
    let x_1544 : f32 = u_xlat42;
    u_xlat42 = (x_1543 * x_1544);
    let x_1546 : f32 = u_xlat40;
    let x_1547 : f32 = u_xlat42;
    u_xlat42 = (x_1546 / x_1547);
    let x_1549 : vec4<f32> = u_xlat0;
    let x_1551 : f32 = u_xlat42;
    let x_1554 : vec3<f32> = u_xlat14;
    u_xlat8 = ((vec3<f32>(x_1549.x, x_1549.y, x_1549.z) * vec3<f32>(x_1551, x_1551, x_1551)) + x_1554);
    let x_1556 : vec3<f32> = u_xlat8;
    let x_1557 : vec4<f32> = u_xlat10;
    let x_1560 : vec4<f32> = u_xlat7;
    let x_1562 : vec3<f32> = ((x_1556 * vec3<f32>(x_1557.x, x_1557.y, x_1557.z)) + vec3<f32>(x_1560.x, x_1560.y, x_1560.z));
    let x_1563 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);

    continuing {
      let x_1565 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1565 + bitcast<u32>(1i));
    }
  }
  let x_1567 : vec4<f32> = u_xlat6;
  let x_1569 : vec3<f32> = u_xlat3;
  let x_1572 : vec4<f32> = u_xlat5;
  let x_1574 : vec3<f32> = ((vec3<f32>(x_1567.x, x_1567.y, x_1567.z) * vec3<f32>(x_1569.x, x_1569.x, x_1569.x)) + vec3<f32>(x_1572.x, x_1572.z, x_1572.w));
  let x_1575 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1574.x, x_1574.y, x_1574.z, x_1575.w);
  let x_1577 : vec4<f32> = u_xlat7;
  let x_1579 : vec4<f32> = u_xlat0;
  let x_1581 : vec3<f32> = (vec3<f32>(x_1577.x, x_1577.y, x_1577.z) + vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
  let x_1582 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);
  let x_1584 : f32 = u_xlat36;
  let x_1585 : f32 = u_xlat36;
  u_xlat36 = (x_1584 * -(x_1585));
  let x_1588 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1588);
  let x_1590 : vec4<f32> = u_xlat0;
  let x_1593 : vec4<f32> = x_45.unity_FogColor;
  let x_1596 : vec3<f32> = (vec3<f32>(x_1590.x, x_1590.y, x_1590.z) + -(vec3<f32>(x_1593.x, x_1593.y, x_1593.z)));
  let x_1597 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1596.x, x_1596.y, x_1596.z, x_1597.w);
  let x_1601 : f32 = u_xlat36;
  let x_1603 : vec4<f32> = u_xlat0;
  let x_1607 : vec4<f32> = x_45.unity_FogColor;
  let x_1609 : vec3<f32> = ((vec3<f32>(x_1601, x_1601, x_1601) * vec3<f32>(x_1603.x, x_1603.y, x_1603.z)) + vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
  let x_1610 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1609.x, x_1609.y, x_1609.z, x_1610.w);
  let x_1614 : f32 = x_72.x_Surface;
  u_xlatb0 = (x_1614 == 1.0f);
  let x_1616 : bool = u_xlatb0;
  if (x_1616) {
    let x_1621 : f32 = u_xlat2.x;
    x_1617 = x_1621;
  } else {
    x_1617 = 1.0f;
  }
  let x_1623 : f32 = x_1617;
  SV_Target0.w = x_1623;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}



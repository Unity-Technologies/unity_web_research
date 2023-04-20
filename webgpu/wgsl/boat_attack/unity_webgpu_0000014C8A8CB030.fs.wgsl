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

alias Arr_5 = array<mat4x4<f32>, 32u>;

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
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_72 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat42 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(9) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_PointRepeat : sampler;

var<private> u_xlatb31 : bool;

@group(1) @binding(2) var<uniform> x_187 : UnityPerDraw;

var<private> u_xlatb17 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat15 : vec2<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> u_xlat47 : f32;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(17) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_577 : LightShadows;

var<private> u_xlatb6 : bool;

var<private> u_xlatb20 : vec2<bool>;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlat34 : f32;

@group(1) @binding(5) var<uniform> x_650 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu15 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1157 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu47 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_194 : f32;
  var x_271 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_735 : f32;
  var x_746 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1290 : f32;
  var x_1300 : f32;
  var txVec1 : vec3<f32>;
  var x_1731 : f32;
  var x_1744 : f32;
  var x_1802 : f32;
  var x_1813 : vec3<f32>;
  var x_2000 : f32;
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
  u_xlat29 = ((vec2<f32>(x_100.x, x_100.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec2<f32> = u_xlat29;
  let x_110 : vec2<f32> = u_xlat29;
  u_xlat42 = dot(x_109, x_110);
  let x_112 : f32 = u_xlat42;
  u_xlat42 = min(x_112, 1.0f);
  let x_114 : f32 = u_xlat42;
  u_xlat42 = (-(x_114) + 1.0f);
  let x_117 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_117);
  let x_119 : f32 = u_xlat42;
  u_xlat42 = max(x_119, 0.0000000000000001f);
  let x_122 : vec2<f32> = u_xlat29;
  let x_125 : f32 = x_72.x_BumpScale;
  let x_127 : f32 = x_72.x_BumpScale;
  let x_128 : vec2<f32> = vec2<f32>(x_125, x_127);
  u_xlat29 = (x_122 * vec2<f32>(x_128.x, x_128.y));
  let x_138 : vec2<f32> = vs_TEXCOORD0;
  let x_140 : f32 = x_45.x_GlobalMipBias.x;
  let x_141 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_138, x_140);
  u_xlat3.x = x_141.y;
  let x_148 : f32 = x_72.x_OcclusionStrength;
  u_xlat17.x = (-(x_148) + 1.0f);
  let x_153 : f32 = u_xlat3.x;
  let x_155 : f32 = x_72.x_OcclusionStrength;
  let x_158 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_153 * x_155) + x_158);
  let x_161 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_45.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_161.x, x_161.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_166.x, x_166.y, x_167.z);
  let x_174 : vec3<f32> = u_xlat17;
  let x_177 : f32 = x_45.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_174.x, x_174.y), x_177);
  u_xlat17.x = x_178.w;
  let x_189 : f32 = x_187.unity_LODFade.x;
  u_xlatb31 = (x_189 >= 0.0f);
  let x_192 : bool = u_xlatb31;
  if (x_192) {
    let x_198 : f32 = u_xlat17.x;
    x_194 = abs(x_198);
  } else {
    let x_202 : f32 = u_xlat17.x;
    x_194 = -(abs(x_202));
  }
  let x_205 : f32 = x_194;
  u_xlat17.x = x_205;
  let x_208 : f32 = u_xlat17.x;
  let x_211 : f32 = x_187.unity_LODFade.x;
  u_xlat17.x = (-(x_208) + x_211);
  let x_216 : f32 = u_xlat17.x;
  u_xlatb17 = (x_216 < 0.0f);
  let x_218 : bool = u_xlatb17;
  if (((select(0i, 1i, x_218) * -1i) != 0i)) {
    discard;
  }
  let x_229 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb17 = (x_229 == 0.0f);
  let x_234 : vec3<f32> = vs_TEXCOORD1;
  let x_239 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_240 : vec3<f32> = (-(x_234) + x_239);
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_244 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = u_xlat4;
  u_xlat31 = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_249 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_249);
  let x_251 : f32 = u_xlat31;
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
  let x_269 : bool = u_xlatb17;
  if (x_269) {
    let x_274 : vec4<f32> = u_xlat4;
    x_271 = vec3<f32>(x_274.x, x_274.y, x_274.z);
  } else {
    let x_277 : vec3<f32> = u_xlat5;
    x_271 = x_277;
  }
  let x_278 : vec3<f32> = x_271;
  u_xlat17 = x_278;
  let x_280 : vec3<f32> = vs_TEXCOORD2;
  let x_283 : vec4<f32> = vs_TEXCOORD3;
  let x_285 : vec3<f32> = (vec3<f32>(x_280.z, x_280.x, x_280.y) * vec3<f32>(x_283.y, x_283.z, x_283.x));
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
  let x_288 : vec3<f32> = vs_TEXCOORD2;
  let x_290 : vec4<f32> = vs_TEXCOORD3;
  let x_293 : vec4<f32> = u_xlat4;
  let x_296 : vec3<f32> = ((vec3<f32>(x_288.y, x_288.z, x_288.x) * vec3<f32>(x_290.z, x_290.x, x_290.y)) + -(vec3<f32>(x_293.x, x_293.y, x_293.z)));
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_299 : vec4<f32> = u_xlat4;
  let x_301 : vec4<f32> = vs_TEXCOORD3;
  let x_303 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.w, x_301.w, x_301.w));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec2<f32> = u_xlat29;
  let x_308 : vec4<f32> = u_xlat4;
  let x_310 : vec3<f32> = (vec3<f32>(x_306.y, x_306.y, x_306.y) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec2<f32> = u_xlat29;
  let x_315 : vec4<f32> = vs_TEXCOORD3;
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.x, x_313.x) * vec3<f32>(x_315.x, x_315.y, x_315.z)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : f32 = u_xlat42;
  let x_325 : vec3<f32> = vs_TEXCOORD2;
  let x_327 : vec4<f32> = u_xlat4;
  let x_329 : vec3<f32> = ((vec3<f32>(x_323, x_323, x_323) * x_325) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_337);
  let x_339 : f32 = u_xlat42;
  let x_341 : vec4<f32> = u_xlat4;
  let x_343 : vec3<f32> = (vec3<f32>(x_339, x_339, x_339) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : f32 = vs_TEXCOORD1.y;
  let x_349 : f32 = x_45.unity_MatrixV[1i].z;
  u_xlat42 = (x_347 * x_349);
  let x_352 : f32 = x_45.unity_MatrixV[0i].z;
  let x_354 : f32 = vs_TEXCOORD1.x;
  let x_356 : f32 = u_xlat42;
  u_xlat42 = ((x_352 * x_354) + x_356);
  let x_359 : f32 = x_45.unity_MatrixV[2i].z;
  let x_361 : f32 = vs_TEXCOORD1.z;
  let x_363 : f32 = u_xlat42;
  u_xlat42 = ((x_359 * x_361) + x_363);
  let x_365 : f32 = u_xlat42;
  let x_368 : f32 = x_45.unity_MatrixV[3i].z;
  u_xlat42 = (x_365 + x_368);
  let x_370 : f32 = u_xlat42;
  let x_374 : f32 = x_45.x_ProjectionParams.y;
  u_xlat42 = (-(x_370) + -(x_374));
  let x_377 : f32 = u_xlat42;
  u_xlat42 = max(x_377, 0.0f);
  let x_379 : f32 = u_xlat42;
  let x_382 : f32 = x_45.unity_FogParams.x;
  u_xlat42 = (x_379 * x_382);
  u_xlat4.w = 1.0f;
  let x_387 : vec4<f32> = x_187.unity_SHAr;
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_387, x_388);
  let x_393 : vec4<f32> = x_187.unity_SHAg;
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_393, x_394);
  let x_399 : vec4<f32> = x_187.unity_SHAb;
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_399, x_400);
  let x_404 : vec4<f32> = u_xlat4;
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_404.y, x_404.z, x_404.z, x_404.x) * vec4<f32>(x_406.x, x_406.y, x_406.z, x_406.z));
  let x_412 : vec4<f32> = x_187.unity_SHBr;
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_412, x_413);
  let x_418 : vec4<f32> = x_187.unity_SHBg;
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_418, x_419);
  let x_424 : vec4<f32> = x_187.unity_SHBb;
  let x_425 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_424, x_425);
  let x_429 : f32 = u_xlat4.y;
  let x_431 : f32 = u_xlat4.y;
  u_xlat29.x = (x_429 * x_431);
  let x_435 : f32 = u_xlat4.x;
  let x_437 : f32 = u_xlat4.x;
  let x_440 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_435 * x_437) + -(x_440));
  let x_446 : vec4<f32> = x_187.unity_SHC;
  let x_448 : vec2<f32> = u_xlat29;
  let x_451 : vec4<f32> = u_xlat7;
  let x_453 : vec3<f32> = ((vec3<f32>(x_446.x, x_446.y, x_446.z) * vec3<f32>(x_448.x, x_448.x, x_448.x)) + vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec3<f32> = u_xlat5;
  let x_457 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_456 + vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_460, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_464 : f32 = u_xlat1.x;
  u_xlat29.x = ((-(x_464) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_472 : f32 = u_xlat29.x;
  u_xlat43 = (-(x_472) + 1.0f);
  let x_476 : vec2<f32> = u_xlat29;
  let x_478 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_476.x, x_476.x, x_476.x) * vec3<f32>(x_478.y, x_478.z, x_478.w));
  let x_481 : vec4<f32> = u_xlat0;
  let x_484 : vec4<f32> = x_72.x_BaseColor;
  let x_489 : vec3<f32> = ((vec3<f32>(x_481.x, x_481.y, x_481.z) * vec3<f32>(x_484.x, x_484.y, x_484.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_490 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec3<f32> = u_xlat1;
  let x_494 : vec4<f32> = u_xlat0;
  let x_499 : vec3<f32> = ((vec3<f32>(x_492.x, x_492.x, x_492.x) * vec3<f32>(x_494.x, x_494.y, x_494.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_500 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_503 : f32 = u_xlat1.y;
  let x_506 : f32 = x_72.x_Smoothness;
  u_xlat1.x = ((-(x_503) * x_506) + 1.0f);
  let x_511 : f32 = u_xlat1.x;
  let x_513 : f32 = u_xlat1.x;
  u_xlat29.x = (x_511 * x_513);
  let x_517 : f32 = u_xlat29.x;
  u_xlat29.x = max(x_517, 0.0078125f);
  let x_523 : f32 = u_xlat29.x;
  let x_525 : f32 = u_xlat29.x;
  u_xlat46 = (x_523 * x_525);
  let x_529 : f32 = u_xlat1.y;
  let x_531 : f32 = x_72.x_Smoothness;
  let x_533 : f32 = u_xlat43;
  u_xlat15.x = ((x_529 * x_531) + x_533);
  let x_537 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_537, 0.0f, 1.0f);
  let x_541 : f32 = u_xlat29.x;
  u_xlat43 = ((x_541 * 4.0f) + 2.0f);
  let x_546 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_546, 1.0f);
  let x_551 : vec4<f32> = vs_TEXCOORD6;
  let x_552 : vec2<f32> = vec2<f32>(x_551.x, x_551.y);
  let x_554 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_552.x, x_552.y, x_554);
  let x_567 : vec3<f32> = txVec0;
  let x_569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_567.xy, x_567.z);
  u_xlat47 = x_569;
  let x_579 : f32 = x_577.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_579) + 1.0f);
  let x_583 : f32 = u_xlat47;
  let x_585 : f32 = x_577.x_MainLightShadowParams.x;
  let x_588 : f32 = u_xlat6.x;
  u_xlat47 = ((x_583 * x_585) + x_588);
  let x_592 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_592);
  let x_598 : f32 = vs_TEXCOORD6.z;
  u_xlatb20.x = (x_598 >= 1.0f);
  let x_602 : bool = u_xlatb20.x;
  let x_603 : bool = u_xlatb6;
  u_xlatb6 = (x_602 | x_603);
  let x_605 : bool = u_xlatb6;
  let x_606 : f32 = u_xlat47;
  u_xlat47 = select(x_606, 1.0f, x_605);
  let x_608 : vec3<f32> = vs_TEXCOORD1;
  let x_610 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_612 : vec3<f32> = (x_608 + -(x_610));
  let x_613 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat6;
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_623 : f32 = u_xlat6.x;
  let x_625 : f32 = x_577.x_MainLightShadowParams.z;
  let x_628 : f32 = x_577.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_623 * x_625) + x_628);
  let x_632 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_632, 0.0f, 1.0f);
  let x_636 : f32 = u_xlat47;
  u_xlat34 = (-(x_636) + 1.0f);
  let x_640 : f32 = u_xlat20.x;
  let x_641 : f32 = u_xlat34;
  let x_643 : f32 = u_xlat47;
  u_xlat47 = ((x_640 * x_641) + x_643);
  let x_652 : f32 = x_650.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_652 == -1.0f));
  let x_656 : bool = u_xlatb20.x;
  if (x_656) {
    let x_659 : vec3<f32> = vs_TEXCOORD1;
    let x_662 : vec4<f32> = x_650.x_MainLightWorldToLight[1i];
    let x_664 : vec2<f32> = (vec2<f32>(x_659.y, x_659.y) * vec2<f32>(x_662.x, x_662.y));
    let x_665 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_664.x, x_664.y, x_665.z);
    let x_668 : vec4<f32> = x_650.x_MainLightWorldToLight[0i];
    let x_670 : vec3<f32> = vs_TEXCOORD1;
    let x_673 : vec3<f32> = u_xlat20;
    let x_675 : vec2<f32> = ((vec2<f32>(x_668.x, x_668.y) * vec2<f32>(x_670.x, x_670.x)) + vec2<f32>(x_673.x, x_673.y));
    let x_676 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_675.x, x_675.y, x_676.z);
    let x_679 : vec4<f32> = x_650.x_MainLightWorldToLight[2i];
    let x_681 : vec3<f32> = vs_TEXCOORD1;
    let x_684 : vec3<f32> = u_xlat20;
    let x_686 : vec2<f32> = ((vec2<f32>(x_679.x, x_679.y) * vec2<f32>(x_681.z, x_681.z)) + vec2<f32>(x_684.x, x_684.y));
    let x_687 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_686.x, x_686.y, x_687.z);
    let x_689 : vec3<f32> = u_xlat20;
    let x_692 : vec4<f32> = x_650.x_MainLightWorldToLight[3i];
    let x_694 : vec2<f32> = (vec2<f32>(x_689.x, x_689.y) + vec2<f32>(x_692.x, x_692.y));
    let x_695 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_694.x, x_694.y, x_695.z);
    let x_697 : vec3<f32> = u_xlat20;
    let x_702 : vec2<f32> = ((vec2<f32>(x_697.x, x_697.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_703 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_702.x, x_702.y, x_703.z);
    let x_710 : vec3<f32> = u_xlat20;
    let x_713 : f32 = x_45.x_GlobalMipBias.x;
    let x_714 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_710.x, x_710.y), x_713);
    u_xlat7 = x_714;
    let x_716 : f32 = x_650.x_MainLightCookieTextureFormat;
    let x_718 : f32 = x_650.x_MainLightCookieTextureFormat;
    let x_720 : f32 = x_650.x_MainLightCookieTextureFormat;
    let x_722 : f32 = x_650.x_MainLightCookieTextureFormat;
    let x_723 : vec4<f32> = vec4<f32>(x_716, x_718, x_720, x_722);
    let x_731 : vec4<bool> = (vec4<f32>(x_723.x, x_723.y, x_723.z, x_723.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_731.x, x_731.y);
    let x_734 : bool = u_xlatb20.y;
    if (x_734) {
      let x_739 : f32 = u_xlat7.w;
      x_735 = x_739;
    } else {
      let x_742 : f32 = u_xlat7.x;
      x_735 = x_742;
    }
    let x_743 : f32 = x_735;
    u_xlat34 = x_743;
    let x_745 : bool = u_xlatb20.x;
    if (x_745) {
      let x_749 : vec4<f32> = u_xlat7;
      x_746 = vec3<f32>(x_749.x, x_749.y, x_749.z);
    } else {
      let x_752 : f32 = u_xlat34;
      x_746 = vec3<f32>(x_752, x_752, x_752);
    }
    let x_754 : vec3<f32> = x_746;
    u_xlat20 = x_754;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_759 : vec3<f32> = u_xlat20;
  let x_761 : vec4<f32> = x_45.x_MainLightColor;
  u_xlat20 = (x_759 * vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec3<f32> = u_xlat17;
  let x_766 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_764), vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_771 : f32 = u_xlat7.x;
  let x_773 : f32 = u_xlat7.x;
  u_xlat7.x = (x_771 + x_773);
  let x_776 : vec4<f32> = u_xlat4;
  let x_778 : vec4<f32> = u_xlat7;
  let x_782 : vec3<f32> = u_xlat17;
  let x_784 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.y, x_776.z) * -(vec3<f32>(x_778.x, x_778.x, x_778.x))) + -(x_782));
  let x_785 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  let x_788 : vec4<f32> = u_xlat4;
  let x_790 : vec3<f32> = u_xlat17;
  u_xlat49 = dot(vec3<f32>(x_788.x, x_788.y, x_788.z), x_790);
  let x_792 : f32 = u_xlat49;
  u_xlat49 = clamp(x_792, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat49;
  u_xlat49 = (-(x_794) + 1.0f);
  let x_797 : f32 = u_xlat49;
  let x_798 : f32 = u_xlat49;
  u_xlat49 = (x_797 * x_798);
  let x_800 : f32 = u_xlat49;
  let x_801 : f32 = u_xlat49;
  u_xlat49 = (x_800 * x_801);
  let x_805 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_805) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_813 : f32 = u_xlat1.x;
  let x_815 : f32 = u_xlat8.x;
  u_xlat1.x = (x_813 * x_815);
  let x_819 : f32 = u_xlat1.x;
  u_xlat1.x = (x_819 * 6.0f);
  let x_831 : vec4<f32> = u_xlat7;
  let x_834 : f32 = u_xlat1.x;
  let x_835 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_831.x, x_831.y, x_831.z), x_834);
  u_xlat8 = x_835;
  let x_837 : f32 = u_xlat8.w;
  u_xlat1.x = (x_837 + -1.0f);
  let x_841 : f32 = x_187.unity_SpecCube0_HDR.w;
  let x_843 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_841 * x_843) + 1.0f);
  let x_848 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_848, 0.0f);
  let x_852 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_852);
  let x_856 : f32 = u_xlat1.x;
  let x_858 : f32 = x_187.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_856 * x_858);
  let x_862 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_862);
  let x_866 : f32 = u_xlat1.x;
  let x_868 : f32 = x_187.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_866 * x_868);
  let x_871 : vec4<f32> = u_xlat8;
  let x_873 : vec3<f32> = u_xlat1;
  let x_875 : vec3<f32> = (vec3<f32>(x_871.x, x_871.y, x_871.z) * vec3<f32>(x_873.x, x_873.x, x_873.x));
  let x_876 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec2<f32> = u_xlat29;
  let x_880 : vec2<f32> = u_xlat29;
  let x_884 : vec2<f32> = ((vec2<f32>(x_878.x, x_878.x) * vec2<f32>(x_880.x, x_880.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_885 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_884.x, x_885.y, x_884.y);
  let x_888 : f32 = u_xlat1.z;
  u_xlat29.x = (1.0f / x_888);
  let x_891 : vec4<f32> = u_xlat0;
  let x_894 : vec2<f32> = u_xlat15;
  let x_896 : vec3<f32> = (-(vec3<f32>(x_891.x, x_891.y, x_891.z)) + vec3<f32>(x_894.x, x_894.x, x_894.x));
  let x_897 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : f32 = u_xlat49;
  let x_901 : vec4<f32> = u_xlat8;
  let x_904 : vec4<f32> = u_xlat0;
  let x_906 : vec3<f32> = ((vec3<f32>(x_899, x_899, x_899) * vec3<f32>(x_901.x, x_901.y, x_901.z)) + vec3<f32>(x_904.x, x_904.y, x_904.z));
  let x_907 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec2<f32> = u_xlat29;
  let x_911 : vec4<f32> = u_xlat8;
  let x_913 : vec3<f32> = (vec3<f32>(x_909.x, x_909.x, x_909.x) * vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat7;
  let x_918 : vec4<f32> = u_xlat8;
  let x_920 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec3<f32> = u_xlat5;
  let x_924 : vec3<f32> = u_xlat16;
  let x_926 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_923 * x_924) + vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : f32 = u_xlat47;
  let x_931 : f32 = x_187.unity_LightData.z;
  u_xlat15.x = (x_929 * x_931);
  let x_934 : vec4<f32> = u_xlat4;
  let x_937 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat29.x = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_942 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_942, 0.0f, 1.0f);
  let x_946 : f32 = u_xlat29.x;
  let x_948 : f32 = u_xlat15.x;
  u_xlat15.x = (x_946 * x_948);
  let x_951 : vec2<f32> = u_xlat15;
  let x_953 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_951.x, x_951.x, x_951.x) * x_953);
  let x_955 : vec3<f32> = u_xlat17;
  let x_957 : vec4<f32> = x_45.x_MainLightPosition;
  let x_959 : vec3<f32> = (x_955 + vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : vec4<f32> = u_xlat7;
  let x_964 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_962.x, x_962.y, x_962.z), vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_969 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_969, 1.17549435e-38f);
  let x_974 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_974);
  let x_977 : vec2<f32> = u_xlat15;
  let x_979 : vec4<f32> = u_xlat7;
  let x_981 : vec3<f32> = (vec3<f32>(x_977.x, x_977.x, x_977.x) * vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec4<f32> = u_xlat4;
  let x_986 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_984.x, x_984.y, x_984.z), vec3<f32>(x_986.x, x_986.y, x_986.z));
  let x_991 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_991, 0.0f, 1.0f);
  let x_995 : vec4<f32> = x_45.x_MainLightPosition;
  let x_997 : vec4<f32> = u_xlat7;
  u_xlat15.y = dot(vec3<f32>(x_995.x, x_995.y, x_995.z), vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1002 : f32 = u_xlat15.y;
  u_xlat15.y = clamp(x_1002, 0.0f, 1.0f);
  let x_1005 : vec2<f32> = u_xlat15;
  let x_1006 : vec2<f32> = u_xlat15;
  u_xlat15 = (x_1005 * x_1006);
  let x_1009 : f32 = u_xlat15.x;
  let x_1011 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_1009 * x_1011) + 1.00001001358032226562f);
  let x_1017 : f32 = u_xlat15.x;
  let x_1019 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1017 * x_1019);
  let x_1023 : f32 = u_xlat15.y;
  u_xlat29.x = max(x_1023, 0.10000000149011611938f);
  let x_1028 : f32 = u_xlat29.x;
  let x_1030 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1028 * x_1030);
  let x_1033 : f32 = u_xlat43;
  let x_1035 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1033 * x_1035);
  let x_1038 : f32 = u_xlat46;
  let x_1040 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1038 / x_1040);
  let x_1043 : vec4<f32> = u_xlat0;
  let x_1045 : vec2<f32> = u_xlat15;
  let x_1048 : vec3<f32> = u_xlat16;
  let x_1049 : vec3<f32> = ((vec3<f32>(x_1043.x, x_1043.y, x_1043.z) * vec3<f32>(x_1045.x, x_1045.x, x_1045.x)) + x_1048);
  let x_1050 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : vec3<f32> = u_xlat20;
  let x_1053 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1052 * vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
  let x_1057 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_1059 : f32 = x_187.unity_LightData.y;
  u_xlat15.x = min(x_1057, x_1059);
  let x_1065 : f32 = u_xlat15.x;
  u_xlatu15 = bitcast<u32>(i32(x_1065));
  let x_1069 : f32 = u_xlat6.x;
  let x_1072 : f32 = x_577.x_AdditionalShadowFadeParams.x;
  let x_1075 : f32 = x_577.x_AdditionalShadowFadeParams.y;
  u_xlat29.x = ((x_1069 * x_1072) + x_1075);
  let x_1079 : f32 = u_xlat29.x;
  u_xlat29.x = clamp(x_1079, 0.0f, 1.0f);
  let x_1084 : f32 = x_650.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1086 : f32 = x_650.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1088 : f32 = x_650.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1090 : f32 = x_650.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1091 : vec4<f32> = vec4<f32>(x_1084, x_1086, x_1088, x_1090);
  let x_1097 : vec4<bool> = (vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1091.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1097.x, x_1097.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1109 : u32 = u_xlatu_loop_1;
    let x_1110 : u32 = u_xlatu15;
    if ((x_1109 < x_1110)) {
    } else {
      break;
    }
    let x_1113 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_1113 >> 2u);
    let x_1117 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1117 & 3u));
    let x_1120 : u32 = u_xlatu6;
    let x_1123 : vec4<f32> = x_187.unity_LightIndices[bitcast<i32>(x_1120)];
    let x_1133 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1138 : vec4<u32> = indexable[x_1133];
    u_xlat6.x = dot(x_1123, bitcast<vec4<f32>>(x_1138));
    let x_1144 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_1144);
    let x_1147 : vec3<f32> = vs_TEXCOORD1;
    let x_1158 : i32 = u_xlati6;
    let x_1160 : vec4<f32> = x_1157.x_AdditionalLightsPosition[x_1158];
    let x_1163 : i32 = u_xlati6;
    let x_1165 : vec4<f32> = x_1157.x_AdditionalLightsPosition[x_1163];
    u_xlat9 = ((-(x_1147) * vec3<f32>(x_1160.w, x_1160.w, x_1160.w)) + vec3<f32>(x_1165.x, x_1165.y, x_1165.z));
    let x_1169 : vec3<f32> = u_xlat9;
    let x_1170 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1169, x_1170);
    let x_1172 : f32 = u_xlat35;
    u_xlat35 = max(x_1172, 0.00006103515625f);
    let x_1175 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1175);
    let x_1178 : f32 = u_xlat49;
    let x_1180 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1178, x_1178, x_1178) * x_1180);
    let x_1183 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1183);
    let x_1185 : f32 = u_xlat35;
    let x_1186 : i32 = u_xlati6;
    let x_1188 : f32 = x_1157.x_AdditionalLightsAttenuation[x_1186].x;
    u_xlat35 = (x_1185 * x_1188);
    let x_1190 : f32 = u_xlat35;
    let x_1192 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1190) * x_1192) + 1.0f);
    let x_1195 : f32 = u_xlat35;
    u_xlat35 = max(x_1195, 0.0f);
    let x_1197 : f32 = u_xlat35;
    let x_1198 : f32 = u_xlat35;
    u_xlat35 = (x_1197 * x_1198);
    let x_1200 : f32 = u_xlat35;
    let x_1201 : f32 = u_xlat50;
    u_xlat35 = (x_1200 * x_1201);
    let x_1203 : i32 = u_xlati6;
    let x_1205 : vec4<f32> = x_1157.x_AdditionalLightsSpotDir[x_1203];
    let x_1207 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1205.x, x_1205.y, x_1205.z), x_1207);
    let x_1209 : f32 = u_xlat50;
    let x_1210 : i32 = u_xlati6;
    let x_1212 : f32 = x_1157.x_AdditionalLightsAttenuation[x_1210].z;
    let x_1214 : i32 = u_xlati6;
    let x_1216 : f32 = x_1157.x_AdditionalLightsAttenuation[x_1214].w;
    u_xlat50 = ((x_1209 * x_1212) + x_1216);
    let x_1218 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1218, 0.0f, 1.0f);
    let x_1220 : f32 = u_xlat50;
    let x_1221 : f32 = u_xlat50;
    u_xlat50 = (x_1220 * x_1221);
    let x_1223 : f32 = u_xlat35;
    let x_1224 : f32 = u_xlat50;
    u_xlat35 = (x_1223 * x_1224);
    let x_1228 : i32 = u_xlati6;
    let x_1230 : f32 = x_577.x_AdditionalShadowParams[x_1228].w;
    u_xlati50 = i32(x_1230);
    let x_1233 : i32 = u_xlati50;
    u_xlatb51 = (x_1233 >= 0i);
    let x_1235 : bool = u_xlatb51;
    if (x_1235) {
      let x_1239 : i32 = u_xlati6;
      let x_1241 : f32 = x_577.x_AdditionalShadowParams[x_1239].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1241, x_1241, x_1241, x_1241))));
      let x_1245 : bool = u_xlatb51;
      if (x_1245) {
        let x_1250 : vec3<f32> = u_xlat10;
        let x_1253 : vec3<f32> = u_xlat10;
        let x_1256 : vec4<bool> = (abs(vec4<f32>(x_1250.z, x_1250.z, x_1250.y, x_1250.z)) >= abs(vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.x)));
        let x_1258 : vec3<bool> = vec3<bool>(x_1256.x, x_1256.y, x_1256.z);
        let x_1259 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1258.x, x_1258.y, x_1258.z, x_1259.w);
        let x_1262 : bool = u_xlatb11.y;
        let x_1264 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1262 & x_1264);
        let x_1266 : vec3<f32> = u_xlat10;
        let x_1269 : vec4<bool> = (-(vec4<f32>(x_1266.z, x_1266.y, x_1266.z, x_1266.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1270 : vec3<bool> = vec3<bool>(x_1269.x, x_1269.y, x_1269.w);
        let x_1271 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1270.x, x_1270.y, x_1271.z, x_1270.z);
        let x_1275 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1275);
        let x_1280 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1280);
        let x_1286 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1286);
        let x_1289 : bool = u_xlatb11.z;
        if (x_1289) {
          let x_1294 : f32 = u_xlat11.y;
          x_1290 = x_1294;
        } else {
          let x_1296 : f32 = u_xlat52;
          x_1290 = x_1296;
        }
        let x_1297 : f32 = x_1290;
        u_xlat52 = x_1297;
        let x_1299 : bool = u_xlatb51;
        if (x_1299) {
          let x_1304 : f32 = u_xlat11.x;
          x_1300 = x_1304;
        } else {
          let x_1306 : f32 = u_xlat52;
          x_1300 = x_1306;
        }
        let x_1307 : f32 = x_1300;
        u_xlat51 = x_1307;
        let x_1308 : i32 = u_xlati6;
        let x_1310 : f32 = x_577.x_AdditionalShadowParams[x_1308].w;
        u_xlat52 = trunc(x_1310);
        let x_1312 : f32 = u_xlat51;
        let x_1313 : f32 = u_xlat52;
        u_xlat51 = (x_1312 + x_1313);
        let x_1315 : f32 = u_xlat51;
        u_xlati50 = i32(x_1315);
      }
      let x_1317 : i32 = u_xlati50;
      u_xlati50 = (x_1317 << bitcast<u32>(2i));
      let x_1319 : vec3<f32> = vs_TEXCOORD1;
      let x_1322 : i32 = u_xlati50;
      let x_1325 : i32 = u_xlati50;
      let x_1329 : vec4<f32> = x_577.x_AdditionalLightsWorldToShadow[((x_1322 + 1i) / 4i)][((x_1325 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1319.y, x_1319.y, x_1319.y, x_1319.y) * x_1329);
      let x_1331 : i32 = u_xlati50;
      let x_1333 : i32 = u_xlati50;
      let x_1336 : vec4<f32> = x_577.x_AdditionalLightsWorldToShadow[(x_1331 / 4i)][(x_1333 % 4i)];
      let x_1337 : vec3<f32> = vs_TEXCOORD1;
      let x_1340 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1336 * vec4<f32>(x_1337.x, x_1337.x, x_1337.x, x_1337.x)) + x_1340);
      let x_1342 : i32 = u_xlati50;
      let x_1345 : i32 = u_xlati50;
      let x_1349 : vec4<f32> = x_577.x_AdditionalLightsWorldToShadow[((x_1342 + 2i) / 4i)][((x_1345 + 2i) % 4i)];
      let x_1350 : vec3<f32> = vs_TEXCOORD1;
      let x_1353 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1349 * vec4<f32>(x_1350.z, x_1350.z, x_1350.z, x_1350.z)) + x_1353);
      let x_1355 : vec4<f32> = u_xlat11;
      let x_1356 : i32 = u_xlati50;
      let x_1359 : i32 = u_xlati50;
      let x_1363 : vec4<f32> = x_577.x_AdditionalLightsWorldToShadow[((x_1356 + 3i) / 4i)][((x_1359 + 3i) % 4i)];
      u_xlat11 = (x_1355 + x_1363);
      let x_1365 : vec4<f32> = u_xlat11;
      let x_1367 : vec4<f32> = u_xlat11;
      let x_1369 : vec3<f32> = (vec3<f32>(x_1365.x, x_1365.y, x_1365.z) / vec3<f32>(x_1367.w, x_1367.w, x_1367.w));
      let x_1370 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1370.w);
      let x_1373 : vec4<f32> = u_xlat11;
      let x_1374 : vec2<f32> = vec2<f32>(x_1373.x, x_1373.y);
      let x_1376 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
      let x_1384 : vec3<f32> = txVec1;
      let x_1386 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1384.xy, x_1384.z);
      u_xlat50 = x_1386;
      let x_1387 : i32 = u_xlati6;
      let x_1389 : f32 = x_577.x_AdditionalShadowParams[x_1387].x;
      u_xlat51 = (1.0f + -(x_1389));
      let x_1392 : f32 = u_xlat50;
      let x_1393 : i32 = u_xlati6;
      let x_1395 : f32 = x_577.x_AdditionalShadowParams[x_1393].x;
      let x_1397 : f32 = u_xlat51;
      u_xlat50 = ((x_1392 * x_1395) + x_1397);
      let x_1400 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1400);
      let x_1404 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1404 >= 1.0f);
      let x_1406 : bool = u_xlatb51;
      let x_1407 : bool = u_xlatb52;
      u_xlatb51 = (x_1406 | x_1407);
      let x_1409 : bool = u_xlatb51;
      let x_1410 : f32 = u_xlat50;
      u_xlat50 = select(x_1410, 1.0f, x_1409);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1413 : f32 = u_xlat50;
    u_xlat51 = (-(x_1413) + 1.0f);
    let x_1417 : f32 = u_xlat29.x;
    let x_1418 : f32 = u_xlat51;
    let x_1420 : f32 = u_xlat50;
    u_xlat50 = ((x_1417 * x_1418) + x_1420);
    let x_1423 : i32 = u_xlati6;
    u_xlati51 = (1i << bitcast<u32>((x_1423 & 31i)));
    let x_1427 : i32 = u_xlati51;
    let x_1430 : f32 = x_650.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1427) & bitcast<u32>(x_1430)));
    let x_1434 : i32 = u_xlati51;
    if ((x_1434 != 0i)) {
      let x_1438 : i32 = u_xlati6;
      let x_1440 : f32 = x_650.x_AdditionalLightsLightTypes[x_1438].el;
      u_xlati51 = i32(x_1440);
      let x_1443 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1443 != 0i));
      let x_1447 : i32 = u_xlati6;
      u_xlati11 = (x_1447 << bitcast<u32>(2i));
      let x_1449 : i32 = u_xlati52;
      if ((x_1449 != 0i)) {
        let x_1454 : vec3<f32> = vs_TEXCOORD1;
        let x_1456 : i32 = u_xlati11;
        let x_1459 : i32 = u_xlati11;
        let x_1463 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[((x_1456 + 1i) / 4i)][((x_1459 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1454.y, x_1454.y, x_1454.y) * vec3<f32>(x_1463.x, x_1463.y, x_1463.w));
        let x_1466 : i32 = u_xlati11;
        let x_1468 : i32 = u_xlati11;
        let x_1471 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[(x_1466 / 4i)][(x_1468 % 4i)];
        let x_1473 : vec3<f32> = vs_TEXCOORD1;
        let x_1476 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1471.x, x_1471.y, x_1471.w) * vec3<f32>(x_1473.x, x_1473.x, x_1473.x)) + x_1476);
        let x_1478 : i32 = u_xlati11;
        let x_1481 : i32 = u_xlati11;
        let x_1485 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[((x_1478 + 2i) / 4i)][((x_1481 + 2i) % 4i)];
        let x_1487 : vec3<f32> = vs_TEXCOORD1;
        let x_1490 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1485.x, x_1485.y, x_1485.w) * vec3<f32>(x_1487.z, x_1487.z, x_1487.z)) + x_1490);
        let x_1492 : vec3<f32> = u_xlat25;
        let x_1493 : i32 = u_xlati11;
        let x_1496 : i32 = u_xlati11;
        let x_1500 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[((x_1493 + 3i) / 4i)][((x_1496 + 3i) % 4i)];
        u_xlat25 = (x_1492 + vec3<f32>(x_1500.x, x_1500.y, x_1500.w));
        let x_1503 : vec3<f32> = u_xlat25;
        let x_1505 : vec3<f32> = u_xlat25;
        let x_1507 : vec2<f32> = (vec2<f32>(x_1503.x, x_1503.y) / vec2<f32>(x_1505.z, x_1505.z));
        let x_1508 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1507.x, x_1507.y, x_1508.z);
        let x_1510 : vec3<f32> = u_xlat25;
        let x_1513 : vec2<f32> = ((vec2<f32>(x_1510.x, x_1510.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1514 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1513.x, x_1513.y, x_1514.z);
        let x_1516 : vec3<f32> = u_xlat25;
        let x_1520 : vec2<f32> = clamp(vec2<f32>(x_1516.x, x_1516.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1521 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1520.x, x_1520.y, x_1521.z);
        let x_1523 : i32 = u_xlati6;
        let x_1525 : vec4<f32> = x_650.x_AdditionalLightsCookieAtlasUVRects[x_1523];
        let x_1527 : vec3<f32> = u_xlat25;
        let x_1530 : i32 = u_xlati6;
        let x_1532 : vec4<f32> = x_650.x_AdditionalLightsCookieAtlasUVRects[x_1530];
        let x_1534 : vec2<f32> = ((vec2<f32>(x_1525.x, x_1525.y) * vec2<f32>(x_1527.x, x_1527.y)) + vec2<f32>(x_1532.z, x_1532.w));
        let x_1535 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1534.x, x_1534.y, x_1535.z);
      } else {
        let x_1538 : i32 = u_xlati51;
        u_xlatb51 = (x_1538 == 1i);
        let x_1540 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1540);
        let x_1542 : i32 = u_xlati51;
        if ((x_1542 != 0i)) {
          let x_1547 : vec3<f32> = vs_TEXCOORD1;
          let x_1549 : i32 = u_xlati11;
          let x_1552 : i32 = u_xlati11;
          let x_1556 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[((x_1549 + 1i) / 4i)][((x_1552 + 1i) % 4i)];
          let x_1558 : vec2<f32> = (vec2<f32>(x_1547.y, x_1547.y) * vec2<f32>(x_1556.x, x_1556.y));
          let x_1559 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1558.x, x_1558.y, x_1559.z, x_1559.w);
          let x_1561 : i32 = u_xlati11;
          let x_1563 : i32 = u_xlati11;
          let x_1566 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[(x_1561 / 4i)][(x_1563 % 4i)];
          let x_1568 : vec3<f32> = vs_TEXCOORD1;
          let x_1571 : vec4<f32> = u_xlat12;
          let x_1573 : vec2<f32> = ((vec2<f32>(x_1566.x, x_1566.y) * vec2<f32>(x_1568.x, x_1568.x)) + vec2<f32>(x_1571.x, x_1571.y));
          let x_1574 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1573.x, x_1573.y, x_1574.z, x_1574.w);
          let x_1576 : i32 = u_xlati11;
          let x_1579 : i32 = u_xlati11;
          let x_1583 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[((x_1576 + 2i) / 4i)][((x_1579 + 2i) % 4i)];
          let x_1585 : vec3<f32> = vs_TEXCOORD1;
          let x_1588 : vec4<f32> = u_xlat12;
          let x_1590 : vec2<f32> = ((vec2<f32>(x_1583.x, x_1583.y) * vec2<f32>(x_1585.z, x_1585.z)) + vec2<f32>(x_1588.x, x_1588.y));
          let x_1591 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1590.x, x_1590.y, x_1591.z, x_1591.w);
          let x_1593 : vec4<f32> = u_xlat12;
          let x_1595 : i32 = u_xlati11;
          let x_1598 : i32 = u_xlati11;
          let x_1602 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[((x_1595 + 3i) / 4i)][((x_1598 + 3i) % 4i)];
          let x_1604 : vec2<f32> = (vec2<f32>(x_1593.x, x_1593.y) + vec2<f32>(x_1602.x, x_1602.y));
          let x_1605 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1604.x, x_1604.y, x_1605.z, x_1605.w);
          let x_1607 : vec4<f32> = u_xlat12;
          let x_1610 : vec2<f32> = ((vec2<f32>(x_1607.x, x_1607.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1611 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1610.x, x_1610.y, x_1611.z, x_1611.w);
          let x_1613 : vec4<f32> = u_xlat12;
          let x_1615 : vec2<f32> = fract(vec2<f32>(x_1613.x, x_1613.y));
          let x_1616 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1615.x, x_1615.y, x_1616.z, x_1616.w);
          let x_1618 : i32 = u_xlati6;
          let x_1620 : vec4<f32> = x_650.x_AdditionalLightsCookieAtlasUVRects[x_1618];
          let x_1622 : vec4<f32> = u_xlat12;
          let x_1625 : i32 = u_xlati6;
          let x_1627 : vec4<f32> = x_650.x_AdditionalLightsCookieAtlasUVRects[x_1625];
          let x_1629 : vec2<f32> = ((vec2<f32>(x_1620.x, x_1620.y) * vec2<f32>(x_1622.x, x_1622.y)) + vec2<f32>(x_1627.z, x_1627.w));
          let x_1630 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1629.x, x_1629.y, x_1630.z);
        } else {
          let x_1633 : vec3<f32> = vs_TEXCOORD1;
          let x_1635 : i32 = u_xlati11;
          let x_1638 : i32 = u_xlati11;
          let x_1642 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[((x_1635 + 1i) / 4i)][((x_1638 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1633.y, x_1633.y, x_1633.y, x_1633.y) * x_1642);
          let x_1644 : i32 = u_xlati11;
          let x_1646 : i32 = u_xlati11;
          let x_1649 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[(x_1644 / 4i)][(x_1646 % 4i)];
          let x_1650 : vec3<f32> = vs_TEXCOORD1;
          let x_1653 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1649 * vec4<f32>(x_1650.x, x_1650.x, x_1650.x, x_1650.x)) + x_1653);
          let x_1655 : i32 = u_xlati11;
          let x_1658 : i32 = u_xlati11;
          let x_1662 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[((x_1655 + 2i) / 4i)][((x_1658 + 2i) % 4i)];
          let x_1663 : vec3<f32> = vs_TEXCOORD1;
          let x_1666 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1662 * vec4<f32>(x_1663.z, x_1663.z, x_1663.z, x_1663.z)) + x_1666);
          let x_1668 : vec4<f32> = u_xlat12;
          let x_1669 : i32 = u_xlati11;
          let x_1672 : i32 = u_xlati11;
          let x_1676 : vec4<f32> = x_650.x_AdditionalLightsWorldToLights[((x_1669 + 3i) / 4i)][((x_1672 + 3i) % 4i)];
          u_xlat12 = (x_1668 + x_1676);
          let x_1678 : vec4<f32> = u_xlat12;
          let x_1680 : vec4<f32> = u_xlat12;
          let x_1682 : vec3<f32> = (vec3<f32>(x_1678.x, x_1678.y, x_1678.z) / vec3<f32>(x_1680.w, x_1680.w, x_1680.w));
          let x_1683 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);
          let x_1685 : vec4<f32> = u_xlat12;
          let x_1687 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_1685.x, x_1685.y, x_1685.z), vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
          let x_1690 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_1690);
          let x_1692 : f32 = u_xlat51;
          let x_1694 : vec4<f32> = u_xlat12;
          let x_1696 : vec3<f32> = (vec3<f32>(x_1692, x_1692, x_1692) * vec3<f32>(x_1694.x, x_1694.y, x_1694.z));
          let x_1697 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1697.w);
          let x_1699 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_1699.x, x_1699.y, x_1699.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1704 : f32 = u_xlat51;
          u_xlat51 = max(x_1704, 0.00000099999999747524f);
          let x_1707 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_1707);
          let x_1710 : f32 = u_xlat51;
          let x_1712 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1710, x_1710, x_1710) * vec3<f32>(x_1712.z, x_1712.x, x_1712.y));
          let x_1716 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1716);
          let x_1720 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1720, 0.0f, 1.0f);
          let x_1723 : vec3<f32> = u_xlat13;
          let x_1725 : vec4<bool> = (vec4<f32>(x_1723.y, x_1723.y, x_1723.y, x_1723.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1726 : vec2<bool> = vec2<bool>(x_1725.x, x_1725.w);
          let x_1727 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_1726.x, x_1727.y, x_1727.z, x_1726.y);
          let x_1730 : bool = u_xlatb11.x;
          if (x_1730) {
            let x_1735 : f32 = u_xlat13.x;
            x_1731 = x_1735;
          } else {
            let x_1738 : f32 = u_xlat13.x;
            x_1731 = -(x_1738);
          }
          let x_1740 : f32 = x_1731;
          u_xlat11.x = x_1740;
          let x_1743 : bool = u_xlatb11.w;
          if (x_1743) {
            let x_1748 : f32 = u_xlat13.x;
            x_1744 = x_1748;
          } else {
            let x_1751 : f32 = u_xlat13.x;
            x_1744 = -(x_1751);
          }
          let x_1753 : f32 = x_1744;
          u_xlat11.w = x_1753;
          let x_1755 : vec4<f32> = u_xlat12;
          let x_1757 : f32 = u_xlat51;
          let x_1760 : vec4<f32> = u_xlat11;
          let x_1762 : vec2<f32> = ((vec2<f32>(x_1755.x, x_1755.y) * vec2<f32>(x_1757, x_1757)) + vec2<f32>(x_1760.x, x_1760.w));
          let x_1763 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1762.x, x_1763.y, x_1763.z, x_1762.y);
          let x_1765 : vec4<f32> = u_xlat11;
          let x_1768 : vec2<f32> = ((vec2<f32>(x_1765.x, x_1765.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1769 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1768.x, x_1769.y, x_1769.z, x_1768.y);
          let x_1771 : vec4<f32> = u_xlat11;
          let x_1775 : vec2<f32> = clamp(vec2<f32>(x_1771.x, x_1771.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1776 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1775.x, x_1776.y, x_1776.z, x_1775.y);
          let x_1778 : i32 = u_xlati6;
          let x_1780 : vec4<f32> = x_650.x_AdditionalLightsCookieAtlasUVRects[x_1778];
          let x_1782 : vec4<f32> = u_xlat11;
          let x_1785 : i32 = u_xlati6;
          let x_1787 : vec4<f32> = x_650.x_AdditionalLightsCookieAtlasUVRects[x_1785];
          let x_1789 : vec2<f32> = ((vec2<f32>(x_1780.x, x_1780.y) * vec2<f32>(x_1782.x, x_1782.w)) + vec2<f32>(x_1787.z, x_1787.w));
          let x_1790 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1789.x, x_1789.y, x_1790.z);
        }
      }
      let x_1797 : vec3<f32> = u_xlat25;
      let x_1799 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1797.x, x_1797.y), 0.0f);
      u_xlat11 = x_1799;
      let x_1801 : bool = u_xlatb7.y;
      if (x_1801) {
        let x_1806 : f32 = u_xlat11.w;
        x_1802 = x_1806;
      } else {
        let x_1809 : f32 = u_xlat11.x;
        x_1802 = x_1809;
      }
      let x_1810 : f32 = x_1802;
      u_xlat51 = x_1810;
      let x_1812 : bool = u_xlatb7.x;
      if (x_1812) {
        let x_1816 : vec4<f32> = u_xlat11;
        x_1813 = vec3<f32>(x_1816.x, x_1816.y, x_1816.z);
      } else {
        let x_1819 : f32 = u_xlat51;
        x_1813 = vec3<f32>(x_1819, x_1819, x_1819);
      }
      let x_1821 : vec3<f32> = x_1813;
      let x_1822 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1821.x, x_1821.y, x_1821.z, x_1822.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1828 : vec4<f32> = u_xlat11;
    let x_1830 : i32 = u_xlati6;
    let x_1832 : vec4<f32> = x_1157.x_AdditionalLightsColor[x_1830];
    let x_1834 : vec3<f32> = (vec3<f32>(x_1828.x, x_1828.y, x_1828.z) * vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
    let x_1835 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
    let x_1837 : f32 = u_xlat35;
    let x_1838 : f32 = u_xlat50;
    u_xlat6.x = (x_1837 * x_1838);
    let x_1841 : vec4<f32> = u_xlat4;
    let x_1843 : vec3<f32> = u_xlat10;
    u_xlat35 = dot(vec3<f32>(x_1841.x, x_1841.y, x_1841.z), x_1843);
    let x_1845 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1845, 0.0f, 1.0f);
    let x_1848 : f32 = u_xlat6.x;
    let x_1849 : f32 = u_xlat35;
    u_xlat6.x = (x_1848 * x_1849);
    let x_1852 : vec4<f32> = u_xlat6;
    let x_1854 : vec4<f32> = u_xlat11;
    let x_1856 : vec3<f32> = (vec3<f32>(x_1852.x, x_1852.x, x_1852.x) * vec3<f32>(x_1854.x, x_1854.y, x_1854.z));
    let x_1857 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1857.w);
    let x_1859 : vec3<f32> = u_xlat9;
    let x_1860 : f32 = u_xlat49;
    let x_1863 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1859 * vec3<f32>(x_1860, x_1860, x_1860)) + x_1863);
    let x_1865 : vec3<f32> = u_xlat9;
    let x_1866 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(x_1865, x_1866);
    let x_1870 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1870, 1.17549435e-38f);
    let x_1874 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_1874);
    let x_1877 : vec4<f32> = u_xlat6;
    let x_1879 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1877.x, x_1877.x, x_1877.x) * x_1879);
    let x_1881 : vec4<f32> = u_xlat4;
    let x_1883 : vec3<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_1881.x, x_1881.y, x_1881.z), x_1883);
    let x_1887 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1887, 0.0f, 1.0f);
    let x_1890 : vec3<f32> = u_xlat10;
    let x_1891 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1890, x_1891);
    let x_1893 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1893, 0.0f, 1.0f);
    let x_1896 : f32 = u_xlat6.x;
    let x_1898 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1896 * x_1898);
    let x_1902 : f32 = u_xlat6.x;
    let x_1904 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_1902 * x_1904) + 1.00001001358032226562f);
    let x_1908 : f32 = u_xlat35;
    let x_1909 : f32 = u_xlat35;
    u_xlat35 = (x_1908 * x_1909);
    let x_1912 : f32 = u_xlat6.x;
    let x_1914 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1912 * x_1914);
    let x_1917 : f32 = u_xlat35;
    u_xlat35 = max(x_1917, 0.10000000149011611938f);
    let x_1920 : f32 = u_xlat6.x;
    let x_1921 : f32 = u_xlat35;
    u_xlat6.x = (x_1920 * x_1921);
    let x_1924 : f32 = u_xlat43;
    let x_1926 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1924 * x_1926);
    let x_1929 : f32 = u_xlat46;
    let x_1931 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1929 / x_1931);
    let x_1934 : vec4<f32> = u_xlat0;
    let x_1936 : vec4<f32> = u_xlat6;
    let x_1939 : vec3<f32> = u_xlat16;
    u_xlat9 = ((vec3<f32>(x_1934.x, x_1934.y, x_1934.z) * vec3<f32>(x_1936.x, x_1936.x, x_1936.x)) + x_1939);
    let x_1941 : vec3<f32> = u_xlat9;
    let x_1942 : vec4<f32> = u_xlat11;
    let x_1945 : vec4<f32> = u_xlat8;
    let x_1947 : vec3<f32> = ((x_1941 * vec3<f32>(x_1942.x, x_1942.y, x_1942.z)) + vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
    let x_1948 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);

    continuing {
      let x_1950 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1950 + bitcast<u32>(1i));
    }
  }
  let x_1952 : vec3<f32> = u_xlat5;
  let x_1953 : vec3<f32> = u_xlat3;
  let x_1956 : vec3<f32> = u_xlat20;
  let x_1957 : vec3<f32> = ((x_1952 * vec3<f32>(x_1953.x, x_1953.x, x_1953.x)) + x_1956);
  let x_1958 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1957.x, x_1957.y, x_1957.z, x_1958.w);
  let x_1960 : vec4<f32> = u_xlat8;
  let x_1962 : vec4<f32> = u_xlat0;
  let x_1964 : vec3<f32> = (vec3<f32>(x_1960.x, x_1960.y, x_1960.z) + vec3<f32>(x_1962.x, x_1962.y, x_1962.z));
  let x_1965 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1964.x, x_1964.y, x_1964.z, x_1965.w);
  let x_1967 : f32 = u_xlat42;
  let x_1968 : f32 = u_xlat42;
  u_xlat42 = (x_1967 * -(x_1968));
  let x_1971 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1971);
  let x_1973 : vec4<f32> = u_xlat0;
  let x_1976 : vec4<f32> = x_45.unity_FogColor;
  let x_1979 : vec3<f32> = (vec3<f32>(x_1973.x, x_1973.y, x_1973.z) + -(vec3<f32>(x_1976.x, x_1976.y, x_1976.z)));
  let x_1980 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1979.x, x_1979.y, x_1979.z, x_1980.w);
  let x_1984 : f32 = u_xlat42;
  let x_1986 : vec4<f32> = u_xlat0;
  let x_1990 : vec4<f32> = x_45.unity_FogColor;
  let x_1992 : vec3<f32> = ((vec3<f32>(x_1984, x_1984, x_1984) * vec3<f32>(x_1986.x, x_1986.y, x_1986.z)) + vec3<f32>(x_1990.x, x_1990.y, x_1990.z));
  let x_1993 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1997 : f32 = x_72.x_Surface;
  u_xlatb0 = (x_1997 == 1.0f);
  let x_1999 : bool = u_xlatb0;
  if (x_1999) {
    let x_2004 : f32 = u_xlat2.x;
    x_2000 = x_2004;
  } else {
    x_2000 = 1.0f;
  }
  let x_2006 : f32 = x_2000;
  SV_Target0.w = x_2006;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}



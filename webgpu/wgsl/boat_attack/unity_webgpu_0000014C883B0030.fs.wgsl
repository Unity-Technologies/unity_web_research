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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct x_Terrain {
  /* @offset(0) */
  x_NormalScale0 : f32,
  /* @offset(4) */
  x_NormalScale1 : f32,
  /* @offset(8) */
  x_NormalScale2 : f32,
  /* @offset(12) */
  x_NormalScale3 : f32,
  /* @offset(16) */
  x_Metallic0 : f32,
  /* @offset(20) */
  x_Metallic1 : f32,
  /* @offset(24) */
  x_Metallic2 : f32,
  /* @offset(28) */
  x_Metallic3 : f32,
  /* @offset(32) */
  x_Smoothness0 : f32,
  /* @offset(36) */
  x_Smoothness1 : f32,
  /* @offset(40) */
  x_Smoothness2 : f32,
  /* @offset(44) */
  x_Smoothness3 : f32,
  /* @offset(48) */
  x_DiffuseRemapScale0 : vec4<f32>,
  /* @offset(64) */
  x_DiffuseRemapScale1 : vec4<f32>,
  /* @offset(80) */
  x_DiffuseRemapScale2 : vec4<f32>,
  /* @offset(96) */
  x_DiffuseRemapScale3 : vec4<f32>,
  /* @offset(112) */
  x_MaskMapRemapOffset0 : vec4<f32>,
  /* @offset(128) */
  x_MaskMapRemapOffset1 : vec4<f32>,
  /* @offset(144) */
  x_MaskMapRemapOffset2 : vec4<f32>,
  /* @offset(160) */
  x_MaskMapRemapOffset3 : vec4<f32>,
  /* @offset(176) */
  x_MaskMapRemapScale0 : vec4<f32>,
  /* @offset(192) */
  x_MaskMapRemapScale1 : vec4<f32>,
  /* @offset(208) */
  x_MaskMapRemapScale2 : vec4<f32>,
  /* @offset(224) */
  x_MaskMapRemapScale3 : vec4<f32>,
  /* @offset(240) */
  x_Control_ST : vec4<f32>,
  /* @offset(256) */
  x_Control_TexelSize : vec4<f32>,
  /* @offset(272) */
  x_DiffuseHasAlpha0 : f32,
  /* @offset(276) */
  x_DiffuseHasAlpha1 : f32,
  /* @offset(280) */
  x_DiffuseHasAlpha2 : f32,
  /* @offset(284) */
  x_DiffuseHasAlpha3 : f32,
  /* @offset(288) */
  x_LayerHasMask0 : f32,
  /* @offset(292) */
  x_LayerHasMask1 : f32,
  /* @offset(296) */
  x_LayerHasMask2 : f32,
  /* @offset(300) */
  x_LayerHasMask3 : f32,
  /* @offset(304) */
  x_Splat0_ST : vec4<f32>,
  /* @offset(320) */
  x_Splat1_ST : vec4<f32>,
  /* @offset(336) */
  x_Splat2_ST : vec4<f32>,
  /* @offset(352) */
  x_Splat3_ST : vec4<f32>,
  /* @offset(368) */
  x_HeightTransition : f32,
  /* @offset(372) */
  x_NumLayersCount : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_4,
}

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

alias Arr_7 = array<strided_arr, 32u>;

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
  x_AdditionalLightsWorldToLights : Arr_4,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_3,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_7,
}

alias Arr_8 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_8,
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

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(8) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_59 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_Control : texture_2d<f32>;

@group(0) @binding(15) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(16) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat15 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_629 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat46 : f32;

@group(1) @binding(5) var<uniform> x_1018 : LightCookies;

@group(0) @binding(11) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1206 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatu46 : u32;

var<private> u_xlati47 : i32;

var<private> u_xlati46 : i32;

@group(1) @binding(1) var<uniform> x_1495 : AdditionalLights;

var<private> u_xlat47 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(12) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu31 : u32;

var<private> u_xlatb46 : bool;

fn main_1() {
  var x_573 : f32;
  var x_584 : f32;
  var x_595 : f32;
  var txVec0 : vec3<f32>;
  var x_971 : f32;
  var x_1101 : f32;
  var x_1112 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1631 : f32;
  var x_1641 : f32;
  var txVec1 : vec3<f32>;
  var x_2062 : f32;
  var x_2075 : f32;
  var x_2123 : f32;
  var x_2134 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_63 : vec4<f32> = x_59.x_MaskMapRemapScale0;
  let x_70 : vec4<f32> = x_59.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_63.x, x_63.y, x_63.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_70.x, x_70.y, x_70.w));
  let x_77 : vec4<f32> = x_59.x_MaskMapRemapScale1;
  let x_82 : vec4<f32> = x_59.x_MaskMapRemapOffset1;
  let x_84 : vec3<f32> = ((vec3<f32>(x_77.x, x_77.y, x_77.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_82.x, x_82.y, x_82.w));
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_90 : vec4<f32> = x_59.x_MaskMapRemapScale2;
  let x_95 : vec4<f32> = x_59.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_90.x, x_90.y, x_90.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_95.x, x_95.y, x_95.w));
  let x_101 : vec4<f32> = x_59.x_MaskMapRemapScale3;
  let x_106 : vec4<f32> = x_59.x_MaskMapRemapOffset3;
  let x_108 : vec3<f32> = ((vec3<f32>(x_101.x, x_101.w, x_101.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_106.x, x_106.w, x_106.y));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_108.z);
  let x_114 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_118 : vec2<f32> = (vec2<f32>(x_114.z, x_114.w) + vec2<f32>(-1.0f, -1.0f));
  let x_119 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_118.x, x_118.y, x_119.z, x_119.w);
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  let x_123 : vec4<f32> = u_xlat4;
  let x_127 : vec2<f32> = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.y)) + vec2<f32>(0.5f, 0.5f));
  let x_128 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_127.x, x_127.y, x_128.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat4;
  let x_133 : vec4<f32> = x_59.x_Control_TexelSize;
  let x_135 : vec2<f32> = (vec2<f32>(x_130.x, x_130.y) * vec2<f32>(x_133.x, x_133.y));
  let x_136 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_135.x, x_135.y, x_136.z, x_136.w);
  let x_143 : vec4<f32> = u_xlat4;
  let x_146 : f32 = x_29.x_GlobalMipBias.x;
  let x_147 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_143.x, x_143.y), x_146);
  u_xlat4 = x_147;
  let x_149 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_149, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_160 : vec4<f32> = vs_TEXCOORD1;
  let x_163 : f32 = x_29.x_GlobalMipBias.x;
  let x_164 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_160.x, x_160.y), x_163);
  u_xlat5 = x_164;
  let x_170 : vec4<f32> = vs_TEXCOORD1;
  let x_173 : f32 = x_29.x_GlobalMipBias.x;
  let x_174 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_170.z, x_170.w), x_173);
  u_xlat6 = x_174;
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  let x_184 : f32 = x_29.x_GlobalMipBias.x;
  let x_185 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_181.x, x_181.y), x_184);
  u_xlat7 = x_185;
  let x_191 : vec4<f32> = vs_TEXCOORD2;
  let x_194 : f32 = x_29.x_GlobalMipBias.x;
  let x_195 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_191.z, x_191.w), x_194);
  u_xlat8 = x_195;
  let x_199 : f32 = u_xlat5.w;
  u_xlat9.x = x_199;
  let x_202 : f32 = u_xlat6.w;
  u_xlat9.y = x_202;
  let x_206 : f32 = u_xlat7.w;
  u_xlat9.z = x_206;
  let x_210 : f32 = u_xlat8.w;
  u_xlat9.w = x_210;
  let x_213 : vec4<f32> = u_xlat9;
  let x_216 : f32 = x_59.x_Smoothness0;
  let x_219 : f32 = x_59.x_Smoothness1;
  let x_222 : f32 = x_59.x_Smoothness2;
  let x_225 : f32 = x_59.x_Smoothness3;
  u_xlat10 = (x_213 * vec4<f32>(x_216, x_219, x_222, x_225));
  let x_232 : f32 = x_59.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_232);
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_235) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_238 : vec4<f32> = u_xlat9;
  let x_239 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_238 + -(x_239));
  let x_242 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_242 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_246 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_246, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat4;
  let x_254 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_250 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_254);
  let x_257 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_257 + -(x_258));
  let x_263 : f32 = u_xlat12.x;
  let x_266 : f32 = x_59.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_263 * x_266);
  let x_270 : f32 = u_xlat12.y;
  let x_273 : f32 = x_59.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_270 * x_273);
  let x_277 : f32 = u_xlat12.z;
  let x_280 : f32 = x_59.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_277 * x_280);
  let x_284 : f32 = u_xlat12.w;
  let x_287 : f32 = x_59.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_284 * x_287);
  let x_290 : vec4<f32> = u_xlat11;
  let x_291 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_290 + x_291);
  let x_293 : bool = u_xlatb43;
  let x_294 : vec4<f32> = u_xlat11;
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_295, x_294, vec4<bool>(x_293, x_293, x_293, x_293));
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_300, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_304 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_304);
  let x_306 : bool = u_xlatb44;
  if (((select(0i, 1i, x_306) * -1i) != 0i)) {
    discard;
  }
  let x_313 : f32 = u_xlat43;
  u_xlat43 = (x_313 + 0.00006103515625f);
  let x_316 : vec4<f32> = u_xlat4;
  let x_317 : f32 = u_xlat43;
  u_xlat4 = (x_316 / vec4<f32>(x_317, x_317, x_317, x_317));
  let x_320 : vec4<f32> = u_xlat4;
  let x_323 : vec4<f32> = x_59.x_DiffuseRemapScale0;
  let x_325 : vec3<f32> = (vec3<f32>(x_320.x, x_320.x, x_320.x) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat4;
  let x_331 : vec4<f32> = x_59.x_DiffuseRemapScale1;
  let x_333 : vec3<f32> = (vec3<f32>(x_328.y, x_328.y, x_328.y) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat6;
  let x_338 : vec4<f32> = u_xlat12;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = u_xlat11;
  let x_348 : vec4<f32> = u_xlat6;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345.x, x_345.y, x_345.z)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat4;
  let x_356 : vec4<f32> = x_59.x_DiffuseRemapScale2;
  let x_358 : vec3<f32> = (vec3<f32>(x_353.z, x_353.z, x_353.z) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_361 : vec4<f32> = u_xlat7;
  let x_363 : vec4<f32> = u_xlat6;
  let x_366 : vec4<f32> = u_xlat5;
  let x_368 : vec3<f32> = ((vec3<f32>(x_361.x, x_361.y, x_361.z) * vec3<f32>(x_363.x, x_363.y, x_363.z)) + vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_374 : vec4<f32> = x_59.x_DiffuseRemapScale3;
  let x_376 : vec3<f32> = (vec3<f32>(x_371.w, x_371.w, x_371.w) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat8;
  let x_381 : vec4<f32> = u_xlat6;
  let x_384 : vec4<f32> = u_xlat5;
  let x_386 : vec3<f32> = ((vec3<f32>(x_379.x, x_379.y, x_379.z) * vec3<f32>(x_381.x, x_381.y, x_381.z)) + vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
  let x_390 : f32 = x_59.x_MaskMapRemapScale0.y;
  u_xlat6.x = x_390;
  let x_393 : f32 = x_59.x_MaskMapRemapScale1.y;
  u_xlat6.y = x_393;
  let x_396 : f32 = x_59.x_MaskMapRemapScale2.y;
  u_xlat6.z = x_396;
  let x_399 : f32 = x_59.x_MaskMapRemapScale3.y;
  u_xlat6.w = x_399;
  let x_402 : f32 = x_59.x_MaskMapRemapOffset0.y;
  u_xlat7.x = x_402;
  let x_405 : f32 = x_59.x_MaskMapRemapOffset1.y;
  u_xlat7.y = x_405;
  let x_408 : f32 = x_59.x_MaskMapRemapOffset2.y;
  u_xlat7.z = x_408;
  let x_411 : f32 = x_59.x_MaskMapRemapOffset3.y;
  u_xlat7.w = x_411;
  let x_413 : vec4<f32> = u_xlat6;
  let x_414 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_413 + x_414);
  let x_417 : f32 = u_xlat0.z;
  u_xlat7.x = x_417;
  let x_420 : f32 = u_xlat1.z;
  u_xlat7.y = x_420;
  let x_423 : f32 = u_xlat2.z;
  u_xlat7.z = x_423;
  let x_426 : f32 = u_xlat3.y;
  u_xlat7.w = x_426;
  let x_428 : vec4<f32> = u_xlat9;
  let x_431 : f32 = x_59.x_Smoothness0;
  let x_433 : f32 = x_59.x_Smoothness1;
  let x_435 : f32 = x_59.x_Smoothness2;
  let x_437 : f32 = x_59.x_Smoothness3;
  let x_440 : vec4<f32> = u_xlat7;
  u_xlat7 = ((-(x_428) * vec4<f32>(x_431, x_433, x_435, x_437)) + x_440);
  let x_444 : f32 = x_59.x_LayerHasMask0;
  let x_447 : f32 = x_59.x_LayerHasMask1;
  let x_450 : f32 = x_59.x_LayerHasMask2;
  let x_453 : f32 = x_59.x_LayerHasMask3;
  let x_455 : vec4<f32> = u_xlat7;
  let x_457 : vec4<f32> = u_xlat10;
  u_xlat7 = ((vec4<f32>(x_444, x_447, x_450, x_453) * x_455) + x_457);
  let x_460 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_460, x_461);
  let x_464 : f32 = u_xlat0.x;
  u_xlat7.x = x_464;
  let x_467 : f32 = u_xlat1.x;
  u_xlat7.y = x_467;
  let x_470 : f32 = u_xlat2.x;
  u_xlat7.z = x_470;
  let x_473 : f32 = u_xlat3.x;
  u_xlat7.w = x_473;
  let x_475 : vec4<f32> = u_xlat7;
  let x_478 : f32 = x_59.x_Metallic0;
  let x_481 : f32 = x_59.x_Metallic1;
  let x_484 : f32 = x_59.x_Metallic2;
  let x_487 : f32 = x_59.x_Metallic3;
  u_xlat7 = (x_475 + -(vec4<f32>(x_478, x_481, x_484, x_487)));
  let x_492 : f32 = x_59.x_LayerHasMask0;
  let x_494 : f32 = x_59.x_LayerHasMask1;
  let x_496 : f32 = x_59.x_LayerHasMask2;
  let x_498 : f32 = x_59.x_LayerHasMask3;
  let x_500 : vec4<f32> = u_xlat7;
  let x_503 : f32 = x_59.x_Metallic0;
  let x_505 : f32 = x_59.x_Metallic1;
  let x_507 : f32 = x_59.x_Metallic2;
  let x_509 : f32 = x_59.x_Metallic3;
  u_xlat7 = ((vec4<f32>(x_492, x_494, x_496, x_498) * x_500) + vec4<f32>(x_503, x_505, x_507, x_509));
  let x_512 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat7;
  u_xlat0.x = dot(x_512, x_513);
  let x_517 : f32 = u_xlat0.y;
  u_xlat3.x = x_517;
  let x_520 : f32 = u_xlat1.y;
  u_xlat3.y = x_520;
  let x_523 : f32 = u_xlat2.y;
  u_xlat3.z = x_523;
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_525) + x_527);
  let x_530 : f32 = x_59.x_LayerHasMask0;
  let x_532 : f32 = x_59.x_LayerHasMask1;
  let x_534 : f32 = x_59.x_LayerHasMask2;
  let x_536 : f32 = x_59.x_LayerHasMask3;
  let x_538 : vec4<f32> = u_xlat1;
  let x_540 : vec4<f32> = u_xlat6;
  u_xlat1 = ((vec4<f32>(x_530, x_532, x_534, x_536) * x_538) + x_540);
  let x_543 : vec4<f32> = u_xlat4;
  let x_544 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_543, x_544);
  let x_548 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb1 = (x_548 == 0.0f);
  let x_553 : vec3<f32> = vs_TEXCOORD7;
  let x_557 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_553) + x_557);
  let x_559 : vec3<f32> = u_xlat15;
  let x_560 : vec3<f32> = u_xlat15;
  u_xlat2.x = dot(x_559, x_560);
  let x_564 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_564);
  let x_567 : vec3<f32> = u_xlat15;
  let x_568 : vec3<f32> = u_xlat2;
  u_xlat15 = (x_567 * vec3<f32>(x_568.x, x_568.x, x_568.x));
  let x_571 : bool = u_xlatb1;
  if (x_571) {
    let x_577 : f32 = u_xlat15.x;
    x_573 = x_577;
  } else {
    let x_580 : f32 = x_29.unity_MatrixV[0i].z;
    x_573 = x_580;
  }
  let x_581 : f32 = x_573;
  u_xlat2.x = x_581;
  let x_583 : bool = u_xlatb1;
  if (x_583) {
    let x_588 : f32 = u_xlat15.y;
    x_584 = x_588;
  } else {
    let x_591 : f32 = x_29.unity_MatrixV[1i].z;
    x_584 = x_591;
  }
  let x_592 : f32 = x_584;
  u_xlat2.y = x_592;
  let x_594 : bool = u_xlatb1;
  if (x_594) {
    let x_599 : f32 = u_xlat15.z;
    x_595 = x_599;
  } else {
    let x_603 : f32 = x_29.unity_MatrixV[2i].z;
    x_595 = x_603;
  }
  let x_604 : f32 = x_595;
  u_xlat2.z = x_604;
  let x_607 : vec3<f32> = vs_TEXCOORD3;
  let x_608 : vec3<f32> = vs_TEXCOORD3;
  u_xlat1.x = dot(x_607, x_608);
  let x_612 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_612);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec3<f32> = vs_TEXCOORD3;
  let x_618 : vec3<f32> = (vec3<f32>(x_615.x, x_615.x, x_615.x) * x_617);
  let x_619 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec3<f32> = vs_TEXCOORD7;
  let x_631 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres0;
  let x_634 : vec3<f32> = (x_621 + -(vec3<f32>(x_631.x, x_631.y, x_631.z)));
  let x_635 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec3<f32> = vs_TEXCOORD7;
  let x_639 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres1;
  let x_642 : vec3<f32> = (x_637 + -(vec3<f32>(x_639.x, x_639.y, x_639.z)));
  let x_643 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_642.x, x_642.y, x_642.z, x_643.w);
  let x_645 : vec3<f32> = vs_TEXCOORD7;
  let x_648 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres2;
  let x_651 : vec3<f32> = (x_645 + -(vec3<f32>(x_648.x, x_648.y, x_648.z)));
  let x_652 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec3<f32> = vs_TEXCOORD7;
  let x_656 : vec4<f32> = x_629.x_CascadeShadowSplitSpheres3;
  let x_659 : vec3<f32> = (x_654 + -(vec3<f32>(x_656.x, x_656.y, x_656.z)));
  let x_660 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat3;
  let x_664 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_662.x, x_662.y, x_662.z), vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_668 : vec4<f32> = u_xlat4;
  let x_670 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_668.x, x_668.y, x_668.z), vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_674 : vec4<f32> = u_xlat6;
  let x_676 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_674.x, x_674.y, x_674.z), vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_680 : vec4<f32> = u_xlat7;
  let x_682 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_680.x, x_680.y, x_680.z), vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_688 : vec4<f32> = u_xlat3;
  let x_690 : vec4<f32> = x_629.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_688 < x_690);
  let x_693 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_693);
  let x_697 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_697);
  let x_701 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_701);
  let x_705 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_705);
  let x_709 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_709);
  let x_714 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_714);
  let x_718 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_718);
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec4<f32> = u_xlat4;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) + vec3<f32>(x_723.y, x_723.z, x_723.w));
  let x_726 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat3;
  let x_731 : vec3<f32> = max(vec3<f32>(x_728.x, x_728.y, x_728.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_732.x, x_731.x, x_731.y, x_731.z);
  let x_734 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_734, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_739 : f32 = u_xlat43;
  u_xlat43 = (-(x_739) + 4.0f);
  let x_744 : f32 = u_xlat43;
  u_xlatu43 = u32(x_744);
  let x_748 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_748) << bitcast<u32>(2i));
  let x_751 : vec3<f32> = vs_TEXCOORD7;
  let x_753 : i32 = u_xlati43;
  let x_756 : i32 = u_xlati43;
  let x_760 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_753 + 1i) / 4i)][((x_756 + 1i) % 4i)];
  let x_762 : vec3<f32> = (vec3<f32>(x_751.y, x_751.y, x_751.y) * vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_765 : i32 = u_xlati43;
  let x_767 : i32 = u_xlati43;
  let x_770 : vec4<f32> = x_629.x_MainLightWorldToShadow[(x_765 / 4i)][(x_767 % 4i)];
  let x_772 : vec3<f32> = vs_TEXCOORD7;
  let x_775 : vec4<f32> = u_xlat3;
  let x_777 : vec3<f32> = ((vec3<f32>(x_770.x, x_770.y, x_770.z) * vec3<f32>(x_772.x, x_772.x, x_772.x)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : i32 = u_xlati43;
  let x_783 : i32 = u_xlati43;
  let x_787 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_780 + 2i) / 4i)][((x_783 + 2i) % 4i)];
  let x_789 : vec3<f32> = vs_TEXCOORD7;
  let x_792 : vec4<f32> = u_xlat3;
  let x_794 : vec3<f32> = ((vec3<f32>(x_787.x, x_787.y, x_787.z) * vec3<f32>(x_789.z, x_789.z, x_789.z)) + vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat3;
  let x_799 : i32 = u_xlati43;
  let x_802 : i32 = u_xlati43;
  let x_806 : vec4<f32> = x_629.x_MainLightWorldToShadow[((x_799 + 3i) / 4i)][((x_802 + 3i) % 4i)];
  let x_808 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) + vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_816 : vec4<f32> = vs_TEXCOORD0;
  let x_819 : f32 = x_29.x_GlobalMipBias.x;
  let x_820 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_816.z, x_816.w), x_819);
  u_xlat4 = x_820;
  let x_825 : vec4<f32> = vs_TEXCOORD0;
  let x_828 : f32 = x_29.x_GlobalMipBias.x;
  let x_829 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_825.z, x_825.w), x_828);
  let x_830 : vec3<f32> = vec3<f32>(x_829.x, x_829.y, x_829.z);
  let x_831 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_833 : vec4<f32> = u_xlat4;
  let x_837 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_838 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat1;
  let x_842 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_840.x, x_840.y, x_840.z), vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : f32 = u_xlat43;
  u_xlat43 = (x_845 + 0.5f);
  let x_847 : f32 = u_xlat43;
  let x_849 : vec4<f32> = u_xlat6;
  let x_851 : vec3<f32> = (vec3<f32>(x_847, x_847, x_847) * vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_855 : f32 = u_xlat4.w;
  u_xlat43 = max(x_855, 0.00009999999747378752f);
  let x_858 : vec4<f32> = u_xlat4;
  let x_860 : f32 = u_xlat43;
  let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) / vec3<f32>(x_860, x_860, x_860));
  let x_863 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_866 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_866) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_872 : f32 = u_xlat28;
  let x_873 : f32 = u_xlat43;
  u_xlat44 = (x_872 + -(x_873));
  let x_876 : f32 = u_xlat43;
  let x_878 : vec4<f32> = u_xlat5;
  let x_880 : vec3<f32> = (vec3<f32>(x_876, x_876, x_876) * vec3<f32>(x_878.x, x_878.y, x_878.z));
  let x_881 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat5;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_888 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec3<f32> = u_xlat0;
  let x_892 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = ((vec3<f32>(x_890.x, x_890.x, x_890.x) * vec3<f32>(x_892.x, x_892.y, x_892.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_898 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : f32 = u_xlat28;
  u_xlat0.x = (-(x_900) + 1.0f);
  let x_905 : f32 = u_xlat0.x;
  let x_907 : f32 = u_xlat0.x;
  u_xlat28 = (x_905 * x_907);
  let x_909 : f32 = u_xlat28;
  u_xlat28 = max(x_909, 0.0078125f);
  let x_912 : f32 = u_xlat28;
  let x_913 : f32 = u_xlat28;
  u_xlat43 = (x_912 * x_913);
  let x_915 : f32 = u_xlat44;
  u_xlat44 = (x_915 + 1.0f);
  let x_917 : f32 = u_xlat44;
  u_xlat44 = clamp(x_917, 0.0f, 1.0f);
  let x_920 : f32 = u_xlat28;
  u_xlat45 = ((x_920 * 4.0f) + 2.0f);
  let x_923 : f32 = u_xlat14;
  u_xlat14 = min(x_923, 1.0f);
  let x_927 : vec4<f32> = u_xlat3;
  let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
  let x_930 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_928.x, x_928.y, x_930);
  let x_942 : vec3<f32> = txVec0;
  let x_944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_942.xy, x_942.z);
  u_xlat3.x = x_944;
  let x_948 : f32 = x_629.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_948) + 1.0f);
  let x_952 : f32 = u_xlat3.x;
  let x_954 : f32 = x_629.x_MainLightShadowParams.x;
  let x_956 : f32 = u_xlat17;
  u_xlat3.x = ((x_952 * x_954) + x_956);
  let x_961 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_961);
  let x_965 : f32 = u_xlat3.z;
  u_xlatb31 = (x_965 >= 1.0f);
  let x_967 : bool = u_xlatb31;
  let x_968 : bool = u_xlatb17;
  u_xlatb17 = (x_967 | x_968);
  let x_970 : bool = u_xlatb17;
  if (x_970) {
    x_971 = 1.0f;
  } else {
    let x_976 : f32 = u_xlat3.x;
    x_971 = x_976;
  }
  let x_977 : f32 = x_971;
  u_xlat3.x = x_977;
  let x_979 : vec3<f32> = vs_TEXCOORD7;
  let x_981 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_983 : vec3<f32> = (x_979 + -(x_981));
  let x_984 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec4<f32> = u_xlat7;
  let x_988 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_986.x, x_986.y, x_986.z), vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_992 : f32 = u_xlat17;
  let x_994 : f32 = x_629.x_MainLightShadowParams.z;
  let x_997 : f32 = x_629.x_MainLightShadowParams.w;
  u_xlat31 = ((x_992 * x_994) + x_997);
  let x_999 : f32 = u_xlat31;
  u_xlat31 = clamp(x_999, 0.0f, 1.0f);
  let x_1003 : f32 = u_xlat3.x;
  u_xlat46 = (-(x_1003) + 1.0f);
  let x_1006 : f32 = u_xlat31;
  let x_1007 : f32 = u_xlat46;
  let x_1010 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1006 * x_1007) + x_1010);
  let x_1020 : f32 = x_1018.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_1020 == -1.0f));
  let x_1022 : bool = u_xlatb31;
  if (x_1022) {
    let x_1025 : vec3<f32> = vs_TEXCOORD7;
    let x_1028 : vec4<f32> = x_1018.x_MainLightWorldToLight[1i];
    let x_1030 : vec2<f32> = (vec2<f32>(x_1025.y, x_1025.y) * vec2<f32>(x_1028.x, x_1028.y));
    let x_1031 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
    let x_1034 : vec4<f32> = x_1018.x_MainLightWorldToLight[0i];
    let x_1036 : vec3<f32> = vs_TEXCOORD7;
    let x_1039 : vec4<f32> = u_xlat7;
    let x_1041 : vec2<f32> = ((vec2<f32>(x_1034.x, x_1034.y) * vec2<f32>(x_1036.x, x_1036.x)) + vec2<f32>(x_1039.x, x_1039.y));
    let x_1042 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
    let x_1045 : vec4<f32> = x_1018.x_MainLightWorldToLight[2i];
    let x_1047 : vec3<f32> = vs_TEXCOORD7;
    let x_1050 : vec4<f32> = u_xlat7;
    let x_1052 : vec2<f32> = ((vec2<f32>(x_1045.x, x_1045.y) * vec2<f32>(x_1047.z, x_1047.z)) + vec2<f32>(x_1050.x, x_1050.y));
    let x_1053 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1052.x, x_1052.y, x_1053.z, x_1053.w);
    let x_1055 : vec4<f32> = u_xlat7;
    let x_1058 : vec4<f32> = x_1018.x_MainLightWorldToLight[3i];
    let x_1060 : vec2<f32> = (vec2<f32>(x_1055.x, x_1055.y) + vec2<f32>(x_1058.x, x_1058.y));
    let x_1061 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
    let x_1063 : vec4<f32> = u_xlat7;
    let x_1066 : vec2<f32> = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1067 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1066.x, x_1066.y, x_1067.z, x_1067.w);
    let x_1074 : vec4<f32> = u_xlat7;
    let x_1077 : f32 = x_29.x_GlobalMipBias.x;
    let x_1078 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1074.x, x_1074.y), x_1077);
    u_xlat7 = x_1078;
    let x_1083 : f32 = x_1018.x_MainLightCookieTextureFormat;
    let x_1085 : f32 = x_1018.x_MainLightCookieTextureFormat;
    let x_1087 : f32 = x_1018.x_MainLightCookieTextureFormat;
    let x_1089 : f32 = x_1018.x_MainLightCookieTextureFormat;
    let x_1090 : vec4<f32> = vec4<f32>(x_1083, x_1085, x_1087, x_1089);
    let x_1097 : vec4<bool> = (vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1090.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1097.x, x_1097.y);
    let x_1100 : bool = u_xlatb8.y;
    if (x_1100) {
      let x_1105 : f32 = u_xlat7.w;
      x_1101 = x_1105;
    } else {
      let x_1108 : f32 = u_xlat7.x;
      x_1101 = x_1108;
    }
    let x_1109 : f32 = x_1101;
    u_xlat31 = x_1109;
    let x_1111 : bool = u_xlatb8.x;
    if (x_1111) {
      let x_1115 : vec4<f32> = u_xlat7;
      x_1112 = vec3<f32>(x_1115.x, x_1115.y, x_1115.z);
    } else {
      let x_1118 : f32 = u_xlat31;
      x_1112 = vec3<f32>(x_1118, x_1118, x_1118);
    }
    let x_1120 : vec3<f32> = x_1112;
    let x_1121 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1127 : vec4<f32> = u_xlat7;
  let x_1130 : vec4<f32> = x_29.x_MainLightColor;
  let x_1132 : vec3<f32> = (vec3<f32>(x_1127.x, x_1127.y, x_1127.z) * vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
  let x_1133 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : vec3<f32> = u_xlat2;
  let x_1137 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(-(x_1135), vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
  let x_1140 : f32 = u_xlat31;
  let x_1141 : f32 = u_xlat31;
  u_xlat31 = (x_1140 + x_1141);
  let x_1143 : vec4<f32> = u_xlat1;
  let x_1145 : f32 = u_xlat31;
  let x_1149 : vec3<f32> = u_xlat2;
  let x_1151 : vec3<f32> = ((vec3<f32>(x_1143.x, x_1143.y, x_1143.z) * -(vec3<f32>(x_1145, x_1145, x_1145))) + -(x_1149));
  let x_1152 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1154 : vec4<f32> = u_xlat1;
  let x_1156 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_1154.x, x_1154.y, x_1154.z), x_1156);
  let x_1158 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1158, 0.0f, 1.0f);
  let x_1160 : f32 = u_xlat31;
  u_xlat31 = (-(x_1160) + 1.0f);
  let x_1163 : f32 = u_xlat31;
  let x_1164 : f32 = u_xlat31;
  u_xlat31 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat31;
  let x_1167 : f32 = u_xlat31;
  u_xlat31 = (x_1166 * x_1167);
  let x_1170 : f32 = u_xlat0.x;
  u_xlat46 = ((-(x_1170) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1177 : f32 = u_xlat0.x;
  let x_1178 : f32 = u_xlat46;
  u_xlat0.x = (x_1177 * x_1178);
  let x_1182 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1182 * 6.0f);
  let x_1194 : vec4<f32> = u_xlat8;
  let x_1197 : f32 = u_xlat0.x;
  let x_1198 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1194.x, x_1194.y, x_1194.z), x_1197);
  u_xlat8 = x_1198;
  let x_1200 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1200 + -1.0f);
  let x_1208 : f32 = x_1206.unity_SpecCube0_HDR.w;
  let x_1210 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1208 * x_1210) + 1.0f);
  let x_1215 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1215, 0.0f);
  let x_1219 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1219);
  let x_1223 : f32 = u_xlat0.x;
  let x_1225 : f32 = x_1206.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1223 * x_1225);
  let x_1229 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1229);
  let x_1233 : f32 = u_xlat0.x;
  let x_1235 : f32 = x_1206.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1233 * x_1235);
  let x_1238 : vec4<f32> = u_xlat8;
  let x_1240 : vec3<f32> = u_xlat0;
  let x_1242 : vec3<f32> = (vec3<f32>(x_1238.x, x_1238.y, x_1238.z) * vec3<f32>(x_1240.x, x_1240.x, x_1240.x));
  let x_1243 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
  let x_1245 : f32 = u_xlat28;
  let x_1247 : f32 = u_xlat28;
  let x_1251 : vec2<f32> = ((vec2<f32>(x_1245, x_1245) * vec2<f32>(x_1247, x_1247)) + vec2<f32>(-1.0f, 1.0f));
  let x_1252 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1251.x, x_1252.y, x_1251.y);
  let x_1255 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1255);
  let x_1257 : vec4<f32> = u_xlat5;
  let x_1260 : f32 = u_xlat44;
  let x_1262 : vec3<f32> = (-(vec3<f32>(x_1257.x, x_1257.y, x_1257.z)) + vec3<f32>(x_1260, x_1260, x_1260));
  let x_1263 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : f32 = u_xlat31;
  let x_1267 : vec4<f32> = u_xlat9;
  let x_1270 : vec4<f32> = u_xlat5;
  let x_1272 : vec3<f32> = ((vec3<f32>(x_1265, x_1265, x_1265) * vec3<f32>(x_1267.x, x_1267.y, x_1267.z)) + vec3<f32>(x_1270.x, x_1270.y, x_1270.z));
  let x_1273 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
  let x_1275 : f32 = u_xlat28;
  let x_1277 : vec4<f32> = u_xlat9;
  let x_1279 : vec3<f32> = (vec3<f32>(x_1275, x_1275, x_1275) * vec3<f32>(x_1277.x, x_1277.y, x_1277.z));
  let x_1280 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : vec4<f32> = u_xlat8;
  let x_1284 : vec4<f32> = u_xlat9;
  let x_1286 : vec3<f32> = (vec3<f32>(x_1282.x, x_1282.y, x_1282.z) * vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
  let x_1289 : vec4<f32> = u_xlat4;
  let x_1291 : vec4<f32> = u_xlat6;
  let x_1294 : vec4<f32> = u_xlat8;
  let x_1296 : vec3<f32> = ((vec3<f32>(x_1289.x, x_1289.y, x_1289.z) * vec3<f32>(x_1291.x, x_1291.y, x_1291.z)) + vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1297 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
  let x_1300 : f32 = u_xlat3.x;
  let x_1302 : f32 = x_1206.unity_LightData.z;
  u_xlat28 = (x_1300 * x_1302);
  let x_1304 : vec4<f32> = u_xlat1;
  let x_1307 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1304.x, x_1304.y, x_1304.z), vec3<f32>(x_1307.x, x_1307.y, x_1307.z));
  let x_1310 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1310, 0.0f, 1.0f);
  let x_1312 : f32 = u_xlat28;
  let x_1313 : f32 = u_xlat44;
  u_xlat28 = (x_1312 * x_1313);
  let x_1315 : f32 = u_xlat28;
  let x_1317 : vec4<f32> = u_xlat7;
  let x_1319 : vec3<f32> = (vec3<f32>(x_1315, x_1315, x_1315) * vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
  let x_1320 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
  let x_1322 : vec3<f32> = u_xlat2;
  let x_1324 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1326 : vec3<f32> = (x_1322 + vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
  let x_1327 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1329 : vec4<f32> = u_xlat8;
  let x_1331 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1329.x, x_1329.y, x_1329.z), vec3<f32>(x_1331.x, x_1331.y, x_1331.z));
  let x_1334 : f32 = u_xlat28;
  u_xlat28 = max(x_1334, 1.17549435e-38f);
  let x_1337 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1337);
  let x_1339 : f32 = u_xlat28;
  let x_1341 : vec4<f32> = u_xlat8;
  let x_1343 : vec3<f32> = (vec3<f32>(x_1339, x_1339, x_1339) * vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : vec4<f32> = u_xlat1;
  let x_1348 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_1346.x, x_1346.y, x_1346.z), vec3<f32>(x_1348.x, x_1348.y, x_1348.z));
  let x_1351 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1351, 0.0f, 1.0f);
  let x_1354 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1356 : vec4<f32> = u_xlat8;
  u_xlat44 = dot(vec3<f32>(x_1354.x, x_1354.y, x_1354.z), vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
  let x_1359 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1359, 0.0f, 1.0f);
  let x_1361 : f32 = u_xlat28;
  let x_1362 : f32 = u_xlat28;
  u_xlat28 = (x_1361 * x_1362);
  let x_1364 : f32 = u_xlat28;
  let x_1366 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1364 * x_1366) + 1.00001001358032226562f);
  let x_1370 : f32 = u_xlat44;
  let x_1371 : f32 = u_xlat44;
  u_xlat44 = (x_1370 * x_1371);
  let x_1373 : f32 = u_xlat28;
  let x_1374 : f32 = u_xlat28;
  u_xlat28 = (x_1373 * x_1374);
  let x_1376 : f32 = u_xlat44;
  u_xlat44 = max(x_1376, 0.10000000149011611938f);
  let x_1379 : f32 = u_xlat28;
  let x_1380 : f32 = u_xlat44;
  u_xlat28 = (x_1379 * x_1380);
  let x_1382 : f32 = u_xlat45;
  let x_1383 : f32 = u_xlat28;
  u_xlat28 = (x_1382 * x_1383);
  let x_1385 : f32 = u_xlat43;
  let x_1386 : f32 = u_xlat28;
  u_xlat28 = (x_1385 / x_1386);
  let x_1388 : vec4<f32> = u_xlat5;
  let x_1390 : f32 = u_xlat28;
  let x_1393 : vec4<f32> = u_xlat6;
  let x_1395 : vec3<f32> = ((vec3<f32>(x_1388.x, x_1388.y, x_1388.z) * vec3<f32>(x_1390, x_1390, x_1390)) + vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
  let x_1396 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
  let x_1398 : vec4<f32> = u_xlat7;
  let x_1400 : vec4<f32> = u_xlat8;
  let x_1402 : vec3<f32> = (vec3<f32>(x_1398.x, x_1398.y, x_1398.z) * vec3<f32>(x_1400.x, x_1400.y, x_1400.z));
  let x_1403 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
  let x_1406 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1408 : f32 = x_1206.unity_LightData.y;
  u_xlat28 = min(x_1406, x_1408);
  let x_1411 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1411));
  let x_1414 : f32 = u_xlat17;
  let x_1416 : f32 = x_629.x_AdditionalShadowFadeParams.x;
  let x_1419 : f32 = x_629.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1414 * x_1416) + x_1419);
  let x_1421 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1421, 0.0f, 1.0f);
  let x_1424 : f32 = x_1018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1426 : f32 = x_1018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1428 : f32 = x_1018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1430 : f32 = x_1018.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1431 : vec4<f32> = vec4<f32>(x_1424, x_1426, x_1428, x_1430);
  let x_1437 : vec4<bool> = (vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1431.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  let x_1438 : vec2<bool> = vec2<bool>(x_1437.x, x_1437.y);
  let x_1439 : vec4<bool> = u_xlatb3;
  u_xlatb3 = vec4<bool>(x_1438.x, x_1438.y, x_1439.z, x_1439.w);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1451 : u32 = u_xlatu_loop_1;
    let x_1452 : u32 = u_xlatu28;
    if ((x_1451 < x_1452)) {
    } else {
      break;
    }
    let x_1455 : u32 = u_xlatu_loop_1;
    u_xlatu46 = (x_1455 >> 2u);
    let x_1458 : u32 = u_xlatu_loop_1;
    u_xlati47 = bitcast<i32>((x_1458 & 3u));
    let x_1461 : u32 = u_xlatu46;
    let x_1464 : vec4<f32> = x_1206.unity_LightIndices[bitcast<i32>(x_1461)];
    let x_1474 : i32 = u_xlati47;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1479 : vec4<u32> = indexable[x_1474];
    u_xlat46 = dot(x_1464, bitcast<vec4<f32>>(x_1479));
    let x_1483 : f32 = u_xlat46;
    u_xlati46 = i32(x_1483);
    let x_1485 : vec3<f32> = vs_TEXCOORD7;
    let x_1496 : i32 = u_xlati46;
    let x_1498 : vec4<f32> = x_1495.x_AdditionalLightsPosition[x_1496];
    let x_1501 : i32 = u_xlati46;
    let x_1503 : vec4<f32> = x_1495.x_AdditionalLightsPosition[x_1501];
    let x_1505 : vec3<f32> = ((-(x_1485) * vec3<f32>(x_1498.w, x_1498.w, x_1498.w)) + vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
    let x_1506 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
    let x_1509 : vec4<f32> = u_xlat9;
    let x_1511 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1509.x, x_1509.y, x_1509.z), vec3<f32>(x_1511.x, x_1511.y, x_1511.z));
    let x_1514 : f32 = u_xlat47;
    u_xlat47 = max(x_1514, 0.00006103515625f);
    let x_1517 : f32 = u_xlat47;
    u_xlat48 = inverseSqrt(x_1517);
    let x_1519 : f32 = u_xlat48;
    let x_1521 : vec4<f32> = u_xlat9;
    let x_1523 : vec3<f32> = (vec3<f32>(x_1519, x_1519, x_1519) * vec3<f32>(x_1521.x, x_1521.y, x_1521.z));
    let x_1524 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1524.w);
    let x_1527 : f32 = u_xlat47;
    u_xlat49 = (1.0f / x_1527);
    let x_1529 : f32 = u_xlat47;
    let x_1530 : i32 = u_xlati46;
    let x_1532 : f32 = x_1495.x_AdditionalLightsAttenuation[x_1530].x;
    u_xlat47 = (x_1529 * x_1532);
    let x_1534 : f32 = u_xlat47;
    let x_1536 : f32 = u_xlat47;
    u_xlat47 = ((-(x_1534) * x_1536) + 1.0f);
    let x_1539 : f32 = u_xlat47;
    u_xlat47 = max(x_1539, 0.0f);
    let x_1541 : f32 = u_xlat47;
    let x_1542 : f32 = u_xlat47;
    u_xlat47 = (x_1541 * x_1542);
    let x_1544 : f32 = u_xlat47;
    let x_1545 : f32 = u_xlat49;
    u_xlat47 = (x_1544 * x_1545);
    let x_1547 : i32 = u_xlati46;
    let x_1549 : vec4<f32> = x_1495.x_AdditionalLightsSpotDir[x_1547];
    let x_1551 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1549.x, x_1549.y, x_1549.z), vec3<f32>(x_1551.x, x_1551.y, x_1551.z));
    let x_1554 : f32 = u_xlat49;
    let x_1555 : i32 = u_xlati46;
    let x_1557 : f32 = x_1495.x_AdditionalLightsAttenuation[x_1555].z;
    let x_1559 : i32 = u_xlati46;
    let x_1561 : f32 = x_1495.x_AdditionalLightsAttenuation[x_1559].w;
    u_xlat49 = ((x_1554 * x_1557) + x_1561);
    let x_1563 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1563, 0.0f, 1.0f);
    let x_1565 : f32 = u_xlat49;
    let x_1566 : f32 = u_xlat49;
    u_xlat49 = (x_1565 * x_1566);
    let x_1568 : f32 = u_xlat47;
    let x_1569 : f32 = u_xlat49;
    u_xlat47 = (x_1568 * x_1569);
    let x_1572 : i32 = u_xlati46;
    let x_1574 : f32 = x_629.x_AdditionalShadowParams[x_1572].w;
    u_xlati49 = i32(x_1574);
    let x_1577 : i32 = u_xlati49;
    u_xlatb50 = (x_1577 >= 0i);
    let x_1579 : bool = u_xlatb50;
    if (x_1579) {
      let x_1583 : i32 = u_xlati46;
      let x_1585 : f32 = x_629.x_AdditionalShadowParams[x_1583].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1585, x_1585, x_1585, x_1585))));
      let x_1589 : bool = u_xlatb50;
      if (x_1589) {
        let x_1593 : vec4<f32> = u_xlat10;
        let x_1596 : vec4<f32> = u_xlat10;
        let x_1599 : vec4<bool> = (abs(vec4<f32>(x_1593.z, x_1593.z, x_1593.y, x_1593.z)) >= abs(vec4<f32>(x_1596.x, x_1596.y, x_1596.x, x_1596.x)));
        let x_1601 : vec3<bool> = vec3<bool>(x_1599.x, x_1599.y, x_1599.z);
        let x_1602 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1601.x, x_1601.y, x_1601.z, x_1602.w);
        let x_1605 : bool = u_xlatb11.y;
        let x_1607 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1605 & x_1607);
        let x_1609 : vec4<f32> = u_xlat10;
        let x_1612 : vec4<bool> = (-(vec4<f32>(x_1609.z, x_1609.y, x_1609.z, x_1609.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1613 : vec3<bool> = vec3<bool>(x_1612.x, x_1612.y, x_1612.w);
        let x_1614 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1613.x, x_1613.y, x_1614.z, x_1613.z);
        let x_1617 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1617);
        let x_1622 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1622);
        let x_1627 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1627);
        let x_1630 : bool = u_xlatb11.z;
        if (x_1630) {
          let x_1635 : f32 = u_xlat11.y;
          x_1631 = x_1635;
        } else {
          let x_1637 : f32 = u_xlat51;
          x_1631 = x_1637;
        }
        let x_1638 : f32 = x_1631;
        u_xlat51 = x_1638;
        let x_1640 : bool = u_xlatb50;
        if (x_1640) {
          let x_1645 : f32 = u_xlat11.x;
          x_1641 = x_1645;
        } else {
          let x_1647 : f32 = u_xlat51;
          x_1641 = x_1647;
        }
        let x_1648 : f32 = x_1641;
        u_xlat50 = x_1648;
        let x_1649 : i32 = u_xlati46;
        let x_1651 : f32 = x_629.x_AdditionalShadowParams[x_1649].w;
        u_xlat51 = trunc(x_1651);
        let x_1653 : f32 = u_xlat50;
        let x_1654 : f32 = u_xlat51;
        u_xlat50 = (x_1653 + x_1654);
        let x_1656 : f32 = u_xlat50;
        u_xlati49 = i32(x_1656);
      }
      let x_1658 : i32 = u_xlati49;
      u_xlati49 = (x_1658 << bitcast<u32>(2i));
      let x_1660 : vec3<f32> = vs_TEXCOORD7;
      let x_1662 : i32 = u_xlati49;
      let x_1665 : i32 = u_xlati49;
      let x_1669 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1662 + 1i) / 4i)][((x_1665 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1660.y, x_1660.y, x_1660.y, x_1660.y) * x_1669);
      let x_1671 : i32 = u_xlati49;
      let x_1673 : i32 = u_xlati49;
      let x_1676 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[(x_1671 / 4i)][(x_1673 % 4i)];
      let x_1677 : vec3<f32> = vs_TEXCOORD7;
      let x_1680 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1676 * vec4<f32>(x_1677.x, x_1677.x, x_1677.x, x_1677.x)) + x_1680);
      let x_1682 : i32 = u_xlati49;
      let x_1685 : i32 = u_xlati49;
      let x_1689 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1682 + 2i) / 4i)][((x_1685 + 2i) % 4i)];
      let x_1690 : vec3<f32> = vs_TEXCOORD7;
      let x_1693 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1689 * vec4<f32>(x_1690.z, x_1690.z, x_1690.z, x_1690.z)) + x_1693);
      let x_1695 : vec4<f32> = u_xlat11;
      let x_1696 : i32 = u_xlati49;
      let x_1699 : i32 = u_xlati49;
      let x_1703 : vec4<f32> = x_629.x_AdditionalLightsWorldToShadow[((x_1696 + 3i) / 4i)][((x_1699 + 3i) % 4i)];
      u_xlat11 = (x_1695 + x_1703);
      let x_1705 : vec4<f32> = u_xlat11;
      let x_1707 : vec4<f32> = u_xlat11;
      let x_1709 : vec3<f32> = (vec3<f32>(x_1705.x, x_1705.y, x_1705.z) / vec3<f32>(x_1707.w, x_1707.w, x_1707.w));
      let x_1710 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
      let x_1713 : vec4<f32> = u_xlat11;
      let x_1714 : vec2<f32> = vec2<f32>(x_1713.x, x_1713.y);
      let x_1716 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1714.x, x_1714.y, x_1716);
      let x_1724 : vec3<f32> = txVec1;
      let x_1726 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1724.xy, x_1724.z);
      u_xlat49 = x_1726;
      let x_1727 : i32 = u_xlati46;
      let x_1729 : f32 = x_629.x_AdditionalShadowParams[x_1727].x;
      u_xlat50 = (1.0f + -(x_1729));
      let x_1732 : f32 = u_xlat49;
      let x_1733 : i32 = u_xlati46;
      let x_1735 : f32 = x_629.x_AdditionalShadowParams[x_1733].x;
      let x_1737 : f32 = u_xlat50;
      u_xlat49 = ((x_1732 * x_1735) + x_1737);
      let x_1740 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1740);
      let x_1744 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1744 >= 1.0f);
      let x_1746 : bool = u_xlatb50;
      let x_1747 : bool = u_xlatb51;
      u_xlatb50 = (x_1746 | x_1747);
      let x_1749 : bool = u_xlatb50;
      let x_1750 : f32 = u_xlat49;
      u_xlat49 = select(x_1750, 1.0f, x_1749);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1753 : f32 = u_xlat49;
    u_xlat50 = (-(x_1753) + 1.0f);
    let x_1756 : f32 = u_xlat44;
    let x_1757 : f32 = u_xlat50;
    let x_1759 : f32 = u_xlat49;
    u_xlat49 = ((x_1756 * x_1757) + x_1759);
    let x_1762 : i32 = u_xlati46;
    u_xlati50 = (1i << bitcast<u32>((x_1762 & 31i)));
    let x_1765 : i32 = u_xlati50;
    let x_1768 : f32 = x_1018.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1765) & bitcast<u32>(x_1768)));
    let x_1772 : i32 = u_xlati50;
    if ((x_1772 != 0i)) {
      let x_1776 : i32 = u_xlati46;
      let x_1778 : f32 = x_1018.x_AdditionalLightsLightTypes[x_1776].el;
      u_xlati50 = i32(x_1778);
      let x_1781 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1781 != 0i));
      let x_1785 : i32 = u_xlati46;
      u_xlati52 = (x_1785 << bitcast<u32>(2i));
      let x_1787 : i32 = u_xlati51;
      if ((x_1787 != 0i)) {
        let x_1791 : vec3<f32> = vs_TEXCOORD7;
        let x_1793 : i32 = u_xlati52;
        let x_1796 : i32 = u_xlati52;
        let x_1800 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1793 + 1i) / 4i)][((x_1796 + 1i) % 4i)];
        let x_1802 : vec3<f32> = (vec3<f32>(x_1791.y, x_1791.y, x_1791.y) * vec3<f32>(x_1800.x, x_1800.y, x_1800.w));
        let x_1803 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1802.x, x_1802.y, x_1802.z, x_1803.w);
        let x_1805 : i32 = u_xlati52;
        let x_1807 : i32 = u_xlati52;
        let x_1810 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[(x_1805 / 4i)][(x_1807 % 4i)];
        let x_1812 : vec3<f32> = vs_TEXCOORD7;
        let x_1815 : vec4<f32> = u_xlat11;
        let x_1817 : vec3<f32> = ((vec3<f32>(x_1810.x, x_1810.y, x_1810.w) * vec3<f32>(x_1812.x, x_1812.x, x_1812.x)) + vec3<f32>(x_1815.x, x_1815.y, x_1815.z));
        let x_1818 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1817.x, x_1817.y, x_1817.z, x_1818.w);
        let x_1820 : i32 = u_xlati52;
        let x_1823 : i32 = u_xlati52;
        let x_1827 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1820 + 2i) / 4i)][((x_1823 + 2i) % 4i)];
        let x_1829 : vec3<f32> = vs_TEXCOORD7;
        let x_1832 : vec4<f32> = u_xlat11;
        let x_1834 : vec3<f32> = ((vec3<f32>(x_1827.x, x_1827.y, x_1827.w) * vec3<f32>(x_1829.z, x_1829.z, x_1829.z)) + vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
        let x_1835 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
        let x_1837 : vec4<f32> = u_xlat11;
        let x_1839 : i32 = u_xlati52;
        let x_1842 : i32 = u_xlati52;
        let x_1846 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1839 + 3i) / 4i)][((x_1842 + 3i) % 4i)];
        let x_1848 : vec3<f32> = (vec3<f32>(x_1837.x, x_1837.y, x_1837.z) + vec3<f32>(x_1846.x, x_1846.y, x_1846.w));
        let x_1849 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
        let x_1851 : vec4<f32> = u_xlat11;
        let x_1853 : vec4<f32> = u_xlat11;
        let x_1855 : vec2<f32> = (vec2<f32>(x_1851.x, x_1851.y) / vec2<f32>(x_1853.z, x_1853.z));
        let x_1856 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1855.x, x_1855.y, x_1856.z, x_1856.w);
        let x_1858 : vec4<f32> = u_xlat11;
        let x_1861 : vec2<f32> = ((vec2<f32>(x_1858.x, x_1858.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1861.x, x_1861.y, x_1862.z, x_1862.w);
        let x_1864 : vec4<f32> = u_xlat11;
        let x_1868 : vec2<f32> = clamp(vec2<f32>(x_1864.x, x_1864.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1869 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1868.x, x_1868.y, x_1869.z, x_1869.w);
        let x_1871 : i32 = u_xlati46;
        let x_1873 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_1871];
        let x_1875 : vec4<f32> = u_xlat11;
        let x_1878 : i32 = u_xlati46;
        let x_1880 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_1878];
        let x_1882 : vec2<f32> = ((vec2<f32>(x_1873.x, x_1873.y) * vec2<f32>(x_1875.x, x_1875.y)) + vec2<f32>(x_1880.z, x_1880.w));
        let x_1883 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1882.x, x_1882.y, x_1883.z, x_1883.w);
      } else {
        let x_1886 : i32 = u_xlati50;
        u_xlatb50 = (x_1886 == 1i);
        let x_1888 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1888);
        let x_1890 : i32 = u_xlati50;
        if ((x_1890 != 0i)) {
          let x_1896 : vec3<f32> = vs_TEXCOORD7;
          let x_1898 : i32 = u_xlati52;
          let x_1901 : i32 = u_xlati52;
          let x_1905 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1898 + 1i) / 4i)][((x_1901 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1896.y, x_1896.y) * vec2<f32>(x_1905.x, x_1905.y));
          let x_1908 : i32 = u_xlati52;
          let x_1910 : i32 = u_xlati52;
          let x_1913 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[(x_1908 / 4i)][(x_1910 % 4i)];
          let x_1915 : vec3<f32> = vs_TEXCOORD7;
          let x_1918 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1913.x, x_1913.y) * vec2<f32>(x_1915.x, x_1915.x)) + x_1918);
          let x_1920 : i32 = u_xlati52;
          let x_1923 : i32 = u_xlati52;
          let x_1927 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1920 + 2i) / 4i)][((x_1923 + 2i) % 4i)];
          let x_1929 : vec3<f32> = vs_TEXCOORD7;
          let x_1932 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1927.x, x_1927.y) * vec2<f32>(x_1929.z, x_1929.z)) + x_1932);
          let x_1934 : vec2<f32> = u_xlat39;
          let x_1935 : i32 = u_xlati52;
          let x_1938 : i32 = u_xlati52;
          let x_1942 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1935 + 3i) / 4i)][((x_1938 + 3i) % 4i)];
          u_xlat39 = (x_1934 + vec2<f32>(x_1942.x, x_1942.y));
          let x_1945 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1945 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1948 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1948);
          let x_1950 : i32 = u_xlati46;
          let x_1952 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_1950];
          let x_1954 : vec2<f32> = u_xlat39;
          let x_1956 : i32 = u_xlati46;
          let x_1958 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_1956];
          let x_1960 : vec2<f32> = ((vec2<f32>(x_1952.x, x_1952.y) * x_1954) + vec2<f32>(x_1958.z, x_1958.w));
          let x_1961 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1960.x, x_1960.y, x_1961.z, x_1961.w);
        } else {
          let x_1964 : vec3<f32> = vs_TEXCOORD7;
          let x_1966 : i32 = u_xlati52;
          let x_1969 : i32 = u_xlati52;
          let x_1973 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1966 + 1i) / 4i)][((x_1969 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1964.y, x_1964.y, x_1964.y, x_1964.y) * x_1973);
          let x_1975 : i32 = u_xlati52;
          let x_1977 : i32 = u_xlati52;
          let x_1980 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[(x_1975 / 4i)][(x_1977 % 4i)];
          let x_1981 : vec3<f32> = vs_TEXCOORD7;
          let x_1984 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1980 * vec4<f32>(x_1981.x, x_1981.x, x_1981.x, x_1981.x)) + x_1984);
          let x_1986 : i32 = u_xlati52;
          let x_1989 : i32 = u_xlati52;
          let x_1993 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_1986 + 2i) / 4i)][((x_1989 + 2i) % 4i)];
          let x_1994 : vec3<f32> = vs_TEXCOORD7;
          let x_1997 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1993 * vec4<f32>(x_1994.z, x_1994.z, x_1994.z, x_1994.z)) + x_1997);
          let x_1999 : vec4<f32> = u_xlat12;
          let x_2000 : i32 = u_xlati52;
          let x_2003 : i32 = u_xlati52;
          let x_2007 : vec4<f32> = x_1018.x_AdditionalLightsWorldToLights[((x_2000 + 3i) / 4i)][((x_2003 + 3i) % 4i)];
          u_xlat12 = (x_1999 + x_2007);
          let x_2009 : vec4<f32> = u_xlat12;
          let x_2011 : vec4<f32> = u_xlat12;
          let x_2013 : vec3<f32> = (vec3<f32>(x_2009.x, x_2009.y, x_2009.z) / vec3<f32>(x_2011.w, x_2011.w, x_2011.w));
          let x_2014 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
          let x_2016 : vec4<f32> = u_xlat12;
          let x_2018 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2016.x, x_2016.y, x_2016.z), vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
          let x_2021 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2021);
          let x_2023 : f32 = u_xlat50;
          let x_2025 : vec4<f32> = u_xlat12;
          let x_2027 : vec3<f32> = (vec3<f32>(x_2023, x_2023, x_2023) * vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
          let x_2028 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
          let x_2030 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2030.x, x_2030.y, x_2030.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2035 : f32 = u_xlat50;
          u_xlat50 = max(x_2035, 0.00000099999999747524f);
          let x_2038 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2038);
          let x_2040 : f32 = u_xlat50;
          let x_2042 : vec4<f32> = u_xlat12;
          let x_2044 : vec3<f32> = (vec3<f32>(x_2040, x_2040, x_2040) * vec3<f32>(x_2042.z, x_2042.x, x_2042.y));
          let x_2045 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2044.x, x_2044.y, x_2044.z, x_2045.w);
          let x_2048 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2048);
          let x_2052 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2052, 0.0f, 1.0f);
          let x_2056 : vec4<f32> = u_xlat13;
          let x_2058 : vec4<bool> = (vec4<f32>(x_2056.y, x_2056.z, x_2056.y, x_2056.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2058.x, x_2058.y);
          let x_2061 : bool = u_xlatb39.x;
          if (x_2061) {
            let x_2066 : f32 = u_xlat13.x;
            x_2062 = x_2066;
          } else {
            let x_2069 : f32 = u_xlat13.x;
            x_2062 = -(x_2069);
          }
          let x_2071 : f32 = x_2062;
          u_xlat39.x = x_2071;
          let x_2074 : bool = u_xlatb39.y;
          if (x_2074) {
            let x_2079 : f32 = u_xlat13.x;
            x_2075 = x_2079;
          } else {
            let x_2082 : f32 = u_xlat13.x;
            x_2075 = -(x_2082);
          }
          let x_2084 : f32 = x_2075;
          u_xlat39.y = x_2084;
          let x_2086 : vec4<f32> = u_xlat12;
          let x_2088 : f32 = u_xlat50;
          let x_2091 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2086.x, x_2086.y) * vec2<f32>(x_2088, x_2088)) + x_2091);
          let x_2093 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2093 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2096 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2096, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2100 : i32 = u_xlati46;
          let x_2102 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_2100];
          let x_2104 : vec2<f32> = u_xlat39;
          let x_2106 : i32 = u_xlati46;
          let x_2108 : vec4<f32> = x_1018.x_AdditionalLightsCookieAtlasUVRects[x_2106];
          let x_2110 : vec2<f32> = ((vec2<f32>(x_2102.x, x_2102.y) * x_2104) + vec2<f32>(x_2108.z, x_2108.w));
          let x_2111 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2110.x, x_2110.y, x_2111.z, x_2111.w);
        }
      }
      let x_2118 : vec4<f32> = u_xlat11;
      let x_2120 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2118.x, x_2118.y), 0.0f);
      u_xlat11 = x_2120;
      let x_2122 : bool = u_xlatb3.y;
      if (x_2122) {
        let x_2127 : f32 = u_xlat11.w;
        x_2123 = x_2127;
      } else {
        let x_2130 : f32 = u_xlat11.x;
        x_2123 = x_2130;
      }
      let x_2131 : f32 = x_2123;
      u_xlat50 = x_2131;
      let x_2133 : bool = u_xlatb3.x;
      if (x_2133) {
        let x_2137 : vec4<f32> = u_xlat11;
        x_2134 = vec3<f32>(x_2137.x, x_2137.y, x_2137.z);
      } else {
        let x_2140 : f32 = u_xlat50;
        x_2134 = vec3<f32>(x_2140, x_2140, x_2140);
      }
      let x_2142 : vec3<f32> = x_2134;
      let x_2143 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2142.x, x_2142.y, x_2142.z, x_2143.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2149 : vec4<f32> = u_xlat11;
    let x_2151 : i32 = u_xlati46;
    let x_2153 : vec4<f32> = x_1495.x_AdditionalLightsColor[x_2151];
    let x_2155 : vec3<f32> = (vec3<f32>(x_2149.x, x_2149.y, x_2149.z) * vec3<f32>(x_2153.x, x_2153.y, x_2153.z));
    let x_2156 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2155.x, x_2155.y, x_2155.z, x_2156.w);
    let x_2158 : f32 = u_xlat47;
    let x_2159 : f32 = u_xlat49;
    u_xlat46 = (x_2158 * x_2159);
    let x_2161 : vec4<f32> = u_xlat1;
    let x_2163 : vec4<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_2161.x, x_2161.y, x_2161.z), vec3<f32>(x_2163.x, x_2163.y, x_2163.z));
    let x_2166 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2166, 0.0f, 1.0f);
    let x_2168 : f32 = u_xlat46;
    let x_2169 : f32 = u_xlat47;
    u_xlat46 = (x_2168 * x_2169);
    let x_2171 : f32 = u_xlat46;
    let x_2173 : vec4<f32> = u_xlat11;
    let x_2175 : vec3<f32> = (vec3<f32>(x_2171, x_2171, x_2171) * vec3<f32>(x_2173.x, x_2173.y, x_2173.z));
    let x_2176 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2175.x, x_2175.y, x_2175.z, x_2176.w);
    let x_2178 : vec4<f32> = u_xlat9;
    let x_2180 : f32 = u_xlat48;
    let x_2183 : vec3<f32> = u_xlat2;
    let x_2184 : vec3<f32> = ((vec3<f32>(x_2178.x, x_2178.y, x_2178.z) * vec3<f32>(x_2180, x_2180, x_2180)) + x_2183);
    let x_2185 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2184.x, x_2184.y, x_2184.z, x_2185.w);
    let x_2187 : vec4<f32> = u_xlat9;
    let x_2189 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2187.x, x_2187.y, x_2187.z), vec3<f32>(x_2189.x, x_2189.y, x_2189.z));
    let x_2192 : f32 = u_xlat46;
    u_xlat46 = max(x_2192, 1.17549435e-38f);
    let x_2194 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_2194);
    let x_2196 : f32 = u_xlat46;
    let x_2198 : vec4<f32> = u_xlat9;
    let x_2200 : vec3<f32> = (vec3<f32>(x_2196, x_2196, x_2196) * vec3<f32>(x_2198.x, x_2198.y, x_2198.z));
    let x_2201 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2200.x, x_2200.y, x_2200.z, x_2201.w);
    let x_2203 : vec4<f32> = u_xlat1;
    let x_2205 : vec4<f32> = u_xlat9;
    u_xlat46 = dot(vec3<f32>(x_2203.x, x_2203.y, x_2203.z), vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
    let x_2208 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2208, 0.0f, 1.0f);
    let x_2210 : vec4<f32> = u_xlat10;
    let x_2212 : vec4<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_2210.x, x_2210.y, x_2210.z), vec3<f32>(x_2212.x, x_2212.y, x_2212.z));
    let x_2215 : f32 = u_xlat47;
    u_xlat47 = clamp(x_2215, 0.0f, 1.0f);
    let x_2217 : f32 = u_xlat46;
    let x_2218 : f32 = u_xlat46;
    u_xlat46 = (x_2217 * x_2218);
    let x_2220 : f32 = u_xlat46;
    let x_2222 : f32 = u_xlat0.x;
    u_xlat46 = ((x_2220 * x_2222) + 1.00001001358032226562f);
    let x_2225 : f32 = u_xlat47;
    let x_2226 : f32 = u_xlat47;
    u_xlat47 = (x_2225 * x_2226);
    let x_2228 : f32 = u_xlat46;
    let x_2229 : f32 = u_xlat46;
    u_xlat46 = (x_2228 * x_2229);
    let x_2231 : f32 = u_xlat47;
    u_xlat47 = max(x_2231, 0.10000000149011611938f);
    let x_2233 : f32 = u_xlat46;
    let x_2234 : f32 = u_xlat47;
    u_xlat46 = (x_2233 * x_2234);
    let x_2236 : f32 = u_xlat45;
    let x_2237 : f32 = u_xlat46;
    u_xlat46 = (x_2236 * x_2237);
    let x_2239 : f32 = u_xlat43;
    let x_2240 : f32 = u_xlat46;
    u_xlat46 = (x_2239 / x_2240);
    let x_2242 : vec4<f32> = u_xlat5;
    let x_2244 : f32 = u_xlat46;
    let x_2247 : vec4<f32> = u_xlat6;
    let x_2249 : vec3<f32> = ((vec3<f32>(x_2242.x, x_2242.y, x_2242.z) * vec3<f32>(x_2244, x_2244, x_2244)) + vec3<f32>(x_2247.x, x_2247.y, x_2247.z));
    let x_2250 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2249.x, x_2249.y, x_2249.z, x_2250.w);
    let x_2252 : vec4<f32> = u_xlat9;
    let x_2254 : vec4<f32> = u_xlat11;
    let x_2257 : vec4<f32> = u_xlat8;
    let x_2259 : vec3<f32> = ((vec3<f32>(x_2252.x, x_2252.y, x_2252.z) * vec3<f32>(x_2254.x, x_2254.y, x_2254.z)) + vec3<f32>(x_2257.x, x_2257.y, x_2257.z));
    let x_2260 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2259.x, x_2259.y, x_2259.z, x_2260.w);

    continuing {
      let x_2262 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2262 + bitcast<u32>(1i));
    }
  }
  let x_2264 : vec4<f32> = u_xlat4;
  let x_2266 : f32 = u_xlat14;
  let x_2269 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_2264.x, x_2264.y, x_2264.z) * vec3<f32>(x_2266, x_2266, x_2266)) + vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
  let x_2272 : vec4<f32> = u_xlat8;
  let x_2274 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2272.x, x_2272.y, x_2272.z) + x_2274);
  let x_2278 : f32 = u_xlat42;
  let x_2280 : vec3<f32> = u_xlat0;
  let x_2281 : vec3<f32> = (vec3<f32>(x_2278, x_2278, x_2278) * x_2280);
  let x_2282 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



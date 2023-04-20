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
  /* @offset(384) */
  x_TerrainHeightmapRecipSize : vec4<f32>,
  /* @offset(400) */
  x_TerrainHeightmapScale : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(10) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_58 : x_Terrain;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var x_Control : texture_2d<f32>;

@group(0) @binding(16) var sampler_Control : sampler;

var<private> u_xlat42 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_Splat0 : texture_2d<f32>;

@group(0) @binding(17) var sampler_Splat0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(3) var x_Splat1 : texture_2d<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(4) var x_Splat2 : texture_2d<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(5) var x_Splat3 : texture_2d<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlatb43 : bool;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlatb44 : bool;

@group(0) @binding(6) var x_Normal0 : texture_2d<f32>;

@group(0) @binding(18) var sampler_Normal0 : sampler;

@group(0) @binding(7) var x_Normal1 : texture_2d<f32>;

@group(0) @binding(8) var x_Normal2 : texture_2d<f32>;

@group(0) @binding(9) var x_Normal3 : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_860 : UnityPerDraw;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat46 : f32;

@group(0) @binding(11) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(21) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1018 : LightShadows;

var<private> u_xlatb5 : bool;

var<private> u_xlatb19 : vec2<bool>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlat33 : f32;

@group(1) @binding(5) var<uniform> x_1094 : LightCookies;

@group(0) @binding(13) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(22) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(15) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu5 : u32;

var<private> u_xlati48 : i32;

var<private> u_xlati5 : i32;

@group(1) @binding(1) var<uniform> x_1571 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlati49 : i32;

var<private> u_xlatb50 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat51 : f32;

var<private> u_xlat50 : f32;

@group(0) @binding(12) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb51 : bool;

var<private> u_xlati50 : i32;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlatb39 : vec2<bool>;

@group(0) @binding(14) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu46 : u32;

fn main_1() {
  var txVec0 : vec3<f32>;
  var x_1177 : f32;
  var x_1188 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1707 : f32;
  var x_1717 : f32;
  var txVec1 : vec3<f32>;
  var x_2138 : f32;
  var x_2151 : f32;
  var x_2199 : f32;
  var x_2210 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_24.x, x_24.y), x_35);
  u_xlat0.x = x_36.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlatb0 = (x_44 == 0.0f);
  let x_47 : bool = u_xlatb0;
  if (((select(0i, 1i, x_47) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = x_58.x_MaskMapRemapScale0;
  let x_69 : vec4<f32> = x_58.x_MaskMapRemapOffset0;
  u_xlat0 = ((vec3<f32>(x_62.x, x_62.y, x_62.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_69.x, x_69.y, x_69.w));
  let x_76 : vec4<f32> = x_58.x_MaskMapRemapScale1;
  let x_81 : vec4<f32> = x_58.x_MaskMapRemapOffset1;
  let x_83 : vec3<f32> = ((vec3<f32>(x_76.x, x_76.y, x_76.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_81.x, x_81.y, x_81.w));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_89 : vec4<f32> = x_58.x_MaskMapRemapScale2;
  let x_94 : vec4<f32> = x_58.x_MaskMapRemapOffset2;
  u_xlat2 = ((vec3<f32>(x_89.x, x_89.y, x_89.w) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_94.x, x_94.y, x_94.w));
  let x_100 : vec4<f32> = x_58.x_MaskMapRemapScale3;
  let x_105 : vec4<f32> = x_58.x_MaskMapRemapOffset3;
  let x_107 : vec3<f32> = ((vec3<f32>(x_100.x, x_100.w, x_100.y) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_105.x, x_105.w, x_105.y));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_108.z, x_107.z);
  let x_113 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_117 : vec2<f32> = (vec2<f32>(x_113.z, x_113.w) + vec2<f32>(-1.0f, -1.0f));
  let x_118 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = vs_TEXCOORD0;
  let x_122 : vec4<f32> = u_xlat4;
  let x_126 : vec2<f32> = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.y)) + vec2<f32>(0.5f, 0.5f));
  let x_127 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_126.x, x_126.y, x_127.z, x_127.w);
  let x_129 : vec4<f32> = u_xlat4;
  let x_132 : vec4<f32> = x_58.x_Control_TexelSize;
  let x_134 : vec2<f32> = (vec2<f32>(x_129.x, x_129.y) * vec2<f32>(x_132.x, x_132.y));
  let x_135 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
  let x_142 : vec4<f32> = u_xlat4;
  let x_145 : f32 = x_28.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(x_Control, sampler_Control, vec2<f32>(x_142.x, x_142.y), x_145);
  u_xlat4 = x_146;
  let x_148 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(x_148, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_159 : vec4<f32> = vs_TEXCOORD1;
  let x_162 : f32 = x_28.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(x_Splat0, sampler_Splat0, vec2<f32>(x_159.x, x_159.y), x_162);
  u_xlat5 = x_163;
  let x_169 : vec4<f32> = vs_TEXCOORD1;
  let x_172 : f32 = x_28.x_GlobalMipBias.x;
  let x_173 : vec4<f32> = textureSampleBias(x_Splat1, sampler_Splat0, vec2<f32>(x_169.z, x_169.w), x_172);
  u_xlat6 = x_173;
  let x_180 : vec4<f32> = vs_TEXCOORD2;
  let x_183 : f32 = x_28.x_GlobalMipBias.x;
  let x_184 : vec4<f32> = textureSampleBias(x_Splat2, sampler_Splat0, vec2<f32>(x_180.x, x_180.y), x_183);
  u_xlat7 = x_184;
  let x_190 : vec4<f32> = vs_TEXCOORD2;
  let x_193 : f32 = x_28.x_GlobalMipBias.x;
  let x_194 : vec4<f32> = textureSampleBias(x_Splat3, sampler_Splat0, vec2<f32>(x_190.z, x_190.w), x_193);
  u_xlat8 = x_194;
  let x_198 : f32 = u_xlat5.w;
  u_xlat9.x = x_198;
  let x_201 : f32 = u_xlat6.w;
  u_xlat9.y = x_201;
  let x_205 : f32 = u_xlat7.w;
  u_xlat9.z = x_205;
  let x_209 : f32 = u_xlat8.w;
  u_xlat9.w = x_209;
  let x_212 : vec4<f32> = u_xlat9;
  let x_215 : f32 = x_58.x_Smoothness0;
  let x_218 : f32 = x_58.x_Smoothness1;
  let x_221 : f32 = x_58.x_Smoothness2;
  let x_224 : f32 = x_58.x_Smoothness3;
  u_xlat10 = (x_212 * vec4<f32>(x_215, x_218, x_221, x_224));
  let x_231 : f32 = x_58.x_NumLayersCount;
  u_xlatb43 = (4.0f >= x_231);
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat11 = (-(x_234) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat9;
  let x_238 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_237 + -(x_238));
  let x_241 : vec4<f32> = u_xlat11;
  u_xlat11 = (x_241 * vec4<f32>(20.0f, 20.0f, 20.0f, 20.0f));
  let x_245 : vec4<f32> = u_xlat11;
  u_xlat11 = clamp(x_245, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_249 : vec4<f32> = u_xlat4;
  let x_253 : vec4<f32> = u_xlat11;
  u_xlat11 = ((x_249 * vec4<f32>(0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f, 0.00100000004749745131f)) + x_253);
  let x_256 : vec4<f32> = u_xlat4;
  let x_257 : vec4<f32> = u_xlat11;
  u_xlat12 = (x_256 + -(x_257));
  let x_262 : f32 = u_xlat12.x;
  let x_265 : f32 = x_58.x_DiffuseRemapScale0.w;
  u_xlat13.x = (x_262 * x_265);
  let x_269 : f32 = u_xlat12.y;
  let x_272 : f32 = x_58.x_DiffuseRemapScale1.w;
  u_xlat13.y = (x_269 * x_272);
  let x_276 : f32 = u_xlat12.z;
  let x_279 : f32 = x_58.x_DiffuseRemapScale2.w;
  u_xlat13.z = (x_276 * x_279);
  let x_283 : f32 = u_xlat12.w;
  let x_286 : f32 = x_58.x_DiffuseRemapScale3.w;
  u_xlat13.w = (x_283 * x_286);
  let x_289 : vec4<f32> = u_xlat11;
  let x_290 : vec4<f32> = u_xlat13;
  u_xlat11 = (x_289 + x_290);
  let x_292 : bool = u_xlatb43;
  let x_293 : vec4<f32> = u_xlat11;
  let x_294 : vec4<f32> = u_xlat4;
  u_xlat4 = select(x_294, x_293, vec4<bool>(x_292, x_292, x_292, x_292));
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_299, vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_303 : f32 = u_xlat43;
  u_xlatb44 = (0.00499999988824129105f >= x_303);
  let x_305 : bool = u_xlatb44;
  if (((select(0i, 1i, x_305) * -1i) != 0i)) {
    discard;
  }
  let x_312 : f32 = u_xlat43;
  u_xlat43 = (x_312 + 0.00006103515625f);
  let x_315 : vec4<f32> = u_xlat4;
  let x_316 : f32 = u_xlat43;
  u_xlat4 = (x_315 / vec4<f32>(x_316, x_316, x_316, x_316));
  let x_319 : vec4<f32> = u_xlat4;
  let x_322 : vec4<f32> = x_58.x_DiffuseRemapScale0;
  let x_324 : vec3<f32> = (vec3<f32>(x_319.x, x_319.x, x_319.x) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat4;
  let x_330 : vec4<f32> = x_58.x_DiffuseRemapScale1;
  let x_332 : vec3<f32> = (vec3<f32>(x_327.y, x_327.y, x_327.y) * vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat6;
  let x_337 : vec4<f32> = u_xlat12;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec4<f32> = u_xlat5;
  let x_344 : vec4<f32> = u_xlat11;
  let x_347 : vec4<f32> = u_xlat6;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.x, x_342.y, x_342.z) * vec3<f32>(x_344.x, x_344.y, x_344.z)) + vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : vec4<f32> = u_xlat4;
  let x_355 : vec4<f32> = x_58.x_DiffuseRemapScale2;
  let x_357 : vec3<f32> = (vec3<f32>(x_352.z, x_352.z, x_352.z) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat7;
  let x_362 : vec4<f32> = u_xlat6;
  let x_365 : vec4<f32> = u_xlat5;
  let x_367 : vec3<f32> = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * vec3<f32>(x_362.x, x_362.y, x_362.z)) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat4;
  let x_373 : vec4<f32> = x_58.x_DiffuseRemapScale3;
  let x_375 : vec3<f32> = (vec3<f32>(x_370.w, x_370.w, x_370.w) * vec3<f32>(x_373.x, x_373.y, x_373.z));
  let x_376 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec4<f32> = u_xlat8;
  let x_380 : vec4<f32> = u_xlat6;
  let x_383 : vec4<f32> = u_xlat5;
  let x_385 : vec3<f32> = ((vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(x_380.x, x_380.y, x_380.z)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_393 : vec4<f32> = vs_TEXCOORD1;
  let x_396 : f32 = x_28.x_GlobalMipBias.x;
  let x_397 : vec4<f32> = textureSampleBias(x_Normal0, sampler_Normal0, vec2<f32>(x_393.x, x_393.y), x_396);
  let x_398 : vec3<f32> = vec3<f32>(x_397.x, x_397.y, x_397.w);
  let x_399 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_402 : f32 = u_xlat6.x;
  let x_404 : f32 = u_xlat6.z;
  u_xlat6.x = (x_402 * x_404);
  let x_407 : vec4<f32> = u_xlat6;
  let x_412 : vec2<f32> = ((vec2<f32>(x_407.x, x_407.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_413 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
  let x_415 : vec4<f32> = u_xlat6;
  let x_417 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_415.x, x_415.y), vec2<f32>(x_417.x, x_417.y));
  let x_420 : f32 = u_xlat43;
  u_xlat43 = min(x_420, 1.0f);
  let x_422 : f32 = u_xlat43;
  u_xlat43 = (-(x_422) + 1.0f);
  let x_425 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_425);
  let x_427 : f32 = u_xlat43;
  u_xlat7.z = max(x_427, 0.0000000000000001f);
  let x_431 : vec4<f32> = u_xlat6;
  let x_434 : f32 = x_58.x_NormalScale0;
  let x_436 : vec2<f32> = (vec2<f32>(x_431.x, x_431.y) * vec2<f32>(x_434, x_434));
  let x_437 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
  let x_443 : vec4<f32> = vs_TEXCOORD1;
  let x_446 : f32 = x_28.x_GlobalMipBias.x;
  let x_447 : vec4<f32> = textureSampleBias(x_Normal1, sampler_Normal0, vec2<f32>(x_443.z, x_443.w), x_446);
  let x_448 : vec3<f32> = vec3<f32>(x_447.x, x_447.y, x_447.w);
  let x_449 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_452 : f32 = u_xlat6.x;
  let x_454 : f32 = u_xlat6.z;
  u_xlat6.x = (x_452 * x_454);
  let x_457 : vec4<f32> = u_xlat6;
  let x_460 : vec2<f32> = ((vec2<f32>(x_457.x, x_457.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_461 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
  let x_463 : vec4<f32> = u_xlat6;
  let x_465 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec2<f32>(x_463.x, x_463.y), vec2<f32>(x_465.x, x_465.y));
  let x_468 : f32 = u_xlat43;
  u_xlat43 = min(x_468, 1.0f);
  let x_470 : f32 = u_xlat43;
  u_xlat43 = (-(x_470) + 1.0f);
  let x_473 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_473);
  let x_475 : f32 = u_xlat43;
  u_xlat8.z = max(x_475, 0.0000000000000001f);
  let x_478 : vec4<f32> = u_xlat6;
  let x_481 : f32 = x_58.x_NormalScale1;
  let x_483 : f32 = x_58.x_NormalScale1;
  let x_484 : vec2<f32> = vec2<f32>(x_481, x_483);
  let x_488 : vec2<f32> = (vec2<f32>(x_478.x, x_478.y) * vec2<f32>(x_484.x, x_484.y));
  let x_489 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat4;
  let x_493 : vec4<f32> = u_xlat8;
  let x_495 : vec3<f32> = (vec3<f32>(x_491.y, x_491.y, x_491.y) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec4<f32> = u_xlat7;
  let x_503 : vec4<f32> = u_xlat6;
  let x_505 : vec3<f32> = ((vec3<f32>(x_498.x, x_498.x, x_498.x) * vec3<f32>(x_500.x, x_500.y, x_500.z)) + vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_506 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_512 : vec4<f32> = vs_TEXCOORD2;
  let x_515 : f32 = x_28.x_GlobalMipBias.x;
  let x_516 : vec4<f32> = textureSampleBias(x_Normal2, sampler_Normal0, vec2<f32>(x_512.x, x_512.y), x_515);
  let x_517 : vec3<f32> = vec3<f32>(x_516.x, x_516.y, x_516.w);
  let x_518 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_521 : f32 = u_xlat7.x;
  let x_523 : f32 = u_xlat7.z;
  u_xlat7.x = (x_521 * x_523);
  let x_526 : vec4<f32> = u_xlat7;
  let x_529 : vec2<f32> = ((vec2<f32>(x_526.x, x_526.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_530 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
  let x_532 : vec4<f32> = u_xlat7;
  let x_534 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_532.x, x_532.y), vec2<f32>(x_534.x, x_534.y));
  let x_537 : f32 = u_xlat43;
  u_xlat43 = min(x_537, 1.0f);
  let x_539 : f32 = u_xlat43;
  u_xlat43 = (-(x_539) + 1.0f);
  let x_542 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_542);
  let x_544 : f32 = u_xlat43;
  u_xlat8.z = max(x_544, 0.0000000000000001f);
  let x_547 : vec4<f32> = u_xlat7;
  let x_551 : f32 = x_58.x_NormalScale2;
  let x_553 : f32 = x_58.x_NormalScale2;
  let x_554 : vec2<f32> = vec2<f32>(x_551, x_553);
  let x_558 : vec2<f32> = (vec2<f32>(x_547.x, x_547.y) * vec2<f32>(x_554.x, x_554.y));
  let x_559 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_558.x, x_558.y, x_559.z, x_559.w);
  let x_561 : vec4<f32> = u_xlat4;
  let x_563 : vec4<f32> = u_xlat8;
  let x_566 : vec4<f32> = u_xlat6;
  let x_568 : vec3<f32> = ((vec3<f32>(x_561.z, x_561.z, x_561.z) * vec3<f32>(x_563.x, x_563.y, x_563.z)) + vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_575 : vec4<f32> = vs_TEXCOORD2;
  let x_578 : f32 = x_28.x_GlobalMipBias.x;
  let x_579 : vec4<f32> = textureSampleBias(x_Normal3, sampler_Normal0, vec2<f32>(x_575.z, x_575.w), x_578);
  let x_580 : vec3<f32> = vec3<f32>(x_579.x, x_579.y, x_579.w);
  let x_581 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_584 : f32 = u_xlat7.x;
  let x_586 : f32 = u_xlat7.z;
  u_xlat7.x = (x_584 * x_586);
  let x_589 : vec4<f32> = u_xlat7;
  let x_592 : vec2<f32> = ((vec2<f32>(x_589.x, x_589.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_593 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
  let x_595 : vec4<f32> = u_xlat7;
  let x_597 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec2<f32>(x_595.x, x_595.y), vec2<f32>(x_597.x, x_597.y));
  let x_600 : f32 = u_xlat43;
  u_xlat43 = min(x_600, 1.0f);
  let x_602 : f32 = u_xlat43;
  u_xlat43 = (-(x_602) + 1.0f);
  let x_605 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_605);
  let x_607 : f32 = u_xlat43;
  u_xlat8.z = max(x_607, 0.0000000000000001f);
  let x_610 : vec4<f32> = u_xlat7;
  let x_614 : f32 = x_58.x_NormalScale3;
  let x_616 : f32 = x_58.x_NormalScale3;
  let x_617 : vec2<f32> = vec2<f32>(x_614, x_616);
  let x_621 : vec2<f32> = (vec2<f32>(x_610.x, x_610.y) * vec2<f32>(x_617.x, x_617.y));
  let x_622 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_621.x, x_621.y, x_622.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat4;
  let x_626 : vec4<f32> = u_xlat8;
  let x_629 : vec4<f32> = u_xlat6;
  let x_631 : vec3<f32> = ((vec3<f32>(x_624.w, x_624.w, x_624.w) * vec3<f32>(x_626.x, x_626.y, x_626.z)) + vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_635 : f32 = u_xlat6.z;
  u_xlat6.w = (x_635 + 0.00000999999974737875f);
  let x_639 : vec4<f32> = u_xlat6;
  let x_641 : vec4<f32> = u_xlat6;
  u_xlat43 = dot(vec3<f32>(x_639.x, x_639.y, x_639.w), vec3<f32>(x_641.x, x_641.y, x_641.w));
  let x_644 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_644);
  let x_646 : f32 = u_xlat43;
  let x_648 : vec4<f32> = u_xlat6;
  let x_650 : vec3<f32> = (vec3<f32>(x_646, x_646, x_646) * vec3<f32>(x_648.x, x_648.y, x_648.w));
  let x_651 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_654 : f32 = x_58.x_MaskMapRemapScale0.y;
  u_xlat7.x = x_654;
  let x_657 : f32 = x_58.x_MaskMapRemapScale1.y;
  u_xlat7.y = x_657;
  let x_660 : f32 = x_58.x_MaskMapRemapScale2.y;
  u_xlat7.z = x_660;
  let x_663 : f32 = x_58.x_MaskMapRemapScale3.y;
  u_xlat7.w = x_663;
  let x_666 : f32 = x_58.x_MaskMapRemapOffset0.y;
  u_xlat8.x = x_666;
  let x_669 : f32 = x_58.x_MaskMapRemapOffset1.y;
  u_xlat8.y = x_669;
  let x_672 : f32 = x_58.x_MaskMapRemapOffset2.y;
  u_xlat8.z = x_672;
  let x_675 : f32 = x_58.x_MaskMapRemapOffset3.y;
  u_xlat8.w = x_675;
  let x_677 : vec4<f32> = u_xlat7;
  let x_678 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_677 + x_678);
  let x_681 : f32 = u_xlat0.z;
  u_xlat8.x = x_681;
  let x_684 : f32 = u_xlat1.z;
  u_xlat8.y = x_684;
  let x_687 : f32 = u_xlat2.z;
  u_xlat8.z = x_687;
  let x_690 : f32 = u_xlat3.y;
  u_xlat8.w = x_690;
  let x_692 : vec4<f32> = u_xlat9;
  let x_695 : f32 = x_58.x_Smoothness0;
  let x_697 : f32 = x_58.x_Smoothness1;
  let x_699 : f32 = x_58.x_Smoothness2;
  let x_701 : f32 = x_58.x_Smoothness3;
  let x_704 : vec4<f32> = u_xlat8;
  u_xlat8 = ((-(x_692) * vec4<f32>(x_695, x_697, x_699, x_701)) + x_704);
  let x_708 : f32 = x_58.x_LayerHasMask0;
  let x_711 : f32 = x_58.x_LayerHasMask1;
  let x_714 : f32 = x_58.x_LayerHasMask2;
  let x_717 : f32 = x_58.x_LayerHasMask3;
  let x_719 : vec4<f32> = u_xlat8;
  let x_721 : vec4<f32> = u_xlat10;
  u_xlat8 = ((vec4<f32>(x_708, x_711, x_714, x_717) * x_719) + x_721);
  let x_724 : vec4<f32> = u_xlat4;
  let x_725 : vec4<f32> = u_xlat8;
  u_xlat28 = dot(x_724, x_725);
  let x_728 : f32 = u_xlat0.x;
  u_xlat8.x = x_728;
  let x_731 : f32 = u_xlat1.x;
  u_xlat8.y = x_731;
  let x_734 : f32 = u_xlat2.x;
  u_xlat8.z = x_734;
  let x_737 : f32 = u_xlat3.x;
  u_xlat8.w = x_737;
  let x_739 : vec4<f32> = u_xlat8;
  let x_742 : f32 = x_58.x_Metallic0;
  let x_745 : f32 = x_58.x_Metallic1;
  let x_748 : f32 = x_58.x_Metallic2;
  let x_751 : f32 = x_58.x_Metallic3;
  u_xlat8 = (x_739 + -(vec4<f32>(x_742, x_745, x_748, x_751)));
  let x_756 : f32 = x_58.x_LayerHasMask0;
  let x_758 : f32 = x_58.x_LayerHasMask1;
  let x_760 : f32 = x_58.x_LayerHasMask2;
  let x_762 : f32 = x_58.x_LayerHasMask3;
  let x_764 : vec4<f32> = u_xlat8;
  let x_767 : f32 = x_58.x_Metallic0;
  let x_769 : f32 = x_58.x_Metallic1;
  let x_771 : f32 = x_58.x_Metallic2;
  let x_773 : f32 = x_58.x_Metallic3;
  u_xlat8 = ((vec4<f32>(x_756, x_758, x_760, x_762) * x_764) + vec4<f32>(x_767, x_769, x_771, x_773));
  let x_776 : vec4<f32> = u_xlat4;
  let x_777 : vec4<f32> = u_xlat8;
  u_xlat0.x = dot(x_776, x_777);
  let x_781 : f32 = u_xlat0.y;
  u_xlat3.x = x_781;
  let x_784 : f32 = u_xlat1.y;
  u_xlat3.y = x_784;
  let x_787 : f32 = u_xlat2.y;
  u_xlat3.z = x_787;
  let x_789 : vec4<f32> = u_xlat7;
  let x_791 : vec4<f32> = u_xlat3;
  u_xlat1 = (-(x_789) + x_791);
  let x_794 : f32 = x_58.x_LayerHasMask0;
  let x_796 : f32 = x_58.x_LayerHasMask1;
  let x_798 : f32 = x_58.x_LayerHasMask2;
  let x_800 : f32 = x_58.x_LayerHasMask3;
  let x_802 : vec4<f32> = u_xlat1;
  let x_804 : vec4<f32> = u_xlat7;
  u_xlat1 = ((vec4<f32>(x_794, x_796, x_798, x_800) * x_802) + x_804);
  let x_807 : vec4<f32> = u_xlat4;
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(x_807, x_808);
  let x_810 : vec4<f32> = u_xlat6;
  let x_813 : vec4<f32> = vs_TEXCOORD5;
  let x_815 : vec3<f32> = (vec3<f32>(x_810.y, x_810.y, x_810.y) * vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat6;
  let x_821 : vec4<f32> = vs_TEXCOORD4;
  let x_825 : vec4<f32> = u_xlat1;
  let x_827 : vec3<f32> = ((vec3<f32>(x_818.x, x_818.x, x_818.x) * -(vec3<f32>(x_821.x, x_821.y, x_821.z))) + vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat6;
  let x_833 : vec4<f32> = vs_TEXCOORD3;
  let x_836 : vec4<f32> = u_xlat1;
  let x_838 : vec3<f32> = ((vec3<f32>(x_830.z, x_830.z, x_830.z) * vec3<f32>(x_833.x, x_833.y, x_833.z)) + vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat43 = dot(vec3<f32>(x_841.x, x_841.y, x_841.z), vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_846);
  let x_848 : f32 = u_xlat43;
  let x_850 : vec4<f32> = u_xlat1;
  let x_852 : vec3<f32> = (vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  u_xlat1.w = 1.0f;
  let x_862 : vec4<f32> = x_860.unity_SHAr;
  let x_863 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_862, x_863);
  let x_867 : vec4<f32> = x_860.unity_SHAg;
  let x_868 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_867, x_868);
  let x_872 : vec4<f32> = x_860.unity_SHAb;
  let x_873 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_872, x_873);
  let x_876 : vec4<f32> = u_xlat1;
  let x_878 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_876.y, x_876.z, x_876.z, x_876.x) * vec4<f32>(x_878.x, x_878.y, x_878.z, x_878.z));
  let x_882 : vec4<f32> = x_860.unity_SHBr;
  let x_883 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_882, x_883);
  let x_887 : vec4<f32> = x_860.unity_SHBg;
  let x_888 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_887, x_888);
  let x_892 : vec4<f32> = x_860.unity_SHBb;
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_892, x_893);
  let x_897 : f32 = u_xlat1.y;
  let x_899 : f32 = u_xlat1.y;
  u_xlat43 = (x_897 * x_899);
  let x_902 : f32 = u_xlat1.x;
  let x_904 : f32 = u_xlat1.x;
  let x_906 : f32 = u_xlat43;
  u_xlat43 = ((x_902 * x_904) + -(x_906));
  let x_911 : vec4<f32> = x_860.unity_SHC;
  let x_913 : f32 = u_xlat43;
  let x_916 : vec4<f32> = u_xlat4;
  let x_918 : vec3<f32> = ((vec3<f32>(x_911.x, x_911.y, x_911.z) * vec3<f32>(x_913, x_913, x_913)) + vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec3<f32> = u_xlat2;
  let x_922 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_921 + vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_925, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_929 : f32 = u_xlat0.x;
  u_xlat43 = ((-(x_929) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_935 : f32 = u_xlat28;
  let x_936 : f32 = u_xlat43;
  u_xlat44 = (x_935 + -(x_936));
  let x_939 : f32 = u_xlat43;
  let x_941 : vec4<f32> = u_xlat5;
  let x_943 : vec3<f32> = (vec3<f32>(x_939, x_939, x_939) * vec3<f32>(x_941.x, x_941.y, x_941.z));
  let x_944 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
  let x_946 : vec4<f32> = u_xlat5;
  let x_950 : vec3<f32> = (vec3<f32>(x_946.x, x_946.y, x_946.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_951 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec3<f32> = u_xlat0;
  let x_955 : vec4<f32> = u_xlat4;
  let x_960 : vec3<f32> = ((vec3<f32>(x_953.x, x_953.x, x_953.x) * vec3<f32>(x_955.x, x_955.y, x_955.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_961 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : f32 = u_xlat28;
  u_xlat0.x = (-(x_963) + 1.0f);
  let x_968 : f32 = u_xlat0.x;
  let x_970 : f32 = u_xlat0.x;
  u_xlat28 = (x_968 * x_970);
  let x_972 : f32 = u_xlat28;
  u_xlat28 = max(x_972, 0.0078125f);
  let x_975 : f32 = u_xlat28;
  let x_976 : f32 = u_xlat28;
  u_xlat43 = (x_975 * x_976);
  let x_978 : f32 = u_xlat44;
  u_xlat44 = (x_978 + 1.0f);
  let x_980 : f32 = u_xlat44;
  u_xlat44 = clamp(x_980, 0.0f, 1.0f);
  let x_983 : f32 = u_xlat28;
  u_xlat45 = ((x_983 * 4.0f) + 2.0f);
  let x_986 : f32 = u_xlat14;
  u_xlat14 = min(x_986, 1.0f);
  let x_991 : vec4<f32> = vs_TEXCOORD8;
  let x_992 : vec2<f32> = vec2<f32>(x_991.x, x_991.y);
  let x_995 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_992.x, x_992.y, x_995);
  let x_1008 : vec3<f32> = txVec0;
  let x_1010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1008.xy, x_1008.z);
  u_xlat46 = x_1010;
  let x_1020 : f32 = x_1018.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1020) + 1.0f);
  let x_1024 : f32 = u_xlat46;
  let x_1026 : f32 = x_1018.x_MainLightShadowParams.x;
  let x_1029 : f32 = u_xlat5.x;
  u_xlat46 = ((x_1024 * x_1026) + x_1029);
  let x_1033 : f32 = vs_TEXCOORD8.z;
  u_xlatb5 = (0.0f >= x_1033);
  let x_1039 : f32 = vs_TEXCOORD8.z;
  u_xlatb19.x = (x_1039 >= 1.0f);
  let x_1043 : bool = u_xlatb19.x;
  let x_1044 : bool = u_xlatb5;
  u_xlatb5 = (x_1043 | x_1044);
  let x_1046 : bool = u_xlatb5;
  let x_1047 : f32 = u_xlat46;
  u_xlat46 = select(x_1047, 1.0f, x_1046);
  let x_1051 : vec3<f32> = vs_TEXCOORD7;
  let x_1054 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1056 : vec3<f32> = (x_1051 + -(x_1054));
  let x_1057 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat5;
  let x_1061 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1067 : f32 = u_xlat5.x;
  let x_1069 : f32 = x_1018.x_MainLightShadowParams.z;
  let x_1072 : f32 = x_1018.x_MainLightShadowParams.w;
  u_xlat19.x = ((x_1067 * x_1069) + x_1072);
  let x_1076 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1076, 0.0f, 1.0f);
  let x_1080 : f32 = u_xlat46;
  u_xlat33 = (-(x_1080) + 1.0f);
  let x_1084 : f32 = u_xlat19.x;
  let x_1085 : f32 = u_xlat33;
  let x_1087 : f32 = u_xlat46;
  u_xlat46 = ((x_1084 * x_1085) + x_1087);
  let x_1096 : f32 = x_1094.x_MainLightCookieTextureFormat;
  u_xlatb19.x = !((x_1096 == -1.0f));
  let x_1100 : bool = u_xlatb19.x;
  if (x_1100) {
    let x_1103 : vec3<f32> = vs_TEXCOORD7;
    let x_1106 : vec4<f32> = x_1094.x_MainLightWorldToLight[1i];
    let x_1108 : vec2<f32> = (vec2<f32>(x_1103.y, x_1103.y) * vec2<f32>(x_1106.x, x_1106.y));
    let x_1109 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1108.x, x_1108.y, x_1109.z);
    let x_1112 : vec4<f32> = x_1094.x_MainLightWorldToLight[0i];
    let x_1114 : vec3<f32> = vs_TEXCOORD7;
    let x_1117 : vec3<f32> = u_xlat19;
    let x_1119 : vec2<f32> = ((vec2<f32>(x_1112.x, x_1112.y) * vec2<f32>(x_1114.x, x_1114.x)) + vec2<f32>(x_1117.x, x_1117.y));
    let x_1120 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1119.x, x_1119.y, x_1120.z);
    let x_1123 : vec4<f32> = x_1094.x_MainLightWorldToLight[2i];
    let x_1125 : vec3<f32> = vs_TEXCOORD7;
    let x_1128 : vec3<f32> = u_xlat19;
    let x_1130 : vec2<f32> = ((vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(x_1125.z, x_1125.z)) + vec2<f32>(x_1128.x, x_1128.y));
    let x_1131 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1130.x, x_1130.y, x_1131.z);
    let x_1133 : vec3<f32> = u_xlat19;
    let x_1136 : vec4<f32> = x_1094.x_MainLightWorldToLight[3i];
    let x_1138 : vec2<f32> = (vec2<f32>(x_1133.x, x_1133.y) + vec2<f32>(x_1136.x, x_1136.y));
    let x_1139 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1138.x, x_1138.y, x_1139.z);
    let x_1141 : vec3<f32> = u_xlat19;
    let x_1144 : vec2<f32> = ((vec2<f32>(x_1141.x, x_1141.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1145 : vec3<f32> = u_xlat19;
    u_xlat19 = vec3<f32>(x_1144.x, x_1144.y, x_1145.z);
    let x_1152 : vec3<f32> = u_xlat19;
    let x_1155 : f32 = x_28.x_GlobalMipBias.x;
    let x_1156 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1152.x, x_1152.y), x_1155);
    u_xlat6 = x_1156;
    let x_1158 : f32 = x_1094.x_MainLightCookieTextureFormat;
    let x_1160 : f32 = x_1094.x_MainLightCookieTextureFormat;
    let x_1162 : f32 = x_1094.x_MainLightCookieTextureFormat;
    let x_1164 : f32 = x_1094.x_MainLightCookieTextureFormat;
    let x_1165 : vec4<f32> = vec4<f32>(x_1158, x_1160, x_1162, x_1164);
    let x_1172 : vec4<bool> = (vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1165.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb19 = vec2<bool>(x_1172.x, x_1172.y);
    let x_1175 : bool = u_xlatb19.y;
    if (x_1175) {
      let x_1181 : f32 = u_xlat6.w;
      x_1177 = x_1181;
    } else {
      let x_1184 : f32 = u_xlat6.x;
      x_1177 = x_1184;
    }
    let x_1185 : f32 = x_1177;
    u_xlat33 = x_1185;
    let x_1187 : bool = u_xlatb19.x;
    if (x_1187) {
      let x_1191 : vec4<f32> = u_xlat6;
      x_1188 = vec3<f32>(x_1191.x, x_1191.y, x_1191.z);
    } else {
      let x_1194 : f32 = u_xlat33;
      x_1188 = vec3<f32>(x_1194, x_1194, x_1194);
    }
    let x_1196 : vec3<f32> = x_1188;
    u_xlat19 = x_1196;
  } else {
    u_xlat19.x = 1.0f;
    u_xlat19.y = 1.0f;
    u_xlat19.z = 1.0f;
  }
  let x_1201 : vec3<f32> = u_xlat19;
  let x_1203 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat19 = (x_1201 * vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1207 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1207;
  let x_1210 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1210;
  let x_1213 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1213;
  let x_1216 : vec4<f32> = u_xlat6;
  let x_1219 : vec4<f32> = u_xlat1;
  u_xlat48 = dot(-(vec3<f32>(x_1216.x, x_1216.y, x_1216.z)), vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
  let x_1222 : f32 = u_xlat48;
  let x_1223 : f32 = u_xlat48;
  u_xlat48 = (x_1222 + x_1223);
  let x_1225 : vec4<f32> = u_xlat1;
  let x_1227 : f32 = u_xlat48;
  let x_1231 : vec4<f32> = u_xlat6;
  let x_1234 : vec3<f32> = ((vec3<f32>(x_1225.x, x_1225.y, x_1225.z) * -(vec3<f32>(x_1227, x_1227, x_1227))) + -(vec3<f32>(x_1231.x, x_1231.y, x_1231.z)));
  let x_1235 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1237 : vec4<f32> = u_xlat1;
  let x_1239 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_1237.x, x_1237.y, x_1237.z), vec3<f32>(x_1239.x, x_1239.y, x_1239.z));
  let x_1242 : f32 = u_xlat48;
  u_xlat48 = clamp(x_1242, 0.0f, 1.0f);
  let x_1244 : f32 = u_xlat48;
  u_xlat48 = (-(x_1244) + 1.0f);
  let x_1247 : f32 = u_xlat48;
  let x_1248 : f32 = u_xlat48;
  u_xlat48 = (x_1247 * x_1248);
  let x_1250 : f32 = u_xlat48;
  let x_1251 : f32 = u_xlat48;
  u_xlat48 = (x_1250 * x_1251);
  let x_1255 : f32 = u_xlat0.x;
  u_xlat49 = ((-(x_1255) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1262 : f32 = u_xlat0.x;
  let x_1263 : f32 = u_xlat49;
  u_xlat0.x = (x_1262 * x_1263);
  let x_1267 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1267 * 6.0f);
  let x_1279 : vec4<f32> = u_xlat7;
  let x_1282 : f32 = u_xlat0.x;
  let x_1283 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1279.x, x_1279.y, x_1279.z), x_1282);
  u_xlat7 = x_1283;
  let x_1285 : f32 = u_xlat7.w;
  u_xlat0.x = (x_1285 + -1.0f);
  let x_1289 : f32 = x_860.unity_SpecCube0_HDR.w;
  let x_1291 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1289 * x_1291) + 1.0f);
  let x_1296 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1296, 0.0f);
  let x_1300 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1300);
  let x_1304 : f32 = u_xlat0.x;
  let x_1306 : f32 = x_860.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1304 * x_1306);
  let x_1310 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1310);
  let x_1314 : f32 = u_xlat0.x;
  let x_1316 : f32 = x_860.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1314 * x_1316);
  let x_1319 : vec4<f32> = u_xlat7;
  let x_1321 : vec3<f32> = u_xlat0;
  let x_1323 : vec3<f32> = (vec3<f32>(x_1319.x, x_1319.y, x_1319.z) * vec3<f32>(x_1321.x, x_1321.x, x_1321.x));
  let x_1324 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
  let x_1326 : f32 = u_xlat28;
  let x_1328 : f32 = u_xlat28;
  let x_1332 : vec2<f32> = ((vec2<f32>(x_1326, x_1326) * vec2<f32>(x_1328, x_1328)) + vec2<f32>(-1.0f, 1.0f));
  let x_1333 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1332.x, x_1333.y, x_1332.y);
  let x_1336 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1336);
  let x_1338 : vec4<f32> = u_xlat4;
  let x_1341 : f32 = u_xlat44;
  let x_1343 : vec3<f32> = (-(vec3<f32>(x_1338.x, x_1338.y, x_1338.z)) + vec3<f32>(x_1341, x_1341, x_1341));
  let x_1344 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : f32 = u_xlat48;
  let x_1348 : vec4<f32> = u_xlat8;
  let x_1351 : vec4<f32> = u_xlat4;
  let x_1353 : vec3<f32> = ((vec3<f32>(x_1346, x_1346, x_1346) * vec3<f32>(x_1348.x, x_1348.y, x_1348.z)) + vec3<f32>(x_1351.x, x_1351.y, x_1351.z));
  let x_1354 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
  let x_1356 : f32 = u_xlat28;
  let x_1358 : vec4<f32> = u_xlat8;
  let x_1360 : vec3<f32> = (vec3<f32>(x_1356, x_1356, x_1356) * vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
  let x_1361 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  let x_1363 : vec4<f32> = u_xlat7;
  let x_1365 : vec4<f32> = u_xlat8;
  let x_1367 : vec3<f32> = (vec3<f32>(x_1363.x, x_1363.y, x_1363.z) * vec3<f32>(x_1365.x, x_1365.y, x_1365.z));
  let x_1368 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1367.x, x_1367.y, x_1367.z, x_1368.w);
  let x_1370 : vec3<f32> = u_xlat2;
  let x_1371 : vec4<f32> = u_xlat3;
  let x_1374 : vec4<f32> = u_xlat7;
  u_xlat2 = ((x_1370 * vec3<f32>(x_1371.x, x_1371.y, x_1371.z)) + vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
  let x_1377 : f32 = u_xlat46;
  let x_1379 : f32 = x_860.unity_LightData.z;
  u_xlat28 = (x_1377 * x_1379);
  let x_1381 : vec4<f32> = u_xlat1;
  let x_1384 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat44 = dot(vec3<f32>(x_1381.x, x_1381.y, x_1381.z), vec3<f32>(x_1384.x, x_1384.y, x_1384.z));
  let x_1387 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1387, 0.0f, 1.0f);
  let x_1389 : f32 = u_xlat28;
  let x_1390 : f32 = u_xlat44;
  u_xlat28 = (x_1389 * x_1390);
  let x_1392 : f32 = u_xlat28;
  let x_1394 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_1392, x_1392, x_1392) * x_1394);
  let x_1396 : vec4<f32> = u_xlat6;
  let x_1399 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1401 : vec3<f32> = (vec3<f32>(x_1396.x, x_1396.y, x_1396.z) + vec3<f32>(x_1399.x, x_1399.y, x_1399.z));
  let x_1402 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1402.w);
  let x_1404 : vec4<f32> = u_xlat7;
  let x_1406 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1404.x, x_1404.y, x_1404.z), vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
  let x_1409 : f32 = u_xlat28;
  u_xlat28 = max(x_1409, 1.17549435e-38f);
  let x_1412 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1412);
  let x_1414 : f32 = u_xlat28;
  let x_1416 : vec4<f32> = u_xlat7;
  let x_1418 : vec3<f32> = (vec3<f32>(x_1414, x_1414, x_1414) * vec3<f32>(x_1416.x, x_1416.y, x_1416.z));
  let x_1419 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
  let x_1421 : vec4<f32> = u_xlat1;
  let x_1423 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1421.x, x_1421.y, x_1421.z), vec3<f32>(x_1423.x, x_1423.y, x_1423.z));
  let x_1426 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1426, 0.0f, 1.0f);
  let x_1429 : vec4<f32> = x_28.x_MainLightPosition;
  let x_1431 : vec4<f32> = u_xlat7;
  u_xlat44 = dot(vec3<f32>(x_1429.x, x_1429.y, x_1429.z), vec3<f32>(x_1431.x, x_1431.y, x_1431.z));
  let x_1434 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1434, 0.0f, 1.0f);
  let x_1436 : f32 = u_xlat28;
  let x_1437 : f32 = u_xlat28;
  u_xlat28 = (x_1436 * x_1437);
  let x_1439 : f32 = u_xlat28;
  let x_1441 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1439 * x_1441) + 1.00001001358032226562f);
  let x_1445 : f32 = u_xlat44;
  let x_1446 : f32 = u_xlat44;
  u_xlat44 = (x_1445 * x_1446);
  let x_1448 : f32 = u_xlat28;
  let x_1449 : f32 = u_xlat28;
  u_xlat28 = (x_1448 * x_1449);
  let x_1451 : f32 = u_xlat44;
  u_xlat44 = max(x_1451, 0.10000000149011611938f);
  let x_1454 : f32 = u_xlat28;
  let x_1455 : f32 = u_xlat44;
  u_xlat28 = (x_1454 * x_1455);
  let x_1457 : f32 = u_xlat45;
  let x_1458 : f32 = u_xlat28;
  u_xlat28 = (x_1457 * x_1458);
  let x_1460 : f32 = u_xlat43;
  let x_1461 : f32 = u_xlat28;
  u_xlat28 = (x_1460 / x_1461);
  let x_1463 : vec4<f32> = u_xlat4;
  let x_1465 : f32 = u_xlat28;
  let x_1468 : vec4<f32> = u_xlat3;
  let x_1470 : vec3<f32> = ((vec3<f32>(x_1463.x, x_1463.y, x_1463.z) * vec3<f32>(x_1465, x_1465, x_1465)) + vec3<f32>(x_1468.x, x_1468.y, x_1468.z));
  let x_1471 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1470.x, x_1470.y, x_1470.z, x_1471.w);
  let x_1473 : vec3<f32> = u_xlat19;
  let x_1474 : vec4<f32> = u_xlat7;
  u_xlat19 = (x_1473 * vec3<f32>(x_1474.x, x_1474.y, x_1474.z));
  let x_1478 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_1480 : f32 = x_860.unity_LightData.y;
  u_xlat28 = min(x_1478, x_1480);
  let x_1484 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1484));
  let x_1488 : f32 = u_xlat5.x;
  let x_1490 : f32 = x_1018.x_AdditionalShadowFadeParams.x;
  let x_1493 : f32 = x_1018.x_AdditionalShadowFadeParams.y;
  u_xlat44 = ((x_1488 * x_1490) + x_1493);
  let x_1495 : f32 = u_xlat44;
  u_xlat44 = clamp(x_1495, 0.0f, 1.0f);
  let x_1499 : f32 = x_1094.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1501 : f32 = x_1094.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1503 : f32 = x_1094.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1505 : f32 = x_1094.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1506 : vec4<f32> = vec4<f32>(x_1499, x_1501, x_1503, x_1505);
  let x_1512 : vec4<bool> = (vec4<f32>(x_1506.x, x_1506.y, x_1506.z, x_1506.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1512.x, x_1512.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1524 : u32 = u_xlatu_loop_1;
    let x_1525 : u32 = u_xlatu28;
    if ((x_1524 < x_1525)) {
    } else {
      break;
    }
    let x_1528 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1528 >> 2u);
    let x_1532 : u32 = u_xlatu_loop_1;
    u_xlati48 = bitcast<i32>((x_1532 & 3u));
    let x_1535 : u32 = u_xlatu5;
    let x_1538 : vec4<f32> = x_860.unity_LightIndices[bitcast<i32>(x_1535)];
    let x_1548 : i32 = u_xlati48;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1553 : vec4<u32> = indexable[x_1548];
    u_xlat5.x = dot(x_1538, bitcast<vec4<f32>>(x_1553));
    let x_1559 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1559);
    let x_1561 : vec3<f32> = vs_TEXCOORD7;
    let x_1572 : i32 = u_xlati5;
    let x_1574 : vec4<f32> = x_1571.x_AdditionalLightsPosition[x_1572];
    let x_1577 : i32 = u_xlati5;
    let x_1579 : vec4<f32> = x_1571.x_AdditionalLightsPosition[x_1577];
    let x_1581 : vec3<f32> = ((-(x_1561) * vec3<f32>(x_1574.w, x_1574.w, x_1574.w)) + vec3<f32>(x_1579.x, x_1579.y, x_1579.z));
    let x_1582 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1581.x, x_1581.y, x_1581.z, x_1582.w);
    let x_1584 : vec4<f32> = u_xlat9;
    let x_1586 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_1584.x, x_1584.y, x_1584.z), vec3<f32>(x_1586.x, x_1586.y, x_1586.z));
    let x_1589 : f32 = u_xlat48;
    u_xlat48 = max(x_1589, 0.00006103515625f);
    let x_1592 : f32 = u_xlat48;
    u_xlat35 = inverseSqrt(x_1592);
    let x_1594 : f32 = u_xlat35;
    let x_1596 : vec4<f32> = u_xlat9;
    let x_1598 : vec3<f32> = (vec3<f32>(x_1594, x_1594, x_1594) * vec3<f32>(x_1596.x, x_1596.y, x_1596.z));
    let x_1599 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1598.x, x_1598.y, x_1598.z, x_1599.w);
    let x_1601 : f32 = u_xlat48;
    u_xlat49 = (1.0f / x_1601);
    let x_1603 : f32 = u_xlat48;
    let x_1604 : i32 = u_xlati5;
    let x_1606 : f32 = x_1571.x_AdditionalLightsAttenuation[x_1604].x;
    u_xlat48 = (x_1603 * x_1606);
    let x_1608 : f32 = u_xlat48;
    let x_1610 : f32 = u_xlat48;
    u_xlat48 = ((-(x_1608) * x_1610) + 1.0f);
    let x_1613 : f32 = u_xlat48;
    u_xlat48 = max(x_1613, 0.0f);
    let x_1615 : f32 = u_xlat48;
    let x_1616 : f32 = u_xlat48;
    u_xlat48 = (x_1615 * x_1616);
    let x_1618 : f32 = u_xlat48;
    let x_1619 : f32 = u_xlat49;
    u_xlat48 = (x_1618 * x_1619);
    let x_1621 : i32 = u_xlati5;
    let x_1623 : vec4<f32> = x_1571.x_AdditionalLightsSpotDir[x_1621];
    let x_1625 : vec4<f32> = u_xlat10;
    u_xlat49 = dot(vec3<f32>(x_1623.x, x_1623.y, x_1623.z), vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
    let x_1628 : f32 = u_xlat49;
    let x_1629 : i32 = u_xlati5;
    let x_1631 : f32 = x_1571.x_AdditionalLightsAttenuation[x_1629].z;
    let x_1633 : i32 = u_xlati5;
    let x_1635 : f32 = x_1571.x_AdditionalLightsAttenuation[x_1633].w;
    u_xlat49 = ((x_1628 * x_1631) + x_1635);
    let x_1637 : f32 = u_xlat49;
    u_xlat49 = clamp(x_1637, 0.0f, 1.0f);
    let x_1639 : f32 = u_xlat49;
    let x_1640 : f32 = u_xlat49;
    u_xlat49 = (x_1639 * x_1640);
    let x_1642 : f32 = u_xlat48;
    let x_1643 : f32 = u_xlat49;
    u_xlat48 = (x_1642 * x_1643);
    let x_1646 : i32 = u_xlati5;
    let x_1648 : f32 = x_1018.x_AdditionalShadowParams[x_1646].w;
    u_xlati49 = i32(x_1648);
    let x_1651 : i32 = u_xlati49;
    u_xlatb50 = (x_1651 >= 0i);
    let x_1653 : bool = u_xlatb50;
    if (x_1653) {
      let x_1657 : i32 = u_xlati5;
      let x_1659 : f32 = x_1018.x_AdditionalShadowParams[x_1657].z;
      u_xlatb50 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1659, x_1659, x_1659, x_1659))));
      let x_1663 : bool = u_xlatb50;
      if (x_1663) {
        let x_1668 : vec4<f32> = u_xlat10;
        let x_1671 : vec4<f32> = u_xlat10;
        let x_1674 : vec4<bool> = (abs(vec4<f32>(x_1668.z, x_1668.z, x_1668.y, x_1668.z)) >= abs(vec4<f32>(x_1671.x, x_1671.y, x_1671.x, x_1671.x)));
        let x_1676 : vec3<bool> = vec3<bool>(x_1674.x, x_1674.y, x_1674.z);
        let x_1677 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1676.x, x_1676.y, x_1676.z, x_1677.w);
        let x_1680 : bool = u_xlatb11.y;
        let x_1682 : bool = u_xlatb11.x;
        u_xlatb50 = (x_1680 & x_1682);
        let x_1684 : vec4<f32> = u_xlat10;
        let x_1687 : vec4<bool> = (-(vec4<f32>(x_1684.z, x_1684.y, x_1684.z, x_1684.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1688 : vec3<bool> = vec3<bool>(x_1687.x, x_1687.y, x_1687.w);
        let x_1689 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1688.x, x_1688.y, x_1689.z, x_1688.z);
        let x_1692 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1692);
        let x_1697 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1697);
        let x_1703 : bool = u_xlatb11.w;
        u_xlat51 = select(0.0f, 1.0f, x_1703);
        let x_1706 : bool = u_xlatb11.z;
        if (x_1706) {
          let x_1711 : f32 = u_xlat11.y;
          x_1707 = x_1711;
        } else {
          let x_1713 : f32 = u_xlat51;
          x_1707 = x_1713;
        }
        let x_1714 : f32 = x_1707;
        u_xlat51 = x_1714;
        let x_1716 : bool = u_xlatb50;
        if (x_1716) {
          let x_1721 : f32 = u_xlat11.x;
          x_1717 = x_1721;
        } else {
          let x_1723 : f32 = u_xlat51;
          x_1717 = x_1723;
        }
        let x_1724 : f32 = x_1717;
        u_xlat50 = x_1724;
        let x_1725 : i32 = u_xlati5;
        let x_1727 : f32 = x_1018.x_AdditionalShadowParams[x_1725].w;
        u_xlat51 = trunc(x_1727);
        let x_1729 : f32 = u_xlat50;
        let x_1730 : f32 = u_xlat51;
        u_xlat50 = (x_1729 + x_1730);
        let x_1732 : f32 = u_xlat50;
        u_xlati49 = i32(x_1732);
      }
      let x_1734 : i32 = u_xlati49;
      u_xlati49 = (x_1734 << bitcast<u32>(2i));
      let x_1736 : vec3<f32> = vs_TEXCOORD7;
      let x_1738 : i32 = u_xlati49;
      let x_1741 : i32 = u_xlati49;
      let x_1745 : vec4<f32> = x_1018.x_AdditionalLightsWorldToShadow[((x_1738 + 1i) / 4i)][((x_1741 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1736.y, x_1736.y, x_1736.y, x_1736.y) * x_1745);
      let x_1747 : i32 = u_xlati49;
      let x_1749 : i32 = u_xlati49;
      let x_1752 : vec4<f32> = x_1018.x_AdditionalLightsWorldToShadow[(x_1747 / 4i)][(x_1749 % 4i)];
      let x_1753 : vec3<f32> = vs_TEXCOORD7;
      let x_1756 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1752 * vec4<f32>(x_1753.x, x_1753.x, x_1753.x, x_1753.x)) + x_1756);
      let x_1758 : i32 = u_xlati49;
      let x_1761 : i32 = u_xlati49;
      let x_1765 : vec4<f32> = x_1018.x_AdditionalLightsWorldToShadow[((x_1758 + 2i) / 4i)][((x_1761 + 2i) % 4i)];
      let x_1766 : vec3<f32> = vs_TEXCOORD7;
      let x_1769 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1765 * vec4<f32>(x_1766.z, x_1766.z, x_1766.z, x_1766.z)) + x_1769);
      let x_1771 : vec4<f32> = u_xlat11;
      let x_1772 : i32 = u_xlati49;
      let x_1775 : i32 = u_xlati49;
      let x_1779 : vec4<f32> = x_1018.x_AdditionalLightsWorldToShadow[((x_1772 + 3i) / 4i)][((x_1775 + 3i) % 4i)];
      u_xlat11 = (x_1771 + x_1779);
      let x_1781 : vec4<f32> = u_xlat11;
      let x_1783 : vec4<f32> = u_xlat11;
      let x_1785 : vec3<f32> = (vec3<f32>(x_1781.x, x_1781.y, x_1781.z) / vec3<f32>(x_1783.w, x_1783.w, x_1783.w));
      let x_1786 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1785.x, x_1785.y, x_1785.z, x_1786.w);
      let x_1789 : vec4<f32> = u_xlat11;
      let x_1790 : vec2<f32> = vec2<f32>(x_1789.x, x_1789.y);
      let x_1792 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1790.x, x_1790.y, x_1792);
      let x_1800 : vec3<f32> = txVec1;
      let x_1802 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1800.xy, x_1800.z);
      u_xlat49 = x_1802;
      let x_1803 : i32 = u_xlati5;
      let x_1805 : f32 = x_1018.x_AdditionalShadowParams[x_1803].x;
      u_xlat50 = (1.0f + -(x_1805));
      let x_1808 : f32 = u_xlat49;
      let x_1809 : i32 = u_xlati5;
      let x_1811 : f32 = x_1018.x_AdditionalShadowParams[x_1809].x;
      let x_1813 : f32 = u_xlat50;
      u_xlat49 = ((x_1808 * x_1811) + x_1813);
      let x_1816 : f32 = u_xlat11.z;
      u_xlatb50 = (0.0f >= x_1816);
      let x_1820 : f32 = u_xlat11.z;
      u_xlatb51 = (x_1820 >= 1.0f);
      let x_1822 : bool = u_xlatb50;
      let x_1823 : bool = u_xlatb51;
      u_xlatb50 = (x_1822 | x_1823);
      let x_1825 : bool = u_xlatb50;
      let x_1826 : f32 = u_xlat49;
      u_xlat49 = select(x_1826, 1.0f, x_1825);
    } else {
      u_xlat49 = 1.0f;
    }
    let x_1829 : f32 = u_xlat49;
    u_xlat50 = (-(x_1829) + 1.0f);
    let x_1832 : f32 = u_xlat44;
    let x_1833 : f32 = u_xlat50;
    let x_1835 : f32 = u_xlat49;
    u_xlat49 = ((x_1832 * x_1833) + x_1835);
    let x_1838 : i32 = u_xlati5;
    u_xlati50 = (1i << bitcast<u32>((x_1838 & 31i)));
    let x_1841 : i32 = u_xlati50;
    let x_1844 : f32 = x_1094.x_AdditionalLightsCookieEnableBits;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1841) & bitcast<u32>(x_1844)));
    let x_1848 : i32 = u_xlati50;
    if ((x_1848 != 0i)) {
      let x_1852 : i32 = u_xlati5;
      let x_1854 : f32 = x_1094.x_AdditionalLightsLightTypes[x_1852].el;
      u_xlati50 = i32(x_1854);
      let x_1857 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1857 != 0i));
      let x_1861 : i32 = u_xlati5;
      u_xlati52 = (x_1861 << bitcast<u32>(2i));
      let x_1863 : i32 = u_xlati51;
      if ((x_1863 != 0i)) {
        let x_1867 : vec3<f32> = vs_TEXCOORD7;
        let x_1869 : i32 = u_xlati52;
        let x_1872 : i32 = u_xlati52;
        let x_1876 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[((x_1869 + 1i) / 4i)][((x_1872 + 1i) % 4i)];
        let x_1878 : vec3<f32> = (vec3<f32>(x_1867.y, x_1867.y, x_1867.y) * vec3<f32>(x_1876.x, x_1876.y, x_1876.w));
        let x_1879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
        let x_1881 : i32 = u_xlati52;
        let x_1883 : i32 = u_xlati52;
        let x_1886 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[(x_1881 / 4i)][(x_1883 % 4i)];
        let x_1888 : vec3<f32> = vs_TEXCOORD7;
        let x_1891 : vec4<f32> = u_xlat11;
        let x_1893 : vec3<f32> = ((vec3<f32>(x_1886.x, x_1886.y, x_1886.w) * vec3<f32>(x_1888.x, x_1888.x, x_1888.x)) + vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
        let x_1894 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
        let x_1896 : i32 = u_xlati52;
        let x_1899 : i32 = u_xlati52;
        let x_1903 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[((x_1896 + 2i) / 4i)][((x_1899 + 2i) % 4i)];
        let x_1905 : vec3<f32> = vs_TEXCOORD7;
        let x_1908 : vec4<f32> = u_xlat11;
        let x_1910 : vec3<f32> = ((vec3<f32>(x_1903.x, x_1903.y, x_1903.w) * vec3<f32>(x_1905.z, x_1905.z, x_1905.z)) + vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
        let x_1911 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
        let x_1913 : vec4<f32> = u_xlat11;
        let x_1915 : i32 = u_xlati52;
        let x_1918 : i32 = u_xlati52;
        let x_1922 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[((x_1915 + 3i) / 4i)][((x_1918 + 3i) % 4i)];
        let x_1924 : vec3<f32> = (vec3<f32>(x_1913.x, x_1913.y, x_1913.z) + vec3<f32>(x_1922.x, x_1922.y, x_1922.w));
        let x_1925 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
        let x_1927 : vec4<f32> = u_xlat11;
        let x_1929 : vec4<f32> = u_xlat11;
        let x_1931 : vec2<f32> = (vec2<f32>(x_1927.x, x_1927.y) / vec2<f32>(x_1929.z, x_1929.z));
        let x_1932 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1931.x, x_1931.y, x_1932.z, x_1932.w);
        let x_1934 : vec4<f32> = u_xlat11;
        let x_1937 : vec2<f32> = ((vec2<f32>(x_1934.x, x_1934.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1938 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1937.x, x_1937.y, x_1938.z, x_1938.w);
        let x_1940 : vec4<f32> = u_xlat11;
        let x_1944 : vec2<f32> = clamp(vec2<f32>(x_1940.x, x_1940.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1945 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1944.x, x_1944.y, x_1945.z, x_1945.w);
        let x_1947 : i32 = u_xlati5;
        let x_1949 : vec4<f32> = x_1094.x_AdditionalLightsCookieAtlasUVRects[x_1947];
        let x_1951 : vec4<f32> = u_xlat11;
        let x_1954 : i32 = u_xlati5;
        let x_1956 : vec4<f32> = x_1094.x_AdditionalLightsCookieAtlasUVRects[x_1954];
        let x_1958 : vec2<f32> = ((vec2<f32>(x_1949.x, x_1949.y) * vec2<f32>(x_1951.x, x_1951.y)) + vec2<f32>(x_1956.z, x_1956.w));
        let x_1959 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1958.x, x_1958.y, x_1959.z, x_1959.w);
      } else {
        let x_1962 : i32 = u_xlati50;
        u_xlatb50 = (x_1962 == 1i);
        let x_1964 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1964);
        let x_1966 : i32 = u_xlati50;
        if ((x_1966 != 0i)) {
          let x_1972 : vec3<f32> = vs_TEXCOORD7;
          let x_1974 : i32 = u_xlati52;
          let x_1977 : i32 = u_xlati52;
          let x_1981 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[((x_1974 + 1i) / 4i)][((x_1977 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1972.y, x_1972.y) * vec2<f32>(x_1981.x, x_1981.y));
          let x_1984 : i32 = u_xlati52;
          let x_1986 : i32 = u_xlati52;
          let x_1989 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[(x_1984 / 4i)][(x_1986 % 4i)];
          let x_1991 : vec3<f32> = vs_TEXCOORD7;
          let x_1994 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1989.x, x_1989.y) * vec2<f32>(x_1991.x, x_1991.x)) + x_1994);
          let x_1996 : i32 = u_xlati52;
          let x_1999 : i32 = u_xlati52;
          let x_2003 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[((x_1996 + 2i) / 4i)][((x_1999 + 2i) % 4i)];
          let x_2005 : vec3<f32> = vs_TEXCOORD7;
          let x_2008 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2003.x, x_2003.y) * vec2<f32>(x_2005.z, x_2005.z)) + x_2008);
          let x_2010 : vec2<f32> = u_xlat39;
          let x_2011 : i32 = u_xlati52;
          let x_2014 : i32 = u_xlati52;
          let x_2018 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[((x_2011 + 3i) / 4i)][((x_2014 + 3i) % 4i)];
          u_xlat39 = (x_2010 + vec2<f32>(x_2018.x, x_2018.y));
          let x_2021 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2021 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2024 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_2024);
          let x_2026 : i32 = u_xlati5;
          let x_2028 : vec4<f32> = x_1094.x_AdditionalLightsCookieAtlasUVRects[x_2026];
          let x_2030 : vec2<f32> = u_xlat39;
          let x_2032 : i32 = u_xlati5;
          let x_2034 : vec4<f32> = x_1094.x_AdditionalLightsCookieAtlasUVRects[x_2032];
          let x_2036 : vec2<f32> = ((vec2<f32>(x_2028.x, x_2028.y) * x_2030) + vec2<f32>(x_2034.z, x_2034.w));
          let x_2037 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2036.x, x_2036.y, x_2037.z, x_2037.w);
        } else {
          let x_2040 : vec3<f32> = vs_TEXCOORD7;
          let x_2042 : i32 = u_xlati52;
          let x_2045 : i32 = u_xlati52;
          let x_2049 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[((x_2042 + 1i) / 4i)][((x_2045 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2040.y, x_2040.y, x_2040.y, x_2040.y) * x_2049);
          let x_2051 : i32 = u_xlati52;
          let x_2053 : i32 = u_xlati52;
          let x_2056 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[(x_2051 / 4i)][(x_2053 % 4i)];
          let x_2057 : vec3<f32> = vs_TEXCOORD7;
          let x_2060 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2056 * vec4<f32>(x_2057.x, x_2057.x, x_2057.x, x_2057.x)) + x_2060);
          let x_2062 : i32 = u_xlati52;
          let x_2065 : i32 = u_xlati52;
          let x_2069 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[((x_2062 + 2i) / 4i)][((x_2065 + 2i) % 4i)];
          let x_2070 : vec3<f32> = vs_TEXCOORD7;
          let x_2073 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2069 * vec4<f32>(x_2070.z, x_2070.z, x_2070.z, x_2070.z)) + x_2073);
          let x_2075 : vec4<f32> = u_xlat12;
          let x_2076 : i32 = u_xlati52;
          let x_2079 : i32 = u_xlati52;
          let x_2083 : vec4<f32> = x_1094.x_AdditionalLightsWorldToLights[((x_2076 + 3i) / 4i)][((x_2079 + 3i) % 4i)];
          u_xlat12 = (x_2075 + x_2083);
          let x_2085 : vec4<f32> = u_xlat12;
          let x_2087 : vec4<f32> = u_xlat12;
          let x_2089 : vec3<f32> = (vec3<f32>(x_2085.x, x_2085.y, x_2085.z) / vec3<f32>(x_2087.w, x_2087.w, x_2087.w));
          let x_2090 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
          let x_2092 : vec4<f32> = u_xlat12;
          let x_2094 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_2092.x, x_2092.y, x_2092.z), vec3<f32>(x_2094.x, x_2094.y, x_2094.z));
          let x_2097 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_2097);
          let x_2099 : f32 = u_xlat50;
          let x_2101 : vec4<f32> = u_xlat12;
          let x_2103 : vec3<f32> = (vec3<f32>(x_2099, x_2099, x_2099) * vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
          let x_2104 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
          let x_2106 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_2106.x, x_2106.y, x_2106.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2111 : f32 = u_xlat50;
          u_xlat50 = max(x_2111, 0.00000099999999747524f);
          let x_2114 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_2114);
          let x_2116 : f32 = u_xlat50;
          let x_2118 : vec4<f32> = u_xlat12;
          let x_2120 : vec3<f32> = (vec3<f32>(x_2116, x_2116, x_2116) * vec3<f32>(x_2118.z, x_2118.x, x_2118.y));
          let x_2121 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
          let x_2124 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2124);
          let x_2128 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2128, 0.0f, 1.0f);
          let x_2132 : vec4<f32> = u_xlat13;
          let x_2134 : vec4<bool> = (vec4<f32>(x_2132.y, x_2132.z, x_2132.y, x_2132.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_2134.x, x_2134.y);
          let x_2137 : bool = u_xlatb39.x;
          if (x_2137) {
            let x_2142 : f32 = u_xlat13.x;
            x_2138 = x_2142;
          } else {
            let x_2145 : f32 = u_xlat13.x;
            x_2138 = -(x_2145);
          }
          let x_2147 : f32 = x_2138;
          u_xlat39.x = x_2147;
          let x_2150 : bool = u_xlatb39.y;
          if (x_2150) {
            let x_2155 : f32 = u_xlat13.x;
            x_2151 = x_2155;
          } else {
            let x_2158 : f32 = u_xlat13.x;
            x_2151 = -(x_2158);
          }
          let x_2160 : f32 = x_2151;
          u_xlat39.y = x_2160;
          let x_2162 : vec4<f32> = u_xlat12;
          let x_2164 : f32 = u_xlat50;
          let x_2167 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_2162.x, x_2162.y) * vec2<f32>(x_2164, x_2164)) + x_2167);
          let x_2169 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_2169 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2172 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_2172, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2176 : i32 = u_xlati5;
          let x_2178 : vec4<f32> = x_1094.x_AdditionalLightsCookieAtlasUVRects[x_2176];
          let x_2180 : vec2<f32> = u_xlat39;
          let x_2182 : i32 = u_xlati5;
          let x_2184 : vec4<f32> = x_1094.x_AdditionalLightsCookieAtlasUVRects[x_2182];
          let x_2186 : vec2<f32> = ((vec2<f32>(x_2178.x, x_2178.y) * x_2180) + vec2<f32>(x_2184.z, x_2184.w));
          let x_2187 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2186.x, x_2186.y, x_2187.z, x_2187.w);
        }
      }
      let x_2194 : vec4<f32> = u_xlat11;
      let x_2196 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2194.x, x_2194.y), 0.0f);
      u_xlat11 = x_2196;
      let x_2198 : bool = u_xlatb7.y;
      if (x_2198) {
        let x_2203 : f32 = u_xlat11.w;
        x_2199 = x_2203;
      } else {
        let x_2206 : f32 = u_xlat11.x;
        x_2199 = x_2206;
      }
      let x_2207 : f32 = x_2199;
      u_xlat50 = x_2207;
      let x_2209 : bool = u_xlatb7.x;
      if (x_2209) {
        let x_2213 : vec4<f32> = u_xlat11;
        x_2210 = vec3<f32>(x_2213.x, x_2213.y, x_2213.z);
      } else {
        let x_2216 : f32 = u_xlat50;
        x_2210 = vec3<f32>(x_2216, x_2216, x_2216);
      }
      let x_2218 : vec3<f32> = x_2210;
      let x_2219 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2218.x, x_2218.y, x_2218.z, x_2219.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2225 : vec4<f32> = u_xlat11;
    let x_2227 : i32 = u_xlati5;
    let x_2229 : vec4<f32> = x_1571.x_AdditionalLightsColor[x_2227];
    let x_2231 : vec3<f32> = (vec3<f32>(x_2225.x, x_2225.y, x_2225.z) * vec3<f32>(x_2229.x, x_2229.y, x_2229.z));
    let x_2232 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
    let x_2234 : f32 = u_xlat48;
    let x_2235 : f32 = u_xlat49;
    u_xlat5.x = (x_2234 * x_2235);
    let x_2238 : vec4<f32> = u_xlat1;
    let x_2240 : vec4<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_2238.x, x_2238.y, x_2238.z), vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
    let x_2243 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2243, 0.0f, 1.0f);
    let x_2246 : f32 = u_xlat5.x;
    let x_2247 : f32 = u_xlat48;
    u_xlat5.x = (x_2246 * x_2247);
    let x_2250 : vec4<f32> = u_xlat5;
    let x_2252 : vec4<f32> = u_xlat11;
    let x_2254 : vec3<f32> = (vec3<f32>(x_2250.x, x_2250.x, x_2250.x) * vec3<f32>(x_2252.x, x_2252.y, x_2252.z));
    let x_2255 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2254.x, x_2254.y, x_2254.z, x_2255.w);
    let x_2257 : vec4<f32> = u_xlat9;
    let x_2259 : f32 = u_xlat35;
    let x_2262 : vec4<f32> = u_xlat6;
    let x_2264 : vec3<f32> = ((vec3<f32>(x_2257.x, x_2257.y, x_2257.z) * vec3<f32>(x_2259, x_2259, x_2259)) + vec3<f32>(x_2262.x, x_2262.y, x_2262.z));
    let x_2265 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2264.x, x_2264.y, x_2264.z, x_2265.w);
    let x_2267 : vec4<f32> = u_xlat9;
    let x_2269 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2267.x, x_2267.y, x_2267.z), vec3<f32>(x_2269.x, x_2269.y, x_2269.z));
    let x_2274 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_2274, 1.17549435e-38f);
    let x_2278 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_2278);
    let x_2281 : vec4<f32> = u_xlat5;
    let x_2283 : vec4<f32> = u_xlat9;
    let x_2285 : vec3<f32> = (vec3<f32>(x_2281.x, x_2281.x, x_2281.x) * vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
    let x_2286 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
    let x_2288 : vec4<f32> = u_xlat1;
    let x_2290 : vec4<f32> = u_xlat9;
    u_xlat5.x = dot(vec3<f32>(x_2288.x, x_2288.y, x_2288.z), vec3<f32>(x_2290.x, x_2290.y, x_2290.z));
    let x_2295 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_2295, 0.0f, 1.0f);
    let x_2298 : vec4<f32> = u_xlat10;
    let x_2300 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2298.x, x_2298.y, x_2298.z), vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
    let x_2303 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2303, 0.0f, 1.0f);
    let x_2306 : f32 = u_xlat5.x;
    let x_2308 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2306 * x_2308);
    let x_2312 : f32 = u_xlat5.x;
    let x_2314 : f32 = u_xlat0.x;
    u_xlat5.x = ((x_2312 * x_2314) + 1.00001001358032226562f);
    let x_2318 : f32 = u_xlat48;
    let x_2319 : f32 = u_xlat48;
    u_xlat48 = (x_2318 * x_2319);
    let x_2322 : f32 = u_xlat5.x;
    let x_2324 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2322 * x_2324);
    let x_2327 : f32 = u_xlat48;
    u_xlat48 = max(x_2327, 0.10000000149011611938f);
    let x_2330 : f32 = u_xlat5.x;
    let x_2331 : f32 = u_xlat48;
    u_xlat5.x = (x_2330 * x_2331);
    let x_2334 : f32 = u_xlat45;
    let x_2336 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2334 * x_2336);
    let x_2339 : f32 = u_xlat43;
    let x_2341 : f32 = u_xlat5.x;
    u_xlat5.x = (x_2339 / x_2341);
    let x_2344 : vec4<f32> = u_xlat4;
    let x_2346 : vec4<f32> = u_xlat5;
    let x_2349 : vec4<f32> = u_xlat3;
    let x_2351 : vec3<f32> = ((vec3<f32>(x_2344.x, x_2344.y, x_2344.z) * vec3<f32>(x_2346.x, x_2346.x, x_2346.x)) + vec3<f32>(x_2349.x, x_2349.y, x_2349.z));
    let x_2352 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2351.x, x_2351.y, x_2351.z, x_2352.w);
    let x_2354 : vec4<f32> = u_xlat9;
    let x_2356 : vec4<f32> = u_xlat11;
    let x_2359 : vec4<f32> = u_xlat8;
    let x_2361 : vec3<f32> = ((vec3<f32>(x_2354.x, x_2354.y, x_2354.z) * vec3<f32>(x_2356.x, x_2356.y, x_2356.z)) + vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
    let x_2362 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);

    continuing {
      let x_2364 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2364 + bitcast<u32>(1i));
    }
  }
  let x_2366 : vec3<f32> = u_xlat2;
  let x_2367 : f32 = u_xlat14;
  let x_2370 : vec3<f32> = u_xlat19;
  u_xlat0 = ((x_2366 * vec3<f32>(x_2367, x_2367, x_2367)) + x_2370);
  let x_2372 : vec4<f32> = u_xlat8;
  let x_2374 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2372.x, x_2372.y, x_2372.z) + x_2374);
  let x_2378 : f32 = u_xlat42;
  let x_2380 : vec3<f32> = u_xlat0;
  let x_2381 : vec3<f32> = (vec3<f32>(x_2378, x_2378, x_2378) * x_2380);
  let x_2382 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2381.x, x_2381.y, x_2381.z, x_2382.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(7) vs_TEXCOORD8_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



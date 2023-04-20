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

@group(1) @binding(4) var<uniform> x_610 : LightShadows;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu43 : u32;

var<private> u_xlati43 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(14) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(9) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(19) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : f32;

var<private> u_xlat47 : f32;

@group(1) @binding(5) var<uniform> x_1035 : LightCookies;

@group(0) @binding(11) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb8 : vec2<bool>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(13) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1223 : UnityPerDraw;

var<private> u_xlatu28 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu48 : u32;

var<private> u_xlati35 : i32;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

@group(1) @binding(1) var<uniform> x_1515 : AdditionalLights;

var<private> u_xlat35 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlati50 : i32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat52 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(10) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb52 : bool;

var<private> u_xlati51 : i32;

var<private> u_xlati52 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat25 : vec3<f32>;

@group(0) @binding(12) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu47 : u32;

var<private> u_xlatb48 : bool;

fn main_1() {
  var x_583 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_988 : f32;
  var x_1118 : f32;
  var x_1129 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1651 : f32;
  var x_1661 : f32;
  var txVec1 : vec3<f32>;
  var x_2089 : f32;
  var x_2102 : f32;
  var x_2160 : f32;
  var x_2171 : vec3<f32>;
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
  let x_572 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat2.x = x_572;
  let x_575 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat2.y = x_575;
  let x_579 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat2.z = x_579;
  let x_581 : bool = u_xlatb1;
  if (x_581) {
    let x_586 : vec3<f32> = u_xlat15;
    x_583 = x_586;
  } else {
    let x_588 : vec3<f32> = u_xlat2;
    x_583 = x_588;
  }
  let x_589 : vec3<f32> = x_583;
  let x_590 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_593 : vec3<f32> = vs_TEXCOORD3;
  let x_594 : vec3<f32> = vs_TEXCOORD3;
  u_xlat43 = dot(x_593, x_594);
  let x_596 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_596);
  let x_598 : f32 = u_xlat43;
  let x_600 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_598, x_598, x_598) * x_600);
  let x_602 : vec3<f32> = vs_TEXCOORD7;
  let x_612 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres0;
  let x_615 : vec3<f32> = (x_602 + -(vec3<f32>(x_612.x, x_612.y, x_612.z)));
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_618 : vec3<f32> = vs_TEXCOORD7;
  let x_620 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres1;
  let x_623 : vec3<f32> = (x_618 + -(vec3<f32>(x_620.x, x_620.y, x_620.z)));
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec3<f32> = vs_TEXCOORD7;
  let x_629 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres2;
  let x_632 : vec3<f32> = (x_626 + -(vec3<f32>(x_629.x, x_629.y, x_629.z)));
  let x_633 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec3<f32> = vs_TEXCOORD7;
  let x_637 : vec4<f32> = x_610.x_CascadeShadowSplitSpheres3;
  let x_640 : vec3<f32> = (x_635 + -(vec3<f32>(x_637.x, x_637.y, x_637.z)));
  let x_641 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat3;
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_643.x, x_643.y, x_643.z), vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_649 : vec4<f32> = u_xlat4;
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_649.x, x_649.y, x_649.z), vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_655 : vec4<f32> = u_xlat6;
  let x_657 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_655.x, x_655.y, x_655.z), vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_661 : vec4<f32> = u_xlat7;
  let x_663 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_661.x, x_661.y, x_661.z), vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_669 : vec4<f32> = u_xlat3;
  let x_671 : vec4<f32> = x_610.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_669 < x_671);
  let x_674 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_674);
  let x_678 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_678);
  let x_682 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_682);
  let x_686 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_686);
  let x_690 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_690);
  let x_695 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_695);
  let x_699 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_699);
  let x_702 : vec4<f32> = u_xlat3;
  let x_704 : vec4<f32> = u_xlat4;
  let x_706 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) + vec3<f32>(x_704.y, x_704.z, x_704.w));
  let x_707 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat3;
  let x_712 : vec3<f32> = max(vec3<f32>(x_709.x, x_709.y, x_709.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_713 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_713.x, x_712.x, x_712.y, x_712.z);
  let x_715 : vec4<f32> = u_xlat4;
  u_xlat43 = dot(x_715, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_720 : f32 = u_xlat43;
  u_xlat43 = (-(x_720) + 4.0f);
  let x_725 : f32 = u_xlat43;
  u_xlatu43 = u32(x_725);
  let x_729 : u32 = u_xlatu43;
  u_xlati43 = (bitcast<i32>(x_729) << bitcast<u32>(2i));
  let x_732 : vec3<f32> = vs_TEXCOORD7;
  let x_734 : i32 = u_xlati43;
  let x_737 : i32 = u_xlati43;
  let x_741 : vec4<f32> = x_610.x_MainLightWorldToShadow[((x_734 + 1i) / 4i)][((x_737 + 1i) % 4i)];
  let x_743 : vec3<f32> = (vec3<f32>(x_732.y, x_732.y, x_732.y) * vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  let x_746 : i32 = u_xlati43;
  let x_748 : i32 = u_xlati43;
  let x_751 : vec4<f32> = x_610.x_MainLightWorldToShadow[(x_746 / 4i)][(x_748 % 4i)];
  let x_753 : vec3<f32> = vs_TEXCOORD7;
  let x_756 : vec4<f32> = u_xlat3;
  let x_758 : vec3<f32> = ((vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(x_753.x, x_753.x, x_753.x)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : i32 = u_xlati43;
  let x_764 : i32 = u_xlati43;
  let x_768 : vec4<f32> = x_610.x_MainLightWorldToShadow[((x_761 + 2i) / 4i)][((x_764 + 2i) % 4i)];
  let x_770 : vec3<f32> = vs_TEXCOORD7;
  let x_773 : vec4<f32> = u_xlat3;
  let x_775 : vec3<f32> = ((vec3<f32>(x_768.x, x_768.y, x_768.z) * vec3<f32>(x_770.z, x_770.z, x_770.z)) + vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat3;
  let x_780 : i32 = u_xlati43;
  let x_783 : i32 = u_xlati43;
  let x_787 : vec4<f32> = x_610.x_MainLightWorldToShadow[((x_780 + 3i) / 4i)][((x_783 + 3i) % 4i)];
  let x_789 : vec3<f32> = (vec3<f32>(x_778.x, x_778.y, x_778.z) + vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_794 : f32 = vs_TEXCOORD7.y;
  let x_796 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat43 = (x_794 * x_796);
  let x_799 : f32 = x_29.unity_MatrixV[0i].z;
  let x_801 : f32 = vs_TEXCOORD7.x;
  let x_803 : f32 = u_xlat43;
  u_xlat43 = ((x_799 * x_801) + x_803);
  let x_806 : f32 = x_29.unity_MatrixV[2i].z;
  let x_808 : f32 = vs_TEXCOORD7.z;
  let x_810 : f32 = u_xlat43;
  u_xlat43 = ((x_806 * x_808) + x_810);
  let x_812 : f32 = u_xlat43;
  let x_814 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat43 = (x_812 + x_814);
  let x_816 : f32 = u_xlat43;
  let x_819 : f32 = x_29.x_ProjectionParams.y;
  u_xlat43 = (-(x_816) + -(x_819));
  let x_822 : f32 = u_xlat43;
  u_xlat43 = max(x_822, 0.0f);
  let x_824 : f32 = u_xlat43;
  let x_826 : f32 = x_29.unity_FogParams.x;
  u_xlat43 = (x_824 * x_826);
  let x_833 : vec4<f32> = vs_TEXCOORD0;
  let x_836 : f32 = x_29.x_GlobalMipBias.x;
  let x_837 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_833.z, x_833.w), x_836);
  u_xlat4 = x_837;
  let x_842 : vec4<f32> = vs_TEXCOORD0;
  let x_845 : f32 = x_29.x_GlobalMipBias.x;
  let x_846 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_842.z, x_842.w), x_845);
  let x_847 : vec3<f32> = vec3<f32>(x_846.x, x_846.y, x_846.z);
  let x_848 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat4;
  let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_858 : vec3<f32> = u_xlat2;
  let x_859 : vec4<f32> = u_xlat4;
  u_xlat44 = dot(x_858, vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : f32 = u_xlat44;
  u_xlat44 = (x_862 + 0.5f);
  let x_864 : f32 = u_xlat44;
  let x_866 : vec4<f32> = u_xlat6;
  let x_868 : vec3<f32> = (vec3<f32>(x_864, x_864, x_864) * vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_872 : f32 = u_xlat4.w;
  u_xlat44 = max(x_872, 0.00009999999747378752f);
  let x_875 : vec4<f32> = u_xlat4;
  let x_877 : f32 = u_xlat44;
  let x_879 : vec3<f32> = (vec3<f32>(x_875.x, x_875.y, x_875.z) / vec3<f32>(x_877, x_877, x_877));
  let x_880 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_883 : f32 = u_xlat0.x;
  u_xlat44 = ((-(x_883) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_889 : f32 = u_xlat28;
  let x_890 : f32 = u_xlat44;
  u_xlat45 = (x_889 + -(x_890));
  let x_893 : f32 = u_xlat44;
  let x_895 : vec4<f32> = u_xlat5;
  let x_897 : vec3<f32> = (vec3<f32>(x_893, x_893, x_893) * vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat5;
  let x_904 : vec3<f32> = (vec3<f32>(x_900.x, x_900.y, x_900.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_905 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec3<f32> = u_xlat0;
  let x_909 : vec4<f32> = u_xlat5;
  let x_914 : vec3<f32> = ((vec3<f32>(x_907.x, x_907.x, x_907.x) * vec3<f32>(x_909.x, x_909.y, x_909.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_915 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : f32 = u_xlat28;
  u_xlat0.x = (-(x_917) + 1.0f);
  let x_922 : f32 = u_xlat0.x;
  let x_924 : f32 = u_xlat0.x;
  u_xlat28 = (x_922 * x_924);
  let x_926 : f32 = u_xlat28;
  u_xlat28 = max(x_926, 0.0078125f);
  let x_929 : f32 = u_xlat28;
  let x_930 : f32 = u_xlat28;
  u_xlat44 = (x_929 * x_930);
  let x_932 : f32 = u_xlat45;
  u_xlat45 = (x_932 + 1.0f);
  let x_934 : f32 = u_xlat45;
  u_xlat45 = clamp(x_934, 0.0f, 1.0f);
  let x_937 : f32 = u_xlat28;
  u_xlat46 = ((x_937 * 4.0f) + 2.0f);
  let x_940 : f32 = u_xlat14;
  u_xlat14 = min(x_940, 1.0f);
  let x_943 : vec4<f32> = u_xlat3;
  let x_944 : vec2<f32> = vec2<f32>(x_943.x, x_943.y);
  let x_946 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_944.x, x_944.y, x_946);
  let x_958 : vec3<f32> = txVec0;
  let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_958.xy, x_958.z);
  u_xlat3.x = x_960;
  let x_964 : f32 = x_610.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_964) + 1.0f);
  let x_968 : f32 = u_xlat3.x;
  let x_970 : f32 = x_610.x_MainLightShadowParams.x;
  let x_972 : f32 = u_xlat17;
  u_xlat3.x = ((x_968 * x_970) + x_972);
  let x_977 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_977);
  let x_981 : f32 = u_xlat3.z;
  u_xlatb31 = (x_981 >= 1.0f);
  let x_983 : bool = u_xlatb31;
  let x_984 : bool = u_xlatb17;
  u_xlatb17 = (x_983 | x_984);
  let x_986 : bool = u_xlatb17;
  if (x_986) {
    x_988 = 1.0f;
  } else {
    let x_993 : f32 = u_xlat3.x;
    x_988 = x_993;
  }
  let x_994 : f32 = x_988;
  u_xlat3.x = x_994;
  let x_996 : vec3<f32> = vs_TEXCOORD7;
  let x_998 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1000 : vec3<f32> = (x_996 + -(x_998));
  let x_1001 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec4<f32> = u_xlat7;
  let x_1005 : vec4<f32> = u_xlat7;
  u_xlat17 = dot(vec3<f32>(x_1003.x, x_1003.y, x_1003.z), vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1009 : f32 = u_xlat17;
  let x_1011 : f32 = x_610.x_MainLightShadowParams.z;
  let x_1014 : f32 = x_610.x_MainLightShadowParams.w;
  u_xlat31 = ((x_1009 * x_1011) + x_1014);
  let x_1016 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1016, 0.0f, 1.0f);
  let x_1020 : f32 = u_xlat3.x;
  u_xlat47 = (-(x_1020) + 1.0f);
  let x_1023 : f32 = u_xlat31;
  let x_1024 : f32 = u_xlat47;
  let x_1027 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1023 * x_1024) + x_1027);
  let x_1037 : f32 = x_1035.x_MainLightCookieTextureFormat;
  u_xlatb31 = !((x_1037 == -1.0f));
  let x_1039 : bool = u_xlatb31;
  if (x_1039) {
    let x_1042 : vec3<f32> = vs_TEXCOORD7;
    let x_1045 : vec4<f32> = x_1035.x_MainLightWorldToLight[1i];
    let x_1047 : vec2<f32> = (vec2<f32>(x_1042.y, x_1042.y) * vec2<f32>(x_1045.x, x_1045.y));
    let x_1048 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
    let x_1051 : vec4<f32> = x_1035.x_MainLightWorldToLight[0i];
    let x_1053 : vec3<f32> = vs_TEXCOORD7;
    let x_1056 : vec4<f32> = u_xlat7;
    let x_1058 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1053.x, x_1053.x)) + vec2<f32>(x_1056.x, x_1056.y));
    let x_1059 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1058.x, x_1058.y, x_1059.z, x_1059.w);
    let x_1062 : vec4<f32> = x_1035.x_MainLightWorldToLight[2i];
    let x_1064 : vec3<f32> = vs_TEXCOORD7;
    let x_1067 : vec4<f32> = u_xlat7;
    let x_1069 : vec2<f32> = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1064.z, x_1064.z)) + vec2<f32>(x_1067.x, x_1067.y));
    let x_1070 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
    let x_1072 : vec4<f32> = u_xlat7;
    let x_1075 : vec4<f32> = x_1035.x_MainLightWorldToLight[3i];
    let x_1077 : vec2<f32> = (vec2<f32>(x_1072.x, x_1072.y) + vec2<f32>(x_1075.x, x_1075.y));
    let x_1078 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
    let x_1080 : vec4<f32> = u_xlat7;
    let x_1083 : vec2<f32> = ((vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1084 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1083.x, x_1083.y, x_1084.z, x_1084.w);
    let x_1091 : vec4<f32> = u_xlat7;
    let x_1094 : f32 = x_29.x_GlobalMipBias.x;
    let x_1095 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1091.x, x_1091.y), x_1094);
    u_xlat7 = x_1095;
    let x_1100 : f32 = x_1035.x_MainLightCookieTextureFormat;
    let x_1102 : f32 = x_1035.x_MainLightCookieTextureFormat;
    let x_1104 : f32 = x_1035.x_MainLightCookieTextureFormat;
    let x_1106 : f32 = x_1035.x_MainLightCookieTextureFormat;
    let x_1107 : vec4<f32> = vec4<f32>(x_1100, x_1102, x_1104, x_1106);
    let x_1114 : vec4<bool> = (vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1107.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb8 = vec2<bool>(x_1114.x, x_1114.y);
    let x_1117 : bool = u_xlatb8.y;
    if (x_1117) {
      let x_1122 : f32 = u_xlat7.w;
      x_1118 = x_1122;
    } else {
      let x_1125 : f32 = u_xlat7.x;
      x_1118 = x_1125;
    }
    let x_1126 : f32 = x_1118;
    u_xlat31 = x_1126;
    let x_1128 : bool = u_xlatb8.x;
    if (x_1128) {
      let x_1132 : vec4<f32> = u_xlat7;
      x_1129 = vec3<f32>(x_1132.x, x_1132.y, x_1132.z);
    } else {
      let x_1135 : f32 = u_xlat31;
      x_1129 = vec3<f32>(x_1135, x_1135, x_1135);
    }
    let x_1137 : vec3<f32> = x_1129;
    let x_1138 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1144 : vec4<f32> = u_xlat7;
  let x_1147 : vec4<f32> = x_29.x_MainLightColor;
  let x_1149 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.y, x_1144.z) * vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1152 : vec4<f32> = u_xlat1;
  let x_1155 : vec3<f32> = u_xlat2;
  u_xlat31 = dot(-(vec3<f32>(x_1152.x, x_1152.y, x_1152.z)), x_1155);
  let x_1157 : f32 = u_xlat31;
  let x_1158 : f32 = u_xlat31;
  u_xlat31 = (x_1157 + x_1158);
  let x_1160 : vec3<f32> = u_xlat2;
  let x_1161 : f32 = u_xlat31;
  let x_1165 : vec4<f32> = u_xlat1;
  let x_1168 : vec3<f32> = ((x_1160 * -(vec3<f32>(x_1161, x_1161, x_1161))) + -(vec3<f32>(x_1165.x, x_1165.y, x_1165.z)));
  let x_1169 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : vec3<f32> = u_xlat2;
  let x_1172 : vec4<f32> = u_xlat1;
  u_xlat31 = dot(x_1171, vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
  let x_1175 : f32 = u_xlat31;
  u_xlat31 = clamp(x_1175, 0.0f, 1.0f);
  let x_1177 : f32 = u_xlat31;
  u_xlat31 = (-(x_1177) + 1.0f);
  let x_1180 : f32 = u_xlat31;
  let x_1181 : f32 = u_xlat31;
  u_xlat31 = (x_1180 * x_1181);
  let x_1183 : f32 = u_xlat31;
  let x_1184 : f32 = u_xlat31;
  u_xlat31 = (x_1183 * x_1184);
  let x_1187 : f32 = u_xlat0.x;
  u_xlat47 = ((-(x_1187) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1194 : f32 = u_xlat0.x;
  let x_1195 : f32 = u_xlat47;
  u_xlat0.x = (x_1194 * x_1195);
  let x_1199 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1199 * 6.0f);
  let x_1211 : vec4<f32> = u_xlat8;
  let x_1214 : f32 = u_xlat0.x;
  let x_1215 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1211.x, x_1211.y, x_1211.z), x_1214);
  u_xlat8 = x_1215;
  let x_1217 : f32 = u_xlat8.w;
  u_xlat0.x = (x_1217 + -1.0f);
  let x_1225 : f32 = x_1223.unity_SpecCube0_HDR.w;
  let x_1227 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1225 * x_1227) + 1.0f);
  let x_1232 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_1232, 0.0f);
  let x_1236 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_1236);
  let x_1240 : f32 = u_xlat0.x;
  let x_1242 : f32 = x_1223.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_1240 * x_1242);
  let x_1246 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_1246);
  let x_1250 : f32 = u_xlat0.x;
  let x_1252 : f32 = x_1223.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_1250 * x_1252);
  let x_1255 : vec4<f32> = u_xlat8;
  let x_1257 : vec3<f32> = u_xlat0;
  let x_1259 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(x_1257.x, x_1257.x, x_1257.x));
  let x_1260 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
  let x_1262 : f32 = u_xlat28;
  let x_1264 : f32 = u_xlat28;
  let x_1268 : vec2<f32> = ((vec2<f32>(x_1262, x_1262) * vec2<f32>(x_1264, x_1264)) + vec2<f32>(-1.0f, 1.0f));
  let x_1269 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_1268.x, x_1269.y, x_1268.y);
  let x_1272 : f32 = u_xlat0.z;
  u_xlat28 = (1.0f / x_1272);
  let x_1274 : vec4<f32> = u_xlat5;
  let x_1277 : f32 = u_xlat45;
  let x_1279 : vec3<f32> = (-(vec3<f32>(x_1274.x, x_1274.y, x_1274.z)) + vec3<f32>(x_1277, x_1277, x_1277));
  let x_1280 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : f32 = u_xlat31;
  let x_1284 : vec4<f32> = u_xlat9;
  let x_1287 : vec4<f32> = u_xlat5;
  let x_1289 : vec3<f32> = ((vec3<f32>(x_1282, x_1282, x_1282) * vec3<f32>(x_1284.x, x_1284.y, x_1284.z)) + vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
  let x_1290 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
  let x_1292 : f32 = u_xlat28;
  let x_1294 : vec4<f32> = u_xlat9;
  let x_1296 : vec3<f32> = (vec3<f32>(x_1292, x_1292, x_1292) * vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1297 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1297.w);
  let x_1299 : vec4<f32> = u_xlat8;
  let x_1301 : vec4<f32> = u_xlat9;
  let x_1303 : vec3<f32> = (vec3<f32>(x_1299.x, x_1299.y, x_1299.z) * vec3<f32>(x_1301.x, x_1301.y, x_1301.z));
  let x_1304 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1303.x, x_1303.y, x_1303.z, x_1304.w);
  let x_1306 : vec4<f32> = u_xlat4;
  let x_1308 : vec4<f32> = u_xlat6;
  let x_1311 : vec4<f32> = u_xlat8;
  let x_1313 : vec3<f32> = ((vec3<f32>(x_1306.x, x_1306.y, x_1306.z) * vec3<f32>(x_1308.x, x_1308.y, x_1308.z)) + vec3<f32>(x_1311.x, x_1311.y, x_1311.z));
  let x_1314 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1314.w);
  let x_1317 : f32 = u_xlat3.x;
  let x_1319 : f32 = x_1223.unity_LightData.z;
  u_xlat28 = (x_1317 * x_1319);
  let x_1321 : vec3<f32> = u_xlat2;
  let x_1323 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(x_1321, vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1328 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1328, 0.0f, 1.0f);
  let x_1331 : f32 = u_xlat28;
  let x_1333 : f32 = u_xlat3.x;
  u_xlat28 = (x_1331 * x_1333);
  let x_1335 : f32 = u_xlat28;
  let x_1337 : vec4<f32> = u_xlat7;
  let x_1339 : vec3<f32> = (vec3<f32>(x_1335, x_1335, x_1335) * vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
  let x_1340 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1339.x, x_1340.y, x_1339.y, x_1339.z);
  let x_1342 : vec4<f32> = u_xlat1;
  let x_1345 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1347 : vec3<f32> = (vec3<f32>(x_1342.x, x_1342.y, x_1342.z) + vec3<f32>(x_1345.x, x_1345.y, x_1345.z));
  let x_1348 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1347.x, x_1347.y, x_1347.z, x_1348.w);
  let x_1350 : vec4<f32> = u_xlat7;
  let x_1352 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(vec3<f32>(x_1350.x, x_1350.y, x_1350.z), vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : f32 = u_xlat28;
  u_xlat28 = max(x_1355, 1.17549435e-38f);
  let x_1358 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_1358);
  let x_1360 : f32 = u_xlat28;
  let x_1362 : vec4<f32> = u_xlat7;
  let x_1364 : vec3<f32> = (vec3<f32>(x_1360, x_1360, x_1360) * vec3<f32>(x_1362.x, x_1362.y, x_1362.z));
  let x_1365 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1364.x, x_1364.y, x_1364.z, x_1365.w);
  let x_1367 : vec3<f32> = u_xlat2;
  let x_1368 : vec4<f32> = u_xlat7;
  u_xlat28 = dot(x_1367, vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
  let x_1371 : f32 = u_xlat28;
  u_xlat28 = clamp(x_1371, 0.0f, 1.0f);
  let x_1374 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1376 : vec4<f32> = u_xlat7;
  u_xlat47 = dot(vec3<f32>(x_1374.x, x_1374.y, x_1374.z), vec3<f32>(x_1376.x, x_1376.y, x_1376.z));
  let x_1379 : f32 = u_xlat47;
  u_xlat47 = clamp(x_1379, 0.0f, 1.0f);
  let x_1381 : f32 = u_xlat28;
  let x_1382 : f32 = u_xlat28;
  u_xlat28 = (x_1381 * x_1382);
  let x_1384 : f32 = u_xlat28;
  let x_1386 : f32 = u_xlat0.x;
  u_xlat28 = ((x_1384 * x_1386) + 1.00001001358032226562f);
  let x_1390 : f32 = u_xlat47;
  let x_1391 : f32 = u_xlat47;
  u_xlat47 = (x_1390 * x_1391);
  let x_1393 : f32 = u_xlat28;
  let x_1394 : f32 = u_xlat28;
  u_xlat28 = (x_1393 * x_1394);
  let x_1396 : f32 = u_xlat47;
  u_xlat47 = max(x_1396, 0.10000000149011611938f);
  let x_1399 : f32 = u_xlat28;
  let x_1400 : f32 = u_xlat47;
  u_xlat28 = (x_1399 * x_1400);
  let x_1402 : f32 = u_xlat46;
  let x_1403 : f32 = u_xlat28;
  u_xlat28 = (x_1402 * x_1403);
  let x_1405 : f32 = u_xlat44;
  let x_1406 : f32 = u_xlat28;
  u_xlat28 = (x_1405 / x_1406);
  let x_1408 : vec4<f32> = u_xlat5;
  let x_1410 : f32 = u_xlat28;
  let x_1413 : vec4<f32> = u_xlat6;
  let x_1415 : vec3<f32> = ((vec3<f32>(x_1408.x, x_1408.y, x_1408.z) * vec3<f32>(x_1410, x_1410, x_1410)) + vec3<f32>(x_1413.x, x_1413.y, x_1413.z));
  let x_1416 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
  let x_1418 : vec4<f32> = u_xlat3;
  let x_1420 : vec4<f32> = u_xlat7;
  let x_1422 : vec3<f32> = (vec3<f32>(x_1418.x, x_1418.z, x_1418.w) * vec3<f32>(x_1420.x, x_1420.y, x_1420.z));
  let x_1423 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1422.x, x_1423.y, x_1422.y, x_1422.z);
  let x_1426 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1428 : f32 = x_1223.unity_LightData.y;
  u_xlat28 = min(x_1426, x_1428);
  let x_1431 : f32 = u_xlat28;
  u_xlatu28 = bitcast<u32>(i32(x_1431));
  let x_1434 : f32 = u_xlat17;
  let x_1436 : f32 = x_610.x_AdditionalShadowFadeParams.x;
  let x_1439 : f32 = x_610.x_AdditionalShadowFadeParams.y;
  u_xlat17 = ((x_1434 * x_1436) + x_1439);
  let x_1441 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1441, 0.0f, 1.0f);
  let x_1445 : f32 = x_1035.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1447 : f32 = x_1035.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1449 : f32 = x_1035.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1451 : f32 = x_1035.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1452 : vec4<f32> = vec4<f32>(x_1445, x_1447, x_1449, x_1451);
  let x_1458 : vec4<bool> = (vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1452.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1458.x, x_1458.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1470 : u32 = u_xlatu_loop_1;
    let x_1471 : u32 = u_xlatu28;
    if ((x_1470 < x_1471)) {
    } else {
      break;
    }
    let x_1474 : u32 = u_xlatu_loop_1;
    u_xlatu48 = (x_1474 >> 2u);
    let x_1477 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1477 & 3u));
    let x_1481 : u32 = u_xlatu48;
    let x_1484 : vec4<f32> = x_1223.unity_LightIndices[bitcast<i32>(x_1481)];
    let x_1494 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1499 : vec4<u32> = indexable[x_1494];
    u_xlat48 = dot(x_1484, bitcast<vec4<f32>>(x_1499));
    let x_1503 : f32 = u_xlat48;
    u_xlati48 = i32(x_1503);
    let x_1505 : vec3<f32> = vs_TEXCOORD7;
    let x_1516 : i32 = u_xlati48;
    let x_1518 : vec4<f32> = x_1515.x_AdditionalLightsPosition[x_1516];
    let x_1521 : i32 = u_xlati48;
    let x_1523 : vec4<f32> = x_1515.x_AdditionalLightsPosition[x_1521];
    let x_1525 : vec3<f32> = ((-(x_1505) * vec3<f32>(x_1518.w, x_1518.w, x_1518.w)) + vec3<f32>(x_1523.x, x_1523.y, x_1523.z));
    let x_1526 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1525.x, x_1525.y, x_1525.z, x_1526.w);
    let x_1529 : vec4<f32> = u_xlat9;
    let x_1531 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_1529.x, x_1529.y, x_1529.z), vec3<f32>(x_1531.x, x_1531.y, x_1531.z));
    let x_1534 : f32 = u_xlat35;
    u_xlat35 = max(x_1534, 0.00006103515625f);
    let x_1537 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1537);
    let x_1539 : f32 = u_xlat49;
    let x_1541 : vec4<f32> = u_xlat9;
    let x_1543 : vec3<f32> = (vec3<f32>(x_1539, x_1539, x_1539) * vec3<f32>(x_1541.x, x_1541.y, x_1541.z));
    let x_1544 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1543.x, x_1543.y, x_1543.z, x_1544.w);
    let x_1547 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1547);
    let x_1549 : f32 = u_xlat35;
    let x_1550 : i32 = u_xlati48;
    let x_1552 : f32 = x_1515.x_AdditionalLightsAttenuation[x_1550].x;
    u_xlat35 = (x_1549 * x_1552);
    let x_1554 : f32 = u_xlat35;
    let x_1556 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1554) * x_1556) + 1.0f);
    let x_1559 : f32 = u_xlat35;
    u_xlat35 = max(x_1559, 0.0f);
    let x_1561 : f32 = u_xlat35;
    let x_1562 : f32 = u_xlat35;
    u_xlat35 = (x_1561 * x_1562);
    let x_1564 : f32 = u_xlat35;
    let x_1565 : f32 = u_xlat50;
    u_xlat35 = (x_1564 * x_1565);
    let x_1567 : i32 = u_xlati48;
    let x_1569 : vec4<f32> = x_1515.x_AdditionalLightsSpotDir[x_1567];
    let x_1571 : vec4<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1569.x, x_1569.y, x_1569.z), vec3<f32>(x_1571.x, x_1571.y, x_1571.z));
    let x_1574 : f32 = u_xlat50;
    let x_1575 : i32 = u_xlati48;
    let x_1577 : f32 = x_1515.x_AdditionalLightsAttenuation[x_1575].z;
    let x_1579 : i32 = u_xlati48;
    let x_1581 : f32 = x_1515.x_AdditionalLightsAttenuation[x_1579].w;
    u_xlat50 = ((x_1574 * x_1577) + x_1581);
    let x_1583 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1583, 0.0f, 1.0f);
    let x_1585 : f32 = u_xlat50;
    let x_1586 : f32 = u_xlat50;
    u_xlat50 = (x_1585 * x_1586);
    let x_1588 : f32 = u_xlat35;
    let x_1589 : f32 = u_xlat50;
    u_xlat35 = (x_1588 * x_1589);
    let x_1592 : i32 = u_xlati48;
    let x_1594 : f32 = x_610.x_AdditionalShadowParams[x_1592].w;
    u_xlati50 = i32(x_1594);
    let x_1597 : i32 = u_xlati50;
    u_xlatb51 = (x_1597 >= 0i);
    let x_1599 : bool = u_xlatb51;
    if (x_1599) {
      let x_1603 : i32 = u_xlati48;
      let x_1605 : f32 = x_610.x_AdditionalShadowParams[x_1603].z;
      u_xlatb51 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1605, x_1605, x_1605, x_1605))));
      let x_1609 : bool = u_xlatb51;
      if (x_1609) {
        let x_1613 : vec4<f32> = u_xlat10;
        let x_1616 : vec4<f32> = u_xlat10;
        let x_1619 : vec4<bool> = (abs(vec4<f32>(x_1613.z, x_1613.z, x_1613.y, x_1613.z)) >= abs(vec4<f32>(x_1616.x, x_1616.y, x_1616.x, x_1616.x)));
        let x_1621 : vec3<bool> = vec3<bool>(x_1619.x, x_1619.y, x_1619.z);
        let x_1622 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1621.x, x_1621.y, x_1621.z, x_1622.w);
        let x_1625 : bool = u_xlatb11.y;
        let x_1627 : bool = u_xlatb11.x;
        u_xlatb51 = (x_1625 & x_1627);
        let x_1629 : vec4<f32> = u_xlat10;
        let x_1632 : vec4<bool> = (-(vec4<f32>(x_1629.z, x_1629.y, x_1629.z, x_1629.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1633 : vec3<bool> = vec3<bool>(x_1632.x, x_1632.y, x_1632.w);
        let x_1634 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1633.x, x_1633.y, x_1634.z, x_1633.z);
        let x_1637 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1637);
        let x_1642 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1642);
        let x_1647 : bool = u_xlatb11.w;
        u_xlat52 = select(0.0f, 1.0f, x_1647);
        let x_1650 : bool = u_xlatb11.z;
        if (x_1650) {
          let x_1655 : f32 = u_xlat11.y;
          x_1651 = x_1655;
        } else {
          let x_1657 : f32 = u_xlat52;
          x_1651 = x_1657;
        }
        let x_1658 : f32 = x_1651;
        u_xlat52 = x_1658;
        let x_1660 : bool = u_xlatb51;
        if (x_1660) {
          let x_1665 : f32 = u_xlat11.x;
          x_1661 = x_1665;
        } else {
          let x_1667 : f32 = u_xlat52;
          x_1661 = x_1667;
        }
        let x_1668 : f32 = x_1661;
        u_xlat51 = x_1668;
        let x_1669 : i32 = u_xlati48;
        let x_1671 : f32 = x_610.x_AdditionalShadowParams[x_1669].w;
        u_xlat52 = trunc(x_1671);
        let x_1673 : f32 = u_xlat51;
        let x_1674 : f32 = u_xlat52;
        u_xlat51 = (x_1673 + x_1674);
        let x_1676 : f32 = u_xlat51;
        u_xlati50 = i32(x_1676);
      }
      let x_1678 : i32 = u_xlati50;
      u_xlati50 = (x_1678 << bitcast<u32>(2i));
      let x_1680 : vec3<f32> = vs_TEXCOORD7;
      let x_1682 : i32 = u_xlati50;
      let x_1685 : i32 = u_xlati50;
      let x_1689 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[((x_1682 + 1i) / 4i)][((x_1685 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1680.y, x_1680.y, x_1680.y, x_1680.y) * x_1689);
      let x_1691 : i32 = u_xlati50;
      let x_1693 : i32 = u_xlati50;
      let x_1696 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[(x_1691 / 4i)][(x_1693 % 4i)];
      let x_1697 : vec3<f32> = vs_TEXCOORD7;
      let x_1700 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1696 * vec4<f32>(x_1697.x, x_1697.x, x_1697.x, x_1697.x)) + x_1700);
      let x_1702 : i32 = u_xlati50;
      let x_1705 : i32 = u_xlati50;
      let x_1709 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[((x_1702 + 2i) / 4i)][((x_1705 + 2i) % 4i)];
      let x_1710 : vec3<f32> = vs_TEXCOORD7;
      let x_1713 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1709 * vec4<f32>(x_1710.z, x_1710.z, x_1710.z, x_1710.z)) + x_1713);
      let x_1715 : vec4<f32> = u_xlat11;
      let x_1716 : i32 = u_xlati50;
      let x_1719 : i32 = u_xlati50;
      let x_1723 : vec4<f32> = x_610.x_AdditionalLightsWorldToShadow[((x_1716 + 3i) / 4i)][((x_1719 + 3i) % 4i)];
      u_xlat11 = (x_1715 + x_1723);
      let x_1725 : vec4<f32> = u_xlat11;
      let x_1727 : vec4<f32> = u_xlat11;
      let x_1729 : vec3<f32> = (vec3<f32>(x_1725.x, x_1725.y, x_1725.z) / vec3<f32>(x_1727.w, x_1727.w, x_1727.w));
      let x_1730 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
      let x_1733 : vec4<f32> = u_xlat11;
      let x_1734 : vec2<f32> = vec2<f32>(x_1733.x, x_1733.y);
      let x_1736 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1734.x, x_1734.y, x_1736);
      let x_1744 : vec3<f32> = txVec1;
      let x_1746 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1744.xy, x_1744.z);
      u_xlat50 = x_1746;
      let x_1747 : i32 = u_xlati48;
      let x_1749 : f32 = x_610.x_AdditionalShadowParams[x_1747].x;
      u_xlat51 = (1.0f + -(x_1749));
      let x_1752 : f32 = u_xlat50;
      let x_1753 : i32 = u_xlati48;
      let x_1755 : f32 = x_610.x_AdditionalShadowParams[x_1753].x;
      let x_1757 : f32 = u_xlat51;
      u_xlat50 = ((x_1752 * x_1755) + x_1757);
      let x_1760 : f32 = u_xlat11.z;
      u_xlatb51 = (0.0f >= x_1760);
      let x_1764 : f32 = u_xlat11.z;
      u_xlatb52 = (x_1764 >= 1.0f);
      let x_1766 : bool = u_xlatb51;
      let x_1767 : bool = u_xlatb52;
      u_xlatb51 = (x_1766 | x_1767);
      let x_1769 : bool = u_xlatb51;
      let x_1770 : f32 = u_xlat50;
      u_xlat50 = select(x_1770, 1.0f, x_1769);
    } else {
      u_xlat50 = 1.0f;
    }
    let x_1773 : f32 = u_xlat50;
    u_xlat51 = (-(x_1773) + 1.0f);
    let x_1776 : f32 = u_xlat17;
    let x_1777 : f32 = u_xlat51;
    let x_1779 : f32 = u_xlat50;
    u_xlat50 = ((x_1776 * x_1777) + x_1779);
    let x_1782 : i32 = u_xlati48;
    u_xlati51 = (1i << bitcast<u32>((x_1782 & 31i)));
    let x_1785 : i32 = u_xlati51;
    let x_1788 : f32 = x_1035.x_AdditionalLightsCookieEnableBits;
    u_xlati51 = bitcast<i32>((bitcast<u32>(x_1785) & bitcast<u32>(x_1788)));
    let x_1792 : i32 = u_xlati51;
    if ((x_1792 != 0i)) {
      let x_1796 : i32 = u_xlati48;
      let x_1798 : f32 = x_1035.x_AdditionalLightsLightTypes[x_1796].el;
      u_xlati51 = i32(x_1798);
      let x_1801 : i32 = u_xlati51;
      u_xlati52 = select(1i, 0i, (x_1801 != 0i));
      let x_1805 : i32 = u_xlati48;
      u_xlati11 = (x_1805 << bitcast<u32>(2i));
      let x_1807 : i32 = u_xlati52;
      if ((x_1807 != 0i)) {
        let x_1812 : vec3<f32> = vs_TEXCOORD7;
        let x_1814 : i32 = u_xlati11;
        let x_1817 : i32 = u_xlati11;
        let x_1821 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[((x_1814 + 1i) / 4i)][((x_1817 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_1812.y, x_1812.y, x_1812.y) * vec3<f32>(x_1821.x, x_1821.y, x_1821.w));
        let x_1824 : i32 = u_xlati11;
        let x_1826 : i32 = u_xlati11;
        let x_1829 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[(x_1824 / 4i)][(x_1826 % 4i)];
        let x_1831 : vec3<f32> = vs_TEXCOORD7;
        let x_1834 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1829.x, x_1829.y, x_1829.w) * vec3<f32>(x_1831.x, x_1831.x, x_1831.x)) + x_1834);
        let x_1836 : i32 = u_xlati11;
        let x_1839 : i32 = u_xlati11;
        let x_1843 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[((x_1836 + 2i) / 4i)][((x_1839 + 2i) % 4i)];
        let x_1845 : vec3<f32> = vs_TEXCOORD7;
        let x_1848 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_1843.x, x_1843.y, x_1843.w) * vec3<f32>(x_1845.z, x_1845.z, x_1845.z)) + x_1848);
        let x_1850 : vec3<f32> = u_xlat25;
        let x_1851 : i32 = u_xlati11;
        let x_1854 : i32 = u_xlati11;
        let x_1858 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[((x_1851 + 3i) / 4i)][((x_1854 + 3i) % 4i)];
        u_xlat25 = (x_1850 + vec3<f32>(x_1858.x, x_1858.y, x_1858.w));
        let x_1861 : vec3<f32> = u_xlat25;
        let x_1863 : vec3<f32> = u_xlat25;
        let x_1865 : vec2<f32> = (vec2<f32>(x_1861.x, x_1861.y) / vec2<f32>(x_1863.z, x_1863.z));
        let x_1866 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1865.x, x_1865.y, x_1866.z);
        let x_1868 : vec3<f32> = u_xlat25;
        let x_1871 : vec2<f32> = ((vec2<f32>(x_1868.x, x_1868.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1872 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1871.x, x_1871.y, x_1872.z);
        let x_1874 : vec3<f32> = u_xlat25;
        let x_1878 : vec2<f32> = clamp(vec2<f32>(x_1874.x, x_1874.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1879 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1878.x, x_1878.y, x_1879.z);
        let x_1881 : i32 = u_xlati48;
        let x_1883 : vec4<f32> = x_1035.x_AdditionalLightsCookieAtlasUVRects[x_1881];
        let x_1885 : vec3<f32> = u_xlat25;
        let x_1888 : i32 = u_xlati48;
        let x_1890 : vec4<f32> = x_1035.x_AdditionalLightsCookieAtlasUVRects[x_1888];
        let x_1892 : vec2<f32> = ((vec2<f32>(x_1883.x, x_1883.y) * vec2<f32>(x_1885.x, x_1885.y)) + vec2<f32>(x_1890.z, x_1890.w));
        let x_1893 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1892.x, x_1892.y, x_1893.z);
      } else {
        let x_1896 : i32 = u_xlati51;
        u_xlatb51 = (x_1896 == 1i);
        let x_1898 : bool = u_xlatb51;
        u_xlati51 = select(0i, 1i, x_1898);
        let x_1900 : i32 = u_xlati51;
        if ((x_1900 != 0i)) {
          let x_1904 : vec3<f32> = vs_TEXCOORD7;
          let x_1906 : i32 = u_xlati11;
          let x_1909 : i32 = u_xlati11;
          let x_1913 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[((x_1906 + 1i) / 4i)][((x_1909 + 1i) % 4i)];
          let x_1915 : vec2<f32> = (vec2<f32>(x_1904.y, x_1904.y) * vec2<f32>(x_1913.x, x_1913.y));
          let x_1916 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1915.x, x_1915.y, x_1916.z, x_1916.w);
          let x_1918 : i32 = u_xlati11;
          let x_1920 : i32 = u_xlati11;
          let x_1923 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[(x_1918 / 4i)][(x_1920 % 4i)];
          let x_1925 : vec3<f32> = vs_TEXCOORD7;
          let x_1928 : vec4<f32> = u_xlat12;
          let x_1930 : vec2<f32> = ((vec2<f32>(x_1923.x, x_1923.y) * vec2<f32>(x_1925.x, x_1925.x)) + vec2<f32>(x_1928.x, x_1928.y));
          let x_1931 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1930.x, x_1930.y, x_1931.z, x_1931.w);
          let x_1933 : i32 = u_xlati11;
          let x_1936 : i32 = u_xlati11;
          let x_1940 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[((x_1933 + 2i) / 4i)][((x_1936 + 2i) % 4i)];
          let x_1942 : vec3<f32> = vs_TEXCOORD7;
          let x_1945 : vec4<f32> = u_xlat12;
          let x_1947 : vec2<f32> = ((vec2<f32>(x_1940.x, x_1940.y) * vec2<f32>(x_1942.z, x_1942.z)) + vec2<f32>(x_1945.x, x_1945.y));
          let x_1948 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1947.x, x_1947.y, x_1948.z, x_1948.w);
          let x_1950 : vec4<f32> = u_xlat12;
          let x_1952 : i32 = u_xlati11;
          let x_1955 : i32 = u_xlati11;
          let x_1959 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[((x_1952 + 3i) / 4i)][((x_1955 + 3i) % 4i)];
          let x_1961 : vec2<f32> = (vec2<f32>(x_1950.x, x_1950.y) + vec2<f32>(x_1959.x, x_1959.y));
          let x_1962 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1961.x, x_1961.y, x_1962.z, x_1962.w);
          let x_1964 : vec4<f32> = u_xlat12;
          let x_1967 : vec2<f32> = ((vec2<f32>(x_1964.x, x_1964.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1968 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1967.x, x_1967.y, x_1968.z, x_1968.w);
          let x_1970 : vec4<f32> = u_xlat12;
          let x_1972 : vec2<f32> = fract(vec2<f32>(x_1970.x, x_1970.y));
          let x_1973 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1972.x, x_1972.y, x_1973.z, x_1973.w);
          let x_1975 : i32 = u_xlati48;
          let x_1977 : vec4<f32> = x_1035.x_AdditionalLightsCookieAtlasUVRects[x_1975];
          let x_1979 : vec4<f32> = u_xlat12;
          let x_1982 : i32 = u_xlati48;
          let x_1984 : vec4<f32> = x_1035.x_AdditionalLightsCookieAtlasUVRects[x_1982];
          let x_1986 : vec2<f32> = ((vec2<f32>(x_1977.x, x_1977.y) * vec2<f32>(x_1979.x, x_1979.y)) + vec2<f32>(x_1984.z, x_1984.w));
          let x_1987 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_1986.x, x_1986.y, x_1987.z);
        } else {
          let x_1990 : vec3<f32> = vs_TEXCOORD7;
          let x_1992 : i32 = u_xlati11;
          let x_1995 : i32 = u_xlati11;
          let x_1999 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[((x_1992 + 1i) / 4i)][((x_1995 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1990.y, x_1990.y, x_1990.y, x_1990.y) * x_1999);
          let x_2001 : i32 = u_xlati11;
          let x_2003 : i32 = u_xlati11;
          let x_2006 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[(x_2001 / 4i)][(x_2003 % 4i)];
          let x_2007 : vec3<f32> = vs_TEXCOORD7;
          let x_2010 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2006 * vec4<f32>(x_2007.x, x_2007.x, x_2007.x, x_2007.x)) + x_2010);
          let x_2012 : i32 = u_xlati11;
          let x_2015 : i32 = u_xlati11;
          let x_2019 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[((x_2012 + 2i) / 4i)][((x_2015 + 2i) % 4i)];
          let x_2020 : vec3<f32> = vs_TEXCOORD7;
          let x_2023 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2019 * vec4<f32>(x_2020.z, x_2020.z, x_2020.z, x_2020.z)) + x_2023);
          let x_2025 : vec4<f32> = u_xlat12;
          let x_2026 : i32 = u_xlati11;
          let x_2029 : i32 = u_xlati11;
          let x_2033 : vec4<f32> = x_1035.x_AdditionalLightsWorldToLights[((x_2026 + 3i) / 4i)][((x_2029 + 3i) % 4i)];
          u_xlat12 = (x_2025 + x_2033);
          let x_2035 : vec4<f32> = u_xlat12;
          let x_2037 : vec4<f32> = u_xlat12;
          let x_2039 : vec3<f32> = (vec3<f32>(x_2035.x, x_2035.y, x_2035.z) / vec3<f32>(x_2037.w, x_2037.w, x_2037.w));
          let x_2040 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
          let x_2042 : vec4<f32> = u_xlat12;
          let x_2044 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(vec3<f32>(x_2042.x, x_2042.y, x_2042.z), vec3<f32>(x_2044.x, x_2044.y, x_2044.z));
          let x_2047 : f32 = u_xlat51;
          u_xlat51 = inverseSqrt(x_2047);
          let x_2049 : f32 = u_xlat51;
          let x_2051 : vec4<f32> = u_xlat12;
          let x_2053 : vec3<f32> = (vec3<f32>(x_2049, x_2049, x_2049) * vec3<f32>(x_2051.x, x_2051.y, x_2051.z));
          let x_2054 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2053.x, x_2053.y, x_2053.z, x_2054.w);
          let x_2056 : vec4<f32> = u_xlat12;
          u_xlat51 = dot(abs(vec3<f32>(x_2056.x, x_2056.y, x_2056.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2061 : f32 = u_xlat51;
          u_xlat51 = max(x_2061, 0.00000099999999747524f);
          let x_2064 : f32 = u_xlat51;
          u_xlat51 = (1.0f / x_2064);
          let x_2066 : f32 = u_xlat51;
          let x_2068 : vec4<f32> = u_xlat12;
          let x_2070 : vec3<f32> = (vec3<f32>(x_2066, x_2066, x_2066) * vec3<f32>(x_2068.z, x_2068.x, x_2068.y));
          let x_2071 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
          let x_2074 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2074);
          let x_2078 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2078, 0.0f, 1.0f);
          let x_2081 : vec4<f32> = u_xlat13;
          let x_2083 : vec4<bool> = (vec4<f32>(x_2081.y, x_2081.y, x_2081.y, x_2081.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2084 : vec2<bool> = vec2<bool>(x_2083.x, x_2083.w);
          let x_2085 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_2084.x, x_2085.y, x_2085.z, x_2084.y);
          let x_2088 : bool = u_xlatb11.x;
          if (x_2088) {
            let x_2093 : f32 = u_xlat13.x;
            x_2089 = x_2093;
          } else {
            let x_2096 : f32 = u_xlat13.x;
            x_2089 = -(x_2096);
          }
          let x_2098 : f32 = x_2089;
          u_xlat11.x = x_2098;
          let x_2101 : bool = u_xlatb11.w;
          if (x_2101) {
            let x_2106 : f32 = u_xlat13.x;
            x_2102 = x_2106;
          } else {
            let x_2109 : f32 = u_xlat13.x;
            x_2102 = -(x_2109);
          }
          let x_2111 : f32 = x_2102;
          u_xlat11.w = x_2111;
          let x_2113 : vec4<f32> = u_xlat12;
          let x_2115 : f32 = u_xlat51;
          let x_2118 : vec4<f32> = u_xlat11;
          let x_2120 : vec2<f32> = ((vec2<f32>(x_2113.x, x_2113.y) * vec2<f32>(x_2115, x_2115)) + vec2<f32>(x_2118.x, x_2118.w));
          let x_2121 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2120.x, x_2121.y, x_2121.z, x_2120.y);
          let x_2123 : vec4<f32> = u_xlat11;
          let x_2126 : vec2<f32> = ((vec2<f32>(x_2123.x, x_2123.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2127 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2126.x, x_2127.y, x_2127.z, x_2126.y);
          let x_2129 : vec4<f32> = u_xlat11;
          let x_2133 : vec2<f32> = clamp(vec2<f32>(x_2129.x, x_2129.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2134 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2133.x, x_2134.y, x_2134.z, x_2133.y);
          let x_2136 : i32 = u_xlati48;
          let x_2138 : vec4<f32> = x_1035.x_AdditionalLightsCookieAtlasUVRects[x_2136];
          let x_2140 : vec4<f32> = u_xlat11;
          let x_2143 : i32 = u_xlati48;
          let x_2145 : vec4<f32> = x_1035.x_AdditionalLightsCookieAtlasUVRects[x_2143];
          let x_2147 : vec2<f32> = ((vec2<f32>(x_2138.x, x_2138.y) * vec2<f32>(x_2140.x, x_2140.w)) + vec2<f32>(x_2145.z, x_2145.w));
          let x_2148 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2147.x, x_2147.y, x_2148.z);
        }
      }
      let x_2155 : vec3<f32> = u_xlat25;
      let x_2157 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2155.x, x_2155.y), 0.0f);
      u_xlat11 = x_2157;
      let x_2159 : bool = u_xlatb7.y;
      if (x_2159) {
        let x_2164 : f32 = u_xlat11.w;
        x_2160 = x_2164;
      } else {
        let x_2167 : f32 = u_xlat11.x;
        x_2160 = x_2167;
      }
      let x_2168 : f32 = x_2160;
      u_xlat51 = x_2168;
      let x_2170 : bool = u_xlatb7.x;
      if (x_2170) {
        let x_2174 : vec4<f32> = u_xlat11;
        x_2171 = vec3<f32>(x_2174.x, x_2174.y, x_2174.z);
      } else {
        let x_2177 : f32 = u_xlat51;
        x_2171 = vec3<f32>(x_2177, x_2177, x_2177);
      }
      let x_2179 : vec3<f32> = x_2171;
      let x_2180 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2179.x, x_2179.y, x_2179.z, x_2180.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2186 : vec4<f32> = u_xlat11;
    let x_2188 : i32 = u_xlati48;
    let x_2190 : vec4<f32> = x_1515.x_AdditionalLightsColor[x_2188];
    let x_2192 : vec3<f32> = (vec3<f32>(x_2186.x, x_2186.y, x_2186.z) * vec3<f32>(x_2190.x, x_2190.y, x_2190.z));
    let x_2193 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2192.x, x_2192.y, x_2192.z, x_2193.w);
    let x_2195 : f32 = u_xlat35;
    let x_2196 : f32 = u_xlat50;
    u_xlat48 = (x_2195 * x_2196);
    let x_2198 : vec3<f32> = u_xlat2;
    let x_2199 : vec4<f32> = u_xlat10;
    u_xlat35 = dot(x_2198, vec3<f32>(x_2199.x, x_2199.y, x_2199.z));
    let x_2202 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2202, 0.0f, 1.0f);
    let x_2204 : f32 = u_xlat48;
    let x_2205 : f32 = u_xlat35;
    u_xlat48 = (x_2204 * x_2205);
    let x_2207 : f32 = u_xlat48;
    let x_2209 : vec4<f32> = u_xlat11;
    let x_2211 : vec3<f32> = (vec3<f32>(x_2207, x_2207, x_2207) * vec3<f32>(x_2209.x, x_2209.y, x_2209.z));
    let x_2212 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2211.x, x_2211.y, x_2211.z, x_2212.w);
    let x_2214 : vec4<f32> = u_xlat9;
    let x_2216 : f32 = u_xlat49;
    let x_2219 : vec4<f32> = u_xlat1;
    let x_2221 : vec3<f32> = ((vec3<f32>(x_2214.x, x_2214.y, x_2214.z) * vec3<f32>(x_2216, x_2216, x_2216)) + vec3<f32>(x_2219.x, x_2219.y, x_2219.z));
    let x_2222 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2221.x, x_2221.y, x_2221.z, x_2222.w);
    let x_2224 : vec4<f32> = u_xlat9;
    let x_2226 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(vec3<f32>(x_2224.x, x_2224.y, x_2224.z), vec3<f32>(x_2226.x, x_2226.y, x_2226.z));
    let x_2229 : f32 = u_xlat48;
    u_xlat48 = max(x_2229, 1.17549435e-38f);
    let x_2231 : f32 = u_xlat48;
    u_xlat48 = inverseSqrt(x_2231);
    let x_2233 : f32 = u_xlat48;
    let x_2235 : vec4<f32> = u_xlat9;
    let x_2237 : vec3<f32> = (vec3<f32>(x_2233, x_2233, x_2233) * vec3<f32>(x_2235.x, x_2235.y, x_2235.z));
    let x_2238 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2237.x, x_2237.y, x_2237.z, x_2238.w);
    let x_2240 : vec3<f32> = u_xlat2;
    let x_2241 : vec4<f32> = u_xlat9;
    u_xlat48 = dot(x_2240, vec3<f32>(x_2241.x, x_2241.y, x_2241.z));
    let x_2244 : f32 = u_xlat48;
    u_xlat48 = clamp(x_2244, 0.0f, 1.0f);
    let x_2246 : vec4<f32> = u_xlat10;
    let x_2248 : vec4<f32> = u_xlat9;
    u_xlat35 = dot(vec3<f32>(x_2246.x, x_2246.y, x_2246.z), vec3<f32>(x_2248.x, x_2248.y, x_2248.z));
    let x_2251 : f32 = u_xlat35;
    u_xlat35 = clamp(x_2251, 0.0f, 1.0f);
    let x_2253 : f32 = u_xlat48;
    let x_2254 : f32 = u_xlat48;
    u_xlat48 = (x_2253 * x_2254);
    let x_2256 : f32 = u_xlat48;
    let x_2258 : f32 = u_xlat0.x;
    u_xlat48 = ((x_2256 * x_2258) + 1.00001001358032226562f);
    let x_2261 : f32 = u_xlat35;
    let x_2262 : f32 = u_xlat35;
    u_xlat35 = (x_2261 * x_2262);
    let x_2264 : f32 = u_xlat48;
    let x_2265 : f32 = u_xlat48;
    u_xlat48 = (x_2264 * x_2265);
    let x_2267 : f32 = u_xlat35;
    u_xlat35 = max(x_2267, 0.10000000149011611938f);
    let x_2269 : f32 = u_xlat48;
    let x_2270 : f32 = u_xlat35;
    u_xlat48 = (x_2269 * x_2270);
    let x_2272 : f32 = u_xlat46;
    let x_2273 : f32 = u_xlat48;
    u_xlat48 = (x_2272 * x_2273);
    let x_2275 : f32 = u_xlat44;
    let x_2276 : f32 = u_xlat48;
    u_xlat48 = (x_2275 / x_2276);
    let x_2278 : vec4<f32> = u_xlat5;
    let x_2280 : f32 = u_xlat48;
    let x_2283 : vec4<f32> = u_xlat6;
    let x_2285 : vec3<f32> = ((vec3<f32>(x_2278.x, x_2278.y, x_2278.z) * vec3<f32>(x_2280, x_2280, x_2280)) + vec3<f32>(x_2283.x, x_2283.y, x_2283.z));
    let x_2286 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2285.x, x_2285.y, x_2285.z, x_2286.w);
    let x_2288 : vec4<f32> = u_xlat9;
    let x_2290 : vec4<f32> = u_xlat11;
    let x_2293 : vec4<f32> = u_xlat8;
    let x_2295 : vec3<f32> = ((vec3<f32>(x_2288.x, x_2288.y, x_2288.z) * vec3<f32>(x_2290.x, x_2290.y, x_2290.z)) + vec3<f32>(x_2293.x, x_2293.y, x_2293.z));
    let x_2296 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);

    continuing {
      let x_2298 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2298 + bitcast<u32>(1i));
    }
  }
  let x_2300 : vec4<f32> = u_xlat4;
  let x_2302 : f32 = u_xlat14;
  let x_2305 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_2300.x, x_2300.y, x_2300.z) * vec3<f32>(x_2302, x_2302, x_2302)) + vec3<f32>(x_2305.x, x_2305.z, x_2305.w));
  let x_2308 : vec4<f32> = u_xlat8;
  let x_2310 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2308.x, x_2308.y, x_2308.z) + x_2310);
  let x_2312 : f32 = u_xlat42;
  let x_2314 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_2312, x_2312, x_2312) * x_2314);
  let x_2316 : f32 = u_xlat43;
  let x_2317 : f32 = u_xlat43;
  u_xlat42 = (x_2316 * -(x_2317));
  let x_2320 : f32 = u_xlat42;
  u_xlat42 = exp2(x_2320);
  let x_2324 : vec3<f32> = u_xlat0;
  let x_2325 : f32 = u_xlat42;
  let x_2327 : vec3<f32> = (x_2324 * vec3<f32>(x_2325, x_2325, x_2325));
  let x_2328 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
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



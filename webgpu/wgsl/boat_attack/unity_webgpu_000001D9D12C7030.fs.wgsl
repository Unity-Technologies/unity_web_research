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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat80 : f32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb31 : vec2<bool>;

@group(1) @binding(3) var<uniform> x_311 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat31 : f32;

var<private> u_xlatb57 : bool;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat85 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_1649 : LightCookies;

@group(0) @binding(8) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1829 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2089 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlati37 : i32;

var<private> u_xlatb37 : vec3<bool>;

@group(0) @binding(9) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

fn main_1() {
  var x_123 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1733 : f32;
  var x_1744 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2228 : f32;
  var x_2239 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_3858 : f32;
  var x_3871 : f32;
  var x_3929 : f32;
  var x_3940 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_83 == 0.0f);
  let x_89 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_89) + x_94);
  let x_97 : vec3<f32> = u_xlat2;
  let x_98 : vec3<f32> = u_xlat2;
  u_xlat53 = dot(x_97, x_98);
  let x_100 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_100);
  let x_102 : f32 = u_xlat53;
  let x_104 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_102, x_102, x_102) * x_104);
  let x_110 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat3.x = x_110;
  let x_113 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat3.y = x_113;
  let x_118 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat3.z = x_118;
  let x_121 : bool = u_xlatb27;
  if (x_121) {
    let x_126 : vec3<f32> = u_xlat2;
    x_123 = x_126;
  } else {
    let x_128 : vec4<f32> = u_xlat3;
    x_123 = vec3<f32>(x_128.x, x_128.y, x_128.z);
  }
  let x_130 : vec3<f32> = x_123;
  u_xlat27 = x_130;
  let x_132 : vec3<f32> = vs_TEXCOORD3;
  let x_133 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_132, x_133);
  let x_137 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_137);
  let x_140 : vec3<f32> = u_xlat2;
  let x_142 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_140.x, x_140.x, x_140.x) * x_142);
  let x_147 : f32 = vs_TEXCOORD7.y;
  let x_149 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat80 = (x_147 * x_149);
  let x_152 : f32 = x_29.unity_MatrixV[0i].z;
  let x_154 : f32 = vs_TEXCOORD7.x;
  let x_156 : f32 = u_xlat80;
  u_xlat80 = ((x_152 * x_154) + x_156);
  let x_159 : f32 = x_29.unity_MatrixV[2i].z;
  let x_161 : f32 = vs_TEXCOORD7.z;
  let x_163 : f32 = u_xlat80;
  u_xlat80 = ((x_159 * x_161) + x_163);
  let x_165 : f32 = u_xlat80;
  let x_168 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat80 = (x_165 + x_168);
  let x_170 : f32 = u_xlat80;
  let x_174 : f32 = x_29.x_ProjectionParams.y;
  u_xlat80 = (-(x_170) + -(x_174));
  let x_177 : f32 = u_xlat80;
  u_xlat80 = max(x_177, 0.0f);
  let x_179 : f32 = u_xlat80;
  let x_182 : f32 = x_29.unity_FogParams.x;
  u_xlat80 = (x_179 * x_182);
  let x_189 : vec4<f32> = vs_TEXCOORD0;
  let x_192 : f32 = x_29.x_GlobalMipBias.x;
  let x_193 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_189.z, x_189.w), x_192);
  u_xlat3 = x_193;
  let x_199 : vec4<f32> = vs_TEXCOORD0;
  let x_202 : f32 = x_29.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_199.z, x_199.w), x_202);
  u_xlat4 = vec3<f32>(x_203.x, x_203.y, x_203.z);
  let x_205 : vec4<f32> = u_xlat3;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_210 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = u_xlat2;
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_212, vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_218 : f32 = u_xlat3.x;
  u_xlat3.x = (x_218 + 0.5f);
  let x_222 : vec4<f32> = u_xlat3;
  let x_224 : vec3<f32> = u_xlat4;
  let x_225 : vec3<f32> = (vec3<f32>(x_222.x, x_222.x, x_222.x) * x_224);
  let x_226 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_230 : f32 = u_xlat3.w;
  u_xlat81 = max(x_230, 0.00009999999747378752f);
  let x_233 : vec4<f32> = u_xlat3;
  let x_235 : f32 = u_xlat81;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) / vec3<f32>(x_235, x_235, x_235));
  let x_238 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : f32 = u_xlat1;
  u_xlat81 = ((-(x_240) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_245 : f32 = u_xlat81;
  u_xlat4.x = (-(x_245) + 1.0f);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : f32 = u_xlat81;
  u_xlat30 = (vec3<f32>(x_251.x, x_251.y, x_251.z) * vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : f32 = u_xlat1;
  let x_265 : vec4<f32> = u_xlat0;
  let x_270 : vec3<f32> = ((vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_274 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_274) + 1.0f);
  let x_277 : f32 = u_xlat1;
  let x_278 : f32 = u_xlat1;
  u_xlat81 = (x_277 * x_278);
  let x_280 : f32 = u_xlat81;
  u_xlat81 = max(x_280, 0.0078125f);
  let x_284 : f32 = u_xlat81;
  let x_285 : f32 = u_xlat81;
  u_xlat5 = (x_284 * x_285);
  let x_289 : f32 = u_xlat0.w;
  let x_291 : f32 = u_xlat4.x;
  u_xlat78 = (x_289 + x_291);
  let x_293 : f32 = u_xlat78;
  u_xlat78 = clamp(x_293, 0.0f, 1.0f);
  let x_295 : f32 = u_xlat81;
  u_xlat4.x = ((x_295 * 4.0f) + 2.0f);
  let x_314 : f32 = x_311.x_MainLightShadowParams.y;
  u_xlatb31.x = (0.0f < x_314);
  let x_318 : bool = u_xlatb31.x;
  if (x_318) {
    let x_322 : f32 = x_311.x_MainLightShadowParams.y;
    u_xlatb31.x = (x_322 == 1.0f);
    let x_326 : bool = u_xlatb31.x;
    if (x_326) {
      let x_331 : vec4<f32> = vs_TEXCOORD8;
      let x_335 : vec4<f32> = x_311.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_331.x, x_331.y, x_331.x, x_331.y) + x_335);
      let x_338 : vec4<f32> = u_xlat6;
      let x_339 : vec2<f32> = vec2<f32>(x_338.x, x_338.y);
      let x_341 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_339.x, x_339.y, x_341);
      let x_354 : vec3<f32> = txVec0;
      let x_356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_354.xy, x_354.z);
      u_xlat7.x = x_356;
      let x_359 : vec4<f32> = u_xlat6;
      let x_360 : vec2<f32> = vec2<f32>(x_359.z, x_359.w);
      let x_362 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_360.x, x_360.y, x_362);
      let x_369 : vec3<f32> = txVec1;
      let x_371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_369.xy, x_369.z);
      u_xlat7.y = x_371;
      let x_373 : vec4<f32> = vs_TEXCOORD8;
      let x_376 : vec4<f32> = x_311.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_373.x, x_373.y, x_373.x, x_373.y) + x_376);
      let x_379 : vec4<f32> = u_xlat6;
      let x_380 : vec2<f32> = vec2<f32>(x_379.x, x_379.y);
      let x_382 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_380.x, x_380.y, x_382);
      let x_389 : vec3<f32> = txVec2;
      let x_391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_389.xy, x_389.z);
      u_xlat7.z = x_391;
      let x_394 : vec4<f32> = u_xlat6;
      let x_395 : vec2<f32> = vec2<f32>(x_394.z, x_394.w);
      let x_397 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_395.x, x_395.y, x_397);
      let x_404 : vec3<f32> = txVec3;
      let x_406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_404.xy, x_404.z);
      u_xlat7.w = x_406;
      let x_409 : vec4<f32> = u_xlat7;
      u_xlat31 = dot(x_409, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_416 : f32 = x_311.x_MainLightShadowParams.y;
      u_xlatb57 = (x_416 == 2.0f);
      let x_418 : bool = u_xlatb57;
      if (x_418) {
        let x_423 : vec4<f32> = vs_TEXCOORD8;
        let x_426 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_423.x, x_423.y) * vec2<f32>(x_426.z, x_426.w)) + vec2<f32>(0.5f, 0.5f));
        let x_431 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_431);
        let x_433 : vec4<f32> = vs_TEXCOORD8;
        let x_436 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_439 : vec2<f32> = u_xlat57;
        let x_441 : vec2<f32> = ((vec2<f32>(x_433.x, x_433.y) * vec2<f32>(x_436.z, x_436.w)) + -(x_439));
        let x_442 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_441.x, x_441.y, x_442.z, x_442.w);
        let x_444 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_444.x, x_444.x, x_444.y, x_444.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_449 : vec4<f32> = u_xlat7;
        let x_451 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_449.x, x_449.x, x_449.z, x_449.z) * vec4<f32>(x_451.x, x_451.x, x_451.z, x_451.z));
        let x_455 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_455.y, x_455.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_460 : vec4<f32> = u_xlat8;
        let x_463 : vec4<f32> = u_xlat6;
        let x_466 : vec2<f32> = ((vec2<f32>(x_460.x, x_460.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_463.x, x_463.y)));
        let x_467 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_466.x, x_467.y, x_466.y, x_467.w);
        let x_469 : vec4<f32> = u_xlat6;
        let x_473 : vec2<f32> = (-(vec2<f32>(x_469.x, x_469.y)) + vec2<f32>(1.0f, 1.0f));
        let x_474 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
        let x_477 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_477.x, x_477.y), vec2<f32>(0.0f, 0.0f));
        let x_481 : vec2<f32> = u_xlat60;
        let x_483 : vec2<f32> = u_xlat60;
        let x_485 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_481) * x_483) + vec2<f32>(x_485.x, x_485.y));
        let x_488 : vec4<f32> = u_xlat6;
        let x_490 : vec2<f32> = max(vec2<f32>(x_488.x, x_488.y), vec2<f32>(0.0f, 0.0f));
        let x_491 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat6;
        let x_496 : vec4<f32> = u_xlat6;
        let x_499 : vec4<f32> = u_xlat7;
        let x_501 : vec2<f32> = ((-(vec2<f32>(x_493.x, x_493.y)) * vec2<f32>(x_496.x, x_496.y)) + vec2<f32>(x_499.y, x_499.w));
        let x_502 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_504 + vec2<f32>(1.0f, 1.0f));
        let x_506 : vec4<f32> = u_xlat6;
        let x_508 : vec2<f32> = (vec2<f32>(x_506.x, x_506.y) + vec2<f32>(1.0f, 1.0f));
        let x_509 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
        let x_512 : vec4<f32> = u_xlat7;
        let x_516 : vec2<f32> = (vec2<f32>(x_512.x, x_512.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_517 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
        let x_520 : vec4<f32> = u_xlat8;
        let x_522 : vec2<f32> = (vec2<f32>(x_520.x, x_520.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_523 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
        let x_525 : vec2<f32> = u_xlat60;
        let x_526 : vec2<f32> = (x_525 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_527 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
        let x_530 : vec4<f32> = u_xlat6;
        let x_532 : vec2<f32> = (vec2<f32>(x_530.x, x_530.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_533 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
        let x_535 : vec4<f32> = u_xlat7;
        let x_537 : vec2<f32> = (vec2<f32>(x_535.y, x_535.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_538 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
        let x_541 : f32 = u_xlat8.x;
        u_xlat9.z = x_541;
        let x_544 : f32 = u_xlat6.x;
        u_xlat9.w = x_544;
        let x_547 : f32 = u_xlat11.x;
        u_xlat10.z = x_547;
        let x_550 : f32 = u_xlat58.x;
        u_xlat10.w = x_550;
        let x_552 : vec4<f32> = u_xlat9;
        let x_554 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_552.z, x_552.w, x_552.x, x_552.z) + vec4<f32>(x_554.z, x_554.w, x_554.x, x_554.z));
        let x_558 : f32 = u_xlat9.y;
        u_xlat8.z = x_558;
        let x_561 : f32 = u_xlat6.y;
        u_xlat8.w = x_561;
        let x_564 : f32 = u_xlat10.y;
        u_xlat11.z = x_564;
        let x_567 : f32 = u_xlat58.y;
        u_xlat11.w = x_567;
        let x_569 : vec4<f32> = u_xlat8;
        let x_571 : vec4<f32> = u_xlat11;
        let x_573 : vec3<f32> = (vec3<f32>(x_569.z, x_569.y, x_569.w) + vec3<f32>(x_571.z, x_571.y, x_571.w));
        let x_574 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
        let x_576 : vec4<f32> = u_xlat10;
        let x_578 : vec4<f32> = u_xlat7;
        let x_580 : vec3<f32> = (vec3<f32>(x_576.x, x_576.z, x_576.w) / vec3<f32>(x_578.z, x_578.w, x_578.y));
        let x_581 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat8;
        let x_588 : vec3<f32> = (vec3<f32>(x_583.x, x_583.y, x_583.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_589 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
        let x_591 : vec4<f32> = u_xlat11;
        let x_593 : vec4<f32> = u_xlat6;
        let x_595 : vec3<f32> = (vec3<f32>(x_591.z, x_591.y, x_591.w) / vec3<f32>(x_593.x, x_593.y, x_593.z));
        let x_596 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat9;
        let x_600 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_601 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
        let x_603 : vec4<f32> = u_xlat8;
        let x_606 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_608 : vec3<f32> = (vec3<f32>(x_603.y, x_603.x, x_603.z) * vec3<f32>(x_606.x, x_606.x, x_606.x));
        let x_609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
        let x_611 : vec4<f32> = u_xlat9;
        let x_614 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_616 : vec3<f32> = (vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_614.y, x_614.y, x_614.y));
        let x_617 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
        let x_620 : f32 = u_xlat9.x;
        u_xlat8.w = x_620;
        let x_622 : vec2<f32> = u_xlat57;
        let x_625 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_628 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y) * vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y)) + vec4<f32>(x_628.y, x_628.w, x_628.x, x_628.w));
        let x_631 : vec2<f32> = u_xlat57;
        let x_633 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_636 : vec4<f32> = u_xlat8;
        let x_638 : vec2<f32> = ((x_631 * vec2<f32>(x_633.x, x_633.y)) + vec2<f32>(x_636.z, x_636.w));
        let x_639 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
        let x_642 : f32 = u_xlat8.y;
        u_xlat9.w = x_642;
        let x_644 : vec4<f32> = u_xlat9;
        let x_645 : vec2<f32> = vec2<f32>(x_644.y, x_644.z);
        let x_646 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_646.x, x_645.x, x_646.z, x_645.y);
        let x_649 : vec2<f32> = u_xlat57;
        let x_652 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_655 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y) * vec4<f32>(x_652.x, x_652.y, x_652.x, x_652.y)) + vec4<f32>(x_655.x, x_655.y, x_655.z, x_655.y));
        let x_658 : vec2<f32> = u_xlat57;
        let x_661 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_664 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_658.x, x_658.y, x_658.x, x_658.y) * vec4<f32>(x_661.x, x_661.y, x_661.x, x_661.y)) + vec4<f32>(x_664.w, x_664.y, x_664.w, x_664.z));
        let x_667 : vec2<f32> = u_xlat57;
        let x_670 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_673 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_667.x, x_667.y, x_667.x, x_667.y) * vec4<f32>(x_670.x, x_670.y, x_670.x, x_670.y)) + vec4<f32>(x_673.x, x_673.w, x_673.z, x_673.w));
        let x_677 : vec4<f32> = u_xlat6;
        let x_679 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_677.x, x_677.x, x_677.x, x_677.y) * vec4<f32>(x_679.z, x_679.w, x_679.y, x_679.z));
        let x_683 : vec4<f32> = u_xlat6;
        let x_685 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_683.y, x_683.y, x_683.z, x_683.z) * x_685);
        let x_688 : f32 = u_xlat6.z;
        let x_690 : f32 = u_xlat7.y;
        u_xlat57.x = (x_688 * x_690);
        let x_694 : vec4<f32> = u_xlat10;
        let x_695 : vec2<f32> = vec2<f32>(x_694.x, x_694.y);
        let x_697 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_695.x, x_695.y, x_697);
        let x_705 : vec3<f32> = txVec4;
        let x_707 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_705.xy, x_705.z);
        u_xlat83 = x_707;
        let x_709 : vec4<f32> = u_xlat10;
        let x_710 : vec2<f32> = vec2<f32>(x_709.z, x_709.w);
        let x_712 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_710.x, x_710.y, x_712);
        let x_719 : vec3<f32> = txVec5;
        let x_721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_719.xy, x_719.z);
        u_xlat6.x = x_721;
        let x_724 : f32 = u_xlat6.x;
        let x_726 : f32 = u_xlat13.y;
        u_xlat6.x = (x_724 * x_726);
        let x_730 : f32 = u_xlat13.x;
        let x_731 : f32 = u_xlat83;
        let x_734 : f32 = u_xlat6.x;
        u_xlat83 = ((x_730 * x_731) + x_734);
        let x_737 : vec4<f32> = u_xlat11;
        let x_738 : vec2<f32> = vec2<f32>(x_737.x, x_737.y);
        let x_740 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_738.x, x_738.y, x_740);
        let x_747 : vec3<f32> = txVec6;
        let x_749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_747.xy, x_747.z);
        u_xlat6.x = x_749;
        let x_752 : f32 = u_xlat13.z;
        let x_754 : f32 = u_xlat6.x;
        let x_756 : f32 = u_xlat83;
        u_xlat83 = ((x_752 * x_754) + x_756);
        let x_759 : vec4<f32> = u_xlat9;
        let x_760 : vec2<f32> = vec2<f32>(x_759.x, x_759.y);
        let x_762 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_760.x, x_760.y, x_762);
        let x_769 : vec3<f32> = txVec7;
        let x_771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_769.xy, x_769.z);
        u_xlat6.x = x_771;
        let x_774 : f32 = u_xlat13.w;
        let x_776 : f32 = u_xlat6.x;
        let x_778 : f32 = u_xlat83;
        u_xlat83 = ((x_774 * x_776) + x_778);
        let x_781 : vec4<f32> = u_xlat12;
        let x_782 : vec2<f32> = vec2<f32>(x_781.x, x_781.y);
        let x_784 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_782.x, x_782.y, x_784);
        let x_791 : vec3<f32> = txVec8;
        let x_793 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_791.xy, x_791.z);
        u_xlat6.x = x_793;
        let x_796 : f32 = u_xlat14.x;
        let x_798 : f32 = u_xlat6.x;
        let x_800 : f32 = u_xlat83;
        u_xlat83 = ((x_796 * x_798) + x_800);
        let x_803 : vec4<f32> = u_xlat12;
        let x_804 : vec2<f32> = vec2<f32>(x_803.z, x_803.w);
        let x_806 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_804.x, x_804.y, x_806);
        let x_813 : vec3<f32> = txVec9;
        let x_815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_813.xy, x_813.z);
        u_xlat6.x = x_815;
        let x_818 : f32 = u_xlat14.y;
        let x_820 : f32 = u_xlat6.x;
        let x_822 : f32 = u_xlat83;
        u_xlat83 = ((x_818 * x_820) + x_822);
        let x_825 : vec4<f32> = u_xlat9;
        let x_826 : vec2<f32> = vec2<f32>(x_825.z, x_825.w);
        let x_828 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_826.x, x_826.y, x_828);
        let x_835 : vec3<f32> = txVec10;
        let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
        u_xlat6.x = x_837;
        let x_840 : f32 = u_xlat14.z;
        let x_842 : f32 = u_xlat6.x;
        let x_844 : f32 = u_xlat83;
        u_xlat83 = ((x_840 * x_842) + x_844);
        let x_847 : vec4<f32> = u_xlat8;
        let x_848 : vec2<f32> = vec2<f32>(x_847.x, x_847.y);
        let x_850 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_848.x, x_848.y, x_850);
        let x_857 : vec3<f32> = txVec11;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_857.xy, x_857.z);
        u_xlat6.x = x_859;
        let x_862 : f32 = u_xlat14.w;
        let x_864 : f32 = u_xlat6.x;
        let x_866 : f32 = u_xlat83;
        u_xlat83 = ((x_862 * x_864) + x_866);
        let x_869 : vec4<f32> = u_xlat8;
        let x_870 : vec2<f32> = vec2<f32>(x_869.z, x_869.w);
        let x_872 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_870.x, x_870.y, x_872);
        let x_879 : vec3<f32> = txVec12;
        let x_881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_879.xy, x_879.z);
        u_xlat6.x = x_881;
        let x_884 : f32 = u_xlat57.x;
        let x_886 : f32 = u_xlat6.x;
        let x_888 : f32 = u_xlat83;
        u_xlat31 = ((x_884 * x_886) + x_888);
      } else {
        let x_891 : vec4<f32> = vs_TEXCOORD8;
        let x_894 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        u_xlat57 = ((vec2<f32>(x_891.x, x_891.y) * vec2<f32>(x_894.z, x_894.w)) + vec2<f32>(0.5f, 0.5f));
        let x_898 : vec2<f32> = u_xlat57;
        u_xlat57 = floor(x_898);
        let x_900 : vec4<f32> = vs_TEXCOORD8;
        let x_903 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_906 : vec2<f32> = u_xlat57;
        let x_908 : vec2<f32> = ((vec2<f32>(x_900.x, x_900.y) * vec2<f32>(x_903.z, x_903.w)) + -(x_906));
        let x_909 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
        let x_911 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_911.x, x_911.x, x_911.y, x_911.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_914 : vec4<f32> = u_xlat7;
        let x_916 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_914.x, x_914.x, x_914.z, x_914.z) * vec4<f32>(x_916.x, x_916.x, x_916.z, x_916.z));
        let x_919 : vec4<f32> = u_xlat8;
        let x_923 : vec2<f32> = (vec2<f32>(x_919.y, x_919.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_924 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_924.x, x_923.x, x_924.z, x_923.y);
        let x_926 : vec4<f32> = u_xlat8;
        let x_929 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_926.x, x_926.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_929.x, x_929.y)));
        let x_933 : vec4<f32> = u_xlat6;
        let x_936 : vec2<f32> = (-(vec2<f32>(x_933.x, x_933.y)) + vec2<f32>(1.0f, 1.0f));
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_936.x, x_937.y, x_936.y, x_937.w);
        let x_939 : vec4<f32> = u_xlat6;
        let x_941 : vec2<f32> = min(vec2<f32>(x_939.x, x_939.y), vec2<f32>(0.0f, 0.0f));
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat8;
        let x_947 : vec4<f32> = u_xlat8;
        let x_950 : vec4<f32> = u_xlat7;
        let x_952 : vec2<f32> = ((-(vec2<f32>(x_944.x, x_944.y)) * vec2<f32>(x_947.x, x_947.y)) + vec2<f32>(x_950.x, x_950.z));
        let x_953 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_952.x, x_953.y, x_952.y, x_953.w);
        let x_955 : vec4<f32> = u_xlat6;
        let x_957 : vec2<f32> = max(vec2<f32>(x_955.x, x_955.y), vec2<f32>(0.0f, 0.0f));
        let x_958 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_957.x, x_957.y, x_958.z, x_958.w);
        let x_960 : vec4<f32> = u_xlat8;
        let x_963 : vec4<f32> = u_xlat8;
        let x_966 : vec4<f32> = u_xlat7;
        let x_968 : vec2<f32> = ((-(vec2<f32>(x_960.x, x_960.y)) * vec2<f32>(x_963.x, x_963.y)) + vec2<f32>(x_966.y, x_966.w));
        let x_969 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_969.x, x_968.x, x_969.z, x_968.y);
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_971 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_975 : f32 = u_xlat7.y;
        u_xlat8.z = (x_975 * 0.08163200318813323975f);
        let x_979 : vec2<f32> = u_xlat58;
        let x_982 : vec2<f32> = (vec2<f32>(x_979.y, x_979.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_983 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_985.x, x_985.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_989 : f32 = u_xlat7.w;
        u_xlat10.z = (x_989 * 0.08163200318813323975f);
        let x_993 : f32 = u_xlat10.y;
        u_xlat8.x = x_993;
        let x_995 : vec4<f32> = u_xlat6;
        let x_1002 : vec2<f32> = ((vec2<f32>(x_995.x, x_995.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1003 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1003.x, x_1002.x, x_1003.z, x_1002.y);
        let x_1005 : vec4<f32> = u_xlat6;
        let x_1009 : vec2<f32> = ((vec2<f32>(x_1005.x, x_1005.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1010 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1009.x, x_1010.y, x_1009.y, x_1010.w);
        let x_1013 : f32 = u_xlat58.x;
        u_xlat7.y = x_1013;
        let x_1016 : f32 = u_xlat9.y;
        u_xlat7.w = x_1016;
        let x_1018 : vec4<f32> = u_xlat7;
        let x_1019 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1018 + x_1019);
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1024 : vec2<f32> = ((vec2<f32>(x_1021.y, x_1021.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1025 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1025.x, x_1024.x, x_1025.z, x_1024.y);
        let x_1027 : vec4<f32> = u_xlat6;
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1027.y, x_1027.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1031 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1031.y, x_1030.y, x_1031.w);
        let x_1034 : f32 = u_xlat58.y;
        u_xlat9.y = x_1034;
        let x_1036 : vec4<f32> = u_xlat9;
        let x_1037 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1036 + x_1037);
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1040 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1039 / x_1040);
        let x_1042 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1042 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1048 : vec4<f32> = u_xlat9;
        let x_1049 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1048 / x_1049);
        let x_1051 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1051 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1053 : vec4<f32> = u_xlat7;
        let x_1056 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1053.w, x_1053.x, x_1053.y, x_1053.z) * vec4<f32>(x_1056.x, x_1056.x, x_1056.x, x_1056.x));
        let x_1059 : vec4<f32> = u_xlat9;
        let x_1062 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1059.x, x_1059.w, x_1059.y, x_1059.z) * vec4<f32>(x_1062.y, x_1062.y, x_1062.y, x_1062.y));
        let x_1065 : vec4<f32> = u_xlat7;
        let x_1066 : vec3<f32> = vec3<f32>(x_1065.y, x_1065.z, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1066.x, x_1067.y, x_1066.y, x_1066.z);
        let x_1070 : f32 = u_xlat9.x;
        u_xlat10.y = x_1070;
        let x_1072 : vec2<f32> = u_xlat57;
        let x_1075 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1078 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y) * vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.y)) + vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1078.y));
        let x_1081 : vec2<f32> = u_xlat57;
        let x_1083 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat10;
        let x_1088 : vec2<f32> = ((x_1081 * vec2<f32>(x_1083.x, x_1083.y)) + vec2<f32>(x_1086.w, x_1086.y));
        let x_1089 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1088.x, x_1088.y, x_1089.z, x_1089.w);
        let x_1092 : f32 = u_xlat10.y;
        u_xlat7.y = x_1092;
        let x_1095 : f32 = u_xlat9.z;
        u_xlat10.y = x_1095;
        let x_1097 : vec2<f32> = u_xlat57;
        let x_1100 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1097.x, x_1097.y, x_1097.x, x_1097.y) * vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.y)) + vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1103.y));
        let x_1107 : vec2<f32> = u_xlat57;
        let x_1109 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat10;
        u_xlat64 = ((x_1107 * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1112.w, x_1112.y));
        let x_1116 : f32 = u_xlat10.y;
        u_xlat7.z = x_1116;
        let x_1118 : vec2<f32> = u_xlat57;
        let x_1121 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y) * vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y)) + vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.z));
        let x_1128 : f32 = u_xlat9.w;
        u_xlat10.y = x_1128;
        let x_1131 : vec2<f32> = u_xlat57;
        let x_1134 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y) * vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y)) + vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1137.y));
        let x_1141 : vec2<f32> = u_xlat57;
        let x_1143 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1146 : vec4<f32> = u_xlat10;
        u_xlat33 = ((x_1141 * vec2<f32>(x_1143.x, x_1143.y)) + vec2<f32>(x_1146.w, x_1146.y));
        let x_1150 : f32 = u_xlat10.y;
        u_xlat7.w = x_1150;
        let x_1153 : vec2<f32> = u_xlat57;
        let x_1155 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1160 : vec2<f32> = ((x_1153 * vec2<f32>(x_1155.x, x_1155.y)) + vec2<f32>(x_1158.x, x_1158.w));
        let x_1161 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat10;
        let x_1164 : vec3<f32> = vec3<f32>(x_1163.x, x_1163.z, x_1163.w);
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1164.x, x_1165.y, x_1164.y, x_1164.z);
        let x_1167 : vec2<f32> = u_xlat57;
        let x_1170 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1173 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.y) * vec4<f32>(x_1170.x, x_1170.y, x_1170.x, x_1170.y)) + vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1173.y));
        let x_1177 : vec2<f32> = u_xlat57;
        let x_1179 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat61 = ((x_1177 * vec2<f32>(x_1179.x, x_1179.y)) + vec2<f32>(x_1182.w, x_1182.y));
        let x_1186 : f32 = u_xlat7.x;
        u_xlat9.x = x_1186;
        let x_1188 : vec2<f32> = u_xlat57;
        let x_1190 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat57 = ((x_1188 * vec2<f32>(x_1190.x, x_1190.y)) + vec2<f32>(x_1193.x, x_1193.y));
        let x_1197 : vec4<f32> = u_xlat6;
        let x_1199 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1197.x, x_1197.x, x_1197.x, x_1197.x) * x_1199);
        let x_1202 : vec4<f32> = u_xlat6;
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1202.y, x_1202.y, x_1202.y, x_1202.y) * x_1204);
        let x_1207 : vec4<f32> = u_xlat6;
        let x_1209 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1207.z, x_1207.z, x_1207.z, x_1207.z) * x_1209);
        let x_1211 : vec4<f32> = u_xlat6;
        let x_1213 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1211.w, x_1211.w, x_1211.w, x_1211.w) * x_1213);
        let x_1216 : vec4<f32> = u_xlat11;
        let x_1217 : vec2<f32> = vec2<f32>(x_1216.x, x_1216.y);
        let x_1219 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1217.x, x_1217.y, x_1219);
        let x_1226 : vec3<f32> = txVec13;
        let x_1228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1226.xy, x_1226.z);
        u_xlat7.x = x_1228;
        let x_1231 : vec4<f32> = u_xlat11;
        let x_1232 : vec2<f32> = vec2<f32>(x_1231.z, x_1231.w);
        let x_1234 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1232.x, x_1232.y, x_1234);
        let x_1242 : vec3<f32> = txVec14;
        let x_1244 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1242.xy, x_1242.z);
        u_xlat85 = x_1244;
        let x_1245 : f32 = u_xlat85;
        let x_1247 : f32 = u_xlat17.y;
        u_xlat85 = (x_1245 * x_1247);
        let x_1250 : f32 = u_xlat17.x;
        let x_1252 : f32 = u_xlat7.x;
        let x_1254 : f32 = u_xlat85;
        u_xlat7.x = ((x_1250 * x_1252) + x_1254);
        let x_1258 : vec4<f32> = u_xlat12;
        let x_1259 : vec2<f32> = vec2<f32>(x_1258.x, x_1258.y);
        let x_1261 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec15;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1268.xy, x_1268.z);
        u_xlat85 = x_1270;
        let x_1272 : f32 = u_xlat17.z;
        let x_1273 : f32 = u_xlat85;
        let x_1276 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1272 * x_1273) + x_1276);
        let x_1280 : vec4<f32> = u_xlat14;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.x, x_1280.y);
        let x_1283 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec16;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1290.xy, x_1290.z);
        u_xlat85 = x_1292;
        let x_1294 : f32 = u_xlat17.w;
        let x_1295 : f32 = u_xlat85;
        let x_1298 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1294 * x_1295) + x_1298);
        let x_1302 : vec4<f32> = u_xlat13;
        let x_1303 : vec2<f32> = vec2<f32>(x_1302.x, x_1302.y);
        let x_1305 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1303.x, x_1303.y, x_1305);
        let x_1312 : vec3<f32> = txVec17;
        let x_1314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1312.xy, x_1312.z);
        u_xlat85 = x_1314;
        let x_1316 : f32 = u_xlat18.x;
        let x_1317 : f32 = u_xlat85;
        let x_1320 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1316 * x_1317) + x_1320);
        let x_1324 : vec4<f32> = u_xlat13;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec18;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1334.xy, x_1334.z);
        u_xlat85 = x_1336;
        let x_1338 : f32 = u_xlat18.y;
        let x_1339 : f32 = u_xlat85;
        let x_1342 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1338 * x_1339) + x_1342);
        let x_1346 : vec2<f32> = u_xlat64;
        let x_1348 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec19;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1355.xy, x_1355.z);
        u_xlat85 = x_1357;
        let x_1359 : f32 = u_xlat18.z;
        let x_1360 : f32 = u_xlat85;
        let x_1363 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1359 * x_1360) + x_1363);
        let x_1367 : vec4<f32> = u_xlat14;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.z, x_1367.w);
        let x_1370 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec20;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1377.xy, x_1377.z);
        u_xlat85 = x_1379;
        let x_1381 : f32 = u_xlat18.w;
        let x_1382 : f32 = u_xlat85;
        let x_1385 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1381 * x_1382) + x_1385);
        let x_1389 : vec4<f32> = u_xlat15;
        let x_1390 : vec2<f32> = vec2<f32>(x_1389.x, x_1389.y);
        let x_1392 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1390.x, x_1390.y, x_1392);
        let x_1399 : vec3<f32> = txVec21;
        let x_1401 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1399.xy, x_1399.z);
        u_xlat85 = x_1401;
        let x_1403 : f32 = u_xlat19.x;
        let x_1404 : f32 = u_xlat85;
        let x_1407 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1403 * x_1404) + x_1407);
        let x_1411 : vec4<f32> = u_xlat15;
        let x_1412 : vec2<f32> = vec2<f32>(x_1411.z, x_1411.w);
        let x_1414 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1412.x, x_1412.y, x_1414);
        let x_1421 : vec3<f32> = txVec22;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1421.xy, x_1421.z);
        u_xlat85 = x_1423;
        let x_1425 : f32 = u_xlat19.y;
        let x_1426 : f32 = u_xlat85;
        let x_1429 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1425 * x_1426) + x_1429);
        let x_1433 : vec2<f32> = u_xlat33;
        let x_1435 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec23;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1442.xy, x_1442.z);
        u_xlat33.x = x_1444;
        let x_1447 : f32 = u_xlat19.z;
        let x_1449 : f32 = u_xlat33.x;
        let x_1452 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1447 * x_1449) + x_1452);
        let x_1456 : vec4<f32> = u_xlat16;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec24;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1466.xy, x_1466.z);
        u_xlat33.x = x_1468;
        let x_1471 : f32 = u_xlat19.w;
        let x_1473 : f32 = u_xlat33.x;
        let x_1476 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1471 * x_1473) + x_1476);
        let x_1480 : vec4<f32> = u_xlat10;
        let x_1481 : vec2<f32> = vec2<f32>(x_1480.x, x_1480.y);
        let x_1483 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1481.x, x_1481.y, x_1483);
        let x_1490 : vec3<f32> = txVec25;
        let x_1492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1490.xy, x_1490.z);
        u_xlat33.x = x_1492;
        let x_1495 : f32 = u_xlat6.x;
        let x_1497 : f32 = u_xlat33.x;
        let x_1500 : f32 = u_xlat7.x;
        u_xlat6.x = ((x_1495 * x_1497) + x_1500);
        let x_1504 : vec4<f32> = u_xlat10;
        let x_1505 : vec2<f32> = vec2<f32>(x_1504.z, x_1504.w);
        let x_1507 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1505.x, x_1505.y, x_1507);
        let x_1514 : vec3<f32> = txVec26;
        let x_1516 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1514.xy, x_1514.z);
        u_xlat7.x = x_1516;
        let x_1519 : f32 = u_xlat6.y;
        let x_1521 : f32 = u_xlat7.x;
        let x_1524 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1519 * x_1521) + x_1524);
        let x_1528 : vec2<f32> = u_xlat61;
        let x_1530 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1538 : vec3<f32> = txVec27;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1538.xy, x_1538.z);
        u_xlat32 = x_1540;
        let x_1542 : f32 = u_xlat6.z;
        let x_1543 : f32 = u_xlat32;
        let x_1546 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1542 * x_1543) + x_1546);
        let x_1550 : vec2<f32> = u_xlat57;
        let x_1552 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec28;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1559.xy, x_1559.z);
        u_xlat57.x = x_1561;
        let x_1564 : f32 = u_xlat6.w;
        let x_1566 : f32 = u_xlat57.x;
        let x_1569 : f32 = u_xlat6.x;
        u_xlat31 = ((x_1564 * x_1566) + x_1569);
      }
    }
  } else {
    let x_1573 : vec4<f32> = vs_TEXCOORD8;
    let x_1574 : vec2<f32> = vec2<f32>(x_1573.x, x_1573.y);
    let x_1576 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1574.x, x_1574.y, x_1576);
    let x_1583 : vec3<f32> = txVec29;
    let x_1585 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1583.xy, x_1583.z);
    u_xlat31 = x_1585;
  }
  let x_1587 : f32 = x_311.x_MainLightShadowParams.x;
  u_xlat57.x = (-(x_1587) + 1.0f);
  let x_1591 : f32 = u_xlat31;
  let x_1593 : f32 = x_311.x_MainLightShadowParams.x;
  let x_1596 : f32 = u_xlat57.x;
  u_xlat31 = ((x_1591 * x_1593) + x_1596);
  let x_1599 : f32 = vs_TEXCOORD8.z;
  u_xlatb57 = (0.0f >= x_1599);
  let x_1603 : f32 = vs_TEXCOORD8.z;
  u_xlatb83 = (x_1603 >= 1.0f);
  let x_1605 : bool = u_xlatb83;
  let x_1606 : bool = u_xlatb57;
  u_xlatb57 = (x_1605 | x_1606);
  let x_1608 : bool = u_xlatb57;
  let x_1609 : f32 = u_xlat31;
  u_xlat31 = select(x_1609, 1.0f, x_1608);
  let x_1611 : vec3<f32> = vs_TEXCOORD7;
  let x_1613 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1615 : vec3<f32> = (x_1611 + -(x_1613));
  let x_1616 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
  let x_1618 : vec4<f32> = u_xlat6;
  let x_1620 : vec4<f32> = u_xlat6;
  u_xlat57.x = dot(vec3<f32>(x_1618.x, x_1618.y, x_1618.z), vec3<f32>(x_1620.x, x_1620.y, x_1620.z));
  let x_1625 : f32 = u_xlat57.x;
  let x_1627 : f32 = x_311.x_MainLightShadowParams.z;
  let x_1630 : f32 = x_311.x_MainLightShadowParams.w;
  u_xlat83 = ((x_1625 * x_1627) + x_1630);
  let x_1632 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1632, 0.0f, 1.0f);
  let x_1634 : f32 = u_xlat31;
  u_xlat6.x = (-(x_1634) + 1.0f);
  let x_1638 : f32 = u_xlat83;
  let x_1640 : f32 = u_xlat6.x;
  let x_1642 : f32 = u_xlat31;
  u_xlat31 = ((x_1638 * x_1640) + x_1642);
  let x_1651 : f32 = x_1649.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_1651 == -1.0f));
  let x_1654 : bool = u_xlatb83;
  if (x_1654) {
    let x_1657 : vec3<f32> = vs_TEXCOORD7;
    let x_1660 : vec4<f32> = x_1649.x_MainLightWorldToLight[1i];
    let x_1662 : vec2<f32> = (vec2<f32>(x_1657.y, x_1657.y) * vec2<f32>(x_1660.x, x_1660.y));
    let x_1663 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1662.x, x_1662.y, x_1663.z, x_1663.w);
    let x_1666 : vec4<f32> = x_1649.x_MainLightWorldToLight[0i];
    let x_1668 : vec3<f32> = vs_TEXCOORD7;
    let x_1671 : vec4<f32> = u_xlat6;
    let x_1673 : vec2<f32> = ((vec2<f32>(x_1666.x, x_1666.y) * vec2<f32>(x_1668.x, x_1668.x)) + vec2<f32>(x_1671.x, x_1671.y));
    let x_1674 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1673.x, x_1673.y, x_1674.z, x_1674.w);
    let x_1677 : vec4<f32> = x_1649.x_MainLightWorldToLight[2i];
    let x_1679 : vec3<f32> = vs_TEXCOORD7;
    let x_1682 : vec4<f32> = u_xlat6;
    let x_1684 : vec2<f32> = ((vec2<f32>(x_1677.x, x_1677.y) * vec2<f32>(x_1679.z, x_1679.z)) + vec2<f32>(x_1682.x, x_1682.y));
    let x_1685 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1684.x, x_1684.y, x_1685.z, x_1685.w);
    let x_1687 : vec4<f32> = u_xlat6;
    let x_1690 : vec4<f32> = x_1649.x_MainLightWorldToLight[3i];
    let x_1692 : vec2<f32> = (vec2<f32>(x_1687.x, x_1687.y) + vec2<f32>(x_1690.x, x_1690.y));
    let x_1693 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1692.x, x_1692.y, x_1693.z, x_1693.w);
    let x_1695 : vec4<f32> = u_xlat6;
    let x_1698 : vec2<f32> = ((vec2<f32>(x_1695.x, x_1695.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1699 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1698.x, x_1698.y, x_1699.z, x_1699.w);
    let x_1706 : vec4<f32> = u_xlat6;
    let x_1709 : f32 = x_29.x_GlobalMipBias.x;
    let x_1710 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1706.x, x_1706.y), x_1709);
    u_xlat6 = x_1710;
    let x_1713 : f32 = x_1649.x_MainLightCookieTextureFormat;
    let x_1715 : f32 = x_1649.x_MainLightCookieTextureFormat;
    let x_1717 : f32 = x_1649.x_MainLightCookieTextureFormat;
    let x_1719 : f32 = x_1649.x_MainLightCookieTextureFormat;
    let x_1720 : vec4<f32> = vec4<f32>(x_1713, x_1715, x_1717, x_1719);
    let x_1728 : vec4<bool> = (vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1720.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_1728.x, x_1728.y);
    let x_1731 : bool = u_xlatb7.y;
    if (x_1731) {
      let x_1737 : f32 = u_xlat6.w;
      x_1733 = x_1737;
    } else {
      let x_1740 : f32 = u_xlat6.x;
      x_1733 = x_1740;
    }
    let x_1741 : f32 = x_1733;
    u_xlat83 = x_1741;
    let x_1743 : bool = u_xlatb7.x;
    if (x_1743) {
      let x_1747 : vec4<f32> = u_xlat6;
      x_1744 = vec3<f32>(x_1747.x, x_1747.y, x_1747.z);
    } else {
      let x_1750 : f32 = u_xlat83;
      x_1744 = vec3<f32>(x_1750, x_1750, x_1750);
    }
    let x_1752 : vec3<f32> = x_1744;
    let x_1753 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1759 : vec4<f32> = u_xlat6;
  let x_1762 : vec4<f32> = x_29.x_MainLightColor;
  let x_1764 : vec3<f32> = (vec3<f32>(x_1759.x, x_1759.y, x_1759.z) * vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
  let x_1765 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1764.x, x_1764.y, x_1764.z, x_1765.w);
  let x_1767 : vec3<f32> = u_xlat27;
  let x_1769 : vec3<f32> = u_xlat2;
  u_xlat83 = dot(-(x_1767), x_1769);
  let x_1771 : f32 = u_xlat83;
  let x_1772 : f32 = u_xlat83;
  u_xlat83 = (x_1771 + x_1772);
  let x_1774 : vec3<f32> = u_xlat2;
  let x_1775 : f32 = u_xlat83;
  let x_1779 : vec3<f32> = u_xlat27;
  let x_1781 : vec3<f32> = ((x_1774 * -(vec3<f32>(x_1775, x_1775, x_1775))) + -(x_1779));
  let x_1782 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1784 : vec3<f32> = u_xlat2;
  let x_1785 : vec3<f32> = u_xlat27;
  u_xlat83 = dot(x_1784, x_1785);
  let x_1787 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1787, 0.0f, 1.0f);
  let x_1789 : f32 = u_xlat83;
  u_xlat83 = (-(x_1789) + 1.0f);
  let x_1792 : f32 = u_xlat83;
  let x_1793 : f32 = u_xlat83;
  u_xlat83 = (x_1792 * x_1793);
  let x_1795 : f32 = u_xlat83;
  let x_1796 : f32 = u_xlat83;
  u_xlat83 = (x_1795 * x_1796);
  let x_1799 : f32 = u_xlat1;
  u_xlat84 = ((-(x_1799) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1805 : f32 = u_xlat1;
  let x_1806 : f32 = u_xlat84;
  u_xlat1 = (x_1805 * x_1806);
  let x_1808 : f32 = u_xlat1;
  u_xlat1 = (x_1808 * 6.0f);
  let x_1819 : vec4<f32> = u_xlat7;
  let x_1821 : f32 = u_xlat1;
  let x_1822 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1819.x, x_1819.y, x_1819.z), x_1821);
  u_xlat7 = x_1822;
  let x_1824 : f32 = u_xlat7.w;
  u_xlat1 = (x_1824 + -1.0f);
  let x_1831 : f32 = x_1829.unity_SpecCube0_HDR.w;
  let x_1832 : f32 = u_xlat1;
  u_xlat1 = ((x_1831 * x_1832) + 1.0f);
  let x_1835 : f32 = u_xlat1;
  u_xlat1 = max(x_1835, 0.0f);
  let x_1837 : f32 = u_xlat1;
  u_xlat1 = log2(x_1837);
  let x_1839 : f32 = u_xlat1;
  let x_1841 : f32 = x_1829.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1839 * x_1841);
  let x_1843 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1843);
  let x_1845 : f32 = u_xlat1;
  let x_1847 : f32 = x_1829.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1845 * x_1847);
  let x_1849 : vec4<f32> = u_xlat7;
  let x_1851 : f32 = u_xlat1;
  let x_1853 : vec3<f32> = (vec3<f32>(x_1849.x, x_1849.y, x_1849.z) * vec3<f32>(x_1851, x_1851, x_1851));
  let x_1854 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1853.x, x_1853.y, x_1853.z, x_1854.w);
  let x_1856 : f32 = u_xlat81;
  let x_1858 : f32 = u_xlat81;
  let x_1862 : vec2<f32> = ((vec2<f32>(x_1856, x_1856) * vec2<f32>(x_1858, x_1858)) + vec2<f32>(-1.0f, 1.0f));
  let x_1863 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1862.x, x_1862.y, x_1863.z, x_1863.w);
  let x_1866 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1866);
  let x_1869 : vec4<f32> = u_xlat0;
  let x_1872 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1869.x, x_1869.y, x_1869.z)) + vec3<f32>(x_1872, x_1872, x_1872));
  let x_1875 : f32 = u_xlat83;
  let x_1877 : vec3<f32> = u_xlat34;
  let x_1879 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1875, x_1875, x_1875) * x_1877) + vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
  let x_1882 : f32 = u_xlat1;
  let x_1884 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1882, x_1882, x_1882) * x_1884);
  let x_1886 : vec4<f32> = u_xlat7;
  let x_1888 : vec3<f32> = u_xlat34;
  let x_1889 : vec3<f32> = (vec3<f32>(x_1886.x, x_1886.y, x_1886.z) * x_1888);
  let x_1890 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1889.x, x_1889.y, x_1889.z, x_1890.w);
  let x_1892 : vec4<f32> = u_xlat3;
  let x_1894 : vec3<f32> = u_xlat30;
  let x_1896 : vec4<f32> = u_xlat7;
  let x_1898 : vec3<f32> = ((vec3<f32>(x_1892.x, x_1892.y, x_1892.z) * x_1894) + vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1899 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1901 : f32 = u_xlat31;
  let x_1903 : f32 = x_1829.unity_LightData.z;
  u_xlat78 = (x_1901 * x_1903);
  let x_1905 : vec3<f32> = u_xlat2;
  let x_1907 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1905, vec3<f32>(x_1907.x, x_1907.y, x_1907.z));
  let x_1910 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1910, 0.0f, 1.0f);
  let x_1912 : f32 = u_xlat78;
  let x_1913 : f32 = u_xlat1;
  u_xlat78 = (x_1912 * x_1913);
  let x_1915 : f32 = u_xlat78;
  let x_1917 : vec4<f32> = u_xlat6;
  let x_1919 : vec3<f32> = (vec3<f32>(x_1915, x_1915, x_1915) * vec3<f32>(x_1917.x, x_1917.y, x_1917.z));
  let x_1920 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
  let x_1922 : vec3<f32> = u_xlat27;
  let x_1924 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1926 : vec3<f32> = (x_1922 + vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1926.x, x_1926.y, x_1926.z, x_1927.w);
  let x_1929 : vec4<f32> = u_xlat7;
  let x_1931 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_1929.x, x_1929.y, x_1929.z), vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
  let x_1934 : f32 = u_xlat78;
  u_xlat78 = max(x_1934, 1.17549435e-38f);
  let x_1937 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1937);
  let x_1939 : f32 = u_xlat78;
  let x_1941 : vec4<f32> = u_xlat7;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1939, x_1939, x_1939) * vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1946 : vec3<f32> = u_xlat2;
  let x_1947 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_1946, vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
  let x_1950 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1950, 0.0f, 1.0f);
  let x_1953 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1955 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1953.x, x_1953.y, x_1953.z), vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
  let x_1958 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1958, 0.0f, 1.0f);
  let x_1960 : f32 = u_xlat78;
  let x_1961 : f32 = u_xlat78;
  u_xlat78 = (x_1960 * x_1961);
  let x_1963 : f32 = u_xlat78;
  let x_1965 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1963 * x_1965) + 1.00001001358032226562f);
  let x_1969 : f32 = u_xlat1;
  let x_1970 : f32 = u_xlat1;
  u_xlat1 = (x_1969 * x_1970);
  let x_1972 : f32 = u_xlat78;
  let x_1973 : f32 = u_xlat78;
  u_xlat78 = (x_1972 * x_1973);
  let x_1975 : f32 = u_xlat1;
  u_xlat1 = max(x_1975, 0.10000000149011611938f);
  let x_1978 : f32 = u_xlat78;
  let x_1979 : f32 = u_xlat1;
  u_xlat78 = (x_1978 * x_1979);
  let x_1982 : f32 = u_xlat4.x;
  let x_1983 : f32 = u_xlat78;
  u_xlat78 = (x_1982 * x_1983);
  let x_1985 : f32 = u_xlat5;
  let x_1986 : f32 = u_xlat78;
  u_xlat78 = (x_1985 / x_1986);
  let x_1988 : vec4<f32> = u_xlat0;
  let x_1990 : f32 = u_xlat78;
  let x_1993 : vec3<f32> = u_xlat30;
  let x_1994 : vec3<f32> = ((vec3<f32>(x_1988.x, x_1988.y, x_1988.z) * vec3<f32>(x_1990, x_1990, x_1990)) + x_1993);
  let x_1995 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
  let x_1998 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2000 : f32 = x_1829.unity_LightData.y;
  u_xlat78 = min(x_1998, x_2000);
  let x_2004 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2004));
  let x_2008 : f32 = u_xlat57.x;
  let x_2011 : f32 = x_311.x_AdditionalShadowFadeParams.x;
  let x_2014 : f32 = x_311.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_2008 * x_2011) + x_2014);
  let x_2016 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2016, 0.0f, 1.0f);
  let x_2019 : f32 = x_1649.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2021 : f32 = x_1649.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2023 : f32 = x_1649.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2025 : f32 = x_1649.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2026 : vec4<f32> = vec4<f32>(x_2019, x_2021, x_2023, x_2025);
  let x_2032 : vec4<bool> = (vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2026.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb31 = vec2<bool>(x_2032.x, x_2032.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2044 : u32 = u_xlatu_loop_1;
    let x_2045 : u32 = u_xlatu78;
    if ((x_2044 < x_2045)) {
    } else {
      break;
    }
    let x_2048 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2048 >> 2u);
    let x_2052 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2052 & 3u));
    let x_2055 : u32 = u_xlatu83;
    let x_2058 : vec4<f32> = x_1829.unity_LightIndices[bitcast<i32>(x_2055)];
    let x_2068 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2073 : vec4<u32> = indexable[x_2068];
    u_xlat83 = dot(x_2058, bitcast<vec4<f32>>(x_2073));
    let x_2077 : f32 = u_xlat83;
    u_xlati83 = i32(x_2077);
    let x_2079 : vec3<f32> = vs_TEXCOORD7;
    let x_2090 : i32 = u_xlati83;
    let x_2092 : vec4<f32> = x_2089.x_AdditionalLightsPosition[x_2090];
    let x_2095 : i32 = u_xlati83;
    let x_2097 : vec4<f32> = x_2089.x_AdditionalLightsPosition[x_2095];
    let x_2099 : vec3<f32> = ((-(x_2079) * vec3<f32>(x_2092.w, x_2092.w, x_2092.w)) + vec3<f32>(x_2097.x, x_2097.y, x_2097.z));
    let x_2100 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2099.x, x_2099.y, x_2099.z, x_2100.w);
    let x_2102 : vec4<f32> = u_xlat9;
    let x_2104 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2102.x, x_2102.y, x_2102.z), vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
    let x_2107 : f32 = u_xlat84;
    u_xlat84 = max(x_2107, 0.00006103515625f);
    let x_2110 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2110);
    let x_2112 : f32 = u_xlat85;
    let x_2114 : vec4<f32> = u_xlat9;
    let x_2116 : vec3<f32> = (vec3<f32>(x_2112, x_2112, x_2112) * vec3<f32>(x_2114.x, x_2114.y, x_2114.z));
    let x_2117 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2116.x, x_2116.y, x_2116.z, x_2117.w);
    let x_2120 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2120);
    let x_2122 : f32 = u_xlat84;
    let x_2123 : i32 = u_xlati83;
    let x_2125 : f32 = x_2089.x_AdditionalLightsAttenuation[x_2123].x;
    u_xlat84 = (x_2122 * x_2125);
    let x_2127 : f32 = u_xlat84;
    let x_2129 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2127) * x_2129) + 1.0f);
    let x_2132 : f32 = u_xlat84;
    u_xlat84 = max(x_2132, 0.0f);
    let x_2134 : f32 = u_xlat84;
    let x_2135 : f32 = u_xlat84;
    u_xlat84 = (x_2134 * x_2135);
    let x_2137 : f32 = u_xlat84;
    let x_2138 : f32 = u_xlat87;
    u_xlat84 = (x_2137 * x_2138);
    let x_2140 : i32 = u_xlati83;
    let x_2142 : vec4<f32> = x_2089.x_AdditionalLightsSpotDir[x_2140];
    let x_2144 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2142.x, x_2142.y, x_2142.z), vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
    let x_2147 : f32 = u_xlat87;
    let x_2148 : i32 = u_xlati83;
    let x_2150 : f32 = x_2089.x_AdditionalLightsAttenuation[x_2148].z;
    let x_2152 : i32 = u_xlati83;
    let x_2154 : f32 = x_2089.x_AdditionalLightsAttenuation[x_2152].w;
    u_xlat87 = ((x_2147 * x_2150) + x_2154);
    let x_2156 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2156, 0.0f, 1.0f);
    let x_2158 : f32 = u_xlat87;
    let x_2159 : f32 = u_xlat87;
    u_xlat87 = (x_2158 * x_2159);
    let x_2161 : f32 = u_xlat84;
    let x_2162 : f32 = u_xlat87;
    u_xlat84 = (x_2161 * x_2162);
    let x_2166 : i32 = u_xlati83;
    let x_2168 : f32 = x_311.x_AdditionalShadowParams[x_2166].w;
    u_xlati87 = i32(x_2168);
    let x_2171 : i32 = u_xlati87;
    u_xlatb88 = (x_2171 >= 0i);
    let x_2173 : bool = u_xlatb88;
    if (x_2173) {
      let x_2177 : i32 = u_xlati83;
      let x_2179 : f32 = x_311.x_AdditionalShadowParams[x_2177].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2179, x_2179, x_2179, x_2179))));
      let x_2183 : bool = u_xlatb88;
      if (x_2183) {
        let x_2188 : vec4<f32> = u_xlat10;
        let x_2191 : vec4<f32> = u_xlat10;
        let x_2194 : vec4<bool> = (abs(vec4<f32>(x_2188.z, x_2188.z, x_2188.y, x_2188.z)) >= abs(vec4<f32>(x_2191.x, x_2191.y, x_2191.x, x_2191.x)));
        let x_2196 : vec3<bool> = vec3<bool>(x_2194.x, x_2194.y, x_2194.z);
        let x_2197 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
        let x_2200 : bool = u_xlatb11.y;
        let x_2202 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2200 & x_2202);
        let x_2204 : vec4<f32> = u_xlat10;
        let x_2207 : vec4<bool> = (-(vec4<f32>(x_2204.z, x_2204.y, x_2204.z, x_2204.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2208 : vec3<bool> = vec3<bool>(x_2207.x, x_2207.y, x_2207.w);
        let x_2209 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2208.x, x_2208.y, x_2209.z, x_2208.z);
        let x_2212 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2212);
        let x_2217 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2217);
        let x_2223 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2223);
        let x_2227 : bool = u_xlatb11.z;
        if (x_2227) {
          let x_2232 : f32 = u_xlat11.y;
          x_2228 = x_2232;
        } else {
          let x_2234 : f32 = u_xlat89;
          x_2228 = x_2234;
        }
        let x_2235 : f32 = x_2228;
        u_xlat37.x = x_2235;
        let x_2238 : bool = u_xlatb88;
        if (x_2238) {
          let x_2243 : f32 = u_xlat11.x;
          x_2239 = x_2243;
        } else {
          let x_2246 : f32 = u_xlat37.x;
          x_2239 = x_2246;
        }
        let x_2247 : f32 = x_2239;
        u_xlat88 = x_2247;
        let x_2248 : i32 = u_xlati83;
        let x_2250 : f32 = x_311.x_AdditionalShadowParams[x_2248].w;
        u_xlat11.x = trunc(x_2250);
        let x_2253 : f32 = u_xlat88;
        let x_2255 : f32 = u_xlat11.x;
        u_xlat88 = (x_2253 + x_2255);
        let x_2257 : f32 = u_xlat88;
        u_xlati87 = i32(x_2257);
      }
      let x_2259 : i32 = u_xlati87;
      u_xlati87 = (x_2259 << bitcast<u32>(2i));
      let x_2261 : vec3<f32> = vs_TEXCOORD7;
      let x_2264 : i32 = u_xlati87;
      let x_2267 : i32 = u_xlati87;
      let x_2271 : vec4<f32> = x_311.x_AdditionalLightsWorldToShadow[((x_2264 + 1i) / 4i)][((x_2267 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2261.y, x_2261.y, x_2261.y, x_2261.y) * x_2271);
      let x_2273 : i32 = u_xlati87;
      let x_2275 : i32 = u_xlati87;
      let x_2278 : vec4<f32> = x_311.x_AdditionalLightsWorldToShadow[(x_2273 / 4i)][(x_2275 % 4i)];
      let x_2279 : vec3<f32> = vs_TEXCOORD7;
      let x_2282 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2278 * vec4<f32>(x_2279.x, x_2279.x, x_2279.x, x_2279.x)) + x_2282);
      let x_2284 : i32 = u_xlati87;
      let x_2287 : i32 = u_xlati87;
      let x_2291 : vec4<f32> = x_311.x_AdditionalLightsWorldToShadow[((x_2284 + 2i) / 4i)][((x_2287 + 2i) % 4i)];
      let x_2292 : vec3<f32> = vs_TEXCOORD7;
      let x_2295 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2291 * vec4<f32>(x_2292.z, x_2292.z, x_2292.z, x_2292.z)) + x_2295);
      let x_2297 : vec4<f32> = u_xlat11;
      let x_2298 : i32 = u_xlati87;
      let x_2301 : i32 = u_xlati87;
      let x_2305 : vec4<f32> = x_311.x_AdditionalLightsWorldToShadow[((x_2298 + 3i) / 4i)][((x_2301 + 3i) % 4i)];
      u_xlat11 = (x_2297 + x_2305);
      let x_2307 : vec4<f32> = u_xlat11;
      let x_2309 : vec4<f32> = u_xlat11;
      let x_2311 : vec3<f32> = (vec3<f32>(x_2307.x, x_2307.y, x_2307.z) / vec3<f32>(x_2309.w, x_2309.w, x_2309.w));
      let x_2312 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2311.x, x_2311.y, x_2311.z, x_2312.w);
      let x_2315 : i32 = u_xlati83;
      let x_2317 : f32 = x_311.x_AdditionalShadowParams[x_2315].y;
      u_xlatb87 = (0.0f < x_2317);
      let x_2319 : bool = u_xlatb87;
      if (x_2319) {
        let x_2322 : i32 = u_xlati83;
        let x_2324 : f32 = x_311.x_AdditionalShadowParams[x_2322].y;
        u_xlatb87 = (1.0f == x_2324);
        let x_2326 : bool = u_xlatb87;
        if (x_2326) {
          let x_2329 : vec4<f32> = u_xlat11;
          let x_2333 : vec4<f32> = x_311.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2329.x, x_2329.y, x_2329.x, x_2329.y) + x_2333);
          let x_2336 : vec4<f32> = u_xlat12;
          let x_2337 : vec2<f32> = vec2<f32>(x_2336.x, x_2336.y);
          let x_2339 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2337.x, x_2337.y, x_2339);
          let x_2347 : vec3<f32> = txVec30;
          let x_2349 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2347.xy, x_2347.z);
          u_xlat13.x = x_2349;
          let x_2352 : vec4<f32> = u_xlat12;
          let x_2353 : vec2<f32> = vec2<f32>(x_2352.z, x_2352.w);
          let x_2355 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2353.x, x_2353.y, x_2355);
          let x_2362 : vec3<f32> = txVec31;
          let x_2364 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2362.xy, x_2362.z);
          u_xlat13.y = x_2364;
          let x_2366 : vec4<f32> = u_xlat11;
          let x_2370 : vec4<f32> = x_311.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2366.x, x_2366.y, x_2366.x, x_2366.y) + x_2370);
          let x_2373 : vec4<f32> = u_xlat12;
          let x_2374 : vec2<f32> = vec2<f32>(x_2373.x, x_2373.y);
          let x_2376 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2374.x, x_2374.y, x_2376);
          let x_2383 : vec3<f32> = txVec32;
          let x_2385 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2383.xy, x_2383.z);
          u_xlat13.z = x_2385;
          let x_2388 : vec4<f32> = u_xlat12;
          let x_2389 : vec2<f32> = vec2<f32>(x_2388.z, x_2388.w);
          let x_2391 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2389.x, x_2389.y, x_2391);
          let x_2398 : vec3<f32> = txVec33;
          let x_2400 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2398.xy, x_2398.z);
          u_xlat13.w = x_2400;
          let x_2402 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2402, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2405 : i32 = u_xlati83;
          let x_2407 : f32 = x_311.x_AdditionalShadowParams[x_2405].y;
          u_xlatb88 = (2.0f == x_2407);
          let x_2409 : bool = u_xlatb88;
          if (x_2409) {
            let x_2412 : vec4<f32> = u_xlat11;
            let x_2416 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2419 : vec2<f32> = ((vec2<f32>(x_2412.x, x_2412.y) * vec2<f32>(x_2416.z, x_2416.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2420 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2419.x, x_2419.y, x_2420.z, x_2420.w);
            let x_2422 : vec4<f32> = u_xlat12;
            let x_2424 : vec2<f32> = floor(vec2<f32>(x_2422.x, x_2422.y));
            let x_2425 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2424.x, x_2424.y, x_2425.z, x_2425.w);
            let x_2427 : vec4<f32> = u_xlat11;
            let x_2430 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2433 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2427.x, x_2427.y) * vec2<f32>(x_2430.z, x_2430.w)) + -(vec2<f32>(x_2433.x, x_2433.y)));
            let x_2437 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2437.x, x_2437.x, x_2437.y, x_2437.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2440 : vec4<f32> = u_xlat13;
            let x_2442 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2440.x, x_2440.x, x_2440.z, x_2440.z) * vec4<f32>(x_2442.x, x_2442.x, x_2442.z, x_2442.z));
            let x_2445 : vec4<f32> = u_xlat14;
            let x_2447 : vec2<f32> = (vec2<f32>(x_2445.y, x_2445.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2448 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2447.x, x_2448.y, x_2447.y, x_2448.w);
            let x_2450 : vec4<f32> = u_xlat14;
            let x_2453 : vec2<f32> = u_xlat64;
            let x_2455 : vec2<f32> = ((vec2<f32>(x_2450.x, x_2450.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2453));
            let x_2456 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2455.x, x_2455.y, x_2456.z, x_2456.w);
            let x_2459 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2459) + vec2<f32>(1.0f, 1.0f));
            let x_2462 : vec2<f32> = u_xlat64;
            let x_2463 : vec2<f32> = min(x_2462, vec2<f32>(0.0f, 0.0f));
            let x_2464 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
            let x_2466 : vec4<f32> = u_xlat15;
            let x_2469 : vec4<f32> = u_xlat15;
            let x_2472 : vec2<f32> = u_xlat66;
            let x_2473 : vec2<f32> = ((-(vec2<f32>(x_2466.x, x_2466.y)) * vec2<f32>(x_2469.x, x_2469.y)) + x_2472);
            let x_2474 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2473.x, x_2473.y, x_2474.z, x_2474.w);
            let x_2476 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2476, vec2<f32>(0.0f, 0.0f));
            let x_2478 : vec2<f32> = u_xlat64;
            let x_2480 : vec2<f32> = u_xlat64;
            let x_2482 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2478) * x_2480) + vec2<f32>(x_2482.y, x_2482.w));
            let x_2485 : vec4<f32> = u_xlat15;
            let x_2487 : vec2<f32> = (vec2<f32>(x_2485.x, x_2485.y) + vec2<f32>(1.0f, 1.0f));
            let x_2488 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2487.x, x_2487.y, x_2488.z, x_2488.w);
            let x_2490 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2490 + vec2<f32>(1.0f, 1.0f));
            let x_2492 : vec4<f32> = u_xlat14;
            let x_2494 : vec2<f32> = (vec2<f32>(x_2492.x, x_2492.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2495 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2494.x, x_2494.y, x_2495.z, x_2495.w);
            let x_2497 : vec2<f32> = u_xlat66;
            let x_2498 : vec2<f32> = (x_2497 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2499 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2498.x, x_2498.y, x_2499.z, x_2499.w);
            let x_2501 : vec4<f32> = u_xlat15;
            let x_2503 : vec2<f32> = (vec2<f32>(x_2501.x, x_2501.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2504 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2503.x, x_2503.y, x_2504.z, x_2504.w);
            let x_2506 : vec2<f32> = u_xlat64;
            let x_2507 : vec2<f32> = (x_2506 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2508 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2507.x, x_2507.y, x_2508.z, x_2508.w);
            let x_2510 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2510.y, x_2510.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2514 : f32 = u_xlat15.x;
            u_xlat16.z = x_2514;
            let x_2517 : f32 = u_xlat64.x;
            u_xlat16.w = x_2517;
            let x_2520 : f32 = u_xlat17.x;
            u_xlat14.z = x_2520;
            let x_2523 : f32 = u_xlat13.x;
            u_xlat14.w = x_2523;
            let x_2525 : vec4<f32> = u_xlat14;
            let x_2527 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2525.z, x_2525.w, x_2525.x, x_2525.z) + vec4<f32>(x_2527.z, x_2527.w, x_2527.x, x_2527.z));
            let x_2531 : f32 = u_xlat16.y;
            u_xlat15.z = x_2531;
            let x_2534 : f32 = u_xlat64.y;
            u_xlat15.w = x_2534;
            let x_2537 : f32 = u_xlat14.y;
            u_xlat17.z = x_2537;
            let x_2540 : f32 = u_xlat13.z;
            u_xlat17.w = x_2540;
            let x_2542 : vec4<f32> = u_xlat15;
            let x_2544 : vec4<f32> = u_xlat17;
            let x_2546 : vec3<f32> = (vec3<f32>(x_2542.z, x_2542.y, x_2542.w) + vec3<f32>(x_2544.z, x_2544.y, x_2544.w));
            let x_2547 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2546.x, x_2546.y, x_2546.z, x_2547.w);
            let x_2549 : vec4<f32> = u_xlat14;
            let x_2551 : vec4<f32> = u_xlat18;
            let x_2553 : vec3<f32> = (vec3<f32>(x_2549.x, x_2549.z, x_2549.w) / vec3<f32>(x_2551.z, x_2551.w, x_2551.y));
            let x_2554 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2553.x, x_2553.y, x_2553.z, x_2554.w);
            let x_2556 : vec4<f32> = u_xlat14;
            let x_2558 : vec3<f32> = (vec3<f32>(x_2556.x, x_2556.y, x_2556.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2559 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2558.x, x_2558.y, x_2558.z, x_2559.w);
            let x_2561 : vec4<f32> = u_xlat17;
            let x_2563 : vec4<f32> = u_xlat13;
            let x_2565 : vec3<f32> = (vec3<f32>(x_2561.z, x_2561.y, x_2561.w) / vec3<f32>(x_2563.x, x_2563.y, x_2563.z));
            let x_2566 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2565.x, x_2565.y, x_2565.z, x_2566.w);
            let x_2568 : vec4<f32> = u_xlat15;
            let x_2570 : vec3<f32> = (vec3<f32>(x_2568.x, x_2568.y, x_2568.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2571 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2570.x, x_2570.y, x_2570.z, x_2571.w);
            let x_2573 : vec4<f32> = u_xlat14;
            let x_2576 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2578 : vec3<f32> = (vec3<f32>(x_2573.y, x_2573.x, x_2573.z) * vec3<f32>(x_2576.x, x_2576.x, x_2576.x));
            let x_2579 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2578.x, x_2578.y, x_2578.z, x_2579.w);
            let x_2581 : vec4<f32> = u_xlat15;
            let x_2584 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2586 : vec3<f32> = (vec3<f32>(x_2581.x, x_2581.y, x_2581.z) * vec3<f32>(x_2584.y, x_2584.y, x_2584.y));
            let x_2587 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2587.w);
            let x_2590 : f32 = u_xlat15.x;
            u_xlat14.w = x_2590;
            let x_2592 : vec4<f32> = u_xlat12;
            let x_2595 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2598 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2592.x, x_2592.y, x_2592.x, x_2592.y) * vec4<f32>(x_2595.x, x_2595.y, x_2595.x, x_2595.y)) + vec4<f32>(x_2598.y, x_2598.w, x_2598.x, x_2598.w));
            let x_2601 : vec4<f32> = u_xlat12;
            let x_2604 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2607 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2601.x, x_2601.y) * vec2<f32>(x_2604.x, x_2604.y)) + vec2<f32>(x_2607.z, x_2607.w));
            let x_2611 : f32 = u_xlat14.y;
            u_xlat15.w = x_2611;
            let x_2613 : vec4<f32> = u_xlat15;
            let x_2614 : vec2<f32> = vec2<f32>(x_2613.y, x_2613.z);
            let x_2615 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2615.x, x_2614.x, x_2615.z, x_2614.y);
            let x_2617 : vec4<f32> = u_xlat12;
            let x_2620 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2623 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2617.x, x_2617.y, x_2617.x, x_2617.y) * vec4<f32>(x_2620.x, x_2620.y, x_2620.x, x_2620.y)) + vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2623.y));
            let x_2626 : vec4<f32> = u_xlat12;
            let x_2629 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2632 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2626.x, x_2626.y, x_2626.x, x_2626.y) * vec4<f32>(x_2629.x, x_2629.y, x_2629.x, x_2629.y)) + vec4<f32>(x_2632.w, x_2632.y, x_2632.w, x_2632.z));
            let x_2635 : vec4<f32> = u_xlat12;
            let x_2638 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2641 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2635.x, x_2635.y, x_2635.x, x_2635.y) * vec4<f32>(x_2638.x, x_2638.y, x_2638.x, x_2638.y)) + vec4<f32>(x_2641.x, x_2641.w, x_2641.z, x_2641.w));
            let x_2644 : vec4<f32> = u_xlat13;
            let x_2646 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2644.x, x_2644.x, x_2644.x, x_2644.y) * vec4<f32>(x_2646.z, x_2646.w, x_2646.y, x_2646.z));
            let x_2650 : vec4<f32> = u_xlat13;
            let x_2652 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2650.y, x_2650.y, x_2650.z, x_2650.z) * x_2652);
            let x_2655 : f32 = u_xlat13.z;
            let x_2657 : f32 = u_xlat18.y;
            u_xlat88 = (x_2655 * x_2657);
            let x_2660 : vec4<f32> = u_xlat16;
            let x_2661 : vec2<f32> = vec2<f32>(x_2660.x, x_2660.y);
            let x_2663 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2661.x, x_2661.y, x_2663);
            let x_2670 : vec3<f32> = txVec34;
            let x_2672 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2670.xy, x_2670.z);
            u_xlat89 = x_2672;
            let x_2674 : vec4<f32> = u_xlat16;
            let x_2675 : vec2<f32> = vec2<f32>(x_2674.z, x_2674.w);
            let x_2677 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2675.x, x_2675.y, x_2677);
            let x_2684 : vec3<f32> = txVec35;
            let x_2686 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2684.xy, x_2684.z);
            u_xlat12.x = x_2686;
            let x_2689 : f32 = u_xlat12.x;
            let x_2691 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2689 * x_2691);
            let x_2695 : f32 = u_xlat19.x;
            let x_2696 : f32 = u_xlat89;
            let x_2699 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2695 * x_2696) + x_2699);
            let x_2702 : vec2<f32> = u_xlat64;
            let x_2704 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2702.x, x_2702.y, x_2704);
            let x_2711 : vec3<f32> = txVec36;
            let x_2713 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2711.xy, x_2711.z);
            u_xlat12.x = x_2713;
            let x_2716 : f32 = u_xlat19.z;
            let x_2718 : f32 = u_xlat12.x;
            let x_2720 : f32 = u_xlat89;
            u_xlat89 = ((x_2716 * x_2718) + x_2720);
            let x_2723 : vec4<f32> = u_xlat15;
            let x_2724 : vec2<f32> = vec2<f32>(x_2723.x, x_2723.y);
            let x_2726 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2724.x, x_2724.y, x_2726);
            let x_2733 : vec3<f32> = txVec37;
            let x_2735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2733.xy, x_2733.z);
            u_xlat12.x = x_2735;
            let x_2738 : f32 = u_xlat19.w;
            let x_2740 : f32 = u_xlat12.x;
            let x_2742 : f32 = u_xlat89;
            u_xlat89 = ((x_2738 * x_2740) + x_2742);
            let x_2745 : vec4<f32> = u_xlat17;
            let x_2746 : vec2<f32> = vec2<f32>(x_2745.x, x_2745.y);
            let x_2748 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2746.x, x_2746.y, x_2748);
            let x_2755 : vec3<f32> = txVec38;
            let x_2757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2755.xy, x_2755.z);
            u_xlat12.x = x_2757;
            let x_2760 : f32 = u_xlat20.x;
            let x_2762 : f32 = u_xlat12.x;
            let x_2764 : f32 = u_xlat89;
            u_xlat89 = ((x_2760 * x_2762) + x_2764);
            let x_2767 : vec4<f32> = u_xlat17;
            let x_2768 : vec2<f32> = vec2<f32>(x_2767.z, x_2767.w);
            let x_2770 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2768.x, x_2768.y, x_2770);
            let x_2777 : vec3<f32> = txVec39;
            let x_2779 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2777.xy, x_2777.z);
            u_xlat12.x = x_2779;
            let x_2782 : f32 = u_xlat20.y;
            let x_2784 : f32 = u_xlat12.x;
            let x_2786 : f32 = u_xlat89;
            u_xlat89 = ((x_2782 * x_2784) + x_2786);
            let x_2789 : vec4<f32> = u_xlat15;
            let x_2790 : vec2<f32> = vec2<f32>(x_2789.z, x_2789.w);
            let x_2792 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2790.x, x_2790.y, x_2792);
            let x_2799 : vec3<f32> = txVec40;
            let x_2801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2799.xy, x_2799.z);
            u_xlat12.x = x_2801;
            let x_2804 : f32 = u_xlat20.z;
            let x_2806 : f32 = u_xlat12.x;
            let x_2808 : f32 = u_xlat89;
            u_xlat89 = ((x_2804 * x_2806) + x_2808);
            let x_2811 : vec4<f32> = u_xlat14;
            let x_2812 : vec2<f32> = vec2<f32>(x_2811.x, x_2811.y);
            let x_2814 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2812.x, x_2812.y, x_2814);
            let x_2821 : vec3<f32> = txVec41;
            let x_2823 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2821.xy, x_2821.z);
            u_xlat12.x = x_2823;
            let x_2826 : f32 = u_xlat20.w;
            let x_2828 : f32 = u_xlat12.x;
            let x_2830 : f32 = u_xlat89;
            u_xlat89 = ((x_2826 * x_2828) + x_2830);
            let x_2833 : vec4<f32> = u_xlat14;
            let x_2834 : vec2<f32> = vec2<f32>(x_2833.z, x_2833.w);
            let x_2836 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2834.x, x_2834.y, x_2836);
            let x_2843 : vec3<f32> = txVec42;
            let x_2845 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2843.xy, x_2843.z);
            u_xlat12.x = x_2845;
            let x_2847 : f32 = u_xlat88;
            let x_2849 : f32 = u_xlat12.x;
            let x_2851 : f32 = u_xlat89;
            u_xlat87 = ((x_2847 * x_2849) + x_2851);
          } else {
            let x_2854 : vec4<f32> = u_xlat11;
            let x_2857 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2860 : vec2<f32> = ((vec2<f32>(x_2854.x, x_2854.y) * vec2<f32>(x_2857.z, x_2857.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2861 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2860.x, x_2860.y, x_2861.z, x_2861.w);
            let x_2863 : vec4<f32> = u_xlat12;
            let x_2865 : vec2<f32> = floor(vec2<f32>(x_2863.x, x_2863.y));
            let x_2866 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2865.x, x_2865.y, x_2866.z, x_2866.w);
            let x_2868 : vec4<f32> = u_xlat11;
            let x_2871 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_2874 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2868.x, x_2868.y) * vec2<f32>(x_2871.z, x_2871.w)) + -(vec2<f32>(x_2874.x, x_2874.y)));
            let x_2878 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2878.x, x_2878.x, x_2878.y, x_2878.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2881 : vec4<f32> = u_xlat13;
            let x_2883 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2881.x, x_2881.x, x_2881.z, x_2881.z) * vec4<f32>(x_2883.x, x_2883.x, x_2883.z, x_2883.z));
            let x_2886 : vec4<f32> = u_xlat14;
            let x_2888 : vec2<f32> = (vec2<f32>(x_2886.y, x_2886.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2889 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2889.x, x_2888.x, x_2889.z, x_2888.y);
            let x_2891 : vec4<f32> = u_xlat14;
            let x_2894 : vec2<f32> = u_xlat64;
            let x_2896 : vec2<f32> = ((vec2<f32>(x_2891.x, x_2891.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2894));
            let x_2897 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2896.x, x_2897.y, x_2896.y, x_2897.w);
            let x_2899 : vec2<f32> = u_xlat64;
            let x_2901 : vec2<f32> = (-(x_2899) + vec2<f32>(1.0f, 1.0f));
            let x_2902 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2901.x, x_2901.y, x_2902.z, x_2902.w);
            let x_2904 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2904, vec2<f32>(0.0f, 0.0f));
            let x_2906 : vec2<f32> = u_xlat66;
            let x_2908 : vec2<f32> = u_xlat66;
            let x_2910 : vec4<f32> = u_xlat14;
            let x_2912 : vec2<f32> = ((-(x_2906) * x_2908) + vec2<f32>(x_2910.x, x_2910.y));
            let x_2913 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2912.x, x_2912.y, x_2913.z, x_2913.w);
            let x_2915 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2915, vec2<f32>(0.0f, 0.0f));
            let x_2918 : vec2<f32> = u_xlat66;
            let x_2920 : vec2<f32> = u_xlat66;
            let x_2922 : vec4<f32> = u_xlat13;
            let x_2924 : vec2<f32> = ((-(x_2918) * x_2920) + vec2<f32>(x_2922.y, x_2922.w));
            let x_2925 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2924.x, x_2925.y, x_2924.y);
            let x_2927 : vec4<f32> = u_xlat14;
            let x_2930 : vec2<f32> = (vec2<f32>(x_2927.x, x_2927.y) + vec2<f32>(2.0f, 2.0f));
            let x_2931 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2930.x, x_2930.y, x_2931.z, x_2931.w);
            let x_2933 : vec3<f32> = u_xlat39;
            let x_2935 : vec2<f32> = (vec2<f32>(x_2933.x, x_2933.z) + vec2<f32>(2.0f, 2.0f));
            let x_2936 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2936.x, x_2935.x, x_2936.z, x_2935.y);
            let x_2939 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2939 * 0.08163200318813323975f);
            let x_2942 : vec4<f32> = u_xlat13;
            let x_2945 : vec3<f32> = (vec3<f32>(x_2942.z, x_2942.x, x_2942.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2946 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2945.x, x_2945.y, x_2945.z, x_2946.w);
            let x_2948 : vec4<f32> = u_xlat14;
            let x_2950 : vec2<f32> = (vec2<f32>(x_2948.x, x_2948.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2951 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2950.x, x_2950.y, x_2951.z, x_2951.w);
            let x_2954 : f32 = u_xlat17.y;
            u_xlat16.x = x_2954;
            let x_2956 : vec2<f32> = u_xlat64;
            let x_2959 : vec2<f32> = ((vec2<f32>(x_2956.x, x_2956.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2960 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2960.x, x_2959.x, x_2960.z, x_2959.y);
            let x_2962 : vec2<f32> = u_xlat64;
            let x_2965 : vec2<f32> = ((vec2<f32>(x_2962.x, x_2962.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2966 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2965.x, x_2966.y, x_2965.y, x_2966.w);
            let x_2969 : f32 = u_xlat13.x;
            u_xlat14.y = x_2969;
            let x_2972 : f32 = u_xlat15.y;
            u_xlat14.w = x_2972;
            let x_2974 : vec4<f32> = u_xlat14;
            let x_2975 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2974 + x_2975);
            let x_2977 : vec2<f32> = u_xlat64;
            let x_2980 : vec2<f32> = ((vec2<f32>(x_2977.y, x_2977.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2981 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2981.x, x_2980.x, x_2981.z, x_2980.y);
            let x_2983 : vec2<f32> = u_xlat64;
            let x_2986 : vec2<f32> = ((vec2<f32>(x_2983.y, x_2983.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2987 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2986.x, x_2987.y, x_2986.y, x_2987.w);
            let x_2990 : f32 = u_xlat13.y;
            u_xlat15.y = x_2990;
            let x_2992 : vec4<f32> = u_xlat15;
            let x_2993 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2992 + x_2993);
            let x_2995 : vec4<f32> = u_xlat14;
            let x_2996 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2995 / x_2996);
            let x_2998 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2998 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3000 : vec4<f32> = u_xlat15;
            let x_3001 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3000 / x_3001);
            let x_3003 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3003 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3005 : vec4<f32> = u_xlat14;
            let x_3008 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3005.w, x_3005.x, x_3005.y, x_3005.z) * vec4<f32>(x_3008.x, x_3008.x, x_3008.x, x_3008.x));
            let x_3011 : vec4<f32> = u_xlat15;
            let x_3014 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3011.x, x_3011.w, x_3011.y, x_3011.z) * vec4<f32>(x_3014.y, x_3014.y, x_3014.y, x_3014.y));
            let x_3017 : vec4<f32> = u_xlat14;
            let x_3018 : vec3<f32> = vec3<f32>(x_3017.y, x_3017.z, x_3017.w);
            let x_3019 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3018.x, x_3019.y, x_3018.y, x_3018.z);
            let x_3022 : f32 = u_xlat15.x;
            u_xlat17.y = x_3022;
            let x_3024 : vec4<f32> = u_xlat12;
            let x_3027 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3030 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3024.x, x_3024.y, x_3024.x, x_3024.y) * vec4<f32>(x_3027.x, x_3027.y, x_3027.x, x_3027.y)) + vec4<f32>(x_3030.x, x_3030.y, x_3030.z, x_3030.y));
            let x_3033 : vec4<f32> = u_xlat12;
            let x_3036 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3039 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3033.x, x_3033.y) * vec2<f32>(x_3036.x, x_3036.y)) + vec2<f32>(x_3039.w, x_3039.y));
            let x_3043 : f32 = u_xlat17.y;
            u_xlat14.y = x_3043;
            let x_3046 : f32 = u_xlat15.z;
            u_xlat17.y = x_3046;
            let x_3048 : vec4<f32> = u_xlat12;
            let x_3051 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3054 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3048.x, x_3048.y, x_3048.x, x_3048.y) * vec4<f32>(x_3051.x, x_3051.y, x_3051.x, x_3051.y)) + vec4<f32>(x_3054.x, x_3054.y, x_3054.z, x_3054.y));
            let x_3057 : vec4<f32> = u_xlat12;
            let x_3060 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3063 : vec4<f32> = u_xlat17;
            let x_3065 : vec2<f32> = ((vec2<f32>(x_3057.x, x_3057.y) * vec2<f32>(x_3060.x, x_3060.y)) + vec2<f32>(x_3063.w, x_3063.y));
            let x_3066 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3065.x, x_3065.y, x_3066.z, x_3066.w);
            let x_3069 : f32 = u_xlat17.y;
            u_xlat14.z = x_3069;
            let x_3072 : vec4<f32> = u_xlat12;
            let x_3075 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3078 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3072.x, x_3072.y, x_3072.x, x_3072.y) * vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y)) + vec4<f32>(x_3078.x, x_3078.y, x_3078.x, x_3078.z));
            let x_3082 : f32 = u_xlat15.w;
            u_xlat17.y = x_3082;
            let x_3085 : vec4<f32> = u_xlat12;
            let x_3088 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3091 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3085.x, x_3085.y, x_3085.x, x_3085.y) * vec4<f32>(x_3088.x, x_3088.y, x_3088.x, x_3088.y)) + vec4<f32>(x_3091.x, x_3091.y, x_3091.z, x_3091.y));
            let x_3095 : vec4<f32> = u_xlat12;
            let x_3098 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3101 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3095.x, x_3095.y) * vec2<f32>(x_3098.x, x_3098.y)) + vec2<f32>(x_3101.w, x_3101.y));
            let x_3105 : f32 = u_xlat17.y;
            u_xlat14.w = x_3105;
            let x_3108 : vec4<f32> = u_xlat12;
            let x_3111 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3114 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3108.x, x_3108.y) * vec2<f32>(x_3111.x, x_3111.y)) + vec2<f32>(x_3114.x, x_3114.w));
            let x_3117 : vec4<f32> = u_xlat17;
            let x_3118 : vec3<f32> = vec3<f32>(x_3117.x, x_3117.z, x_3117.w);
            let x_3119 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3118.x, x_3119.y, x_3118.y, x_3118.z);
            let x_3121 : vec4<f32> = u_xlat12;
            let x_3124 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3127 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3121.x, x_3121.y, x_3121.x, x_3121.y) * vec4<f32>(x_3124.x, x_3124.y, x_3124.x, x_3124.y)) + vec4<f32>(x_3127.x, x_3127.y, x_3127.z, x_3127.y));
            let x_3131 : vec4<f32> = u_xlat12;
            let x_3134 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3137 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3131.x, x_3131.y) * vec2<f32>(x_3134.x, x_3134.y)) + vec2<f32>(x_3137.w, x_3137.y));
            let x_3141 : f32 = u_xlat14.x;
            u_xlat15.x = x_3141;
            let x_3143 : vec4<f32> = u_xlat12;
            let x_3146 : vec4<f32> = x_311.x_AdditionalShadowmapSize;
            let x_3149 : vec4<f32> = u_xlat15;
            let x_3151 : vec2<f32> = ((vec2<f32>(x_3143.x, x_3143.y) * vec2<f32>(x_3146.x, x_3146.y)) + vec2<f32>(x_3149.x, x_3149.y));
            let x_3152 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3151.x, x_3151.y, x_3152.z, x_3152.w);
            let x_3155 : vec4<f32> = u_xlat13;
            let x_3157 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3155.x, x_3155.x, x_3155.x, x_3155.x) * x_3157);
            let x_3160 : vec4<f32> = u_xlat13;
            let x_3162 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3160.y, x_3160.y, x_3160.y, x_3160.y) * x_3162);
            let x_3165 : vec4<f32> = u_xlat13;
            let x_3167 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3165.z, x_3165.z, x_3165.z, x_3165.z) * x_3167);
            let x_3169 : vec4<f32> = u_xlat13;
            let x_3171 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3169.w, x_3169.w, x_3169.w, x_3169.w) * x_3171);
            let x_3174 : vec4<f32> = u_xlat18;
            let x_3175 : vec2<f32> = vec2<f32>(x_3174.x, x_3174.y);
            let x_3177 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
            let x_3184 : vec3<f32> = txVec43;
            let x_3186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
            u_xlat88 = x_3186;
            let x_3188 : vec4<f32> = u_xlat18;
            let x_3189 : vec2<f32> = vec2<f32>(x_3188.z, x_3188.w);
            let x_3191 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3189.x, x_3189.y, x_3191);
            let x_3198 : vec3<f32> = txVec44;
            let x_3200 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3198.xy, x_3198.z);
            u_xlat89 = x_3200;
            let x_3201 : f32 = u_xlat89;
            let x_3203 : f32 = u_xlat23.y;
            u_xlat89 = (x_3201 * x_3203);
            let x_3206 : f32 = u_xlat23.x;
            let x_3207 : f32 = u_xlat88;
            let x_3209 : f32 = u_xlat89;
            u_xlat88 = ((x_3206 * x_3207) + x_3209);
            let x_3212 : vec2<f32> = u_xlat64;
            let x_3214 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3212.x, x_3212.y, x_3214);
            let x_3221 : vec3<f32> = txVec45;
            let x_3223 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3221.xy, x_3221.z);
            u_xlat89 = x_3223;
            let x_3225 : f32 = u_xlat23.z;
            let x_3226 : f32 = u_xlat89;
            let x_3228 : f32 = u_xlat88;
            u_xlat88 = ((x_3225 * x_3226) + x_3228);
            let x_3231 : vec4<f32> = u_xlat21;
            let x_3232 : vec2<f32> = vec2<f32>(x_3231.x, x_3231.y);
            let x_3234 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3232.x, x_3232.y, x_3234);
            let x_3241 : vec3<f32> = txVec46;
            let x_3243 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3241.xy, x_3241.z);
            u_xlat89 = x_3243;
            let x_3245 : f32 = u_xlat23.w;
            let x_3246 : f32 = u_xlat89;
            let x_3248 : f32 = u_xlat88;
            u_xlat88 = ((x_3245 * x_3246) + x_3248);
            let x_3251 : vec4<f32> = u_xlat19;
            let x_3252 : vec2<f32> = vec2<f32>(x_3251.x, x_3251.y);
            let x_3254 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3252.x, x_3252.y, x_3254);
            let x_3261 : vec3<f32> = txVec47;
            let x_3263 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3261.xy, x_3261.z);
            u_xlat89 = x_3263;
            let x_3265 : f32 = u_xlat24.x;
            let x_3266 : f32 = u_xlat89;
            let x_3268 : f32 = u_xlat88;
            u_xlat88 = ((x_3265 * x_3266) + x_3268);
            let x_3271 : vec4<f32> = u_xlat19;
            let x_3272 : vec2<f32> = vec2<f32>(x_3271.z, x_3271.w);
            let x_3274 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3272.x, x_3272.y, x_3274);
            let x_3281 : vec3<f32> = txVec48;
            let x_3283 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3281.xy, x_3281.z);
            u_xlat89 = x_3283;
            let x_3285 : f32 = u_xlat24.y;
            let x_3286 : f32 = u_xlat89;
            let x_3288 : f32 = u_xlat88;
            u_xlat88 = ((x_3285 * x_3286) + x_3288);
            let x_3291 : vec4<f32> = u_xlat20;
            let x_3292 : vec2<f32> = vec2<f32>(x_3291.x, x_3291.y);
            let x_3294 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3292.x, x_3292.y, x_3294);
            let x_3301 : vec3<f32> = txVec49;
            let x_3303 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3301.xy, x_3301.z);
            u_xlat89 = x_3303;
            let x_3305 : f32 = u_xlat24.z;
            let x_3306 : f32 = u_xlat89;
            let x_3308 : f32 = u_xlat88;
            u_xlat88 = ((x_3305 * x_3306) + x_3308);
            let x_3311 : vec4<f32> = u_xlat21;
            let x_3312 : vec2<f32> = vec2<f32>(x_3311.z, x_3311.w);
            let x_3314 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3312.x, x_3312.y, x_3314);
            let x_3321 : vec3<f32> = txVec50;
            let x_3323 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3321.xy, x_3321.z);
            u_xlat89 = x_3323;
            let x_3325 : f32 = u_xlat24.w;
            let x_3326 : f32 = u_xlat89;
            let x_3328 : f32 = u_xlat88;
            u_xlat88 = ((x_3325 * x_3326) + x_3328);
            let x_3331 : vec4<f32> = u_xlat22;
            let x_3332 : vec2<f32> = vec2<f32>(x_3331.x, x_3331.y);
            let x_3334 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3332.x, x_3332.y, x_3334);
            let x_3341 : vec3<f32> = txVec51;
            let x_3343 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3341.xy, x_3341.z);
            u_xlat89 = x_3343;
            let x_3345 : f32 = u_xlat25.x;
            let x_3346 : f32 = u_xlat89;
            let x_3348 : f32 = u_xlat88;
            u_xlat88 = ((x_3345 * x_3346) + x_3348);
            let x_3351 : vec4<f32> = u_xlat22;
            let x_3352 : vec2<f32> = vec2<f32>(x_3351.z, x_3351.w);
            let x_3354 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3352.x, x_3352.y, x_3354);
            let x_3361 : vec3<f32> = txVec52;
            let x_3363 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3361.xy, x_3361.z);
            u_xlat89 = x_3363;
            let x_3365 : f32 = u_xlat25.y;
            let x_3366 : f32 = u_xlat89;
            let x_3368 : f32 = u_xlat88;
            u_xlat88 = ((x_3365 * x_3366) + x_3368);
            let x_3371 : vec2<f32> = u_xlat40;
            let x_3373 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3371.x, x_3371.y, x_3373);
            let x_3380 : vec3<f32> = txVec53;
            let x_3382 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3380.xy, x_3380.z);
            u_xlat89 = x_3382;
            let x_3384 : f32 = u_xlat25.z;
            let x_3385 : f32 = u_xlat89;
            let x_3387 : f32 = u_xlat88;
            u_xlat88 = ((x_3384 * x_3385) + x_3387);
            let x_3390 : vec2<f32> = u_xlat72;
            let x_3392 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3390.x, x_3390.y, x_3392);
            let x_3399 : vec3<f32> = txVec54;
            let x_3401 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3399.xy, x_3399.z);
            u_xlat89 = x_3401;
            let x_3403 : f32 = u_xlat25.w;
            let x_3404 : f32 = u_xlat89;
            let x_3406 : f32 = u_xlat88;
            u_xlat88 = ((x_3403 * x_3404) + x_3406);
            let x_3409 : vec4<f32> = u_xlat17;
            let x_3410 : vec2<f32> = vec2<f32>(x_3409.x, x_3409.y);
            let x_3412 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
            let x_3419 : vec3<f32> = txVec55;
            let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
            u_xlat89 = x_3421;
            let x_3423 : f32 = u_xlat13.x;
            let x_3424 : f32 = u_xlat89;
            let x_3426 : f32 = u_xlat88;
            u_xlat88 = ((x_3423 * x_3424) + x_3426);
            let x_3429 : vec4<f32> = u_xlat17;
            let x_3430 : vec2<f32> = vec2<f32>(x_3429.z, x_3429.w);
            let x_3432 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3430.x, x_3430.y, x_3432);
            let x_3439 : vec3<f32> = txVec56;
            let x_3441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3439.xy, x_3439.z);
            u_xlat89 = x_3441;
            let x_3443 : f32 = u_xlat13.y;
            let x_3444 : f32 = u_xlat89;
            let x_3446 : f32 = u_xlat88;
            u_xlat88 = ((x_3443 * x_3444) + x_3446);
            let x_3449 : vec2<f32> = u_xlat67;
            let x_3451 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3449.x, x_3449.y, x_3451);
            let x_3458 : vec3<f32> = txVec57;
            let x_3460 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3458.xy, x_3458.z);
            u_xlat89 = x_3460;
            let x_3462 : f32 = u_xlat13.z;
            let x_3463 : f32 = u_xlat89;
            let x_3465 : f32 = u_xlat88;
            u_xlat88 = ((x_3462 * x_3463) + x_3465);
            let x_3468 : vec4<f32> = u_xlat12;
            let x_3469 : vec2<f32> = vec2<f32>(x_3468.x, x_3468.y);
            let x_3471 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3469.x, x_3469.y, x_3471);
            let x_3478 : vec3<f32> = txVec58;
            let x_3480 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3478.xy, x_3478.z);
            u_xlat89 = x_3480;
            let x_3482 : f32 = u_xlat13.w;
            let x_3483 : f32 = u_xlat89;
            let x_3485 : f32 = u_xlat88;
            u_xlat87 = ((x_3482 * x_3483) + x_3485);
          }
        }
      } else {
        let x_3489 : vec4<f32> = u_xlat11;
        let x_3490 : vec2<f32> = vec2<f32>(x_3489.x, x_3489.y);
        let x_3492 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3490.x, x_3490.y, x_3492);
        let x_3499 : vec3<f32> = txVec59;
        let x_3501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3499.xy, x_3499.z);
        u_xlat87 = x_3501;
      }
      let x_3502 : i32 = u_xlati83;
      let x_3504 : f32 = x_311.x_AdditionalShadowParams[x_3502].x;
      u_xlat88 = (1.0f + -(x_3504));
      let x_3507 : f32 = u_xlat87;
      let x_3508 : i32 = u_xlati83;
      let x_3510 : f32 = x_311.x_AdditionalShadowParams[x_3508].x;
      let x_3512 : f32 = u_xlat88;
      u_xlat87 = ((x_3507 * x_3510) + x_3512);
      let x_3515 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3515);
      let x_3518 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3518 >= 1.0f);
      let x_3521 : bool = u_xlatb88;
      let x_3523 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3521 | x_3523);
      let x_3525 : bool = u_xlatb88;
      let x_3526 : f32 = u_xlat87;
      u_xlat87 = select(x_3526, 1.0f, x_3525);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3529 : f32 = u_xlat87;
    u_xlat88 = (-(x_3529) + 1.0f);
    let x_3532 : f32 = u_xlat1;
    let x_3533 : f32 = u_xlat88;
    let x_3535 : f32 = u_xlat87;
    u_xlat87 = ((x_3532 * x_3533) + x_3535);
    let x_3538 : i32 = u_xlati83;
    u_xlati88 = (1i << bitcast<u32>((x_3538 & 31i)));
    let x_3542 : i32 = u_xlati88;
    let x_3545 : f32 = x_1649.x_AdditionalLightsCookieEnableBits;
    u_xlati88 = bitcast<i32>((bitcast<u32>(x_3542) & bitcast<u32>(x_3545)));
    let x_3549 : i32 = u_xlati88;
    if ((x_3549 != 0i)) {
      let x_3553 : i32 = u_xlati83;
      let x_3555 : f32 = x_1649.x_AdditionalLightsLightTypes[x_3553].el;
      u_xlati88 = i32(x_3555);
      let x_3558 : i32 = u_xlati88;
      u_xlati11 = select(1i, 0i, (x_3558 != 0i));
      let x_3562 : i32 = u_xlati83;
      u_xlati37 = (x_3562 << bitcast<u32>(2i));
      let x_3564 : i32 = u_xlati11;
      if ((x_3564 != 0i)) {
        let x_3568 : vec3<f32> = vs_TEXCOORD7;
        let x_3570 : i32 = u_xlati37;
        let x_3573 : i32 = u_xlati37;
        let x_3577 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3570 + 1i) / 4i)][((x_3573 + 1i) % 4i)];
        let x_3579 : vec3<f32> = (vec3<f32>(x_3568.y, x_3568.y, x_3568.y) * vec3<f32>(x_3577.x, x_3577.y, x_3577.w));
        let x_3580 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3579.x, x_3580.y, x_3579.y, x_3579.z);
        let x_3582 : i32 = u_xlati37;
        let x_3584 : i32 = u_xlati37;
        let x_3587 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[(x_3582 / 4i)][(x_3584 % 4i)];
        let x_3589 : vec3<f32> = vs_TEXCOORD7;
        let x_3592 : vec4<f32> = u_xlat11;
        let x_3594 : vec3<f32> = ((vec3<f32>(x_3587.x, x_3587.y, x_3587.w) * vec3<f32>(x_3589.x, x_3589.x, x_3589.x)) + vec3<f32>(x_3592.x, x_3592.z, x_3592.w));
        let x_3595 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3594.x, x_3595.y, x_3594.y, x_3594.z);
        let x_3597 : i32 = u_xlati37;
        let x_3600 : i32 = u_xlati37;
        let x_3604 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3597 + 2i) / 4i)][((x_3600 + 2i) % 4i)];
        let x_3606 : vec3<f32> = vs_TEXCOORD7;
        let x_3609 : vec4<f32> = u_xlat11;
        let x_3611 : vec3<f32> = ((vec3<f32>(x_3604.x, x_3604.y, x_3604.w) * vec3<f32>(x_3606.z, x_3606.z, x_3606.z)) + vec3<f32>(x_3609.x, x_3609.z, x_3609.w));
        let x_3612 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3611.x, x_3612.y, x_3611.y, x_3611.z);
        let x_3614 : vec4<f32> = u_xlat11;
        let x_3616 : i32 = u_xlati37;
        let x_3619 : i32 = u_xlati37;
        let x_3623 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3616 + 3i) / 4i)][((x_3619 + 3i) % 4i)];
        let x_3625 : vec3<f32> = (vec3<f32>(x_3614.x, x_3614.z, x_3614.w) + vec3<f32>(x_3623.x, x_3623.y, x_3623.w));
        let x_3626 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3625.x, x_3626.y, x_3625.y, x_3625.z);
        let x_3628 : vec4<f32> = u_xlat11;
        let x_3630 : vec4<f32> = u_xlat11;
        let x_3632 : vec2<f32> = (vec2<f32>(x_3628.x, x_3628.z) / vec2<f32>(x_3630.w, x_3630.w));
        let x_3633 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3632.x, x_3633.y, x_3632.y, x_3633.w);
        let x_3635 : vec4<f32> = u_xlat11;
        let x_3638 : vec2<f32> = ((vec2<f32>(x_3635.x, x_3635.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3639 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3638.x, x_3639.y, x_3638.y, x_3639.w);
        let x_3641 : vec4<f32> = u_xlat11;
        let x_3645 : vec2<f32> = clamp(vec2<f32>(x_3641.x, x_3641.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3646 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3645.x, x_3646.y, x_3645.y, x_3646.w);
        let x_3648 : i32 = u_xlati83;
        let x_3650 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3648];
        let x_3652 : vec4<f32> = u_xlat11;
        let x_3655 : i32 = u_xlati83;
        let x_3657 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3655];
        let x_3659 : vec2<f32> = ((vec2<f32>(x_3650.x, x_3650.y) * vec2<f32>(x_3652.x, x_3652.z)) + vec2<f32>(x_3657.z, x_3657.w));
        let x_3660 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3659.x, x_3660.y, x_3659.y, x_3660.w);
      } else {
        let x_3663 : i32 = u_xlati88;
        u_xlatb88 = (x_3663 == 1i);
        let x_3665 : bool = u_xlatb88;
        u_xlati88 = select(0i, 1i, x_3665);
        let x_3667 : i32 = u_xlati88;
        if ((x_3667 != 0i)) {
          let x_3671 : vec3<f32> = vs_TEXCOORD7;
          let x_3673 : i32 = u_xlati37;
          let x_3676 : i32 = u_xlati37;
          let x_3680 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3673 + 1i) / 4i)][((x_3676 + 1i) % 4i)];
          let x_3682 : vec2<f32> = (vec2<f32>(x_3671.y, x_3671.y) * vec2<f32>(x_3680.x, x_3680.y));
          let x_3683 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3682.x, x_3682.y, x_3683.z, x_3683.w);
          let x_3685 : i32 = u_xlati37;
          let x_3687 : i32 = u_xlati37;
          let x_3690 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[(x_3685 / 4i)][(x_3687 % 4i)];
          let x_3692 : vec3<f32> = vs_TEXCOORD7;
          let x_3695 : vec4<f32> = u_xlat12;
          let x_3697 : vec2<f32> = ((vec2<f32>(x_3690.x, x_3690.y) * vec2<f32>(x_3692.x, x_3692.x)) + vec2<f32>(x_3695.x, x_3695.y));
          let x_3698 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3697.x, x_3697.y, x_3698.z, x_3698.w);
          let x_3700 : i32 = u_xlati37;
          let x_3703 : i32 = u_xlati37;
          let x_3707 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3700 + 2i) / 4i)][((x_3703 + 2i) % 4i)];
          let x_3709 : vec3<f32> = vs_TEXCOORD7;
          let x_3712 : vec4<f32> = u_xlat12;
          let x_3714 : vec2<f32> = ((vec2<f32>(x_3707.x, x_3707.y) * vec2<f32>(x_3709.z, x_3709.z)) + vec2<f32>(x_3712.x, x_3712.y));
          let x_3715 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3714.x, x_3714.y, x_3715.z, x_3715.w);
          let x_3717 : vec4<f32> = u_xlat12;
          let x_3719 : i32 = u_xlati37;
          let x_3722 : i32 = u_xlati37;
          let x_3726 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3719 + 3i) / 4i)][((x_3722 + 3i) % 4i)];
          let x_3728 : vec2<f32> = (vec2<f32>(x_3717.x, x_3717.y) + vec2<f32>(x_3726.x, x_3726.y));
          let x_3729 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3728.x, x_3728.y, x_3729.z, x_3729.w);
          let x_3731 : vec4<f32> = u_xlat12;
          let x_3734 : vec2<f32> = ((vec2<f32>(x_3731.x, x_3731.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3735 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3734.x, x_3734.y, x_3735.z, x_3735.w);
          let x_3737 : vec4<f32> = u_xlat12;
          let x_3739 : vec2<f32> = fract(vec2<f32>(x_3737.x, x_3737.y));
          let x_3740 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3739.x, x_3739.y, x_3740.z, x_3740.w);
          let x_3742 : i32 = u_xlati83;
          let x_3744 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3742];
          let x_3746 : vec4<f32> = u_xlat12;
          let x_3749 : i32 = u_xlati83;
          let x_3751 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3749];
          let x_3753 : vec2<f32> = ((vec2<f32>(x_3744.x, x_3744.y) * vec2<f32>(x_3746.x, x_3746.y)) + vec2<f32>(x_3751.z, x_3751.w));
          let x_3754 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3753.x, x_3754.y, x_3753.y, x_3754.w);
        } else {
          let x_3757 : vec3<f32> = vs_TEXCOORD7;
          let x_3759 : i32 = u_xlati37;
          let x_3762 : i32 = u_xlati37;
          let x_3766 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3759 + 1i) / 4i)][((x_3762 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3757.y, x_3757.y, x_3757.y, x_3757.y) * x_3766);
          let x_3768 : i32 = u_xlati37;
          let x_3770 : i32 = u_xlati37;
          let x_3773 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[(x_3768 / 4i)][(x_3770 % 4i)];
          let x_3774 : vec3<f32> = vs_TEXCOORD7;
          let x_3777 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3773 * vec4<f32>(x_3774.x, x_3774.x, x_3774.x, x_3774.x)) + x_3777);
          let x_3779 : i32 = u_xlati37;
          let x_3782 : i32 = u_xlati37;
          let x_3786 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3779 + 2i) / 4i)][((x_3782 + 2i) % 4i)];
          let x_3787 : vec3<f32> = vs_TEXCOORD7;
          let x_3790 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3786 * vec4<f32>(x_3787.z, x_3787.z, x_3787.z, x_3787.z)) + x_3790);
          let x_3792 : vec4<f32> = u_xlat12;
          let x_3793 : i32 = u_xlati37;
          let x_3796 : i32 = u_xlati37;
          let x_3800 : vec4<f32> = x_1649.x_AdditionalLightsWorldToLights[((x_3793 + 3i) / 4i)][((x_3796 + 3i) % 4i)];
          u_xlat12 = (x_3792 + x_3800);
          let x_3802 : vec4<f32> = u_xlat12;
          let x_3804 : vec4<f32> = u_xlat12;
          let x_3806 : vec3<f32> = (vec3<f32>(x_3802.x, x_3802.y, x_3802.z) / vec3<f32>(x_3804.w, x_3804.w, x_3804.w));
          let x_3807 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3806.x, x_3806.y, x_3806.z, x_3807.w);
          let x_3809 : vec4<f32> = u_xlat12;
          let x_3811 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(vec3<f32>(x_3809.x, x_3809.y, x_3809.z), vec3<f32>(x_3811.x, x_3811.y, x_3811.z));
          let x_3814 : f32 = u_xlat88;
          u_xlat88 = inverseSqrt(x_3814);
          let x_3816 : f32 = u_xlat88;
          let x_3818 : vec4<f32> = u_xlat12;
          let x_3820 : vec3<f32> = (vec3<f32>(x_3816, x_3816, x_3816) * vec3<f32>(x_3818.x, x_3818.y, x_3818.z));
          let x_3821 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3820.x, x_3820.y, x_3820.z, x_3821.w);
          let x_3823 : vec4<f32> = u_xlat12;
          u_xlat88 = dot(abs(vec3<f32>(x_3823.x, x_3823.y, x_3823.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3828 : f32 = u_xlat88;
          u_xlat88 = max(x_3828, 0.00000099999999747524f);
          let x_3831 : f32 = u_xlat88;
          u_xlat88 = (1.0f / x_3831);
          let x_3833 : f32 = u_xlat88;
          let x_3835 : vec4<f32> = u_xlat12;
          let x_3837 : vec3<f32> = (vec3<f32>(x_3833, x_3833, x_3833) * vec3<f32>(x_3835.z, x_3835.x, x_3835.y));
          let x_3838 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3837.x, x_3837.y, x_3837.z, x_3838.w);
          let x_3841 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3841);
          let x_3845 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3845, 0.0f, 1.0f);
          let x_3850 : vec4<f32> = u_xlat13;
          let x_3852 : vec4<bool> = (vec4<f32>(x_3850.y, x_3850.y, x_3850.z, x_3850.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3853 : vec2<bool> = vec2<bool>(x_3852.x, x_3852.z);
          let x_3854 : vec3<bool> = u_xlatb37;
          u_xlatb37 = vec3<bool>(x_3853.x, x_3854.y, x_3853.y);
          let x_3857 : bool = u_xlatb37.x;
          if (x_3857) {
            let x_3862 : f32 = u_xlat13.x;
            x_3858 = x_3862;
          } else {
            let x_3865 : f32 = u_xlat13.x;
            x_3858 = -(x_3865);
          }
          let x_3867 : f32 = x_3858;
          u_xlat37.x = x_3867;
          let x_3870 : bool = u_xlatb37.z;
          if (x_3870) {
            let x_3875 : f32 = u_xlat13.x;
            x_3871 = x_3875;
          } else {
            let x_3878 : f32 = u_xlat13.x;
            x_3871 = -(x_3878);
          }
          let x_3880 : f32 = x_3871;
          u_xlat37.z = x_3880;
          let x_3882 : vec4<f32> = u_xlat12;
          let x_3884 : f32 = u_xlat88;
          let x_3887 : vec3<f32> = u_xlat37;
          let x_3889 : vec2<f32> = ((vec2<f32>(x_3882.x, x_3882.y) * vec2<f32>(x_3884, x_3884)) + vec2<f32>(x_3887.x, x_3887.z));
          let x_3890 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3889.x, x_3890.y, x_3889.y);
          let x_3892 : vec3<f32> = u_xlat37;
          let x_3895 : vec2<f32> = ((vec2<f32>(x_3892.x, x_3892.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3896 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3895.x, x_3896.y, x_3895.y);
          let x_3898 : vec3<f32> = u_xlat37;
          let x_3902 : vec2<f32> = clamp(vec2<f32>(x_3898.x, x_3898.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3903 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3902.x, x_3903.y, x_3902.y);
          let x_3905 : i32 = u_xlati83;
          let x_3907 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3905];
          let x_3909 : vec3<f32> = u_xlat37;
          let x_3912 : i32 = u_xlati83;
          let x_3914 : vec4<f32> = x_1649.x_AdditionalLightsCookieAtlasUVRects[x_3912];
          let x_3916 : vec2<f32> = ((vec2<f32>(x_3907.x, x_3907.y) * vec2<f32>(x_3909.x, x_3909.z)) + vec2<f32>(x_3914.z, x_3914.w));
          let x_3917 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3916.x, x_3917.y, x_3916.y, x_3917.w);
        }
      }
      let x_3924 : vec4<f32> = u_xlat11;
      let x_3926 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3924.x, x_3924.z), 0.0f);
      u_xlat11 = x_3926;
      let x_3928 : bool = u_xlatb31.y;
      if (x_3928) {
        let x_3933 : f32 = u_xlat11.w;
        x_3929 = x_3933;
      } else {
        let x_3936 : f32 = u_xlat11.x;
        x_3929 = x_3936;
      }
      let x_3937 : f32 = x_3929;
      u_xlat88 = x_3937;
      let x_3939 : bool = u_xlatb31.x;
      if (x_3939) {
        let x_3943 : vec4<f32> = u_xlat11;
        x_3940 = vec3<f32>(x_3943.x, x_3943.y, x_3943.z);
      } else {
        let x_3946 : f32 = u_xlat88;
        x_3940 = vec3<f32>(x_3946, x_3946, x_3946);
      }
      let x_3948 : vec3<f32> = x_3940;
      let x_3949 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3948.x, x_3948.y, x_3948.z, x_3949.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3955 : vec4<f32> = u_xlat11;
    let x_3957 : i32 = u_xlati83;
    let x_3959 : vec4<f32> = x_2089.x_AdditionalLightsColor[x_3957];
    let x_3961 : vec3<f32> = (vec3<f32>(x_3955.x, x_3955.y, x_3955.z) * vec3<f32>(x_3959.x, x_3959.y, x_3959.z));
    let x_3962 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3961.x, x_3961.y, x_3961.z, x_3962.w);
    let x_3964 : f32 = u_xlat84;
    let x_3965 : f32 = u_xlat87;
    u_xlat83 = (x_3964 * x_3965);
    let x_3967 : vec3<f32> = u_xlat2;
    let x_3968 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_3967, vec3<f32>(x_3968.x, x_3968.y, x_3968.z));
    let x_3971 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3971, 0.0f, 1.0f);
    let x_3973 : f32 = u_xlat83;
    let x_3974 : f32 = u_xlat84;
    u_xlat83 = (x_3973 * x_3974);
    let x_3976 : f32 = u_xlat83;
    let x_3978 : vec4<f32> = u_xlat11;
    let x_3980 : vec3<f32> = (vec3<f32>(x_3976, x_3976, x_3976) * vec3<f32>(x_3978.x, x_3978.y, x_3978.z));
    let x_3981 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3980.x, x_3980.y, x_3980.z, x_3981.w);
    let x_3983 : vec4<f32> = u_xlat9;
    let x_3985 : f32 = u_xlat85;
    let x_3988 : vec3<f32> = u_xlat27;
    let x_3989 : vec3<f32> = ((vec3<f32>(x_3983.x, x_3983.y, x_3983.z) * vec3<f32>(x_3985, x_3985, x_3985)) + x_3988);
    let x_3990 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3989.x, x_3989.y, x_3989.z, x_3990.w);
    let x_3992 : vec4<f32> = u_xlat9;
    let x_3994 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3992.x, x_3992.y, x_3992.z), vec3<f32>(x_3994.x, x_3994.y, x_3994.z));
    let x_3997 : f32 = u_xlat83;
    u_xlat83 = max(x_3997, 1.17549435e-38f);
    let x_3999 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_3999);
    let x_4001 : f32 = u_xlat83;
    let x_4003 : vec4<f32> = u_xlat9;
    let x_4005 : vec3<f32> = (vec3<f32>(x_4001, x_4001, x_4001) * vec3<f32>(x_4003.x, x_4003.y, x_4003.z));
    let x_4006 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4005.x, x_4005.y, x_4005.z, x_4006.w);
    let x_4008 : vec3<f32> = u_xlat2;
    let x_4009 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(x_4008, vec3<f32>(x_4009.x, x_4009.y, x_4009.z));
    let x_4012 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4012, 0.0f, 1.0f);
    let x_4014 : vec4<f32> = u_xlat10;
    let x_4016 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_4014.x, x_4014.y, x_4014.z), vec3<f32>(x_4016.x, x_4016.y, x_4016.z));
    let x_4019 : f32 = u_xlat84;
    u_xlat84 = clamp(x_4019, 0.0f, 1.0f);
    let x_4021 : f32 = u_xlat83;
    let x_4022 : f32 = u_xlat83;
    u_xlat83 = (x_4021 * x_4022);
    let x_4024 : f32 = u_xlat83;
    let x_4026 : f32 = u_xlat8.x;
    u_xlat83 = ((x_4024 * x_4026) + 1.00001001358032226562f);
    let x_4029 : f32 = u_xlat84;
    let x_4030 : f32 = u_xlat84;
    u_xlat84 = (x_4029 * x_4030);
    let x_4032 : f32 = u_xlat83;
    let x_4033 : f32 = u_xlat83;
    u_xlat83 = (x_4032 * x_4033);
    let x_4035 : f32 = u_xlat84;
    u_xlat84 = max(x_4035, 0.10000000149011611938f);
    let x_4037 : f32 = u_xlat83;
    let x_4038 : f32 = u_xlat84;
    u_xlat83 = (x_4037 * x_4038);
    let x_4041 : f32 = u_xlat4.x;
    let x_4042 : f32 = u_xlat83;
    u_xlat83 = (x_4041 * x_4042);
    let x_4044 : f32 = u_xlat5;
    let x_4045 : f32 = u_xlat83;
    u_xlat83 = (x_4044 / x_4045);
    let x_4047 : vec4<f32> = u_xlat0;
    let x_4049 : f32 = u_xlat83;
    let x_4052 : vec3<f32> = u_xlat30;
    let x_4053 : vec3<f32> = ((vec3<f32>(x_4047.x, x_4047.y, x_4047.z) * vec3<f32>(x_4049, x_4049, x_4049)) + x_4052);
    let x_4054 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4053.x, x_4053.y, x_4053.z, x_4054.w);
    let x_4056 : vec4<f32> = u_xlat9;
    let x_4058 : vec4<f32> = u_xlat11;
    let x_4061 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4056.x, x_4056.y, x_4056.z) * vec3<f32>(x_4058.x, x_4058.y, x_4058.z)) + x_4061);

    continuing {
      let x_4063 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4063 + bitcast<u32>(1i));
    }
  }
  let x_4065 : vec4<f32> = u_xlat7;
  let x_4067 : vec4<f32> = u_xlat6;
  let x_4070 : vec4<f32> = u_xlat3;
  let x_4072 : vec3<f32> = ((vec3<f32>(x_4065.x, x_4065.y, x_4065.z) * vec3<f32>(x_4067.x, x_4067.y, x_4067.z)) + vec3<f32>(x_4070.x, x_4070.y, x_4070.z));
  let x_4073 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4072.x, x_4072.y, x_4072.z, x_4073.w);
  let x_4075 : vec3<f32> = u_xlat34;
  let x_4076 : vec4<f32> = u_xlat0;
  let x_4078 : vec3<f32> = (x_4075 + vec3<f32>(x_4076.x, x_4076.y, x_4076.z));
  let x_4079 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4078.x, x_4078.y, x_4078.z, x_4079.w);
  let x_4081 : f32 = u_xlat80;
  let x_4082 : f32 = u_xlat80;
  u_xlat78 = (x_4081 * -(x_4082));
  let x_4085 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4085);
  let x_4087 : vec4<f32> = u_xlat0;
  let x_4090 : vec4<f32> = x_29.unity_FogColor;
  let x_4093 : vec3<f32> = (vec3<f32>(x_4087.x, x_4087.y, x_4087.z) + -(vec3<f32>(x_4090.x, x_4090.y, x_4090.z)));
  let x_4094 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4093.x, x_4093.y, x_4093.z, x_4094.w);
  let x_4098 : f32 = u_xlat78;
  let x_4100 : vec4<f32> = u_xlat0;
  let x_4104 : vec4<f32> = x_29.unity_FogColor;
  let x_4106 : vec3<f32> = ((vec3<f32>(x_4098, x_4098, x_4098) * vec3<f32>(x_4100.x, x_4100.y, x_4100.z)) + vec3<f32>(x_4104.x, x_4104.y, x_4104.z));
  let x_4107 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4106.x, x_4106.y, x_4106.z, x_4107.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



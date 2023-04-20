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
  /* @offset(160) */
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(17) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_70 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_BumpMap : sampler;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_OcclusionMap : sampler;

var<private> u_xlat29 : vec3<f32>;

@group(0) @binding(11) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_PointRepeat : sampler;

var<private> u_xlatb55 : bool;

@group(1) @binding(2) var<uniform> x_186 : UnityPerDraw;

var<private> u_xlatb29 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_345 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(13) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat79 : f32;

var<private> u_xlatb82 : bool;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(20) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb30 : bool;

var<private> u_xlatb56 : vec2<bool>;

var<private> u_xlat30 : vec3<f32>;

var<private> u_xlat56 : vec2<f32>;

@group(1) @binding(5) var<uniform> x_1970 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(21) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(12) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu30 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati30 : i32;

@group(1) @binding(1) var<uniform> x_2426 : AdditionalLights;

var<private> u_xlati59 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb59 : bool;

@group(0) @binding(8) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb86 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati86 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(18) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlatu53 : u32;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_193 : f32;
  var x_259 : f32;
  var x_271 : f32;
  var x_282 : f32;
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
  var x_1921 : f32;
  var x_2037 : f32;
  var x_2048 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2567 : f32;
  var x_2577 : f32;
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
  var x_3845 : f32;
  var x_4168 : f32;
  var x_4181 : f32;
  var x_4229 : f32;
  var x_4240 : vec3<f32>;
  var x_4404 : f32;
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
  u_xlat1 = vec2<f32>(x_63.x, x_63.w);
  let x_66 : vec4<f32> = u_xlat0;
  let x_74 : vec4<f32> = x_70.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_66.w, x_66.x, x_66.y, x_66.z) * vec4<f32>(x_74.w, x_74.x, x_74.y, x_74.z));
  let x_84 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : f32 = x_45.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_84, x_86);
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.x;
  let x_94 : f32 = u_xlat3.z;
  u_xlat3.x = (x_91 * x_94);
  let x_98 : vec3<f32> = u_xlat3;
  u_xlat53 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat53;
  let x_108 : vec2<f32> = u_xlat53;
  u_xlat78 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat78;
  u_xlat78 = min(x_110, 1.0f);
  let x_112 : f32 = u_xlat78;
  u_xlat78 = (-(x_112) + 1.0f);
  let x_115 : f32 = u_xlat78;
  u_xlat78 = sqrt(x_115);
  let x_117 : f32 = u_xlat78;
  u_xlat78 = max(x_117, 0.0000000000000001f);
  let x_120 : vec2<f32> = u_xlat53;
  let x_123 : f32 = x_70.x_BumpScale;
  let x_125 : f32 = x_70.x_BumpScale;
  let x_126 : vec2<f32> = vec2<f32>(x_123, x_125);
  u_xlat53 = (x_120 * vec2<f32>(x_126.x, x_126.y));
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  let x_138 : f32 = x_45.x_GlobalMipBias.x;
  let x_139 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_136, x_138);
  u_xlat3.x = x_139.y;
  let x_146 : f32 = x_70.x_OcclusionStrength;
  u_xlat29.x = (-(x_146) + 1.0f);
  let x_151 : f32 = u_xlat3.x;
  let x_153 : f32 = x_70.x_OcclusionStrength;
  let x_156 : f32 = u_xlat29.x;
  u_xlat3.x = ((x_151 * x_153) + x_156);
  let x_159 : vec4<f32> = hlslcc_FragCoord;
  let x_163 : f32 = x_45.x_DitheringTextureInvSize;
  let x_165 : vec2<f32> = (vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_163, x_163));
  let x_166 : vec3<f32> = u_xlat29;
  u_xlat29 = vec3<f32>(x_165.x, x_165.y, x_166.z);
  let x_173 : vec3<f32> = u_xlat29;
  let x_176 : f32 = x_45.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_173.x, x_173.y), x_176);
  u_xlat29.x = x_177.w;
  let x_188 : f32 = x_186.unity_LODFade.x;
  u_xlatb55 = (x_188 >= 0.0f);
  let x_191 : bool = u_xlatb55;
  if (x_191) {
    let x_197 : f32 = u_xlat29.x;
    x_193 = abs(x_197);
  } else {
    let x_201 : f32 = u_xlat29.x;
    x_193 = -(abs(x_201));
  }
  let x_204 : f32 = x_193;
  u_xlat29.x = x_204;
  let x_207 : f32 = u_xlat29.x;
  let x_210 : f32 = x_186.unity_LODFade.x;
  u_xlat29.x = (-(x_207) + x_210);
  let x_215 : f32 = u_xlat29.x;
  u_xlatb29 = (x_215 < 0.0f);
  let x_217 : bool = u_xlatb29;
  if (((select(0i, 1i, x_217) * -1i) != 0i)) {
    discard;
  }
  let x_228 : f32 = x_45.unity_OrthoParams.w;
  u_xlatb29 = (x_228 == 0.0f);
  let x_233 : vec3<f32> = vs_TEXCOORD1;
  let x_238 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  let x_239 : vec3<f32> = (-(x_233) + x_238);
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_243 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat55 = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_248 : f32 = u_xlat55;
  u_xlat55 = inverseSqrt(x_248);
  let x_250 : f32 = u_xlat55;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = (vec3<f32>(x_250, x_250, x_250) * vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_258 : bool = u_xlatb29;
  if (x_258) {
    let x_263 : f32 = u_xlat4.x;
    x_259 = x_263;
  } else {
    let x_267 : f32 = x_45.unity_MatrixV[0i].z;
    x_259 = x_267;
  }
  let x_268 : f32 = x_259;
  u_xlat5.x = x_268;
  let x_270 : bool = u_xlatb29;
  if (x_270) {
    let x_275 : f32 = u_xlat4.y;
    x_271 = x_275;
  } else {
    let x_278 : f32 = x_45.unity_MatrixV[1i].z;
    x_271 = x_278;
  }
  let x_279 : f32 = x_271;
  u_xlat5.y = x_279;
  let x_281 : bool = u_xlatb29;
  if (x_281) {
    let x_286 : f32 = u_xlat4.z;
    x_282 = x_286;
  } else {
    let x_289 : f32 = x_45.unity_MatrixV[2i].z;
    x_282 = x_289;
  }
  let x_290 : f32 = x_282;
  u_xlat5.z = x_290;
  let x_293 : vec3<f32> = vs_TEXCOORD2;
  let x_296 : vec4<f32> = vs_TEXCOORD3;
  u_xlat29 = (vec3<f32>(x_293.z, x_293.x, x_293.y) * vec3<f32>(x_296.y, x_296.z, x_296.x));
  let x_299 : vec3<f32> = vs_TEXCOORD2;
  let x_301 : vec4<f32> = vs_TEXCOORD3;
  let x_304 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_299.y, x_299.z, x_299.x) * vec3<f32>(x_301.z, x_301.x, x_301.y)) + -(x_304));
  let x_307 : vec3<f32> = u_xlat29;
  let x_308 : vec4<f32> = vs_TEXCOORD3;
  u_xlat29 = (x_307 * vec3<f32>(x_308.w, x_308.w, x_308.w));
  let x_311 : vec2<f32> = u_xlat53;
  let x_313 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_311.y, x_311.y, x_311.y) * x_313);
  let x_315 : vec2<f32> = u_xlat53;
  let x_317 : vec4<f32> = vs_TEXCOORD3;
  let x_320 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_315.x, x_315.x, x_315.x) * vec3<f32>(x_317.x, x_317.y, x_317.z)) + x_320);
  let x_322 : f32 = u_xlat78;
  let x_324 : vec3<f32> = vs_TEXCOORD2;
  let x_326 : vec3<f32> = u_xlat29;
  u_xlat29 = ((vec3<f32>(x_322, x_322, x_322) * x_324) + x_326);
  let x_328 : vec3<f32> = u_xlat29;
  let x_329 : vec3<f32> = u_xlat29;
  u_xlat78 = dot(x_328, x_329);
  let x_331 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_331);
  let x_333 : f32 = u_xlat78;
  let x_335 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_333, x_333, x_333) * x_335);
  let x_337 : vec3<f32> = vs_TEXCOORD1;
  let x_347 : vec4<f32> = x_345.x_CascadeShadowSplitSpheres0;
  let x_350 : vec3<f32> = (x_337 + -(vec3<f32>(x_347.x, x_347.y, x_347.z)));
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec3<f32> = vs_TEXCOORD1;
  let x_356 : vec4<f32> = x_345.x_CascadeShadowSplitSpheres1;
  let x_359 : vec3<f32> = (x_354 + -(vec3<f32>(x_356.x, x_356.y, x_356.z)));
  let x_360 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_363 : vec3<f32> = vs_TEXCOORD1;
  let x_366 : vec4<f32> = x_345.x_CascadeShadowSplitSpheres2;
  let x_369 : vec3<f32> = (x_363 + -(vec3<f32>(x_366.x, x_366.y, x_366.z)));
  let x_370 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : vec3<f32> = vs_TEXCOORD1;
  let x_375 : vec4<f32> = x_345.x_CascadeShadowSplitSpheres3;
  let x_378 : vec3<f32> = (x_373 + -(vec3<f32>(x_375.x, x_375.y, x_375.z)));
  let x_379 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat4;
  let x_383 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_387 : vec4<f32> = u_xlat6;
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_387.x, x_387.y, x_387.z), vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_393 : vec4<f32> = u_xlat7;
  let x_395 : vec4<f32> = u_xlat7;
  u_xlat4.z = dot(vec3<f32>(x_393.x, x_393.y, x_393.z), vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_399 : vec4<f32> = u_xlat8;
  let x_401 : vec4<f32> = u_xlat8;
  u_xlat4.w = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_408 : vec4<f32> = u_xlat4;
  let x_410 : vec4<f32> = x_345.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_408 < x_410);
  let x_413 : bool = u_xlatb4.x;
  u_xlat6.x = select(0.0f, 1.0f, x_413);
  let x_417 : bool = u_xlatb4.y;
  u_xlat6.y = select(0.0f, 1.0f, x_417);
  let x_421 : bool = u_xlatb4.z;
  u_xlat6.z = select(0.0f, 1.0f, x_421);
  let x_425 : bool = u_xlatb4.w;
  u_xlat6.w = select(0.0f, 1.0f, x_425);
  let x_429 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_429);
  let x_434 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_434);
  let x_438 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_438);
  let x_441 : vec4<f32> = u_xlat4;
  let x_443 : vec4<f32> = u_xlat6;
  let x_445 : vec3<f32> = (vec3<f32>(x_441.x, x_441.y, x_441.z) + vec3<f32>(x_443.y, x_443.z, x_443.w));
  let x_446 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_448 : vec4<f32> = u_xlat4;
  let x_451 : vec3<f32> = max(vec3<f32>(x_448.x, x_448.y, x_448.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_452.x, x_451.x, x_451.y, x_451.z);
  let x_454 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_454, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_459 : f32 = u_xlat78;
  u_xlat78 = (-(x_459) + 4.0f);
  let x_464 : f32 = u_xlat78;
  u_xlatu78 = u32(x_464);
  let x_468 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_468) << bitcast<u32>(2i));
  let x_471 : vec3<f32> = vs_TEXCOORD1;
  let x_473 : i32 = u_xlati78;
  let x_476 : i32 = u_xlati78;
  let x_480 : vec4<f32> = x_345.x_MainLightWorldToShadow[((x_473 + 1i) / 4i)][((x_476 + 1i) % 4i)];
  let x_482 : vec3<f32> = (vec3<f32>(x_471.y, x_471.y, x_471.y) * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : i32 = u_xlati78;
  let x_487 : i32 = u_xlati78;
  let x_490 : vec4<f32> = x_345.x_MainLightWorldToShadow[(x_485 / 4i)][(x_487 % 4i)];
  let x_492 : vec3<f32> = vs_TEXCOORD1;
  let x_495 : vec4<f32> = u_xlat4;
  let x_497 : vec3<f32> = ((vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(x_492.x, x_492.x, x_492.x)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_500 : i32 = u_xlati78;
  let x_503 : i32 = u_xlati78;
  let x_507 : vec4<f32> = x_345.x_MainLightWorldToShadow[((x_500 + 2i) / 4i)][((x_503 + 2i) % 4i)];
  let x_509 : vec3<f32> = vs_TEXCOORD1;
  let x_512 : vec4<f32> = u_xlat4;
  let x_514 : vec3<f32> = ((vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(x_509.z, x_509.z, x_509.z)) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_517 : vec4<f32> = u_xlat4;
  let x_519 : i32 = u_xlati78;
  let x_522 : i32 = u_xlati78;
  let x_526 : vec4<f32> = x_345.x_MainLightWorldToShadow[((x_519 + 3i) / 4i)][((x_522 + 3i) % 4i)];
  let x_528 : vec3<f32> = (vec3<f32>(x_517.x, x_517.y, x_517.z) + vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_537 : vec2<f32> = vs_TEXCOORD8;
  let x_539 : f32 = x_45.x_GlobalMipBias.x;
  let x_540 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_537, x_539);
  u_xlat6 = x_540;
  let x_545 : vec2<f32> = vs_TEXCOORD8;
  let x_547 : f32 = x_45.x_GlobalMipBias.x;
  let x_548 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_545, x_547);
  let x_549 : vec3<f32> = vec3<f32>(x_548.x, x_548.y, x_548.z);
  let x_550 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_552 : vec4<f32> = u_xlat6;
  let x_556 : vec3<f32> = (vec3<f32>(x_552.x, x_552.y, x_552.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_557 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_559 : vec3<f32> = u_xlat29;
  let x_560 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_559, vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : f32 = u_xlat78;
  u_xlat78 = (x_563 + 0.5f);
  let x_566 : f32 = u_xlat78;
  let x_568 : vec4<f32> = u_xlat7;
  let x_570 : vec3<f32> = (vec3<f32>(x_566, x_566, x_566) * vec3<f32>(x_568.x, x_568.y, x_568.z));
  let x_571 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_574 : f32 = u_xlat6.w;
  u_xlat78 = max(x_574, 0.00009999999747378752f);
  let x_577 : vec4<f32> = u_xlat6;
  let x_579 : f32 = u_xlat78;
  let x_581 : vec3<f32> = (vec3<f32>(x_577.x, x_577.y, x_577.z) / vec3<f32>(x_579, x_579, x_579));
  let x_582 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_585 : f32 = u_xlat1.x;
  u_xlat78 = ((-(x_585) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_591 : f32 = u_xlat1.y;
  let x_593 : f32 = x_70.x_Smoothness;
  let x_595 : f32 = u_xlat78;
  u_xlat53.x = ((x_591 * x_593) + -(x_595));
  let x_600 : f32 = u_xlat78;
  let x_602 : vec4<f32> = u_xlat2;
  u_xlat28 = (vec3<f32>(x_600, x_600, x_600) * vec3<f32>(x_602.y, x_602.z, x_602.w));
  let x_605 : vec4<f32> = u_xlat0;
  let x_608 : vec4<f32> = x_70.x_BaseColor;
  let x_613 : vec3<f32> = ((vec3<f32>(x_605.x, x_605.y, x_605.z) * vec3<f32>(x_608.x, x_608.y, x_608.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_614 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec2<f32> = u_xlat1;
  let x_618 : vec4<f32> = u_xlat0;
  let x_623 : vec3<f32> = ((vec3<f32>(x_616.x, x_616.x, x_616.x) * vec3<f32>(x_618.x, x_618.y, x_618.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_624 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_627 : f32 = u_xlat1.y;
  let x_630 : f32 = x_70.x_Smoothness;
  u_xlat78 = ((-(x_627) * x_630) + 1.0f);
  let x_633 : f32 = u_xlat78;
  let x_634 : f32 = u_xlat78;
  u_xlat1.x = (x_633 * x_634);
  let x_638 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_638, 0.0078125f);
  let x_644 : f32 = u_xlat1.x;
  let x_646 : f32 = u_xlat1.x;
  u_xlat27 = (x_644 * x_646);
  let x_649 : f32 = u_xlat53.x;
  u_xlat53.x = (x_649 + 1.0f);
  let x_653 : f32 = u_xlat53.x;
  u_xlat53.x = clamp(x_653, 0.0f, 1.0f);
  let x_658 : f32 = u_xlat1.x;
  u_xlat79 = ((x_658 * 4.0f) + 2.0f);
  let x_662 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_662, 1.0f);
  let x_667 : f32 = x_345.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_667);
  let x_669 : bool = u_xlatb82;
  if (x_669) {
    let x_673 : f32 = x_345.x_MainLightShadowParams.y;
    u_xlatb82 = (x_673 == 1.0f);
    let x_675 : bool = u_xlatb82;
    if (x_675) {
      let x_678 : vec4<f32> = u_xlat4;
      let x_681 : vec4<f32> = x_345.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_678.x, x_678.y, x_678.x, x_678.y) + x_681);
      let x_685 : vec4<f32> = u_xlat7;
      let x_686 : vec2<f32> = vec2<f32>(x_685.x, x_685.y);
      let x_688 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_686.x, x_686.y, x_688);
      let x_700 : vec3<f32> = txVec0;
      let x_702 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_700.xy, x_700.z);
      u_xlat8.x = x_702;
      let x_705 : vec4<f32> = u_xlat7;
      let x_706 : vec2<f32> = vec2<f32>(x_705.z, x_705.w);
      let x_708 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_706.x, x_706.y, x_708);
      let x_715 : vec3<f32> = txVec1;
      let x_717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_715.xy, x_715.z);
      u_xlat8.y = x_717;
      let x_719 : vec4<f32> = u_xlat4;
      let x_722 : vec4<f32> = x_345.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_719.x, x_719.y, x_719.x, x_719.y) + x_722);
      let x_725 : vec4<f32> = u_xlat7;
      let x_726 : vec2<f32> = vec2<f32>(x_725.x, x_725.y);
      let x_728 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_726.x, x_726.y, x_728);
      let x_735 : vec3<f32> = txVec2;
      let x_737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_735.xy, x_735.z);
      u_xlat8.z = x_737;
      let x_740 : vec4<f32> = u_xlat7;
      let x_741 : vec2<f32> = vec2<f32>(x_740.z, x_740.w);
      let x_743 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_741.x, x_741.y, x_743);
      let x_750 : vec3<f32> = txVec3;
      let x_752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_750.xy, x_750.z);
      u_xlat8.w = x_752;
      let x_755 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_755, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_762 : f32 = x_345.x_MainLightShadowParams.y;
      u_xlatb83 = (x_762 == 2.0f);
      let x_764 : bool = u_xlatb83;
      if (x_764) {
        let x_767 : vec4<f32> = u_xlat4;
        let x_771 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_775 : vec2<f32> = ((vec2<f32>(x_767.x, x_767.y) * vec2<f32>(x_771.z, x_771.w)) + vec2<f32>(0.5f, 0.5f));
        let x_776 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_775.x, x_775.y, x_776.z, x_776.w);
        let x_778 : vec4<f32> = u_xlat7;
        let x_780 : vec2<f32> = floor(vec2<f32>(x_778.x, x_778.y));
        let x_781 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
        let x_784 : vec4<f32> = u_xlat4;
        let x_787 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_790 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_784.x, x_784.y) * vec2<f32>(x_787.z, x_787.w)) + -(vec2<f32>(x_790.x, x_790.y)));
        let x_794 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_794.x, x_794.x, x_794.y, x_794.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_799 : vec4<f32> = u_xlat8;
        let x_801 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_799.x, x_799.x, x_799.z, x_799.z) * vec4<f32>(x_801.x, x_801.x, x_801.z, x_801.z));
        let x_804 : vec4<f32> = u_xlat9;
        let x_808 : vec2<f32> = (vec2<f32>(x_804.y, x_804.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_809 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_808.x, x_809.y, x_808.y, x_809.w);
        let x_811 : vec4<f32> = u_xlat9;
        let x_814 : vec2<f32> = u_xlat59;
        let x_816 : vec2<f32> = ((vec2<f32>(x_811.x, x_811.z) * vec2<f32>(0.5f, 0.5f)) + -(x_814));
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_816.x, x_816.y, x_817.z, x_817.w);
        let x_820 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_820) + vec2<f32>(1.0f, 1.0f));
        let x_825 : vec2<f32> = u_xlat59;
        let x_827 : vec2<f32> = min(x_825, vec2<f32>(0.0f, 0.0f));
        let x_828 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
        let x_830 : vec4<f32> = u_xlat10;
        let x_833 : vec4<f32> = u_xlat10;
        let x_836 : vec2<f32> = u_xlat61;
        let x_837 : vec2<f32> = ((-(vec2<f32>(x_830.x, x_830.y)) * vec2<f32>(x_833.x, x_833.y)) + x_836);
        let x_838 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_837.x, x_837.y, x_838.z, x_838.w);
        let x_840 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_840, vec2<f32>(0.0f, 0.0f));
        let x_842 : vec2<f32> = u_xlat59;
        let x_844 : vec2<f32> = u_xlat59;
        let x_846 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_842) * x_844) + vec2<f32>(x_846.y, x_846.w));
        let x_849 : vec4<f32> = u_xlat10;
        let x_851 : vec2<f32> = (vec2<f32>(x_849.x, x_849.y) + vec2<f32>(1.0f, 1.0f));
        let x_852 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_851.x, x_851.y, x_852.z, x_852.w);
        let x_854 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_854 + vec2<f32>(1.0f, 1.0f));
        let x_857 : vec4<f32> = u_xlat9;
        let x_861 : vec2<f32> = (vec2<f32>(x_857.x, x_857.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec2<f32> = u_xlat61;
        let x_865 : vec2<f32> = (x_864 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_866 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_865.x, x_865.y, x_866.z, x_866.w);
        let x_868 : vec4<f32> = u_xlat10;
        let x_870 : vec2<f32> = (vec2<f32>(x_868.x, x_868.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_871 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_870.x, x_870.y, x_871.z, x_871.w);
        let x_874 : vec2<f32> = u_xlat59;
        let x_875 : vec2<f32> = (x_874 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_876 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_878.y, x_878.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_882 : f32 = u_xlat10.x;
        u_xlat11.z = x_882;
        let x_885 : f32 = u_xlat59.x;
        u_xlat11.w = x_885;
        let x_888 : f32 = u_xlat12.x;
        u_xlat9.z = x_888;
        let x_891 : f32 = u_xlat8.x;
        u_xlat9.w = x_891;
        let x_894 : vec4<f32> = u_xlat9;
        let x_896 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_894.z, x_894.w, x_894.x, x_894.z) + vec4<f32>(x_896.z, x_896.w, x_896.x, x_896.z));
        let x_900 : f32 = u_xlat11.y;
        u_xlat10.z = x_900;
        let x_903 : f32 = u_xlat59.y;
        u_xlat10.w = x_903;
        let x_906 : f32 = u_xlat9.y;
        u_xlat12.z = x_906;
        let x_909 : f32 = u_xlat8.z;
        u_xlat12.w = x_909;
        let x_911 : vec4<f32> = u_xlat10;
        let x_913 : vec4<f32> = u_xlat12;
        let x_915 : vec3<f32> = (vec3<f32>(x_911.z, x_911.y, x_911.w) + vec3<f32>(x_913.z, x_913.y, x_913.w));
        let x_916 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
        let x_918 : vec4<f32> = u_xlat9;
        let x_920 : vec4<f32> = u_xlat13;
        let x_922 : vec3<f32> = (vec3<f32>(x_918.x, x_918.z, x_918.w) / vec3<f32>(x_920.z, x_920.w, x_920.y));
        let x_923 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
        let x_925 : vec4<f32> = u_xlat9;
        let x_930 : vec3<f32> = (vec3<f32>(x_925.x, x_925.y, x_925.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_931 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat12;
        let x_935 : vec4<f32> = u_xlat8;
        let x_937 : vec3<f32> = (vec3<f32>(x_933.z, x_933.y, x_933.w) / vec3<f32>(x_935.x, x_935.y, x_935.z));
        let x_938 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
        let x_940 : vec4<f32> = u_xlat10;
        let x_942 : vec3<f32> = (vec3<f32>(x_940.x, x_940.y, x_940.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_943 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat9;
        let x_948 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_950 : vec3<f32> = (vec3<f32>(x_945.y, x_945.x, x_945.z) * vec3<f32>(x_948.x, x_948.x, x_948.x));
        let x_951 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
        let x_953 : vec4<f32> = u_xlat10;
        let x_956 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_958 : vec3<f32> = (vec3<f32>(x_953.x, x_953.y, x_953.z) * vec3<f32>(x_956.y, x_956.y, x_956.y));
        let x_959 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
        let x_962 : f32 = u_xlat10.x;
        u_xlat9.w = x_962;
        let x_964 : vec4<f32> = u_xlat7;
        let x_967 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_970 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_964.x, x_964.y, x_964.x, x_964.y) * vec4<f32>(x_967.x, x_967.y, x_967.x, x_967.y)) + vec4<f32>(x_970.y, x_970.w, x_970.x, x_970.w));
        let x_973 : vec4<f32> = u_xlat7;
        let x_976 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_979 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_973.x, x_973.y) * vec2<f32>(x_976.x, x_976.y)) + vec2<f32>(x_979.z, x_979.w));
        let x_983 : f32 = u_xlat9.y;
        u_xlat10.w = x_983;
        let x_985 : vec4<f32> = u_xlat10;
        let x_986 : vec2<f32> = vec2<f32>(x_985.y, x_985.z);
        let x_987 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_987.x, x_986.x, x_987.z, x_986.y);
        let x_989 : vec4<f32> = u_xlat7;
        let x_992 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_995 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y) * vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y)) + vec4<f32>(x_995.x, x_995.y, x_995.z, x_995.y));
        let x_998 : vec4<f32> = u_xlat7;
        let x_1001 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_998.x, x_998.y, x_998.x, x_998.y) * vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y)) + vec4<f32>(x_1004.w, x_1004.y, x_1004.w, x_1004.z));
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1010 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1013 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1007.x, x_1007.y, x_1007.x, x_1007.y) * vec4<f32>(x_1010.x, x_1010.y, x_1010.x, x_1010.y)) + vec4<f32>(x_1013.x, x_1013.w, x_1013.z, x_1013.w));
        let x_1017 : vec4<f32> = u_xlat8;
        let x_1019 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1017.x, x_1017.x, x_1017.x, x_1017.y) * vec4<f32>(x_1019.z, x_1019.w, x_1019.y, x_1019.z));
        let x_1023 : vec4<f32> = u_xlat8;
        let x_1025 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1023.y, x_1023.y, x_1023.z, x_1023.z) * x_1025);
        let x_1029 : f32 = u_xlat8.z;
        let x_1031 : f32 = u_xlat13.y;
        u_xlat83 = (x_1029 * x_1031);
        let x_1034 : vec4<f32> = u_xlat11;
        let x_1035 : vec2<f32> = vec2<f32>(x_1034.x, x_1034.y);
        let x_1037 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1035.x, x_1035.y, x_1037);
        let x_1045 : vec3<f32> = txVec4;
        let x_1047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1045.xy, x_1045.z);
        u_xlat84 = x_1047;
        let x_1049 : vec4<f32> = u_xlat11;
        let x_1050 : vec2<f32> = vec2<f32>(x_1049.z, x_1049.w);
        let x_1052 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1050.x, x_1050.y, x_1052);
        let x_1059 : vec3<f32> = txVec5;
        let x_1061 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1059.xy, x_1059.z);
        u_xlat7.x = x_1061;
        let x_1064 : f32 = u_xlat7.x;
        let x_1066 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1064 * x_1066);
        let x_1070 : f32 = u_xlat14.x;
        let x_1071 : f32 = u_xlat84;
        let x_1074 : f32 = u_xlat7.x;
        u_xlat84 = ((x_1070 * x_1071) + x_1074);
        let x_1077 : vec2<f32> = u_xlat59;
        let x_1079 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1077.x, x_1077.y, x_1079);
        let x_1086 : vec3<f32> = txVec6;
        let x_1088 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1086.xy, x_1086.z);
        u_xlat7.x = x_1088;
        let x_1091 : f32 = u_xlat14.z;
        let x_1093 : f32 = u_xlat7.x;
        let x_1095 : f32 = u_xlat84;
        u_xlat84 = ((x_1091 * x_1093) + x_1095);
        let x_1098 : vec4<f32> = u_xlat10;
        let x_1099 : vec2<f32> = vec2<f32>(x_1098.x, x_1098.y);
        let x_1101 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1099.x, x_1099.y, x_1101);
        let x_1108 : vec3<f32> = txVec7;
        let x_1110 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1108.xy, x_1108.z);
        u_xlat7.x = x_1110;
        let x_1113 : f32 = u_xlat14.w;
        let x_1115 : f32 = u_xlat7.x;
        let x_1117 : f32 = u_xlat84;
        u_xlat84 = ((x_1113 * x_1115) + x_1117);
        let x_1120 : vec4<f32> = u_xlat12;
        let x_1121 : vec2<f32> = vec2<f32>(x_1120.x, x_1120.y);
        let x_1123 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1121.x, x_1121.y, x_1123);
        let x_1130 : vec3<f32> = txVec8;
        let x_1132 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1130.xy, x_1130.z);
        u_xlat7.x = x_1132;
        let x_1135 : f32 = u_xlat15.x;
        let x_1137 : f32 = u_xlat7.x;
        let x_1139 : f32 = u_xlat84;
        u_xlat84 = ((x_1135 * x_1137) + x_1139);
        let x_1142 : vec4<f32> = u_xlat12;
        let x_1143 : vec2<f32> = vec2<f32>(x_1142.z, x_1142.w);
        let x_1145 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1143.x, x_1143.y, x_1145);
        let x_1152 : vec3<f32> = txVec9;
        let x_1154 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1152.xy, x_1152.z);
        u_xlat7.x = x_1154;
        let x_1157 : f32 = u_xlat15.y;
        let x_1159 : f32 = u_xlat7.x;
        let x_1161 : f32 = u_xlat84;
        u_xlat84 = ((x_1157 * x_1159) + x_1161);
        let x_1164 : vec4<f32> = u_xlat10;
        let x_1165 : vec2<f32> = vec2<f32>(x_1164.z, x_1164.w);
        let x_1167 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1165.x, x_1165.y, x_1167);
        let x_1174 : vec3<f32> = txVec10;
        let x_1176 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1174.xy, x_1174.z);
        u_xlat7.x = x_1176;
        let x_1179 : f32 = u_xlat15.z;
        let x_1181 : f32 = u_xlat7.x;
        let x_1183 : f32 = u_xlat84;
        u_xlat84 = ((x_1179 * x_1181) + x_1183);
        let x_1186 : vec4<f32> = u_xlat9;
        let x_1187 : vec2<f32> = vec2<f32>(x_1186.x, x_1186.y);
        let x_1189 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
        let x_1196 : vec3<f32> = txVec11;
        let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1196.xy, x_1196.z);
        u_xlat7.x = x_1198;
        let x_1201 : f32 = u_xlat15.w;
        let x_1203 : f32 = u_xlat7.x;
        let x_1205 : f32 = u_xlat84;
        u_xlat84 = ((x_1201 * x_1203) + x_1205);
        let x_1208 : vec4<f32> = u_xlat9;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.z, x_1208.w);
        let x_1211 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec12;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1218.xy, x_1218.z);
        u_xlat7.x = x_1220;
        let x_1222 : f32 = u_xlat83;
        let x_1224 : f32 = u_xlat7.x;
        let x_1226 : f32 = u_xlat84;
        u_xlat82 = ((x_1222 * x_1224) + x_1226);
      } else {
        let x_1229 : vec4<f32> = u_xlat4;
        let x_1232 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(x_1232.z, x_1232.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1235.x, x_1235.y, x_1236.z, x_1236.w);
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1240 : vec2<f32> = floor(vec2<f32>(x_1238.x, x_1238.y));
        let x_1241 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1240.x, x_1240.y, x_1241.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat4;
        let x_1246 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1243.x, x_1243.y) * vec2<f32>(x_1246.z, x_1246.w)) + -(vec2<f32>(x_1249.x, x_1249.y)));
        let x_1253 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1253.x, x_1253.x, x_1253.y, x_1253.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1256 : vec4<f32> = u_xlat8;
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1256.x, x_1256.x, x_1256.z, x_1256.z) * vec4<f32>(x_1258.x, x_1258.x, x_1258.z, x_1258.z));
        let x_1261 : vec4<f32> = u_xlat9;
        let x_1265 : vec2<f32> = (vec2<f32>(x_1261.y, x_1261.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1266 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1266.x, x_1265.x, x_1266.z, x_1265.y);
        let x_1268 : vec4<f32> = u_xlat9;
        let x_1271 : vec2<f32> = u_xlat59;
        let x_1273 : vec2<f32> = ((vec2<f32>(x_1268.x, x_1268.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1271));
        let x_1274 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1273.x, x_1274.y, x_1273.y, x_1274.w);
        let x_1276 : vec2<f32> = u_xlat59;
        let x_1278 : vec2<f32> = (-(x_1276) + vec2<f32>(1.0f, 1.0f));
        let x_1279 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
        let x_1281 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1281, vec2<f32>(0.0f, 0.0f));
        let x_1283 : vec2<f32> = u_xlat61;
        let x_1285 : vec2<f32> = u_xlat61;
        let x_1287 : vec4<f32> = u_xlat9;
        let x_1289 : vec2<f32> = ((-(x_1283) * x_1285) + vec2<f32>(x_1287.x, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1292 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1292, vec2<f32>(0.0f, 0.0f));
        let x_1295 : vec2<f32> = u_xlat61;
        let x_1297 : vec2<f32> = u_xlat61;
        let x_1299 : vec4<f32> = u_xlat8;
        let x_1301 : vec2<f32> = ((-(x_1295) * x_1297) + vec2<f32>(x_1299.y, x_1299.w));
        let x_1302 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1301.x, x_1302.y, x_1301.y);
        let x_1304 : vec4<f32> = u_xlat9;
        let x_1306 : vec2<f32> = (vec2<f32>(x_1304.x, x_1304.y) + vec2<f32>(2.0f, 2.0f));
        let x_1307 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1306.x, x_1306.y, x_1307.z, x_1307.w);
        let x_1309 : vec3<f32> = u_xlat34;
        let x_1311 : vec2<f32> = (vec2<f32>(x_1309.x, x_1309.z) + vec2<f32>(2.0f, 2.0f));
        let x_1312 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1312.x, x_1311.x, x_1312.z, x_1311.y);
        let x_1315 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1315 * 0.08163200318813323975f);
        let x_1319 : vec4<f32> = u_xlat8;
        let x_1322 : vec3<f32> = (vec3<f32>(x_1319.z, x_1319.x, x_1319.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1323 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
        let x_1325 : vec4<f32> = u_xlat9;
        let x_1328 : vec2<f32> = (vec2<f32>(x_1325.x, x_1325.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1329 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1328.x, x_1328.y, x_1329.z, x_1329.w);
        let x_1332 : f32 = u_xlat12.y;
        u_xlat11.x = x_1332;
        let x_1334 : vec2<f32> = u_xlat59;
        let x_1341 : vec2<f32> = ((vec2<f32>(x_1334.x, x_1334.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1342 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1342.x, x_1341.x, x_1342.z, x_1341.y);
        let x_1344 : vec2<f32> = u_xlat59;
        let x_1348 : vec2<f32> = ((vec2<f32>(x_1344.x, x_1344.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1348.x, x_1349.y, x_1348.y, x_1349.w);
        let x_1352 : f32 = u_xlat8.x;
        u_xlat9.y = x_1352;
        let x_1355 : f32 = u_xlat10.y;
        u_xlat9.w = x_1355;
        let x_1357 : vec4<f32> = u_xlat9;
        let x_1358 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1357 + x_1358);
        let x_1360 : vec2<f32> = u_xlat59;
        let x_1363 : vec2<f32> = ((vec2<f32>(x_1360.y, x_1360.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1364 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1364.x, x_1363.x, x_1364.z, x_1363.y);
        let x_1366 : vec2<f32> = u_xlat59;
        let x_1369 : vec2<f32> = ((vec2<f32>(x_1366.y, x_1366.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1370 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1369.x, x_1370.y, x_1369.y, x_1370.w);
        let x_1373 : f32 = u_xlat8.y;
        u_xlat10.y = x_1373;
        let x_1375 : vec4<f32> = u_xlat10;
        let x_1376 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1375 + x_1376);
        let x_1378 : vec4<f32> = u_xlat9;
        let x_1379 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1378 / x_1379);
        let x_1381 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1381 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1387 : vec4<f32> = u_xlat10;
        let x_1388 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1387 / x_1388);
        let x_1390 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1390 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1392 : vec4<f32> = u_xlat9;
        let x_1395 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1392.w, x_1392.x, x_1392.y, x_1392.z) * vec4<f32>(x_1395.x, x_1395.x, x_1395.x, x_1395.x));
        let x_1398 : vec4<f32> = u_xlat10;
        let x_1401 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1398.x, x_1398.w, x_1398.y, x_1398.z) * vec4<f32>(x_1401.y, x_1401.y, x_1401.y, x_1401.y));
        let x_1404 : vec4<f32> = u_xlat9;
        let x_1405 : vec3<f32> = vec3<f32>(x_1404.y, x_1404.z, x_1404.w);
        let x_1406 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1405.x, x_1406.y, x_1405.y, x_1405.z);
        let x_1409 : f32 = u_xlat10.x;
        u_xlat12.y = x_1409;
        let x_1411 : vec4<f32> = u_xlat7;
        let x_1414 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1417 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1411.x, x_1411.y, x_1411.x, x_1411.y) * vec4<f32>(x_1414.x, x_1414.y, x_1414.x, x_1414.y)) + vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1417.y));
        let x_1420 : vec4<f32> = u_xlat7;
        let x_1423 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1426 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1420.x, x_1420.y) * vec2<f32>(x_1423.x, x_1423.y)) + vec2<f32>(x_1426.w, x_1426.y));
        let x_1430 : f32 = u_xlat12.y;
        u_xlat9.y = x_1430;
        let x_1433 : f32 = u_xlat10.z;
        u_xlat12.y = x_1433;
        let x_1435 : vec4<f32> = u_xlat7;
        let x_1438 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1441 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1435.x, x_1435.y, x_1435.x, x_1435.y) * vec4<f32>(x_1438.x, x_1438.y, x_1438.x, x_1438.y)) + vec4<f32>(x_1441.x, x_1441.y, x_1441.z, x_1441.y));
        let x_1444 : vec4<f32> = u_xlat7;
        let x_1447 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1450 : vec4<f32> = u_xlat12;
        let x_1452 : vec2<f32> = ((vec2<f32>(x_1444.x, x_1444.y) * vec2<f32>(x_1447.x, x_1447.y)) + vec2<f32>(x_1450.w, x_1450.y));
        let x_1453 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1452.x, x_1452.y, x_1453.z, x_1453.w);
        let x_1456 : f32 = u_xlat12.y;
        u_xlat9.z = x_1456;
        let x_1459 : vec4<f32> = u_xlat7;
        let x_1462 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1465 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1459.x, x_1459.y, x_1459.x, x_1459.y) * vec4<f32>(x_1462.x, x_1462.y, x_1462.x, x_1462.y)) + vec4<f32>(x_1465.x, x_1465.y, x_1465.x, x_1465.z));
        let x_1469 : f32 = u_xlat10.w;
        u_xlat12.y = x_1469;
        let x_1472 : vec4<f32> = u_xlat7;
        let x_1475 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1478 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1472.x, x_1472.y, x_1472.x, x_1472.y) * vec4<f32>(x_1475.x, x_1475.y, x_1475.x, x_1475.y)) + vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1478.y));
        let x_1482 : vec4<f32> = u_xlat7;
        let x_1485 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1488 : vec4<f32> = u_xlat12;
        let x_1490 : vec2<f32> = ((vec2<f32>(x_1482.x, x_1482.y) * vec2<f32>(x_1485.x, x_1485.y)) + vec2<f32>(x_1488.w, x_1488.y));
        let x_1491 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1490.x, x_1490.y, x_1491.z);
        let x_1494 : f32 = u_xlat12.y;
        u_xlat9.w = x_1494;
        let x_1497 : vec4<f32> = u_xlat7;
        let x_1500 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1503 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1497.x, x_1497.y) * vec2<f32>(x_1500.x, x_1500.y)) + vec2<f32>(x_1503.x, x_1503.w));
        let x_1506 : vec4<f32> = u_xlat12;
        let x_1507 : vec3<f32> = vec3<f32>(x_1506.x, x_1506.z, x_1506.w);
        let x_1508 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1507.x, x_1508.y, x_1507.y, x_1507.z);
        let x_1510 : vec4<f32> = u_xlat7;
        let x_1513 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1516 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1510.x, x_1510.y, x_1510.x, x_1510.y) * vec4<f32>(x_1513.x, x_1513.y, x_1513.x, x_1513.y)) + vec4<f32>(x_1516.x, x_1516.y, x_1516.z, x_1516.y));
        let x_1520 : vec4<f32> = u_xlat7;
        let x_1523 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1526 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1520.x, x_1520.y) * vec2<f32>(x_1523.x, x_1523.y)) + vec2<f32>(x_1526.w, x_1526.y));
        let x_1530 : f32 = u_xlat9.x;
        u_xlat10.x = x_1530;
        let x_1532 : vec4<f32> = u_xlat7;
        let x_1535 : vec4<f32> = x_345.x_MainLightShadowmapSize;
        let x_1538 : vec4<f32> = u_xlat10;
        let x_1540 : vec2<f32> = ((vec2<f32>(x_1532.x, x_1532.y) * vec2<f32>(x_1535.x, x_1535.y)) + vec2<f32>(x_1538.x, x_1538.y));
        let x_1541 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1540.x, x_1540.y, x_1541.z, x_1541.w);
        let x_1544 : vec4<f32> = u_xlat8;
        let x_1546 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1544.x, x_1544.x, x_1544.x, x_1544.x) * x_1546);
        let x_1549 : vec4<f32> = u_xlat8;
        let x_1551 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1549.y, x_1549.y, x_1549.y, x_1549.y) * x_1551);
        let x_1554 : vec4<f32> = u_xlat8;
        let x_1556 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1554.z, x_1554.z, x_1554.z, x_1554.z) * x_1556);
        let x_1558 : vec4<f32> = u_xlat8;
        let x_1560 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1558.w, x_1558.w, x_1558.w, x_1558.w) * x_1560);
        let x_1563 : vec4<f32> = u_xlat13;
        let x_1564 : vec2<f32> = vec2<f32>(x_1563.x, x_1563.y);
        let x_1566 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1564.x, x_1564.y, x_1566);
        let x_1573 : vec3<f32> = txVec13;
        let x_1575 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1573.xy, x_1573.z);
        u_xlat83 = x_1575;
        let x_1577 : vec4<f32> = u_xlat13;
        let x_1578 : vec2<f32> = vec2<f32>(x_1577.z, x_1577.w);
        let x_1580 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1578.x, x_1578.y, x_1580);
        let x_1587 : vec3<f32> = txVec14;
        let x_1589 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1587.xy, x_1587.z);
        u_xlat84 = x_1589;
        let x_1590 : f32 = u_xlat84;
        let x_1592 : f32 = u_xlat18.y;
        u_xlat84 = (x_1590 * x_1592);
        let x_1595 : f32 = u_xlat18.x;
        let x_1596 : f32 = u_xlat83;
        let x_1598 : f32 = u_xlat84;
        u_xlat83 = ((x_1595 * x_1596) + x_1598);
        let x_1601 : vec2<f32> = u_xlat59;
        let x_1603 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1601.x, x_1601.y, x_1603);
        let x_1610 : vec3<f32> = txVec15;
        let x_1612 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1610.xy, x_1610.z);
        u_xlat84 = x_1612;
        let x_1614 : f32 = u_xlat18.z;
        let x_1615 : f32 = u_xlat84;
        let x_1617 : f32 = u_xlat83;
        u_xlat83 = ((x_1614 * x_1615) + x_1617);
        let x_1620 : vec4<f32> = u_xlat16;
        let x_1621 : vec2<f32> = vec2<f32>(x_1620.x, x_1620.y);
        let x_1623 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1621.x, x_1621.y, x_1623);
        let x_1630 : vec3<f32> = txVec16;
        let x_1632 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1630.xy, x_1630.z);
        u_xlat84 = x_1632;
        let x_1634 : f32 = u_xlat18.w;
        let x_1635 : f32 = u_xlat84;
        let x_1637 : f32 = u_xlat83;
        u_xlat83 = ((x_1634 * x_1635) + x_1637);
        let x_1640 : vec4<f32> = u_xlat14;
        let x_1641 : vec2<f32> = vec2<f32>(x_1640.x, x_1640.y);
        let x_1643 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec17;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
        u_xlat84 = x_1652;
        let x_1654 : f32 = u_xlat19.x;
        let x_1655 : f32 = u_xlat84;
        let x_1657 : f32 = u_xlat83;
        u_xlat83 = ((x_1654 * x_1655) + x_1657);
        let x_1660 : vec4<f32> = u_xlat14;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.z, x_1660.w);
        let x_1663 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1670 : vec3<f32> = txVec18;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1670.xy, x_1670.z);
        u_xlat84 = x_1672;
        let x_1674 : f32 = u_xlat19.y;
        let x_1675 : f32 = u_xlat84;
        let x_1677 : f32 = u_xlat83;
        u_xlat83 = ((x_1674 * x_1675) + x_1677);
        let x_1680 : vec4<f32> = u_xlat15;
        let x_1681 : vec2<f32> = vec2<f32>(x_1680.x, x_1680.y);
        let x_1683 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1681.x, x_1681.y, x_1683);
        let x_1690 : vec3<f32> = txVec19;
        let x_1692 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1690.xy, x_1690.z);
        u_xlat84 = x_1692;
        let x_1694 : f32 = u_xlat19.z;
        let x_1695 : f32 = u_xlat84;
        let x_1697 : f32 = u_xlat83;
        u_xlat83 = ((x_1694 * x_1695) + x_1697);
        let x_1700 : vec4<f32> = u_xlat16;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.z, x_1700.w);
        let x_1703 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec20;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1710.xy, x_1710.z);
        u_xlat84 = x_1712;
        let x_1714 : f32 = u_xlat19.w;
        let x_1715 : f32 = u_xlat84;
        let x_1717 : f32 = u_xlat83;
        u_xlat83 = ((x_1714 * x_1715) + x_1717);
        let x_1720 : vec4<f32> = u_xlat17;
        let x_1721 : vec2<f32> = vec2<f32>(x_1720.x, x_1720.y);
        let x_1723 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1721.x, x_1721.y, x_1723);
        let x_1730 : vec3<f32> = txVec21;
        let x_1732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1730.xy, x_1730.z);
        u_xlat84 = x_1732;
        let x_1734 : f32 = u_xlat20.x;
        let x_1735 : f32 = u_xlat84;
        let x_1737 : f32 = u_xlat83;
        u_xlat83 = ((x_1734 * x_1735) + x_1737);
        let x_1740 : vec4<f32> = u_xlat17;
        let x_1741 : vec2<f32> = vec2<f32>(x_1740.z, x_1740.w);
        let x_1743 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec22;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1750.xy, x_1750.z);
        u_xlat84 = x_1752;
        let x_1754 : f32 = u_xlat20.y;
        let x_1755 : f32 = u_xlat84;
        let x_1757 : f32 = u_xlat83;
        u_xlat83 = ((x_1754 * x_1755) + x_1757);
        let x_1760 : vec3<f32> = u_xlat35;
        let x_1761 : vec2<f32> = vec2<f32>(x_1760.x, x_1760.y);
        let x_1763 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1761.x, x_1761.y, x_1763);
        let x_1770 : vec3<f32> = txVec23;
        let x_1772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1770.xy, x_1770.z);
        u_xlat84 = x_1772;
        let x_1774 : f32 = u_xlat20.z;
        let x_1775 : f32 = u_xlat84;
        let x_1777 : f32 = u_xlat83;
        u_xlat83 = ((x_1774 * x_1775) + x_1777);
        let x_1780 : vec2<f32> = u_xlat67;
        let x_1782 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1780.x, x_1780.y, x_1782);
        let x_1789 : vec3<f32> = txVec24;
        let x_1791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1789.xy, x_1789.z);
        u_xlat84 = x_1791;
        let x_1793 : f32 = u_xlat20.w;
        let x_1794 : f32 = u_xlat84;
        let x_1796 : f32 = u_xlat83;
        u_xlat83 = ((x_1793 * x_1794) + x_1796);
        let x_1799 : vec4<f32> = u_xlat12;
        let x_1800 : vec2<f32> = vec2<f32>(x_1799.x, x_1799.y);
        let x_1802 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1800.x, x_1800.y, x_1802);
        let x_1809 : vec3<f32> = txVec25;
        let x_1811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1809.xy, x_1809.z);
        u_xlat84 = x_1811;
        let x_1813 : f32 = u_xlat8.x;
        let x_1814 : f32 = u_xlat84;
        let x_1816 : f32 = u_xlat83;
        u_xlat83 = ((x_1813 * x_1814) + x_1816);
        let x_1819 : vec4<f32> = u_xlat12;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.z, x_1819.w);
        let x_1822 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec26;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1829.xy, x_1829.z);
        u_xlat84 = x_1831;
        let x_1833 : f32 = u_xlat8.y;
        let x_1834 : f32 = u_xlat84;
        let x_1836 : f32 = u_xlat83;
        u_xlat83 = ((x_1833 * x_1834) + x_1836);
        let x_1839 : vec2<f32> = u_xlat62;
        let x_1841 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1839.x, x_1839.y, x_1841);
        let x_1848 : vec3<f32> = txVec27;
        let x_1850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1848.xy, x_1848.z);
        u_xlat84 = x_1850;
        let x_1852 : f32 = u_xlat8.z;
        let x_1853 : f32 = u_xlat84;
        let x_1855 : f32 = u_xlat83;
        u_xlat83 = ((x_1852 * x_1853) + x_1855);
        let x_1858 : vec4<f32> = u_xlat7;
        let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
        let x_1861 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
        let x_1868 : vec3<f32> = txVec28;
        let x_1870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1868.xy, x_1868.z);
        u_xlat84 = x_1870;
        let x_1872 : f32 = u_xlat8.w;
        let x_1873 : f32 = u_xlat84;
        let x_1875 : f32 = u_xlat83;
        u_xlat82 = ((x_1872 * x_1873) + x_1875);
      }
    }
  } else {
    let x_1879 : vec4<f32> = u_xlat4;
    let x_1880 : vec2<f32> = vec2<f32>(x_1879.x, x_1879.y);
    let x_1882 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1880.x, x_1880.y, x_1882);
    let x_1889 : vec3<f32> = txVec29;
    let x_1891 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1889.xy, x_1889.z);
    u_xlat82 = x_1891;
  }
  let x_1893 : f32 = x_345.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_1893) + 1.0f);
  let x_1897 : f32 = u_xlat82;
  let x_1899 : f32 = x_345.x_MainLightShadowParams.x;
  let x_1902 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1897 * x_1899) + x_1902);
  let x_1907 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_1907);
  let x_1913 : f32 = u_xlat4.z;
  u_xlatb56.x = (x_1913 >= 1.0f);
  let x_1917 : bool = u_xlatb56.x;
  let x_1918 : bool = u_xlatb30;
  u_xlatb30 = (x_1917 | x_1918);
  let x_1920 : bool = u_xlatb30;
  if (x_1920) {
    x_1921 = 1.0f;
  } else {
    let x_1926 : f32 = u_xlat4.x;
    x_1921 = x_1926;
  }
  let x_1927 : f32 = x_1921;
  u_xlat4.x = x_1927;
  let x_1930 : vec3<f32> = vs_TEXCOORD1;
  let x_1932 : vec3<f32> = x_45.x_WorldSpaceCameraPos;
  u_xlat30 = (x_1930 + -(x_1932));
  let x_1935 : vec3<f32> = u_xlat30;
  let x_1936 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_1935, x_1936);
  let x_1941 : f32 = u_xlat30.x;
  let x_1943 : f32 = x_345.x_MainLightShadowParams.z;
  let x_1946 : f32 = x_345.x_MainLightShadowParams.w;
  u_xlat56.x = ((x_1941 * x_1943) + x_1946);
  let x_1950 : f32 = u_xlat56.x;
  u_xlat56.x = clamp(x_1950, 0.0f, 1.0f);
  let x_1954 : f32 = u_xlat4.x;
  u_xlat82 = (-(x_1954) + 1.0f);
  let x_1958 : f32 = u_xlat56.x;
  let x_1959 : f32 = u_xlat82;
  let x_1962 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_1958 * x_1959) + x_1962);
  let x_1972 : f32 = x_1970.x_MainLightCookieTextureFormat;
  u_xlatb56.x = !((x_1972 == -1.0f));
  let x_1976 : bool = u_xlatb56.x;
  if (x_1976) {
    let x_1979 : vec3<f32> = vs_TEXCOORD1;
    let x_1982 : vec4<f32> = x_1970.x_MainLightWorldToLight[1i];
    u_xlat56 = (vec2<f32>(x_1979.y, x_1979.y) * vec2<f32>(x_1982.x, x_1982.y));
    let x_1986 : vec4<f32> = x_1970.x_MainLightWorldToLight[0i];
    let x_1988 : vec3<f32> = vs_TEXCOORD1;
    let x_1991 : vec2<f32> = u_xlat56;
    u_xlat56 = ((vec2<f32>(x_1986.x, x_1986.y) * vec2<f32>(x_1988.x, x_1988.x)) + x_1991);
    let x_1994 : vec4<f32> = x_1970.x_MainLightWorldToLight[2i];
    let x_1996 : vec3<f32> = vs_TEXCOORD1;
    let x_1999 : vec2<f32> = u_xlat56;
    u_xlat56 = ((vec2<f32>(x_1994.x, x_1994.y) * vec2<f32>(x_1996.z, x_1996.z)) + x_1999);
    let x_2001 : vec2<f32> = u_xlat56;
    let x_2003 : vec4<f32> = x_1970.x_MainLightWorldToLight[3i];
    u_xlat56 = (x_2001 + vec2<f32>(x_2003.x, x_2003.y));
    let x_2006 : vec2<f32> = u_xlat56;
    u_xlat56 = ((x_2006 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2014 : vec2<f32> = u_xlat56;
    let x_2016 : f32 = x_45.x_GlobalMipBias.x;
    let x_2017 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2014, x_2016);
    u_xlat7 = x_2017;
    let x_2019 : f32 = x_1970.x_MainLightCookieTextureFormat;
    let x_2021 : f32 = x_1970.x_MainLightCookieTextureFormat;
    let x_2023 : f32 = x_1970.x_MainLightCookieTextureFormat;
    let x_2025 : f32 = x_1970.x_MainLightCookieTextureFormat;
    let x_2026 : vec4<f32> = vec4<f32>(x_2019, x_2021, x_2023, x_2025);
    let x_2033 : vec4<bool> = (vec4<f32>(x_2026.x, x_2026.y, x_2026.z, x_2026.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb56 = vec2<bool>(x_2033.x, x_2033.y);
    let x_2036 : bool = u_xlatb56.y;
    if (x_2036) {
      let x_2041 : f32 = u_xlat7.w;
      x_2037 = x_2041;
    } else {
      let x_2044 : f32 = u_xlat7.x;
      x_2037 = x_2044;
    }
    let x_2045 : f32 = x_2037;
    u_xlat82 = x_2045;
    let x_2047 : bool = u_xlatb56.x;
    if (x_2047) {
      let x_2051 : vec4<f32> = u_xlat7;
      x_2048 = vec3<f32>(x_2051.x, x_2051.y, x_2051.z);
    } else {
      let x_2054 : f32 = u_xlat82;
      x_2048 = vec3<f32>(x_2054, x_2054, x_2054);
    }
    let x_2056 : vec3<f32> = x_2048;
    let x_2057 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2063 : vec4<f32> = u_xlat7;
  let x_2066 : vec4<f32> = x_45.x_MainLightColor;
  let x_2068 : vec3<f32> = (vec3<f32>(x_2063.x, x_2063.y, x_2063.z) * vec3<f32>(x_2066.x, x_2066.y, x_2066.z));
  let x_2069 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2068.x, x_2068.y, x_2068.z, x_2069.w);
  let x_2071 : vec3<f32> = u_xlat5;
  let x_2073 : vec3<f32> = u_xlat29;
  u_xlat56.x = dot(-(x_2071), x_2073);
  let x_2077 : f32 = u_xlat56.x;
  let x_2079 : f32 = u_xlat56.x;
  u_xlat56.x = (x_2077 + x_2079);
  let x_2082 : vec3<f32> = u_xlat29;
  let x_2083 : vec2<f32> = u_xlat56;
  let x_2087 : vec3<f32> = u_xlat5;
  let x_2089 : vec3<f32> = ((x_2082 * -(vec3<f32>(x_2083.x, x_2083.x, x_2083.x))) + -(x_2087));
  let x_2090 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2089.x, x_2089.y, x_2089.z, x_2090.w);
  let x_2092 : vec3<f32> = u_xlat29;
  let x_2093 : vec3<f32> = u_xlat5;
  u_xlat56.x = dot(x_2092, x_2093);
  let x_2097 : f32 = u_xlat56.x;
  u_xlat56.x = clamp(x_2097, 0.0f, 1.0f);
  let x_2101 : f32 = u_xlat56.x;
  u_xlat56.x = (-(x_2101) + 1.0f);
  let x_2106 : f32 = u_xlat56.x;
  let x_2108 : f32 = u_xlat56.x;
  u_xlat56.x = (x_2106 * x_2108);
  let x_2112 : f32 = u_xlat56.x;
  let x_2114 : f32 = u_xlat56.x;
  u_xlat56.x = (x_2112 * x_2114);
  let x_2117 : f32 = u_xlat78;
  u_xlat82 = ((-(x_2117) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2123 : f32 = u_xlat78;
  let x_2124 : f32 = u_xlat82;
  u_xlat78 = (x_2123 * x_2124);
  let x_2126 : f32 = u_xlat78;
  u_xlat78 = (x_2126 * 6.0f);
  let x_2137 : vec4<f32> = u_xlat8;
  let x_2139 : f32 = u_xlat78;
  let x_2140 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2137.x, x_2137.y, x_2137.z), x_2139);
  u_xlat8 = x_2140;
  let x_2142 : f32 = u_xlat8.w;
  u_xlat78 = (x_2142 + -1.0f);
  let x_2145 : f32 = x_186.unity_SpecCube0_HDR.w;
  let x_2146 : f32 = u_xlat78;
  u_xlat78 = ((x_2145 * x_2146) + 1.0f);
  let x_2149 : f32 = u_xlat78;
  u_xlat78 = max(x_2149, 0.0f);
  let x_2151 : f32 = u_xlat78;
  u_xlat78 = log2(x_2151);
  let x_2153 : f32 = u_xlat78;
  let x_2155 : f32 = x_186.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_2153 * x_2155);
  let x_2157 : f32 = u_xlat78;
  u_xlat78 = exp2(x_2157);
  let x_2159 : f32 = u_xlat78;
  let x_2161 : f32 = x_186.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_2159 * x_2161);
  let x_2163 : vec4<f32> = u_xlat8;
  let x_2165 : f32 = u_xlat78;
  let x_2167 : vec3<f32> = (vec3<f32>(x_2163.x, x_2163.y, x_2163.z) * vec3<f32>(x_2165, x_2165, x_2165));
  let x_2168 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2167.x, x_2167.y, x_2167.z, x_2168.w);
  let x_2170 : vec2<f32> = u_xlat1;
  let x_2172 : vec2<f32> = u_xlat1;
  let x_2176 : vec2<f32> = ((vec2<f32>(x_2170.x, x_2170.x) * vec2<f32>(x_2172.x, x_2172.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2177 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2176.x, x_2176.y, x_2177.z, x_2177.w);
  let x_2180 : f32 = u_xlat9.y;
  u_xlat78 = (1.0f / x_2180);
  let x_2182 : vec4<f32> = u_xlat0;
  let x_2185 : vec2<f32> = u_xlat53;
  u_xlat35 = (-(vec3<f32>(x_2182.x, x_2182.y, x_2182.z)) + vec3<f32>(x_2185.x, x_2185.x, x_2185.x));
  let x_2188 : vec2<f32> = u_xlat56;
  let x_2190 : vec3<f32> = u_xlat35;
  let x_2192 : vec4<f32> = u_xlat0;
  u_xlat35 = ((vec3<f32>(x_2188.x, x_2188.x, x_2188.x) * x_2190) + vec3<f32>(x_2192.x, x_2192.y, x_2192.z));
  let x_2195 : f32 = u_xlat78;
  let x_2197 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2195, x_2195, x_2195) * x_2197);
  let x_2199 : vec4<f32> = u_xlat8;
  let x_2201 : vec3<f32> = u_xlat35;
  let x_2202 : vec3<f32> = (vec3<f32>(x_2199.x, x_2199.y, x_2199.z) * x_2201);
  let x_2203 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
  let x_2205 : vec4<f32> = u_xlat6;
  let x_2207 : vec3<f32> = u_xlat28;
  let x_2209 : vec4<f32> = u_xlat8;
  let x_2211 : vec3<f32> = ((vec3<f32>(x_2205.x, x_2205.y, x_2205.z) * x_2207) + vec3<f32>(x_2209.x, x_2209.y, x_2209.z));
  let x_2212 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2211.x, x_2211.y, x_2211.z, x_2212.w);
  let x_2215 : f32 = u_xlat4.x;
  let x_2217 : f32 = x_186.unity_LightData.z;
  u_xlat78 = (x_2215 * x_2217);
  let x_2219 : vec3<f32> = u_xlat29;
  let x_2221 : vec4<f32> = x_45.x_MainLightPosition;
  u_xlat1.x = dot(x_2219, vec3<f32>(x_2221.x, x_2221.y, x_2221.z));
  let x_2226 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2226, 0.0f, 1.0f);
  let x_2229 : f32 = u_xlat78;
  let x_2231 : f32 = u_xlat1.x;
  u_xlat78 = (x_2229 * x_2231);
  let x_2233 : f32 = u_xlat78;
  let x_2235 : vec4<f32> = u_xlat7;
  let x_2237 : vec3<f32> = (vec3<f32>(x_2233, x_2233, x_2233) * vec3<f32>(x_2235.x, x_2235.y, x_2235.z));
  let x_2238 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2237.x, x_2238.y, x_2237.y, x_2237.z);
  let x_2240 : vec3<f32> = u_xlat5;
  let x_2242 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2244 : vec3<f32> = (x_2240 + vec3<f32>(x_2242.x, x_2242.y, x_2242.z));
  let x_2245 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
  let x_2247 : vec4<f32> = u_xlat7;
  let x_2249 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2247.x, x_2247.y, x_2247.z), vec3<f32>(x_2249.x, x_2249.y, x_2249.z));
  let x_2252 : f32 = u_xlat78;
  u_xlat78 = max(x_2252, 1.17549435e-38f);
  let x_2255 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2255);
  let x_2257 : f32 = u_xlat78;
  let x_2259 : vec4<f32> = u_xlat7;
  let x_2261 : vec3<f32> = (vec3<f32>(x_2257, x_2257, x_2257) * vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
  let x_2262 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
  let x_2264 : vec3<f32> = u_xlat29;
  let x_2265 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(x_2264, vec3<f32>(x_2265.x, x_2265.y, x_2265.z));
  let x_2268 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2268, 0.0f, 1.0f);
  let x_2271 : vec4<f32> = x_45.x_MainLightPosition;
  let x_2273 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_2271.x, x_2271.y, x_2271.z), vec3<f32>(x_2273.x, x_2273.y, x_2273.z));
  let x_2278 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2278, 0.0f, 1.0f);
  let x_2281 : f32 = u_xlat78;
  let x_2282 : f32 = u_xlat78;
  u_xlat78 = (x_2281 * x_2282);
  let x_2284 : f32 = u_xlat78;
  let x_2286 : f32 = u_xlat9.x;
  u_xlat78 = ((x_2284 * x_2286) + 1.00001001358032226562f);
  let x_2291 : f32 = u_xlat1.x;
  let x_2293 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2291 * x_2293);
  let x_2296 : f32 = u_xlat78;
  let x_2297 : f32 = u_xlat78;
  u_xlat78 = (x_2296 * x_2297);
  let x_2300 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2300, 0.10000000149011611938f);
  let x_2304 : f32 = u_xlat78;
  let x_2306 : f32 = u_xlat1.x;
  u_xlat78 = (x_2304 * x_2306);
  let x_2308 : f32 = u_xlat79;
  let x_2309 : f32 = u_xlat78;
  u_xlat78 = (x_2308 * x_2309);
  let x_2311 : f32 = u_xlat27;
  let x_2312 : f32 = u_xlat78;
  u_xlat78 = (x_2311 / x_2312);
  let x_2314 : vec4<f32> = u_xlat0;
  let x_2316 : f32 = u_xlat78;
  let x_2319 : vec3<f32> = u_xlat28;
  let x_2320 : vec3<f32> = ((vec3<f32>(x_2314.x, x_2314.y, x_2314.z) * vec3<f32>(x_2316, x_2316, x_2316)) + x_2319);
  let x_2321 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2320.x, x_2320.y, x_2320.z, x_2321.w);
  let x_2323 : vec4<f32> = u_xlat4;
  let x_2325 : vec4<f32> = u_xlat7;
  let x_2327 : vec3<f32> = (vec3<f32>(x_2323.x, x_2323.z, x_2323.w) * vec3<f32>(x_2325.x, x_2325.y, x_2325.z));
  let x_2328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2327.x, x_2328.y, x_2327.y, x_2327.z);
  let x_2331 : f32 = x_45.x_AdditionalLightsCount.x;
  let x_2333 : f32 = x_186.unity_LightData.y;
  u_xlat78 = min(x_2331, x_2333);
  let x_2335 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2335));
  let x_2339 : f32 = u_xlat30.x;
  let x_2342 : f32 = x_345.x_AdditionalShadowFadeParams.x;
  let x_2345 : f32 = x_345.x_AdditionalShadowFadeParams.y;
  u_xlat1.x = ((x_2339 * x_2342) + x_2345);
  let x_2349 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_2349, 0.0f, 1.0f);
  let x_2354 : f32 = x_1970.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2356 : f32 = x_1970.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2358 : f32 = x_1970.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2360 : f32 = x_1970.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2361 : vec4<f32> = vec4<f32>(x_2354, x_2356, x_2358, x_2360);
  let x_2368 : vec4<bool> = (vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2361.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2368.x, x_2368.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2380 : u32 = u_xlatu_loop_1;
    let x_2381 : u32 = u_xlatu78;
    if ((x_2380 < x_2381)) {
    } else {
      break;
    }
    let x_2384 : u32 = u_xlatu_loop_1;
    u_xlatu30 = (x_2384 >> 2u);
    let x_2387 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2387 & 3u));
    let x_2390 : u32 = u_xlatu30;
    let x_2393 : vec4<f32> = x_186.unity_LightIndices[bitcast<i32>(x_2390)];
    let x_2403 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2408 : vec4<u32> = indexable[x_2403];
    u_xlat30.x = dot(x_2393, bitcast<vec4<f32>>(x_2408));
    let x_2414 : f32 = u_xlat30.x;
    u_xlati30 = i32(x_2414);
    let x_2416 : vec3<f32> = vs_TEXCOORD1;
    let x_2427 : i32 = u_xlati30;
    let x_2429 : vec4<f32> = x_2426.x_AdditionalLightsPosition[x_2427];
    let x_2432 : i32 = u_xlati30;
    let x_2434 : vec4<f32> = x_2426.x_AdditionalLightsPosition[x_2432];
    u_xlat35 = ((-(x_2416) * vec3<f32>(x_2429.w, x_2429.w, x_2429.w)) + vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
    let x_2437 : vec3<f32> = u_xlat35;
    let x_2438 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_2437, x_2438);
    let x_2440 : f32 = u_xlat83;
    u_xlat83 = max(x_2440, 0.00006103515625f);
    let x_2443 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2443);
    let x_2445 : f32 = u_xlat84;
    let x_2447 : vec3<f32> = u_xlat35;
    let x_2448 : vec3<f32> = (vec3<f32>(x_2445, x_2445, x_2445) * x_2447);
    let x_2449 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
    let x_2451 : f32 = u_xlat83;
    u_xlat59.x = (1.0f / x_2451);
    let x_2454 : f32 = u_xlat83;
    let x_2455 : i32 = u_xlati30;
    let x_2457 : f32 = x_2426.x_AdditionalLightsAttenuation[x_2455].x;
    u_xlat83 = (x_2454 * x_2457);
    let x_2459 : f32 = u_xlat83;
    let x_2461 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2459) * x_2461) + 1.0f);
    let x_2464 : f32 = u_xlat83;
    u_xlat83 = max(x_2464, 0.0f);
    let x_2466 : f32 = u_xlat83;
    let x_2467 : f32 = u_xlat83;
    u_xlat83 = (x_2466 * x_2467);
    let x_2469 : f32 = u_xlat83;
    let x_2471 : f32 = u_xlat59.x;
    u_xlat83 = (x_2469 * x_2471);
    let x_2473 : i32 = u_xlati30;
    let x_2475 : vec4<f32> = x_2426.x_AdditionalLightsSpotDir[x_2473];
    let x_2477 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(vec3<f32>(x_2475.x, x_2475.y, x_2475.z), vec3<f32>(x_2477.x, x_2477.y, x_2477.z));
    let x_2482 : f32 = u_xlat59.x;
    let x_2483 : i32 = u_xlati30;
    let x_2485 : f32 = x_2426.x_AdditionalLightsAttenuation[x_2483].z;
    let x_2487 : i32 = u_xlati30;
    let x_2489 : f32 = x_2426.x_AdditionalLightsAttenuation[x_2487].w;
    u_xlat59.x = ((x_2482 * x_2485) + x_2489);
    let x_2493 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_2493, 0.0f, 1.0f);
    let x_2497 : f32 = u_xlat59.x;
    let x_2499 : f32 = u_xlat59.x;
    u_xlat59.x = (x_2497 * x_2499);
    let x_2502 : f32 = u_xlat83;
    let x_2504 : f32 = u_xlat59.x;
    u_xlat83 = (x_2502 * x_2504);
    let x_2508 : i32 = u_xlati30;
    let x_2510 : f32 = x_345.x_AdditionalShadowParams[x_2508].w;
    u_xlati59 = i32(x_2510);
    let x_2513 : i32 = u_xlati59;
    u_xlatb85 = (x_2513 >= 0i);
    let x_2515 : bool = u_xlatb85;
    if (x_2515) {
      let x_2519 : i32 = u_xlati30;
      let x_2521 : f32 = x_345.x_AdditionalShadowParams[x_2519].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2521, x_2521, x_2521, x_2521))));
      let x_2525 : bool = u_xlatb85;
      if (x_2525) {
        let x_2529 : vec4<f32> = u_xlat10;
        let x_2532 : vec4<f32> = u_xlat10;
        let x_2535 : vec4<bool> = (abs(vec4<f32>(x_2529.z, x_2529.z, x_2529.y, x_2529.z)) >= abs(vec4<f32>(x_2532.x, x_2532.y, x_2532.x, x_2532.x)));
        let x_2537 : vec3<bool> = vec3<bool>(x_2535.x, x_2535.y, x_2535.z);
        let x_2538 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2537.x, x_2537.y, x_2537.z, x_2538.w);
        let x_2541 : bool = u_xlatb11.y;
        let x_2543 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2541 & x_2543);
        let x_2545 : vec4<f32> = u_xlat10;
        let x_2548 : vec4<bool> = (-(vec4<f32>(x_2545.z, x_2545.y, x_2545.z, x_2545.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2549 : vec3<bool> = vec3<bool>(x_2548.x, x_2548.y, x_2548.w);
        let x_2550 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2549.x, x_2549.y, x_2550.z, x_2549.z);
        let x_2553 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2553);
        let x_2558 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2558);
        let x_2563 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2563);
        let x_2566 : bool = u_xlatb11.z;
        if (x_2566) {
          let x_2571 : f32 = u_xlat11.y;
          x_2567 = x_2571;
        } else {
          let x_2573 : f32 = u_xlat86;
          x_2567 = x_2573;
        }
        let x_2574 : f32 = x_2567;
        u_xlat86 = x_2574;
        let x_2576 : bool = u_xlatb85;
        if (x_2576) {
          let x_2581 : f32 = u_xlat11.x;
          x_2577 = x_2581;
        } else {
          let x_2583 : f32 = u_xlat86;
          x_2577 = x_2583;
        }
        let x_2584 : f32 = x_2577;
        u_xlat85 = x_2584;
        let x_2585 : i32 = u_xlati30;
        let x_2587 : f32 = x_345.x_AdditionalShadowParams[x_2585].w;
        u_xlat86 = trunc(x_2587);
        let x_2589 : f32 = u_xlat85;
        let x_2590 : f32 = u_xlat86;
        u_xlat85 = (x_2589 + x_2590);
        let x_2592 : f32 = u_xlat85;
        u_xlati59 = i32(x_2592);
      }
      let x_2594 : i32 = u_xlati59;
      u_xlati59 = (x_2594 << bitcast<u32>(2i));
      let x_2596 : vec3<f32> = vs_TEXCOORD1;
      let x_2599 : i32 = u_xlati59;
      let x_2602 : i32 = u_xlati59;
      let x_2606 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_2599 + 1i) / 4i)][((x_2602 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2596.y, x_2596.y, x_2596.y, x_2596.y) * x_2606);
      let x_2608 : i32 = u_xlati59;
      let x_2610 : i32 = u_xlati59;
      let x_2613 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[(x_2608 / 4i)][(x_2610 % 4i)];
      let x_2614 : vec3<f32> = vs_TEXCOORD1;
      let x_2617 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2613 * vec4<f32>(x_2614.x, x_2614.x, x_2614.x, x_2614.x)) + x_2617);
      let x_2619 : i32 = u_xlati59;
      let x_2622 : i32 = u_xlati59;
      let x_2626 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_2619 + 2i) / 4i)][((x_2622 + 2i) % 4i)];
      let x_2627 : vec3<f32> = vs_TEXCOORD1;
      let x_2630 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2626 * vec4<f32>(x_2627.z, x_2627.z, x_2627.z, x_2627.z)) + x_2630);
      let x_2632 : vec4<f32> = u_xlat11;
      let x_2633 : i32 = u_xlati59;
      let x_2636 : i32 = u_xlati59;
      let x_2640 : vec4<f32> = x_345.x_AdditionalLightsWorldToShadow[((x_2633 + 3i) / 4i)][((x_2636 + 3i) % 4i)];
      u_xlat11 = (x_2632 + x_2640);
      let x_2642 : vec4<f32> = u_xlat11;
      let x_2644 : vec4<f32> = u_xlat11;
      let x_2646 : vec3<f32> = (vec3<f32>(x_2642.x, x_2642.y, x_2642.z) / vec3<f32>(x_2644.w, x_2644.w, x_2644.w));
      let x_2647 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2646.x, x_2646.y, x_2646.z, x_2647.w);
      let x_2650 : i32 = u_xlati30;
      let x_2652 : f32 = x_345.x_AdditionalShadowParams[x_2650].y;
      u_xlatb59 = (0.0f < x_2652);
      let x_2654 : bool = u_xlatb59;
      if (x_2654) {
        let x_2657 : i32 = u_xlati30;
        let x_2659 : f32 = x_345.x_AdditionalShadowParams[x_2657].y;
        u_xlatb59 = (1.0f == x_2659);
        let x_2661 : bool = u_xlatb59;
        if (x_2661) {
          let x_2664 : vec4<f32> = u_xlat11;
          let x_2667 : vec4<f32> = x_345.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2664.x, x_2664.y, x_2664.x, x_2664.y) + x_2667);
          let x_2670 : vec4<f32> = u_xlat12;
          let x_2671 : vec2<f32> = vec2<f32>(x_2670.x, x_2670.y);
          let x_2673 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2671.x, x_2671.y, x_2673);
          let x_2681 : vec3<f32> = txVec30;
          let x_2683 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2681.xy, x_2681.z);
          u_xlat13.x = x_2683;
          let x_2686 : vec4<f32> = u_xlat12;
          let x_2687 : vec2<f32> = vec2<f32>(x_2686.z, x_2686.w);
          let x_2689 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2687.x, x_2687.y, x_2689);
          let x_2696 : vec3<f32> = txVec31;
          let x_2698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2696.xy, x_2696.z);
          u_xlat13.y = x_2698;
          let x_2700 : vec4<f32> = u_xlat11;
          let x_2704 : vec4<f32> = x_345.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2700.x, x_2700.y, x_2700.x, x_2700.y) + x_2704);
          let x_2707 : vec4<f32> = u_xlat12;
          let x_2708 : vec2<f32> = vec2<f32>(x_2707.x, x_2707.y);
          let x_2710 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2708.x, x_2708.y, x_2710);
          let x_2717 : vec3<f32> = txVec32;
          let x_2719 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2717.xy, x_2717.z);
          u_xlat13.z = x_2719;
          let x_2722 : vec4<f32> = u_xlat12;
          let x_2723 : vec2<f32> = vec2<f32>(x_2722.z, x_2722.w);
          let x_2725 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2723.x, x_2723.y, x_2725);
          let x_2732 : vec3<f32> = txVec33;
          let x_2734 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2732.xy, x_2732.z);
          u_xlat13.w = x_2734;
          let x_2736 : vec4<f32> = u_xlat13;
          u_xlat59.x = dot(x_2736, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2740 : i32 = u_xlati30;
          let x_2742 : f32 = x_345.x_AdditionalShadowParams[x_2740].y;
          u_xlatb85 = (2.0f == x_2742);
          let x_2744 : bool = u_xlatb85;
          if (x_2744) {
            let x_2747 : vec4<f32> = u_xlat11;
            let x_2751 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2754 : vec2<f32> = ((vec2<f32>(x_2747.x, x_2747.y) * vec2<f32>(x_2751.z, x_2751.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2755 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2754.x, x_2754.y, x_2755.z, x_2755.w);
            let x_2757 : vec4<f32> = u_xlat12;
            let x_2759 : vec2<f32> = floor(vec2<f32>(x_2757.x, x_2757.y));
            let x_2760 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2759.x, x_2759.y, x_2760.z, x_2760.w);
            let x_2763 : vec4<f32> = u_xlat11;
            let x_2766 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2769 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2763.x, x_2763.y) * vec2<f32>(x_2766.z, x_2766.w)) + -(vec2<f32>(x_2769.x, x_2769.y)));
            let x_2773 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2773.x, x_2773.x, x_2773.y, x_2773.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2776 : vec4<f32> = u_xlat13;
            let x_2778 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2776.x, x_2776.x, x_2776.z, x_2776.z) * vec4<f32>(x_2778.x, x_2778.x, x_2778.z, x_2778.z));
            let x_2781 : vec4<f32> = u_xlat14;
            let x_2783 : vec2<f32> = (vec2<f32>(x_2781.y, x_2781.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2784 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2783.x, x_2784.y, x_2783.y, x_2784.w);
            let x_2786 : vec4<f32> = u_xlat14;
            let x_2789 : vec2<f32> = u_xlat64;
            let x_2791 : vec2<f32> = ((vec2<f32>(x_2786.x, x_2786.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2789));
            let x_2792 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2791.x, x_2791.y, x_2792.z, x_2792.w);
            let x_2795 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2795) + vec2<f32>(1.0f, 1.0f));
            let x_2798 : vec2<f32> = u_xlat64;
            let x_2799 : vec2<f32> = min(x_2798, vec2<f32>(0.0f, 0.0f));
            let x_2800 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2799.x, x_2799.y, x_2800.z, x_2800.w);
            let x_2802 : vec4<f32> = u_xlat15;
            let x_2805 : vec4<f32> = u_xlat15;
            let x_2808 : vec2<f32> = u_xlat66;
            let x_2809 : vec2<f32> = ((-(vec2<f32>(x_2802.x, x_2802.y)) * vec2<f32>(x_2805.x, x_2805.y)) + x_2808);
            let x_2810 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2809.x, x_2809.y, x_2810.z, x_2810.w);
            let x_2812 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2812, vec2<f32>(0.0f, 0.0f));
            let x_2814 : vec2<f32> = u_xlat64;
            let x_2816 : vec2<f32> = u_xlat64;
            let x_2818 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2814) * x_2816) + vec2<f32>(x_2818.y, x_2818.w));
            let x_2821 : vec4<f32> = u_xlat15;
            let x_2823 : vec2<f32> = (vec2<f32>(x_2821.x, x_2821.y) + vec2<f32>(1.0f, 1.0f));
            let x_2824 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2823.x, x_2823.y, x_2824.z, x_2824.w);
            let x_2826 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2826 + vec2<f32>(1.0f, 1.0f));
            let x_2828 : vec4<f32> = u_xlat14;
            let x_2830 : vec2<f32> = (vec2<f32>(x_2828.x, x_2828.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2831 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2830.x, x_2830.y, x_2831.z, x_2831.w);
            let x_2833 : vec2<f32> = u_xlat66;
            let x_2834 : vec2<f32> = (x_2833 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2835 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2834.x, x_2834.y, x_2835.z, x_2835.w);
            let x_2837 : vec4<f32> = u_xlat15;
            let x_2839 : vec2<f32> = (vec2<f32>(x_2837.x, x_2837.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2840 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2839.x, x_2839.y, x_2840.z, x_2840.w);
            let x_2842 : vec2<f32> = u_xlat64;
            let x_2843 : vec2<f32> = (x_2842 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2844 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2843.x, x_2843.y, x_2844.z, x_2844.w);
            let x_2846 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2846.y, x_2846.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2850 : f32 = u_xlat15.x;
            u_xlat16.z = x_2850;
            let x_2853 : f32 = u_xlat64.x;
            u_xlat16.w = x_2853;
            let x_2856 : f32 = u_xlat17.x;
            u_xlat14.z = x_2856;
            let x_2859 : f32 = u_xlat13.x;
            u_xlat14.w = x_2859;
            let x_2861 : vec4<f32> = u_xlat14;
            let x_2863 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2861.z, x_2861.w, x_2861.x, x_2861.z) + vec4<f32>(x_2863.z, x_2863.w, x_2863.x, x_2863.z));
            let x_2867 : f32 = u_xlat16.y;
            u_xlat15.z = x_2867;
            let x_2870 : f32 = u_xlat64.y;
            u_xlat15.w = x_2870;
            let x_2873 : f32 = u_xlat14.y;
            u_xlat17.z = x_2873;
            let x_2876 : f32 = u_xlat13.z;
            u_xlat17.w = x_2876;
            let x_2878 : vec4<f32> = u_xlat15;
            let x_2880 : vec4<f32> = u_xlat17;
            let x_2882 : vec3<f32> = (vec3<f32>(x_2878.z, x_2878.y, x_2878.w) + vec3<f32>(x_2880.z, x_2880.y, x_2880.w));
            let x_2883 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2882.x, x_2882.y, x_2882.z, x_2883.w);
            let x_2885 : vec4<f32> = u_xlat14;
            let x_2887 : vec4<f32> = u_xlat18;
            let x_2889 : vec3<f32> = (vec3<f32>(x_2885.x, x_2885.z, x_2885.w) / vec3<f32>(x_2887.z, x_2887.w, x_2887.y));
            let x_2890 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2889.x, x_2889.y, x_2889.z, x_2890.w);
            let x_2892 : vec4<f32> = u_xlat14;
            let x_2894 : vec3<f32> = (vec3<f32>(x_2892.x, x_2892.y, x_2892.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2895 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2894.x, x_2894.y, x_2894.z, x_2895.w);
            let x_2897 : vec4<f32> = u_xlat17;
            let x_2899 : vec4<f32> = u_xlat13;
            let x_2901 : vec3<f32> = (vec3<f32>(x_2897.z, x_2897.y, x_2897.w) / vec3<f32>(x_2899.x, x_2899.y, x_2899.z));
            let x_2902 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2901.x, x_2901.y, x_2901.z, x_2902.w);
            let x_2904 : vec4<f32> = u_xlat15;
            let x_2906 : vec3<f32> = (vec3<f32>(x_2904.x, x_2904.y, x_2904.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2907 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2906.x, x_2906.y, x_2906.z, x_2907.w);
            let x_2909 : vec4<f32> = u_xlat14;
            let x_2912 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2914 : vec3<f32> = (vec3<f32>(x_2909.y, x_2909.x, x_2909.z) * vec3<f32>(x_2912.x, x_2912.x, x_2912.x));
            let x_2915 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2914.x, x_2914.y, x_2914.z, x_2915.w);
            let x_2917 : vec4<f32> = u_xlat15;
            let x_2920 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2922 : vec3<f32> = (vec3<f32>(x_2917.x, x_2917.y, x_2917.z) * vec3<f32>(x_2920.y, x_2920.y, x_2920.y));
            let x_2923 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2922.x, x_2922.y, x_2922.z, x_2923.w);
            let x_2926 : f32 = u_xlat15.x;
            u_xlat14.w = x_2926;
            let x_2928 : vec4<f32> = u_xlat12;
            let x_2931 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2934 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2928.x, x_2928.y, x_2928.x, x_2928.y) * vec4<f32>(x_2931.x, x_2931.y, x_2931.x, x_2931.y)) + vec4<f32>(x_2934.y, x_2934.w, x_2934.x, x_2934.w));
            let x_2937 : vec4<f32> = u_xlat12;
            let x_2940 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2943 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2937.x, x_2937.y) * vec2<f32>(x_2940.x, x_2940.y)) + vec2<f32>(x_2943.z, x_2943.w));
            let x_2947 : f32 = u_xlat14.y;
            u_xlat15.w = x_2947;
            let x_2949 : vec4<f32> = u_xlat15;
            let x_2950 : vec2<f32> = vec2<f32>(x_2949.y, x_2949.z);
            let x_2951 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2951.x, x_2950.x, x_2951.z, x_2950.y);
            let x_2953 : vec4<f32> = u_xlat12;
            let x_2956 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2959 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2953.x, x_2953.y, x_2953.x, x_2953.y) * vec4<f32>(x_2956.x, x_2956.y, x_2956.x, x_2956.y)) + vec4<f32>(x_2959.x, x_2959.y, x_2959.z, x_2959.y));
            let x_2962 : vec4<f32> = u_xlat12;
            let x_2965 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2968 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2962.x, x_2962.y, x_2962.x, x_2962.y) * vec4<f32>(x_2965.x, x_2965.y, x_2965.x, x_2965.y)) + vec4<f32>(x_2968.w, x_2968.y, x_2968.w, x_2968.z));
            let x_2971 : vec4<f32> = u_xlat12;
            let x_2974 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_2977 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2971.x, x_2971.y, x_2971.x, x_2971.y) * vec4<f32>(x_2974.x, x_2974.y, x_2974.x, x_2974.y)) + vec4<f32>(x_2977.x, x_2977.w, x_2977.z, x_2977.w));
            let x_2980 : vec4<f32> = u_xlat13;
            let x_2982 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2980.x, x_2980.x, x_2980.x, x_2980.y) * vec4<f32>(x_2982.z, x_2982.w, x_2982.y, x_2982.z));
            let x_2985 : vec4<f32> = u_xlat13;
            let x_2987 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2985.y, x_2985.y, x_2985.z, x_2985.z) * x_2987);
            let x_2990 : f32 = u_xlat13.z;
            let x_2992 : f32 = u_xlat18.y;
            u_xlat85 = (x_2990 * x_2992);
            let x_2995 : vec4<f32> = u_xlat16;
            let x_2996 : vec2<f32> = vec2<f32>(x_2995.x, x_2995.y);
            let x_2998 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
            let x_3005 : vec3<f32> = txVec34;
            let x_3007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3005.xy, x_3005.z);
            u_xlat86 = x_3007;
            let x_3009 : vec4<f32> = u_xlat16;
            let x_3010 : vec2<f32> = vec2<f32>(x_3009.z, x_3009.w);
            let x_3012 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3010.x, x_3010.y, x_3012);
            let x_3020 : vec3<f32> = txVec35;
            let x_3022 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3020.xy, x_3020.z);
            u_xlat88 = x_3022;
            let x_3023 : f32 = u_xlat88;
            let x_3025 : f32 = u_xlat19.y;
            u_xlat88 = (x_3023 * x_3025);
            let x_3028 : f32 = u_xlat19.x;
            let x_3029 : f32 = u_xlat86;
            let x_3031 : f32 = u_xlat88;
            u_xlat86 = ((x_3028 * x_3029) + x_3031);
            let x_3034 : vec2<f32> = u_xlat64;
            let x_3036 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3034.x, x_3034.y, x_3036);
            let x_3043 : vec3<f32> = txVec36;
            let x_3045 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3043.xy, x_3043.z);
            u_xlat88 = x_3045;
            let x_3047 : f32 = u_xlat19.z;
            let x_3048 : f32 = u_xlat88;
            let x_3050 : f32 = u_xlat86;
            u_xlat86 = ((x_3047 * x_3048) + x_3050);
            let x_3053 : vec4<f32> = u_xlat15;
            let x_3054 : vec2<f32> = vec2<f32>(x_3053.x, x_3053.y);
            let x_3056 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3054.x, x_3054.y, x_3056);
            let x_3063 : vec3<f32> = txVec37;
            let x_3065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3063.xy, x_3063.z);
            u_xlat88 = x_3065;
            let x_3067 : f32 = u_xlat19.w;
            let x_3068 : f32 = u_xlat88;
            let x_3070 : f32 = u_xlat86;
            u_xlat86 = ((x_3067 * x_3068) + x_3070);
            let x_3073 : vec4<f32> = u_xlat17;
            let x_3074 : vec2<f32> = vec2<f32>(x_3073.x, x_3073.y);
            let x_3076 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3074.x, x_3074.y, x_3076);
            let x_3083 : vec3<f32> = txVec38;
            let x_3085 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3083.xy, x_3083.z);
            u_xlat88 = x_3085;
            let x_3087 : f32 = u_xlat20.x;
            let x_3088 : f32 = u_xlat88;
            let x_3090 : f32 = u_xlat86;
            u_xlat86 = ((x_3087 * x_3088) + x_3090);
            let x_3093 : vec4<f32> = u_xlat17;
            let x_3094 : vec2<f32> = vec2<f32>(x_3093.z, x_3093.w);
            let x_3096 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3094.x, x_3094.y, x_3096);
            let x_3103 : vec3<f32> = txVec39;
            let x_3105 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3103.xy, x_3103.z);
            u_xlat88 = x_3105;
            let x_3107 : f32 = u_xlat20.y;
            let x_3108 : f32 = u_xlat88;
            let x_3110 : f32 = u_xlat86;
            u_xlat86 = ((x_3107 * x_3108) + x_3110);
            let x_3113 : vec4<f32> = u_xlat15;
            let x_3114 : vec2<f32> = vec2<f32>(x_3113.z, x_3113.w);
            let x_3116 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3114.x, x_3114.y, x_3116);
            let x_3123 : vec3<f32> = txVec40;
            let x_3125 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3123.xy, x_3123.z);
            u_xlat88 = x_3125;
            let x_3127 : f32 = u_xlat20.z;
            let x_3128 : f32 = u_xlat88;
            let x_3130 : f32 = u_xlat86;
            u_xlat86 = ((x_3127 * x_3128) + x_3130);
            let x_3133 : vec4<f32> = u_xlat14;
            let x_3134 : vec2<f32> = vec2<f32>(x_3133.x, x_3133.y);
            let x_3136 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3134.x, x_3134.y, x_3136);
            let x_3143 : vec3<f32> = txVec41;
            let x_3145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3143.xy, x_3143.z);
            u_xlat88 = x_3145;
            let x_3147 : f32 = u_xlat20.w;
            let x_3148 : f32 = u_xlat88;
            let x_3150 : f32 = u_xlat86;
            u_xlat86 = ((x_3147 * x_3148) + x_3150);
            let x_3153 : vec4<f32> = u_xlat14;
            let x_3154 : vec2<f32> = vec2<f32>(x_3153.z, x_3153.w);
            let x_3156 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec42;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat88 = x_3165;
            let x_3166 : f32 = u_xlat85;
            let x_3167 : f32 = u_xlat88;
            let x_3169 : f32 = u_xlat86;
            u_xlat59.x = ((x_3166 * x_3167) + x_3169);
          } else {
            let x_3173 : vec4<f32> = u_xlat11;
            let x_3176 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3179 : vec2<f32> = ((vec2<f32>(x_3173.x, x_3173.y) * vec2<f32>(x_3176.z, x_3176.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3180 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3179.x, x_3179.y, x_3180.z, x_3180.w);
            let x_3182 : vec4<f32> = u_xlat12;
            let x_3184 : vec2<f32> = floor(vec2<f32>(x_3182.x, x_3182.y));
            let x_3185 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3184.x, x_3184.y, x_3185.z, x_3185.w);
            let x_3187 : vec4<f32> = u_xlat11;
            let x_3190 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3193 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3187.x, x_3187.y) * vec2<f32>(x_3190.z, x_3190.w)) + -(vec2<f32>(x_3193.x, x_3193.y)));
            let x_3197 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3197.x, x_3197.x, x_3197.y, x_3197.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3200 : vec4<f32> = u_xlat13;
            let x_3202 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3200.x, x_3200.x, x_3200.z, x_3200.z) * vec4<f32>(x_3202.x, x_3202.x, x_3202.z, x_3202.z));
            let x_3205 : vec4<f32> = u_xlat14;
            let x_3207 : vec2<f32> = (vec2<f32>(x_3205.y, x_3205.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3208 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3208.x, x_3207.x, x_3208.z, x_3207.y);
            let x_3210 : vec4<f32> = u_xlat14;
            let x_3213 : vec2<f32> = u_xlat64;
            let x_3215 : vec2<f32> = ((vec2<f32>(x_3210.x, x_3210.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3213));
            let x_3216 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3215.x, x_3216.y, x_3215.y, x_3216.w);
            let x_3218 : vec2<f32> = u_xlat64;
            let x_3220 : vec2<f32> = (-(x_3218) + vec2<f32>(1.0f, 1.0f));
            let x_3221 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3220.x, x_3220.y, x_3221.z, x_3221.w);
            let x_3223 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3223, vec2<f32>(0.0f, 0.0f));
            let x_3225 : vec2<f32> = u_xlat66;
            let x_3227 : vec2<f32> = u_xlat66;
            let x_3229 : vec4<f32> = u_xlat14;
            let x_3231 : vec2<f32> = ((-(x_3225) * x_3227) + vec2<f32>(x_3229.x, x_3229.y));
            let x_3232 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3231.x, x_3231.y, x_3232.z, x_3232.w);
            let x_3234 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3234, vec2<f32>(0.0f, 0.0f));
            let x_3237 : vec2<f32> = u_xlat66;
            let x_3239 : vec2<f32> = u_xlat66;
            let x_3241 : vec4<f32> = u_xlat13;
            let x_3243 : vec2<f32> = ((-(x_3237) * x_3239) + vec2<f32>(x_3241.y, x_3241.w));
            let x_3244 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3243.x, x_3244.y, x_3243.y);
            let x_3246 : vec4<f32> = u_xlat14;
            let x_3248 : vec2<f32> = (vec2<f32>(x_3246.x, x_3246.y) + vec2<f32>(2.0f, 2.0f));
            let x_3249 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3248.x, x_3248.y, x_3249.z, x_3249.w);
            let x_3251 : vec3<f32> = u_xlat39;
            let x_3253 : vec2<f32> = (vec2<f32>(x_3251.x, x_3251.z) + vec2<f32>(2.0f, 2.0f));
            let x_3254 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3254.x, x_3253.x, x_3254.z, x_3253.y);
            let x_3257 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3257 * 0.08163200318813323975f);
            let x_3260 : vec4<f32> = u_xlat13;
            let x_3262 : vec3<f32> = (vec3<f32>(x_3260.z, x_3260.x, x_3260.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3263 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3262.x, x_3262.y, x_3262.z, x_3263.w);
            let x_3265 : vec4<f32> = u_xlat14;
            let x_3267 : vec2<f32> = (vec2<f32>(x_3265.x, x_3265.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3268 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3267.x, x_3267.y, x_3268.z, x_3268.w);
            let x_3271 : f32 = u_xlat17.y;
            u_xlat16.x = x_3271;
            let x_3273 : vec2<f32> = u_xlat64;
            let x_3276 : vec2<f32> = ((vec2<f32>(x_3273.x, x_3273.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3277 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3277.x, x_3276.x, x_3277.z, x_3276.y);
            let x_3279 : vec2<f32> = u_xlat64;
            let x_3282 : vec2<f32> = ((vec2<f32>(x_3279.x, x_3279.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3283 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3282.x, x_3283.y, x_3282.y, x_3283.w);
            let x_3286 : f32 = u_xlat13.x;
            u_xlat14.y = x_3286;
            let x_3289 : f32 = u_xlat15.y;
            u_xlat14.w = x_3289;
            let x_3291 : vec4<f32> = u_xlat14;
            let x_3292 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3291 + x_3292);
            let x_3294 : vec2<f32> = u_xlat64;
            let x_3297 : vec2<f32> = ((vec2<f32>(x_3294.y, x_3294.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3298 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3298.x, x_3297.x, x_3298.z, x_3297.y);
            let x_3300 : vec2<f32> = u_xlat64;
            let x_3303 : vec2<f32> = ((vec2<f32>(x_3300.y, x_3300.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3304 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3303.x, x_3304.y, x_3303.y, x_3304.w);
            let x_3307 : f32 = u_xlat13.y;
            u_xlat15.y = x_3307;
            let x_3309 : vec4<f32> = u_xlat15;
            let x_3310 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3309 + x_3310);
            let x_3312 : vec4<f32> = u_xlat14;
            let x_3313 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3312 / x_3313);
            let x_3315 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3315 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3317 : vec4<f32> = u_xlat15;
            let x_3318 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3317 / x_3318);
            let x_3320 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3320 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3322 : vec4<f32> = u_xlat14;
            let x_3325 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3322.w, x_3322.x, x_3322.y, x_3322.z) * vec4<f32>(x_3325.x, x_3325.x, x_3325.x, x_3325.x));
            let x_3328 : vec4<f32> = u_xlat15;
            let x_3331 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3328.x, x_3328.w, x_3328.y, x_3328.z) * vec4<f32>(x_3331.y, x_3331.y, x_3331.y, x_3331.y));
            let x_3334 : vec4<f32> = u_xlat14;
            let x_3335 : vec3<f32> = vec3<f32>(x_3334.y, x_3334.z, x_3334.w);
            let x_3336 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3335.x, x_3336.y, x_3335.y, x_3335.z);
            let x_3339 : f32 = u_xlat15.x;
            u_xlat17.y = x_3339;
            let x_3341 : vec4<f32> = u_xlat12;
            let x_3344 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3347 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3341.x, x_3341.y, x_3341.x, x_3341.y) * vec4<f32>(x_3344.x, x_3344.y, x_3344.x, x_3344.y)) + vec4<f32>(x_3347.x, x_3347.y, x_3347.z, x_3347.y));
            let x_3350 : vec4<f32> = u_xlat12;
            let x_3353 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3356 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3350.x, x_3350.y) * vec2<f32>(x_3353.x, x_3353.y)) + vec2<f32>(x_3356.w, x_3356.y));
            let x_3360 : f32 = u_xlat17.y;
            u_xlat14.y = x_3360;
            let x_3363 : f32 = u_xlat15.z;
            u_xlat17.y = x_3363;
            let x_3365 : vec4<f32> = u_xlat12;
            let x_3368 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3371 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3365.x, x_3365.y, x_3365.x, x_3365.y) * vec4<f32>(x_3368.x, x_3368.y, x_3368.x, x_3368.y)) + vec4<f32>(x_3371.x, x_3371.y, x_3371.z, x_3371.y));
            let x_3374 : vec4<f32> = u_xlat12;
            let x_3377 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3380 : vec4<f32> = u_xlat17;
            let x_3382 : vec2<f32> = ((vec2<f32>(x_3374.x, x_3374.y) * vec2<f32>(x_3377.x, x_3377.y)) + vec2<f32>(x_3380.w, x_3380.y));
            let x_3383 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3382.x, x_3382.y, x_3383.z, x_3383.w);
            let x_3386 : f32 = u_xlat17.y;
            u_xlat14.z = x_3386;
            let x_3389 : vec4<f32> = u_xlat12;
            let x_3392 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3395 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3389.x, x_3389.y, x_3389.x, x_3389.y) * vec4<f32>(x_3392.x, x_3392.y, x_3392.x, x_3392.y)) + vec4<f32>(x_3395.x, x_3395.y, x_3395.x, x_3395.z));
            let x_3399 : f32 = u_xlat15.w;
            u_xlat17.y = x_3399;
            let x_3402 : vec4<f32> = u_xlat12;
            let x_3405 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3408 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3402.x, x_3402.y, x_3402.x, x_3402.y) * vec4<f32>(x_3405.x, x_3405.y, x_3405.x, x_3405.y)) + vec4<f32>(x_3408.x, x_3408.y, x_3408.z, x_3408.y));
            let x_3412 : vec4<f32> = u_xlat12;
            let x_3415 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3418 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3412.x, x_3412.y) * vec2<f32>(x_3415.x, x_3415.y)) + vec2<f32>(x_3418.w, x_3418.y));
            let x_3422 : f32 = u_xlat17.y;
            u_xlat14.w = x_3422;
            let x_3425 : vec4<f32> = u_xlat12;
            let x_3428 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3431 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3425.x, x_3425.y) * vec2<f32>(x_3428.x, x_3428.y)) + vec2<f32>(x_3431.x, x_3431.w));
            let x_3434 : vec4<f32> = u_xlat17;
            let x_3435 : vec3<f32> = vec3<f32>(x_3434.x, x_3434.z, x_3434.w);
            let x_3436 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3435.x, x_3436.y, x_3435.y, x_3435.z);
            let x_3438 : vec4<f32> = u_xlat12;
            let x_3441 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3444 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3438.x, x_3438.y, x_3438.x, x_3438.y) * vec4<f32>(x_3441.x, x_3441.y, x_3441.x, x_3441.y)) + vec4<f32>(x_3444.x, x_3444.y, x_3444.z, x_3444.y));
            let x_3447 : vec4<f32> = u_xlat12;
            let x_3450 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3453 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3447.x, x_3447.y) * vec2<f32>(x_3450.x, x_3450.y)) + vec2<f32>(x_3453.w, x_3453.y));
            let x_3457 : f32 = u_xlat14.x;
            u_xlat15.x = x_3457;
            let x_3459 : vec4<f32> = u_xlat12;
            let x_3462 : vec4<f32> = x_345.x_AdditionalShadowmapSize;
            let x_3465 : vec4<f32> = u_xlat15;
            let x_3467 : vec2<f32> = ((vec2<f32>(x_3459.x, x_3459.y) * vec2<f32>(x_3462.x, x_3462.y)) + vec2<f32>(x_3465.x, x_3465.y));
            let x_3468 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3467.x, x_3467.y, x_3468.z, x_3468.w);
            let x_3471 : vec4<f32> = u_xlat13;
            let x_3473 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3471.x, x_3471.x, x_3471.x, x_3471.x) * x_3473);
            let x_3476 : vec4<f32> = u_xlat13;
            let x_3478 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3476.y, x_3476.y, x_3476.y, x_3476.y) * x_3478);
            let x_3481 : vec4<f32> = u_xlat13;
            let x_3483 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3481.z, x_3481.z, x_3481.z, x_3481.z) * x_3483);
            let x_3485 : vec4<f32> = u_xlat13;
            let x_3487 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3485.w, x_3485.w, x_3485.w, x_3485.w) * x_3487);
            let x_3490 : vec4<f32> = u_xlat18;
            let x_3491 : vec2<f32> = vec2<f32>(x_3490.x, x_3490.y);
            let x_3493 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3491.x, x_3491.y, x_3493);
            let x_3500 : vec3<f32> = txVec43;
            let x_3502 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3500.xy, x_3500.z);
            u_xlat85 = x_3502;
            let x_3504 : vec4<f32> = u_xlat18;
            let x_3505 : vec2<f32> = vec2<f32>(x_3504.z, x_3504.w);
            let x_3507 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3505.x, x_3505.y, x_3507);
            let x_3514 : vec3<f32> = txVec44;
            let x_3516 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3514.xy, x_3514.z);
            u_xlat86 = x_3516;
            let x_3517 : f32 = u_xlat86;
            let x_3519 : f32 = u_xlat23.y;
            u_xlat86 = (x_3517 * x_3519);
            let x_3522 : f32 = u_xlat23.x;
            let x_3523 : f32 = u_xlat85;
            let x_3525 : f32 = u_xlat86;
            u_xlat85 = ((x_3522 * x_3523) + x_3525);
            let x_3528 : vec2<f32> = u_xlat64;
            let x_3530 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3528.x, x_3528.y, x_3530);
            let x_3537 : vec3<f32> = txVec45;
            let x_3539 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3537.xy, x_3537.z);
            u_xlat86 = x_3539;
            let x_3541 : f32 = u_xlat23.z;
            let x_3542 : f32 = u_xlat86;
            let x_3544 : f32 = u_xlat85;
            u_xlat85 = ((x_3541 * x_3542) + x_3544);
            let x_3547 : vec4<f32> = u_xlat21;
            let x_3548 : vec2<f32> = vec2<f32>(x_3547.x, x_3547.y);
            let x_3550 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3548.x, x_3548.y, x_3550);
            let x_3557 : vec3<f32> = txVec46;
            let x_3559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3557.xy, x_3557.z);
            u_xlat86 = x_3559;
            let x_3561 : f32 = u_xlat23.w;
            let x_3562 : f32 = u_xlat86;
            let x_3564 : f32 = u_xlat85;
            u_xlat85 = ((x_3561 * x_3562) + x_3564);
            let x_3567 : vec4<f32> = u_xlat19;
            let x_3568 : vec2<f32> = vec2<f32>(x_3567.x, x_3567.y);
            let x_3570 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3568.x, x_3568.y, x_3570);
            let x_3577 : vec3<f32> = txVec47;
            let x_3579 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3577.xy, x_3577.z);
            u_xlat86 = x_3579;
            let x_3581 : f32 = u_xlat24.x;
            let x_3582 : f32 = u_xlat86;
            let x_3584 : f32 = u_xlat85;
            u_xlat85 = ((x_3581 * x_3582) + x_3584);
            let x_3587 : vec4<f32> = u_xlat19;
            let x_3588 : vec2<f32> = vec2<f32>(x_3587.z, x_3587.w);
            let x_3590 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3588.x, x_3588.y, x_3590);
            let x_3597 : vec3<f32> = txVec48;
            let x_3599 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3597.xy, x_3597.z);
            u_xlat86 = x_3599;
            let x_3601 : f32 = u_xlat24.y;
            let x_3602 : f32 = u_xlat86;
            let x_3604 : f32 = u_xlat85;
            u_xlat85 = ((x_3601 * x_3602) + x_3604);
            let x_3607 : vec4<f32> = u_xlat20;
            let x_3608 : vec2<f32> = vec2<f32>(x_3607.x, x_3607.y);
            let x_3610 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3608.x, x_3608.y, x_3610);
            let x_3617 : vec3<f32> = txVec49;
            let x_3619 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3617.xy, x_3617.z);
            u_xlat86 = x_3619;
            let x_3621 : f32 = u_xlat24.z;
            let x_3622 : f32 = u_xlat86;
            let x_3624 : f32 = u_xlat85;
            u_xlat85 = ((x_3621 * x_3622) + x_3624);
            let x_3627 : vec4<f32> = u_xlat21;
            let x_3628 : vec2<f32> = vec2<f32>(x_3627.z, x_3627.w);
            let x_3630 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3628.x, x_3628.y, x_3630);
            let x_3637 : vec3<f32> = txVec50;
            let x_3639 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3637.xy, x_3637.z);
            u_xlat86 = x_3639;
            let x_3641 : f32 = u_xlat24.w;
            let x_3642 : f32 = u_xlat86;
            let x_3644 : f32 = u_xlat85;
            u_xlat85 = ((x_3641 * x_3642) + x_3644);
            let x_3647 : vec4<f32> = u_xlat22;
            let x_3648 : vec2<f32> = vec2<f32>(x_3647.x, x_3647.y);
            let x_3650 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3648.x, x_3648.y, x_3650);
            let x_3657 : vec3<f32> = txVec51;
            let x_3659 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3657.xy, x_3657.z);
            u_xlat86 = x_3659;
            let x_3661 : f32 = u_xlat25.x;
            let x_3662 : f32 = u_xlat86;
            let x_3664 : f32 = u_xlat85;
            u_xlat85 = ((x_3661 * x_3662) + x_3664);
            let x_3667 : vec4<f32> = u_xlat22;
            let x_3668 : vec2<f32> = vec2<f32>(x_3667.z, x_3667.w);
            let x_3670 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3668.x, x_3668.y, x_3670);
            let x_3677 : vec3<f32> = txVec52;
            let x_3679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3677.xy, x_3677.z);
            u_xlat86 = x_3679;
            let x_3681 : f32 = u_xlat25.y;
            let x_3682 : f32 = u_xlat86;
            let x_3684 : f32 = u_xlat85;
            u_xlat85 = ((x_3681 * x_3682) + x_3684);
            let x_3687 : vec2<f32> = u_xlat40;
            let x_3689 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3687.x, x_3687.y, x_3689);
            let x_3696 : vec3<f32> = txVec53;
            let x_3698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3696.xy, x_3696.z);
            u_xlat86 = x_3698;
            let x_3700 : f32 = u_xlat25.z;
            let x_3701 : f32 = u_xlat86;
            let x_3703 : f32 = u_xlat85;
            u_xlat85 = ((x_3700 * x_3701) + x_3703);
            let x_3706 : vec2<f32> = u_xlat72;
            let x_3708 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3706.x, x_3706.y, x_3708);
            let x_3715 : vec3<f32> = txVec54;
            let x_3717 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3715.xy, x_3715.z);
            u_xlat86 = x_3717;
            let x_3719 : f32 = u_xlat25.w;
            let x_3720 : f32 = u_xlat86;
            let x_3722 : f32 = u_xlat85;
            u_xlat85 = ((x_3719 * x_3720) + x_3722);
            let x_3725 : vec4<f32> = u_xlat17;
            let x_3726 : vec2<f32> = vec2<f32>(x_3725.x, x_3725.y);
            let x_3728 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3726.x, x_3726.y, x_3728);
            let x_3735 : vec3<f32> = txVec55;
            let x_3737 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3735.xy, x_3735.z);
            u_xlat86 = x_3737;
            let x_3739 : f32 = u_xlat13.x;
            let x_3740 : f32 = u_xlat86;
            let x_3742 : f32 = u_xlat85;
            u_xlat85 = ((x_3739 * x_3740) + x_3742);
            let x_3745 : vec4<f32> = u_xlat17;
            let x_3746 : vec2<f32> = vec2<f32>(x_3745.z, x_3745.w);
            let x_3748 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3746.x, x_3746.y, x_3748);
            let x_3755 : vec3<f32> = txVec56;
            let x_3757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3755.xy, x_3755.z);
            u_xlat86 = x_3757;
            let x_3759 : f32 = u_xlat13.y;
            let x_3760 : f32 = u_xlat86;
            let x_3762 : f32 = u_xlat85;
            u_xlat85 = ((x_3759 * x_3760) + x_3762);
            let x_3765 : vec2<f32> = u_xlat67;
            let x_3767 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3765.x, x_3765.y, x_3767);
            let x_3774 : vec3<f32> = txVec57;
            let x_3776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3774.xy, x_3774.z);
            u_xlat86 = x_3776;
            let x_3778 : f32 = u_xlat13.z;
            let x_3779 : f32 = u_xlat86;
            let x_3781 : f32 = u_xlat85;
            u_xlat85 = ((x_3778 * x_3779) + x_3781);
            let x_3784 : vec4<f32> = u_xlat12;
            let x_3785 : vec2<f32> = vec2<f32>(x_3784.x, x_3784.y);
            let x_3787 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3785.x, x_3785.y, x_3787);
            let x_3794 : vec3<f32> = txVec58;
            let x_3796 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3794.xy, x_3794.z);
            u_xlat86 = x_3796;
            let x_3798 : f32 = u_xlat13.w;
            let x_3799 : f32 = u_xlat86;
            let x_3801 : f32 = u_xlat85;
            u_xlat59.x = ((x_3798 * x_3799) + x_3801);
          }
        }
      } else {
        let x_3806 : vec4<f32> = u_xlat11;
        let x_3807 : vec2<f32> = vec2<f32>(x_3806.x, x_3806.y);
        let x_3809 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3807.x, x_3807.y, x_3809);
        let x_3816 : vec3<f32> = txVec59;
        let x_3818 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3816.xy, x_3816.z);
        u_xlat59.x = x_3818;
      }
      let x_3820 : i32 = u_xlati30;
      let x_3822 : f32 = x_345.x_AdditionalShadowParams[x_3820].x;
      u_xlat85 = (1.0f + -(x_3822));
      let x_3826 : f32 = u_xlat59.x;
      let x_3827 : i32 = u_xlati30;
      let x_3829 : f32 = x_345.x_AdditionalShadowParams[x_3827].x;
      let x_3831 : f32 = u_xlat85;
      u_xlat59.x = ((x_3826 * x_3829) + x_3831);
      let x_3835 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_3835);
      let x_3839 : f32 = u_xlat11.z;
      u_xlatb86 = (x_3839 >= 1.0f);
      let x_3841 : bool = u_xlatb85;
      let x_3842 : bool = u_xlatb86;
      u_xlatb85 = (x_3841 | x_3842);
      let x_3844 : bool = u_xlatb85;
      if (x_3844) {
        x_3845 = 1.0f;
      } else {
        let x_3850 : f32 = u_xlat59.x;
        x_3845 = x_3850;
      }
      let x_3851 : f32 = x_3845;
      u_xlat59.x = x_3851;
    } else {
      u_xlat59.x = 1.0f;
    }
    let x_3856 : f32 = u_xlat59.x;
    u_xlat85 = (-(x_3856) + 1.0f);
    let x_3860 : f32 = u_xlat1.x;
    let x_3861 : f32 = u_xlat85;
    let x_3864 : f32 = u_xlat59.x;
    u_xlat59.x = ((x_3860 * x_3861) + x_3864);
    let x_3868 : i32 = u_xlati30;
    u_xlati85 = (1i << bitcast<u32>((x_3868 & 31i)));
    let x_3872 : i32 = u_xlati85;
    let x_3875 : f32 = x_1970.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_3872) & bitcast<u32>(x_3875)));
    let x_3879 : i32 = u_xlati85;
    if ((x_3879 != 0i)) {
      let x_3883 : i32 = u_xlati30;
      let x_3885 : f32 = x_1970.x_AdditionalLightsLightTypes[x_3883].el;
      u_xlati85 = i32(x_3885);
      let x_3888 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_3888 != 0i));
      let x_3892 : i32 = u_xlati30;
      u_xlati88 = (x_3892 << bitcast<u32>(2i));
      let x_3894 : i32 = u_xlati86;
      if ((x_3894 != 0i)) {
        let x_3898 : vec3<f32> = vs_TEXCOORD1;
        let x_3900 : i32 = u_xlati88;
        let x_3903 : i32 = u_xlati88;
        let x_3907 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[((x_3900 + 1i) / 4i)][((x_3903 + 1i) % 4i)];
        let x_3909 : vec3<f32> = (vec3<f32>(x_3898.y, x_3898.y, x_3898.y) * vec3<f32>(x_3907.x, x_3907.y, x_3907.w));
        let x_3910 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3909.x, x_3909.y, x_3909.z, x_3910.w);
        let x_3912 : i32 = u_xlati88;
        let x_3914 : i32 = u_xlati88;
        let x_3917 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[(x_3912 / 4i)][(x_3914 % 4i)];
        let x_3919 : vec3<f32> = vs_TEXCOORD1;
        let x_3922 : vec4<f32> = u_xlat11;
        let x_3924 : vec3<f32> = ((vec3<f32>(x_3917.x, x_3917.y, x_3917.w) * vec3<f32>(x_3919.x, x_3919.x, x_3919.x)) + vec3<f32>(x_3922.x, x_3922.y, x_3922.z));
        let x_3925 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3924.x, x_3924.y, x_3924.z, x_3925.w);
        let x_3927 : i32 = u_xlati88;
        let x_3930 : i32 = u_xlati88;
        let x_3934 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[((x_3927 + 2i) / 4i)][((x_3930 + 2i) % 4i)];
        let x_3936 : vec3<f32> = vs_TEXCOORD1;
        let x_3939 : vec4<f32> = u_xlat11;
        let x_3941 : vec3<f32> = ((vec3<f32>(x_3934.x, x_3934.y, x_3934.w) * vec3<f32>(x_3936.z, x_3936.z, x_3936.z)) + vec3<f32>(x_3939.x, x_3939.y, x_3939.z));
        let x_3942 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3941.x, x_3941.y, x_3941.z, x_3942.w);
        let x_3944 : vec4<f32> = u_xlat11;
        let x_3946 : i32 = u_xlati88;
        let x_3949 : i32 = u_xlati88;
        let x_3953 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[((x_3946 + 3i) / 4i)][((x_3949 + 3i) % 4i)];
        let x_3955 : vec3<f32> = (vec3<f32>(x_3944.x, x_3944.y, x_3944.z) + vec3<f32>(x_3953.x, x_3953.y, x_3953.w));
        let x_3956 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3955.x, x_3955.y, x_3955.z, x_3956.w);
        let x_3958 : vec4<f32> = u_xlat11;
        let x_3960 : vec4<f32> = u_xlat11;
        let x_3962 : vec2<f32> = (vec2<f32>(x_3958.x, x_3958.y) / vec2<f32>(x_3960.z, x_3960.z));
        let x_3963 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3962.x, x_3962.y, x_3963.z, x_3963.w);
        let x_3965 : vec4<f32> = u_xlat11;
        let x_3968 : vec2<f32> = ((vec2<f32>(x_3965.x, x_3965.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3969 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3968.x, x_3968.y, x_3969.z, x_3969.w);
        let x_3971 : vec4<f32> = u_xlat11;
        let x_3975 : vec2<f32> = clamp(vec2<f32>(x_3971.x, x_3971.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3976 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3975.x, x_3975.y, x_3976.z, x_3976.w);
        let x_3978 : i32 = u_xlati30;
        let x_3980 : vec4<f32> = x_1970.x_AdditionalLightsCookieAtlasUVRects[x_3978];
        let x_3982 : vec4<f32> = u_xlat11;
        let x_3985 : i32 = u_xlati30;
        let x_3987 : vec4<f32> = x_1970.x_AdditionalLightsCookieAtlasUVRects[x_3985];
        let x_3989 : vec2<f32> = ((vec2<f32>(x_3980.x, x_3980.y) * vec2<f32>(x_3982.x, x_3982.y)) + vec2<f32>(x_3987.z, x_3987.w));
        let x_3990 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3989.x, x_3989.y, x_3990.z, x_3990.w);
      } else {
        let x_3993 : i32 = u_xlati85;
        u_xlatb85 = (x_3993 == 1i);
        let x_3995 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_3995);
        let x_3997 : i32 = u_xlati85;
        if ((x_3997 != 0i)) {
          let x_4002 : vec3<f32> = vs_TEXCOORD1;
          let x_4004 : i32 = u_xlati88;
          let x_4007 : i32 = u_xlati88;
          let x_4011 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[((x_4004 + 1i) / 4i)][((x_4007 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4002.y, x_4002.y) * vec2<f32>(x_4011.x, x_4011.y));
          let x_4014 : i32 = u_xlati88;
          let x_4016 : i32 = u_xlati88;
          let x_4019 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[(x_4014 / 4i)][(x_4016 % 4i)];
          let x_4021 : vec3<f32> = vs_TEXCOORD1;
          let x_4024 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4019.x, x_4019.y) * vec2<f32>(x_4021.x, x_4021.x)) + x_4024);
          let x_4026 : i32 = u_xlati88;
          let x_4029 : i32 = u_xlati88;
          let x_4033 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[((x_4026 + 2i) / 4i)][((x_4029 + 2i) % 4i)];
          let x_4035 : vec3<f32> = vs_TEXCOORD1;
          let x_4038 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4033.x, x_4033.y) * vec2<f32>(x_4035.z, x_4035.z)) + x_4038);
          let x_4040 : vec2<f32> = u_xlat63;
          let x_4041 : i32 = u_xlati88;
          let x_4044 : i32 = u_xlati88;
          let x_4048 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[((x_4041 + 3i) / 4i)][((x_4044 + 3i) % 4i)];
          u_xlat63 = (x_4040 + vec2<f32>(x_4048.x, x_4048.y));
          let x_4051 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4051 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4054 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4054);
          let x_4056 : i32 = u_xlati30;
          let x_4058 : vec4<f32> = x_1970.x_AdditionalLightsCookieAtlasUVRects[x_4056];
          let x_4060 : vec2<f32> = u_xlat63;
          let x_4062 : i32 = u_xlati30;
          let x_4064 : vec4<f32> = x_1970.x_AdditionalLightsCookieAtlasUVRects[x_4062];
          let x_4066 : vec2<f32> = ((vec2<f32>(x_4058.x, x_4058.y) * x_4060) + vec2<f32>(x_4064.z, x_4064.w));
          let x_4067 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4066.x, x_4066.y, x_4067.z, x_4067.w);
        } else {
          let x_4070 : vec3<f32> = vs_TEXCOORD1;
          let x_4072 : i32 = u_xlati88;
          let x_4075 : i32 = u_xlati88;
          let x_4079 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[((x_4072 + 1i) / 4i)][((x_4075 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4070.y, x_4070.y, x_4070.y, x_4070.y) * x_4079);
          let x_4081 : i32 = u_xlati88;
          let x_4083 : i32 = u_xlati88;
          let x_4086 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[(x_4081 / 4i)][(x_4083 % 4i)];
          let x_4087 : vec3<f32> = vs_TEXCOORD1;
          let x_4090 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4086 * vec4<f32>(x_4087.x, x_4087.x, x_4087.x, x_4087.x)) + x_4090);
          let x_4092 : i32 = u_xlati88;
          let x_4095 : i32 = u_xlati88;
          let x_4099 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[((x_4092 + 2i) / 4i)][((x_4095 + 2i) % 4i)];
          let x_4100 : vec3<f32> = vs_TEXCOORD1;
          let x_4103 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4099 * vec4<f32>(x_4100.z, x_4100.z, x_4100.z, x_4100.z)) + x_4103);
          let x_4105 : vec4<f32> = u_xlat12;
          let x_4106 : i32 = u_xlati88;
          let x_4109 : i32 = u_xlati88;
          let x_4113 : vec4<f32> = x_1970.x_AdditionalLightsWorldToLights[((x_4106 + 3i) / 4i)][((x_4109 + 3i) % 4i)];
          u_xlat12 = (x_4105 + x_4113);
          let x_4115 : vec4<f32> = u_xlat12;
          let x_4117 : vec4<f32> = u_xlat12;
          let x_4119 : vec3<f32> = (vec3<f32>(x_4115.x, x_4115.y, x_4115.z) / vec3<f32>(x_4117.w, x_4117.w, x_4117.w));
          let x_4120 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4119.x, x_4119.y, x_4119.z, x_4120.w);
          let x_4122 : vec4<f32> = u_xlat12;
          let x_4124 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4122.x, x_4122.y, x_4122.z), vec3<f32>(x_4124.x, x_4124.y, x_4124.z));
          let x_4127 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4127);
          let x_4129 : f32 = u_xlat85;
          let x_4131 : vec4<f32> = u_xlat12;
          let x_4133 : vec3<f32> = (vec3<f32>(x_4129, x_4129, x_4129) * vec3<f32>(x_4131.x, x_4131.y, x_4131.z));
          let x_4134 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4133.x, x_4133.y, x_4133.z, x_4134.w);
          let x_4136 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4136.x, x_4136.y, x_4136.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4141 : f32 = u_xlat85;
          u_xlat85 = max(x_4141, 0.00000099999999747524f);
          let x_4144 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4144);
          let x_4146 : f32 = u_xlat85;
          let x_4148 : vec4<f32> = u_xlat12;
          let x_4150 : vec3<f32> = (vec3<f32>(x_4146, x_4146, x_4146) * vec3<f32>(x_4148.z, x_4148.x, x_4148.y));
          let x_4151 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4150.x, x_4150.y, x_4150.z, x_4151.w);
          let x_4154 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4154);
          let x_4158 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4158, 0.0f, 1.0f);
          let x_4162 : vec4<f32> = u_xlat13;
          let x_4164 : vec4<bool> = (vec4<f32>(x_4162.y, x_4162.z, x_4162.y, x_4162.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4164.x, x_4164.y);
          let x_4167 : bool = u_xlatb63.x;
          if (x_4167) {
            let x_4172 : f32 = u_xlat13.x;
            x_4168 = x_4172;
          } else {
            let x_4175 : f32 = u_xlat13.x;
            x_4168 = -(x_4175);
          }
          let x_4177 : f32 = x_4168;
          u_xlat63.x = x_4177;
          let x_4180 : bool = u_xlatb63.y;
          if (x_4180) {
            let x_4185 : f32 = u_xlat13.x;
            x_4181 = x_4185;
          } else {
            let x_4188 : f32 = u_xlat13.x;
            x_4181 = -(x_4188);
          }
          let x_4190 : f32 = x_4181;
          u_xlat63.y = x_4190;
          let x_4192 : vec4<f32> = u_xlat12;
          let x_4194 : f32 = u_xlat85;
          let x_4197 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4192.x, x_4192.y) * vec2<f32>(x_4194, x_4194)) + x_4197);
          let x_4199 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4199 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4202 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4202, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4206 : i32 = u_xlati30;
          let x_4208 : vec4<f32> = x_1970.x_AdditionalLightsCookieAtlasUVRects[x_4206];
          let x_4210 : vec2<f32> = u_xlat63;
          let x_4212 : i32 = u_xlati30;
          let x_4214 : vec4<f32> = x_1970.x_AdditionalLightsCookieAtlasUVRects[x_4212];
          let x_4216 : vec2<f32> = ((vec2<f32>(x_4208.x, x_4208.y) * x_4210) + vec2<f32>(x_4214.z, x_4214.w));
          let x_4217 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4216.x, x_4216.y, x_4217.z, x_4217.w);
        }
      }
      let x_4224 : vec4<f32> = u_xlat11;
      let x_4226 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4224.x, x_4224.y), 0.0f);
      u_xlat11 = x_4226;
      let x_4228 : bool = u_xlatb7.y;
      if (x_4228) {
        let x_4233 : f32 = u_xlat11.w;
        x_4229 = x_4233;
      } else {
        let x_4236 : f32 = u_xlat11.x;
        x_4229 = x_4236;
      }
      let x_4237 : f32 = x_4229;
      u_xlat85 = x_4237;
      let x_4239 : bool = u_xlatb7.x;
      if (x_4239) {
        let x_4243 : vec4<f32> = u_xlat11;
        x_4240 = vec3<f32>(x_4243.x, x_4243.y, x_4243.z);
      } else {
        let x_4246 : f32 = u_xlat85;
        x_4240 = vec3<f32>(x_4246, x_4246, x_4246);
      }
      let x_4248 : vec3<f32> = x_4240;
      let x_4249 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4248.x, x_4248.y, x_4248.z, x_4249.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4255 : vec4<f32> = u_xlat11;
    let x_4257 : i32 = u_xlati30;
    let x_4259 : vec4<f32> = x_2426.x_AdditionalLightsColor[x_4257];
    let x_4261 : vec3<f32> = (vec3<f32>(x_4255.x, x_4255.y, x_4255.z) * vec3<f32>(x_4259.x, x_4259.y, x_4259.z));
    let x_4262 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4261.x, x_4261.y, x_4261.z, x_4262.w);
    let x_4264 : f32 = u_xlat83;
    let x_4266 : f32 = u_xlat59.x;
    u_xlat30.x = (x_4264 * x_4266);
    let x_4269 : vec3<f32> = u_xlat29;
    let x_4270 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(x_4269, vec3<f32>(x_4270.x, x_4270.y, x_4270.z));
    let x_4273 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4273, 0.0f, 1.0f);
    let x_4276 : f32 = u_xlat30.x;
    let x_4277 : f32 = u_xlat83;
    u_xlat30.x = (x_4276 * x_4277);
    let x_4280 : vec3<f32> = u_xlat30;
    let x_4282 : vec4<f32> = u_xlat11;
    let x_4284 : vec3<f32> = (vec3<f32>(x_4280.x, x_4280.x, x_4280.x) * vec3<f32>(x_4282.x, x_4282.y, x_4282.z));
    let x_4285 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4284.x, x_4284.y, x_4284.z, x_4285.w);
    let x_4287 : vec3<f32> = u_xlat35;
    let x_4288 : f32 = u_xlat84;
    let x_4291 : vec3<f32> = u_xlat5;
    u_xlat35 = ((x_4287 * vec3<f32>(x_4288, x_4288, x_4288)) + x_4291);
    let x_4293 : vec3<f32> = u_xlat35;
    let x_4294 : vec3<f32> = u_xlat35;
    u_xlat30.x = dot(x_4293, x_4294);
    let x_4298 : f32 = u_xlat30.x;
    u_xlat30.x = max(x_4298, 1.17549435e-38f);
    let x_4302 : f32 = u_xlat30.x;
    u_xlat30.x = inverseSqrt(x_4302);
    let x_4305 : vec3<f32> = u_xlat30;
    let x_4307 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4305.x, x_4305.x, x_4305.x) * x_4307);
    let x_4309 : vec3<f32> = u_xlat29;
    let x_4310 : vec3<f32> = u_xlat35;
    u_xlat30.x = dot(x_4309, x_4310);
    let x_4314 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_4314, 0.0f, 1.0f);
    let x_4317 : vec4<f32> = u_xlat10;
    let x_4319 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_4317.x, x_4317.y, x_4317.z), x_4319);
    let x_4321 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4321, 0.0f, 1.0f);
    let x_4324 : f32 = u_xlat30.x;
    let x_4326 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4324 * x_4326);
    let x_4330 : f32 = u_xlat30.x;
    let x_4332 : f32 = u_xlat9.x;
    u_xlat30.x = ((x_4330 * x_4332) + 1.00001001358032226562f);
    let x_4336 : f32 = u_xlat83;
    let x_4337 : f32 = u_xlat83;
    u_xlat83 = (x_4336 * x_4337);
    let x_4340 : f32 = u_xlat30.x;
    let x_4342 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4340 * x_4342);
    let x_4345 : f32 = u_xlat83;
    u_xlat83 = max(x_4345, 0.10000000149011611938f);
    let x_4348 : f32 = u_xlat30.x;
    let x_4349 : f32 = u_xlat83;
    u_xlat30.x = (x_4348 * x_4349);
    let x_4352 : f32 = u_xlat79;
    let x_4354 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4352 * x_4354);
    let x_4357 : f32 = u_xlat27;
    let x_4359 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4357 / x_4359);
    let x_4362 : vec4<f32> = u_xlat0;
    let x_4364 : vec3<f32> = u_xlat30;
    let x_4367 : vec3<f32> = u_xlat28;
    u_xlat35 = ((vec3<f32>(x_4362.x, x_4362.y, x_4362.z) * vec3<f32>(x_4364.x, x_4364.x, x_4364.x)) + x_4367);
    let x_4369 : vec3<f32> = u_xlat35;
    let x_4370 : vec4<f32> = u_xlat11;
    let x_4373 : vec4<f32> = u_xlat8;
    let x_4375 : vec3<f32> = ((x_4369 * vec3<f32>(x_4370.x, x_4370.y, x_4370.z)) + vec3<f32>(x_4373.x, x_4373.y, x_4373.z));
    let x_4376 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4375.x, x_4375.y, x_4375.z, x_4376.w);

    continuing {
      let x_4378 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4378 + bitcast<u32>(1i));
    }
  }
  let x_4380 : vec4<f32> = u_xlat6;
  let x_4382 : vec3<f32> = u_xlat3;
  let x_4385 : vec4<f32> = u_xlat4;
  let x_4387 : vec3<f32> = ((vec3<f32>(x_4380.x, x_4380.y, x_4380.z) * vec3<f32>(x_4382.x, x_4382.x, x_4382.x)) + vec3<f32>(x_4385.x, x_4385.z, x_4385.w));
  let x_4388 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4387.x, x_4387.y, x_4387.z, x_4388.w);
  let x_4392 : vec4<f32> = u_xlat8;
  let x_4394 : vec4<f32> = u_xlat0;
  let x_4396 : vec3<f32> = (vec3<f32>(x_4392.x, x_4392.y, x_4392.z) + vec3<f32>(x_4394.x, x_4394.y, x_4394.z));
  let x_4397 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4396.x, x_4396.y, x_4396.z, x_4397.w);
  let x_4401 : f32 = x_70.x_Surface;
  u_xlatb0 = (x_4401 == 1.0f);
  let x_4403 : bool = u_xlatb0;
  if (x_4403) {
    let x_4408 : f32 = u_xlat2.x;
    x_4404 = x_4408;
  } else {
    x_4404 = 1.0f;
  }
  let x_4410 : f32 = x_4404;
  SV_Target0.w = x_4410;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}



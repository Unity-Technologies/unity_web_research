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

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  /* @offset(16) */
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Hue : f32,
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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(7) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb26 : bool;

var<private> u_xlat26 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlat27 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb78 : bool;

@group(0) @binding(9) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat78 : f32;

@group(0) @binding(8) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb53 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat53 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_497 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(4) var<uniform> x_2148 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu79 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu30 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati30 : i32;

@group(1) @binding(1) var<uniform> x_2613 : AdditionalLights;

var<private> u_xlati59 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb59 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_478 : vec3<f32>;
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
  var x_2099 : f32;
  var x_2215 : f32;
  var x_2226 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2754 : f32;
  var x_2764 : f32;
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
  var x_4033 : f32;
  var x_4355 : f32;
  var x_4368 : f32;
  var x_4416 : f32;
  var x_4427 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_25A083BC, samplerTexture2D_25A083BC, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : f32 = u_xlat0.y;
  let x_47 : f32 = u_xlat0.z;
  u_xlatb1 = (x_44 >= x_47);
  let x_50 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_50);
  let x_56 : vec4<f32> = u_xlat0;
  let x_57 : vec2<f32> = vec2<f32>(x_56.z, x_56.y);
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.6666666865348815918f;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat2;
  let x_71 : vec2<f32> = (vec2<f32>(x_66.y, x_66.z) + -(vec2<f32>(x_68.x, x_68.y)));
  let x_72 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  u_xlat3.z = 1.0f;
  u_xlat3.w = -1.0f;
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x) * x_78) + x_80);
  let x_84 : f32 = u_xlat0.x;
  let x_86 : f32 = u_xlat1.x;
  u_xlatb26 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb26;
  u_xlat26 = select(0.0f, 1.0f, x_89);
  let x_91 : vec4<f32> = u_xlat1;
  let x_92 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.w);
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : f32 = u_xlat0.x;
  u_xlat2.w = x_96;
  let x_98 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = vec3<f32>(x_98.w, x_98.y, x_98.x);
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_99.z);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_102) + x_104);
  let x_106 : f32 = u_xlat26;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_106, x_106, x_106, x_106) * x_108) + x_110);
  let x_113 : f32 = u_xlat1.y;
  let x_115 : f32 = u_xlat1.w;
  u_xlat0.x = min(x_113, x_115);
  let x_119 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_119) + x_122);
  let x_126 : f32 = u_xlat0.x;
  u_xlatb26 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat52 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb26;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat52;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat26 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat27.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat27.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat52;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat52 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat52;
  u_xlatb78 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat52;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat52;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat27.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat52;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat52 = x_207;
  let x_208 : bool = u_xlatb78;
  if (x_208) {
    let x_213 : f32 = u_xlat27.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat52;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat52 = x_216;
  let x_217 : f32 = u_xlat52;
  let x_221 : vec3<f32> = (vec3<f32>(x_217, x_217, x_217) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = fract(vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = (abs(vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = clamp(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat1;
  let x_254 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat1;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.x, x_257.x) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_264.y, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : f32 = u_xlat26;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.z, x_266.w) * vec3<f32>(x_268, x_268, x_268));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = clamp(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_285 : vec4<f32> = vs_INTERP5;
  let x_288 : f32 = x_29.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(Texture2D_E9EC22CC, samplerTexture2D_E9EC22CC, vec2<f32>(x_285.x, x_285.y), x_288);
  let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.w);
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_294 : f32 = u_xlat1.x;
  let x_296 : f32 = u_xlat1.z;
  u_xlat1.x = (x_294 * x_296);
  let x_299 : vec4<f32> = u_xlat1;
  let x_305 : vec2<f32> = ((vec2<f32>(x_299.x, x_299.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat78 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat78;
  u_xlat78 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat78;
  u_xlat78 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat78;
  u_xlat78 = sqrt(x_319);
  let x_321 : f32 = u_xlat78;
  u_xlat78 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb53.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb53.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb53.x;
  u_xlat53.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb53.y;
  u_xlat53.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat53.y;
  let x_367 : f32 = u_xlat53.x;
  u_xlat53.x = (x_365 * x_367);
  let x_370 : vec4<f32> = vs_INTERP4;
  let x_374 : vec3<f32> = vs_INTERP8;
  let x_376 : vec3<f32> = (vec3<f32>(x_370.y, x_370.z, x_370.x) * vec3<f32>(x_374.z, x_374.x, x_374.y));
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec3<f32> = vs_INTERP8;
  let x_381 : vec4<f32> = vs_INTERP4;
  let x_384 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = ((vec3<f32>(x_379.y, x_379.z, x_379.x) * vec3<f32>(x_381.z, x_381.x, x_381.y)) + -(vec3<f32>(x_384.x, x_384.y, x_384.z)));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec2<f32> = u_xlat53;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat27 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat27;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat78;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat78 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat78;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb78 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat79 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat79;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_466 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat4.x = x_466;
  let x_470 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat4.y = x_470;
  let x_474 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat4.z = x_474;
  let x_476 : bool = u_xlatb78;
  if (x_476) {
    let x_481 : vec4<f32> = u_xlat3;
    x_478 = vec3<f32>(x_481.x, x_481.y, x_481.z);
  } else {
    let x_484 : vec4<f32> = u_xlat4;
    x_478 = vec3<f32>(x_484.x, x_484.y, x_484.z);
  }
  let x_486 : vec3<f32> = x_478;
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec3<f32> = vs_INTERP7;
  let x_500 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres0;
  let x_503 : vec3<f32> = (x_489 + -(vec3<f32>(x_500.x, x_500.y, x_500.z)));
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_507 : vec3<f32> = vs_INTERP7;
  let x_509 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres1;
  let x_512 : vec3<f32> = (x_507 + -(vec3<f32>(x_509.x, x_509.y, x_509.z)));
  let x_513 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : vec3<f32> = vs_INTERP7;
  let x_518 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_516 + -(vec3<f32>(x_518.x, x_518.y, x_518.z)));
  let x_523 : vec3<f32> = vs_INTERP7;
  let x_525 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres3;
  let x_528 : vec3<f32> = (x_523 + -(vec3<f32>(x_525.x, x_525.y, x_525.z)));
  let x_529 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
  let x_531 : vec4<f32> = u_xlat4;
  let x_533 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_531.x, x_531.y, x_531.z), vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_537 : vec4<f32> = u_xlat5;
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_537.x, x_537.y, x_537.z), vec3<f32>(x_539.x, x_539.y, x_539.z));
  let x_543 : vec3<f32> = u_xlat6;
  let x_544 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_543, x_544);
  let x_547 : vec4<f32> = u_xlat7;
  let x_549 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_547.x, x_547.y, x_547.z), vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_556 : vec4<f32> = u_xlat4;
  let x_559 : vec4<f32> = x_497.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_556 < x_559);
  let x_562 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_562);
  let x_566 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_566);
  let x_570 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_570);
  let x_574 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_574);
  let x_578 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_578);
  let x_583 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_583);
  let x_587 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_587);
  let x_590 : vec4<f32> = u_xlat4;
  let x_592 : vec4<f32> = u_xlat5;
  let x_594 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) + vec3<f32>(x_592.y, x_592.z, x_592.w));
  let x_595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat4;
  let x_600 : vec3<f32> = max(vec3<f32>(x_597.x, x_597.y, x_597.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_601 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_601.x, x_600.x, x_600.y, x_600.z);
  let x_603 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_603, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_608 : f32 = u_xlat78;
  u_xlat78 = (-(x_608) + 4.0f);
  let x_613 : f32 = u_xlat78;
  u_xlatu78 = u32(x_613);
  let x_617 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_617) << bitcast<u32>(2i));
  let x_620 : vec3<f32> = vs_INTERP7;
  let x_622 : i32 = u_xlati78;
  let x_625 : i32 = u_xlati78;
  let x_629 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_622 + 1i) / 4i)][((x_625 + 1i) % 4i)];
  let x_631 : vec3<f32> = (vec3<f32>(x_620.y, x_620.y, x_620.y) * vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_632 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
  let x_634 : i32 = u_xlati78;
  let x_636 : i32 = u_xlati78;
  let x_639 : vec4<f32> = x_497.x_MainLightWorldToShadow[(x_634 / 4i)][(x_636 % 4i)];
  let x_641 : vec3<f32> = vs_INTERP7;
  let x_644 : vec4<f32> = u_xlat4;
  let x_646 : vec3<f32> = ((vec3<f32>(x_639.x, x_639.y, x_639.z) * vec3<f32>(x_641.x, x_641.x, x_641.x)) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_647 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : i32 = u_xlati78;
  let x_652 : i32 = u_xlati78;
  let x_656 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_649 + 2i) / 4i)][((x_652 + 2i) % 4i)];
  let x_658 : vec3<f32> = vs_INTERP7;
  let x_661 : vec4<f32> = u_xlat4;
  let x_663 : vec3<f32> = ((vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(x_658.z, x_658.z, x_658.z)) + vec3<f32>(x_661.x, x_661.y, x_661.z));
  let x_664 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_663.x, x_663.y, x_663.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat4;
  let x_668 : i32 = u_xlati78;
  let x_671 : i32 = u_xlati78;
  let x_675 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_668 + 3i) / 4i)][((x_671 + 3i) % 4i)];
  let x_677 : vec3<f32> = (vec3<f32>(x_666.x, x_666.y, x_666.z) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_681 : f32 = vs_INTERP7.y;
  let x_683 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat78 = (x_681 * x_683);
  let x_686 : f32 = x_29.unity_MatrixV[0i].z;
  let x_688 : f32 = vs_INTERP7.x;
  let x_690 : f32 = u_xlat78;
  u_xlat78 = ((x_686 * x_688) + x_690);
  let x_693 : f32 = x_29.unity_MatrixV[2i].z;
  let x_695 : f32 = vs_INTERP7.z;
  let x_697 : f32 = u_xlat78;
  u_xlat78 = ((x_693 * x_695) + x_697);
  let x_699 : f32 = u_xlat78;
  let x_701 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat78 = (x_699 + x_701);
  let x_703 : f32 = u_xlat78;
  let x_706 : f32 = x_29.x_ProjectionParams.y;
  u_xlat78 = (-(x_703) + -(x_706));
  let x_709 : f32 = u_xlat78;
  u_xlat78 = max(x_709, 0.0f);
  let x_711 : f32 = u_xlat78;
  let x_714 : f32 = x_29.unity_FogParams.x;
  u_xlat78 = (x_711 * x_714);
  let x_723 : vec2<f32> = vs_INTERP0;
  let x_725 : f32 = x_29.x_GlobalMipBias.x;
  let x_726 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_723, x_725);
  u_xlat5 = x_726;
  let x_731 : vec2<f32> = vs_INTERP0;
  let x_733 : f32 = x_29.x_GlobalMipBias.x;
  let x_734 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_731, x_733);
  u_xlat6 = vec3<f32>(x_734.x, x_734.y, x_734.z);
  let x_736 : vec4<f32> = u_xlat5;
  let x_740 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_741 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat1;
  let x_745 : vec4<f32> = u_xlat5;
  u_xlat79 = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : f32 = u_xlat79;
  u_xlat79 = (x_748 + 0.5f);
  let x_751 : f32 = u_xlat79;
  let x_753 : vec3<f32> = u_xlat6;
  let x_754 : vec3<f32> = (vec3<f32>(x_751, x_751, x_751) * x_753);
  let x_755 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_758 : f32 = u_xlat5.w;
  u_xlat79 = max(x_758, 0.00009999999747378752f);
  let x_761 : vec4<f32> = u_xlat5;
  let x_763 : f32 = u_xlat79;
  let x_765 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) / vec3<f32>(x_763, x_763, x_763));
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat2;
  let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
  let x_770 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat2;
  let x_776 : vec2<f32> = clamp(vec2<f32>(x_772.x, x_772.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_777 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
  let x_780 : f32 = u_xlat2.x;
  u_xlat79 = ((-(x_780) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_786 : f32 = u_xlat79;
  let x_789 : f32 = u_xlat2.y;
  u_xlat80 = (-(x_786) + x_789);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : f32 = u_xlat79;
  u_xlat6 = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_793, x_793, x_793));
  let x_796 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.x, x_803.x) * vec3<f32>(x_805.x, x_805.y, x_805.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_814 : f32 = u_xlat2.y;
  u_xlat79 = (-(x_814) + 1.0f);
  let x_817 : f32 = u_xlat79;
  let x_818 : f32 = u_xlat79;
  u_xlat2.x = (x_817 * x_818);
  let x_822 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_822, 0.0078125f);
  let x_828 : f32 = u_xlat2.x;
  let x_830 : f32 = u_xlat2.x;
  u_xlat28 = (x_828 * x_830);
  let x_832 : f32 = u_xlat80;
  u_xlat80 = (x_832 + 1.0f);
  let x_834 : f32 = u_xlat80;
  u_xlat80 = min(x_834, 1.0f);
  let x_838 : f32 = u_xlat2.x;
  u_xlat81 = ((x_838 * 4.0f) + 2.0f);
  let x_843 : f32 = u_xlat2.z;
  u_xlat54 = min(x_843, 1.0f);
  let x_848 : f32 = x_497.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_848);
  let x_850 : bool = u_xlatb82;
  if (x_850) {
    let x_854 : f32 = x_497.x_MainLightShadowParams.y;
    u_xlatb82 = (x_854 == 1.0f);
    let x_856 : bool = u_xlatb82;
    if (x_856) {
      let x_859 : vec4<f32> = u_xlat4;
      let x_862 : vec4<f32> = x_497.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_859.x, x_859.y, x_859.x, x_859.y) + x_862);
      let x_865 : vec4<f32> = u_xlat7;
      let x_866 : vec2<f32> = vec2<f32>(x_865.x, x_865.y);
      let x_868 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_866.x, x_866.y, x_868);
      let x_881 : vec3<f32> = txVec0;
      let x_883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_881.xy, x_881.z);
      u_xlat8.x = x_883;
      let x_886 : vec4<f32> = u_xlat7;
      let x_887 : vec2<f32> = vec2<f32>(x_886.z, x_886.w);
      let x_889 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_887.x, x_887.y, x_889);
      let x_896 : vec3<f32> = txVec1;
      let x_898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_896.xy, x_896.z);
      u_xlat8.y = x_898;
      let x_900 : vec4<f32> = u_xlat4;
      let x_903 : vec4<f32> = x_497.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y) + x_903);
      let x_906 : vec4<f32> = u_xlat7;
      let x_907 : vec2<f32> = vec2<f32>(x_906.x, x_906.y);
      let x_909 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_907.x, x_907.y, x_909);
      let x_916 : vec3<f32> = txVec2;
      let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_916.xy, x_916.z);
      u_xlat8.z = x_918;
      let x_921 : vec4<f32> = u_xlat7;
      let x_922 : vec2<f32> = vec2<f32>(x_921.z, x_921.w);
      let x_924 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_922.x, x_922.y, x_924);
      let x_931 : vec3<f32> = txVec3;
      let x_933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_931.xy, x_931.z);
      u_xlat8.w = x_933;
      let x_936 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_936, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_943 : f32 = x_497.x_MainLightShadowParams.y;
      u_xlatb83 = (x_943 == 2.0f);
      let x_945 : bool = u_xlatb83;
      if (x_945) {
        let x_948 : vec4<f32> = u_xlat4;
        let x_951 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_955 : vec2<f32> = ((vec2<f32>(x_948.x, x_948.y) * vec2<f32>(x_951.z, x_951.w)) + vec2<f32>(0.5f, 0.5f));
        let x_956 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_955.x, x_955.y, x_956.z, x_956.w);
        let x_958 : vec4<f32> = u_xlat7;
        let x_960 : vec2<f32> = floor(vec2<f32>(x_958.x, x_958.y));
        let x_961 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
        let x_964 : vec4<f32> = u_xlat4;
        let x_967 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_970 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_967.z, x_967.w)) + -(vec2<f32>(x_970.x, x_970.y)));
        let x_974 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_974.x, x_974.x, x_974.y, x_974.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_979 : vec4<f32> = u_xlat8;
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_979.x, x_979.x, x_979.z, x_979.z) * vec4<f32>(x_981.x, x_981.x, x_981.z, x_981.z));
        let x_984 : vec4<f32> = u_xlat9;
        let x_988 : vec2<f32> = (vec2<f32>(x_984.y, x_984.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_989 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_988.x, x_989.y, x_988.y, x_989.w);
        let x_991 : vec4<f32> = u_xlat9;
        let x_994 : vec2<f32> = u_xlat59;
        let x_996 : vec2<f32> = ((vec2<f32>(x_991.x, x_991.z) * vec2<f32>(0.5f, 0.5f)) + -(x_994));
        let x_997 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_996.x, x_996.y, x_997.z, x_997.w);
        let x_1000 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1000) + vec2<f32>(1.0f, 1.0f));
        let x_1005 : vec2<f32> = u_xlat59;
        let x_1007 : vec2<f32> = min(x_1005, vec2<f32>(0.0f, 0.0f));
        let x_1008 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec4<f32> = u_xlat10;
        let x_1013 : vec4<f32> = u_xlat10;
        let x_1016 : vec2<f32> = u_xlat61;
        let x_1017 : vec2<f32> = ((-(vec2<f32>(x_1010.x, x_1010.y)) * vec2<f32>(x_1013.x, x_1013.y)) + x_1016);
        let x_1018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        let x_1020 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1020, vec2<f32>(0.0f, 0.0f));
        let x_1022 : vec2<f32> = u_xlat59;
        let x_1024 : vec2<f32> = u_xlat59;
        let x_1026 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1022) * x_1024) + vec2<f32>(x_1026.y, x_1026.w));
        let x_1029 : vec4<f32> = u_xlat10;
        let x_1031 : vec2<f32> = (vec2<f32>(x_1029.x, x_1029.y) + vec2<f32>(1.0f, 1.0f));
        let x_1032 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1031.x, x_1031.y, x_1032.z, x_1032.w);
        let x_1034 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1034 + vec2<f32>(1.0f, 1.0f));
        let x_1037 : vec4<f32> = u_xlat9;
        let x_1041 : vec2<f32> = (vec2<f32>(x_1037.x, x_1037.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1042 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec2<f32> = u_xlat61;
        let x_1045 : vec2<f32> = (x_1044 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1046 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : vec4<f32> = u_xlat10;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1051 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1050.x, x_1050.y, x_1051.z, x_1051.w);
        let x_1054 : vec2<f32> = u_xlat59;
        let x_1055 : vec2<f32> = (x_1054 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1056 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1058.y, x_1058.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1062 : f32 = u_xlat10.x;
        u_xlat11.z = x_1062;
        let x_1065 : f32 = u_xlat59.x;
        u_xlat11.w = x_1065;
        let x_1068 : f32 = u_xlat12.x;
        u_xlat9.z = x_1068;
        let x_1071 : f32 = u_xlat8.x;
        u_xlat9.w = x_1071;
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1076 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1074.z, x_1074.w, x_1074.x, x_1074.z) + vec4<f32>(x_1076.z, x_1076.w, x_1076.x, x_1076.z));
        let x_1080 : f32 = u_xlat11.y;
        u_xlat10.z = x_1080;
        let x_1083 : f32 = u_xlat59.y;
        u_xlat10.w = x_1083;
        let x_1086 : f32 = u_xlat9.y;
        u_xlat12.z = x_1086;
        let x_1089 : f32 = u_xlat8.z;
        u_xlat12.w = x_1089;
        let x_1091 : vec4<f32> = u_xlat10;
        let x_1093 : vec4<f32> = u_xlat12;
        let x_1095 : vec3<f32> = (vec3<f32>(x_1091.z, x_1091.y, x_1091.w) + vec3<f32>(x_1093.z, x_1093.y, x_1093.w));
        let x_1096 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
        let x_1098 : vec4<f32> = u_xlat9;
        let x_1100 : vec4<f32> = u_xlat13;
        let x_1102 : vec3<f32> = (vec3<f32>(x_1098.x, x_1098.z, x_1098.w) / vec3<f32>(x_1100.z, x_1100.w, x_1100.y));
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
        let x_1105 : vec4<f32> = u_xlat9;
        let x_1110 : vec3<f32> = (vec3<f32>(x_1105.x, x_1105.y, x_1105.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1111 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
        let x_1113 : vec4<f32> = u_xlat12;
        let x_1115 : vec4<f32> = u_xlat8;
        let x_1117 : vec3<f32> = (vec3<f32>(x_1113.z, x_1113.y, x_1113.w) / vec3<f32>(x_1115.x, x_1115.y, x_1115.z));
        let x_1118 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
        let x_1120 : vec4<f32> = u_xlat10;
        let x_1122 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1123 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1128 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1130 : vec3<f32> = (vec3<f32>(x_1125.y, x_1125.x, x_1125.z) * vec3<f32>(x_1128.x, x_1128.x, x_1128.x));
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
        let x_1133 : vec4<f32> = u_xlat10;
        let x_1136 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1138 : vec3<f32> = (vec3<f32>(x_1133.x, x_1133.y, x_1133.z) * vec3<f32>(x_1136.y, x_1136.y, x_1136.y));
        let x_1139 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
        let x_1142 : f32 = u_xlat10.x;
        u_xlat9.w = x_1142;
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1147 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y) * vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y)) + vec4<f32>(x_1150.y, x_1150.w, x_1150.x, x_1150.w));
        let x_1153 : vec4<f32> = u_xlat7;
        let x_1156 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1159.z, x_1159.w));
        let x_1163 : f32 = u_xlat9.y;
        u_xlat10.w = x_1163;
        let x_1165 : vec4<f32> = u_xlat10;
        let x_1166 : vec2<f32> = vec2<f32>(x_1165.y, x_1165.z);
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1167.x, x_1166.x, x_1167.z, x_1166.y);
        let x_1169 : vec4<f32> = u_xlat7;
        let x_1172 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1169.x, x_1169.y, x_1169.x, x_1169.y) * vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y)) + vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1181 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1178.x, x_1178.y, x_1178.x, x_1178.y) * vec4<f32>(x_1181.x, x_1181.y, x_1181.x, x_1181.y)) + vec4<f32>(x_1184.w, x_1184.y, x_1184.w, x_1184.z));
        let x_1187 : vec4<f32> = u_xlat7;
        let x_1190 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1187.x, x_1187.y, x_1187.x, x_1187.y) * vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y)) + vec4<f32>(x_1193.x, x_1193.w, x_1193.z, x_1193.w));
        let x_1197 : vec4<f32> = u_xlat8;
        let x_1199 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1197.x, x_1197.x, x_1197.x, x_1197.y) * vec4<f32>(x_1199.z, x_1199.w, x_1199.y, x_1199.z));
        let x_1203 : vec4<f32> = u_xlat8;
        let x_1205 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1203.y, x_1203.y, x_1203.z, x_1203.z) * x_1205);
        let x_1209 : f32 = u_xlat8.z;
        let x_1211 : f32 = u_xlat13.y;
        u_xlat83 = (x_1209 * x_1211);
        let x_1214 : vec4<f32> = u_xlat11;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1225 : vec3<f32> = txVec4;
        let x_1227 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1225.xy, x_1225.z);
        u_xlat84 = x_1227;
        let x_1229 : vec4<f32> = u_xlat11;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.z, x_1229.w);
        let x_1232 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec5;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1239.xy, x_1239.z);
        u_xlat7.x = x_1241;
        let x_1244 : f32 = u_xlat7.x;
        let x_1246 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1244 * x_1246);
        let x_1250 : f32 = u_xlat14.x;
        let x_1251 : f32 = u_xlat84;
        let x_1254 : f32 = u_xlat7.x;
        u_xlat84 = ((x_1250 * x_1251) + x_1254);
        let x_1257 : vec2<f32> = u_xlat59;
        let x_1259 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1257.x, x_1257.y, x_1259);
        let x_1266 : vec3<f32> = txVec6;
        let x_1268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1266.xy, x_1266.z);
        u_xlat7.x = x_1268;
        let x_1271 : f32 = u_xlat14.z;
        let x_1273 : f32 = u_xlat7.x;
        let x_1275 : f32 = u_xlat84;
        u_xlat84 = ((x_1271 * x_1273) + x_1275);
        let x_1278 : vec4<f32> = u_xlat10;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.x, x_1278.y);
        let x_1281 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec7;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1288.xy, x_1288.z);
        u_xlat7.x = x_1290;
        let x_1293 : f32 = u_xlat14.w;
        let x_1295 : f32 = u_xlat7.x;
        let x_1297 : f32 = u_xlat84;
        u_xlat84 = ((x_1293 * x_1295) + x_1297);
        let x_1300 : vec4<f32> = u_xlat12;
        let x_1301 : vec2<f32> = vec2<f32>(x_1300.x, x_1300.y);
        let x_1303 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1301.x, x_1301.y, x_1303);
        let x_1310 : vec3<f32> = txVec8;
        let x_1312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1310.xy, x_1310.z);
        u_xlat7.x = x_1312;
        let x_1315 : f32 = u_xlat15.x;
        let x_1317 : f32 = u_xlat7.x;
        let x_1319 : f32 = u_xlat84;
        u_xlat84 = ((x_1315 * x_1317) + x_1319);
        let x_1322 : vec4<f32> = u_xlat12;
        let x_1323 : vec2<f32> = vec2<f32>(x_1322.z, x_1322.w);
        let x_1325 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1323.x, x_1323.y, x_1325);
        let x_1332 : vec3<f32> = txVec9;
        let x_1334 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1332.xy, x_1332.z);
        u_xlat7.x = x_1334;
        let x_1337 : f32 = u_xlat15.y;
        let x_1339 : f32 = u_xlat7.x;
        let x_1341 : f32 = u_xlat84;
        u_xlat84 = ((x_1337 * x_1339) + x_1341);
        let x_1344 : vec4<f32> = u_xlat10;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.z, x_1344.w);
        let x_1347 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec10;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat7.x = x_1356;
        let x_1359 : f32 = u_xlat15.z;
        let x_1361 : f32 = u_xlat7.x;
        let x_1363 : f32 = u_xlat84;
        u_xlat84 = ((x_1359 * x_1361) + x_1363);
        let x_1366 : vec4<f32> = u_xlat9;
        let x_1367 : vec2<f32> = vec2<f32>(x_1366.x, x_1366.y);
        let x_1369 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1367.x, x_1367.y, x_1369);
        let x_1376 : vec3<f32> = txVec11;
        let x_1378 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1376.xy, x_1376.z);
        u_xlat7.x = x_1378;
        let x_1381 : f32 = u_xlat15.w;
        let x_1383 : f32 = u_xlat7.x;
        let x_1385 : f32 = u_xlat84;
        u_xlat84 = ((x_1381 * x_1383) + x_1385);
        let x_1388 : vec4<f32> = u_xlat9;
        let x_1389 : vec2<f32> = vec2<f32>(x_1388.z, x_1388.w);
        let x_1391 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
        let x_1398 : vec3<f32> = txVec12;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1398.xy, x_1398.z);
        u_xlat7.x = x_1400;
        let x_1402 : f32 = u_xlat83;
        let x_1404 : f32 = u_xlat7.x;
        let x_1406 : f32 = u_xlat84;
        u_xlat82 = ((x_1402 * x_1404) + x_1406);
      } else {
        let x_1409 : vec4<f32> = u_xlat4;
        let x_1412 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1415 : vec2<f32> = ((vec2<f32>(x_1409.x, x_1409.y) * vec2<f32>(x_1412.z, x_1412.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1416 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1415.x, x_1415.y, x_1416.z, x_1416.w);
        let x_1418 : vec4<f32> = u_xlat7;
        let x_1420 : vec2<f32> = floor(vec2<f32>(x_1418.x, x_1418.y));
        let x_1421 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1420.x, x_1420.y, x_1421.z, x_1421.w);
        let x_1423 : vec4<f32> = u_xlat4;
        let x_1426 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1429 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(x_1426.z, x_1426.w)) + -(vec2<f32>(x_1429.x, x_1429.y)));
        let x_1433 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1433.x, x_1433.x, x_1433.y, x_1433.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1436 : vec4<f32> = u_xlat8;
        let x_1438 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1436.x, x_1436.x, x_1436.z, x_1436.z) * vec4<f32>(x_1438.x, x_1438.x, x_1438.z, x_1438.z));
        let x_1441 : vec4<f32> = u_xlat9;
        let x_1445 : vec2<f32> = (vec2<f32>(x_1441.y, x_1441.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1446 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1446.x, x_1445.x, x_1446.z, x_1445.y);
        let x_1448 : vec4<f32> = u_xlat9;
        let x_1451 : vec2<f32> = u_xlat59;
        let x_1453 : vec2<f32> = ((vec2<f32>(x_1448.x, x_1448.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1451));
        let x_1454 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1453.x, x_1454.y, x_1453.y, x_1454.w);
        let x_1456 : vec2<f32> = u_xlat59;
        let x_1458 : vec2<f32> = (-(x_1456) + vec2<f32>(1.0f, 1.0f));
        let x_1459 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1458.x, x_1458.y, x_1459.z, x_1459.w);
        let x_1461 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1461, vec2<f32>(0.0f, 0.0f));
        let x_1463 : vec2<f32> = u_xlat61;
        let x_1465 : vec2<f32> = u_xlat61;
        let x_1467 : vec4<f32> = u_xlat9;
        let x_1469 : vec2<f32> = ((-(x_1463) * x_1465) + vec2<f32>(x_1467.x, x_1467.y));
        let x_1470 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1469.x, x_1469.y, x_1470.z, x_1470.w);
        let x_1472 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1472, vec2<f32>(0.0f, 0.0f));
        let x_1475 : vec2<f32> = u_xlat61;
        let x_1477 : vec2<f32> = u_xlat61;
        let x_1479 : vec4<f32> = u_xlat8;
        let x_1481 : vec2<f32> = ((-(x_1475) * x_1477) + vec2<f32>(x_1479.y, x_1479.w));
        let x_1482 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1481.x, x_1482.y, x_1481.y);
        let x_1484 : vec4<f32> = u_xlat9;
        let x_1486 : vec2<f32> = (vec2<f32>(x_1484.x, x_1484.y) + vec2<f32>(2.0f, 2.0f));
        let x_1487 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1486.x, x_1486.y, x_1487.z, x_1487.w);
        let x_1489 : vec3<f32> = u_xlat34;
        let x_1491 : vec2<f32> = (vec2<f32>(x_1489.x, x_1489.z) + vec2<f32>(2.0f, 2.0f));
        let x_1492 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1492.x, x_1491.x, x_1492.z, x_1491.y);
        let x_1495 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1495 * 0.08163200318813323975f);
        let x_1499 : vec4<f32> = u_xlat8;
        let x_1502 : vec3<f32> = (vec3<f32>(x_1499.z, x_1499.x, x_1499.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1503 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1502.x, x_1502.y, x_1502.z, x_1503.w);
        let x_1505 : vec4<f32> = u_xlat9;
        let x_1508 : vec2<f32> = (vec2<f32>(x_1505.x, x_1505.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1509 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1508.x, x_1508.y, x_1509.z, x_1509.w);
        let x_1512 : f32 = u_xlat12.y;
        u_xlat11.x = x_1512;
        let x_1514 : vec2<f32> = u_xlat59;
        let x_1521 : vec2<f32> = ((vec2<f32>(x_1514.x, x_1514.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1522 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1522.x, x_1521.x, x_1522.z, x_1521.y);
        let x_1524 : vec2<f32> = u_xlat59;
        let x_1528 : vec2<f32> = ((vec2<f32>(x_1524.x, x_1524.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1529 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1528.x, x_1529.y, x_1528.y, x_1529.w);
        let x_1532 : f32 = u_xlat8.x;
        u_xlat9.y = x_1532;
        let x_1535 : f32 = u_xlat10.y;
        u_xlat9.w = x_1535;
        let x_1537 : vec4<f32> = u_xlat9;
        let x_1538 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1537 + x_1538);
        let x_1540 : vec2<f32> = u_xlat59;
        let x_1543 : vec2<f32> = ((vec2<f32>(x_1540.y, x_1540.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1544 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1544.x, x_1543.x, x_1544.z, x_1543.y);
        let x_1546 : vec2<f32> = u_xlat59;
        let x_1549 : vec2<f32> = ((vec2<f32>(x_1546.y, x_1546.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1550 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1549.x, x_1550.y, x_1549.y, x_1550.w);
        let x_1553 : f32 = u_xlat8.y;
        u_xlat10.y = x_1553;
        let x_1555 : vec4<f32> = u_xlat10;
        let x_1556 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1555 + x_1556);
        let x_1558 : vec4<f32> = u_xlat9;
        let x_1559 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1558 / x_1559);
        let x_1561 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1561 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1567 : vec4<f32> = u_xlat10;
        let x_1568 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1567 / x_1568);
        let x_1570 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1570 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1572 : vec4<f32> = u_xlat9;
        let x_1575 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1572.w, x_1572.x, x_1572.y, x_1572.z) * vec4<f32>(x_1575.x, x_1575.x, x_1575.x, x_1575.x));
        let x_1578 : vec4<f32> = u_xlat10;
        let x_1581 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1578.x, x_1578.w, x_1578.y, x_1578.z) * vec4<f32>(x_1581.y, x_1581.y, x_1581.y, x_1581.y));
        let x_1584 : vec4<f32> = u_xlat9;
        let x_1585 : vec3<f32> = vec3<f32>(x_1584.y, x_1584.z, x_1584.w);
        let x_1586 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1585.x, x_1586.y, x_1585.y, x_1585.z);
        let x_1589 : f32 = u_xlat10.x;
        u_xlat12.y = x_1589;
        let x_1591 : vec4<f32> = u_xlat7;
        let x_1594 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1597 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1591.x, x_1591.y, x_1591.x, x_1591.y) * vec4<f32>(x_1594.x, x_1594.y, x_1594.x, x_1594.y)) + vec4<f32>(x_1597.x, x_1597.y, x_1597.z, x_1597.y));
        let x_1600 : vec4<f32> = u_xlat7;
        let x_1603 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1606 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1600.x, x_1600.y) * vec2<f32>(x_1603.x, x_1603.y)) + vec2<f32>(x_1606.w, x_1606.y));
        let x_1610 : f32 = u_xlat12.y;
        u_xlat9.y = x_1610;
        let x_1613 : f32 = u_xlat10.z;
        u_xlat12.y = x_1613;
        let x_1615 : vec4<f32> = u_xlat7;
        let x_1618 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1621 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1615.x, x_1615.y, x_1615.x, x_1615.y) * vec4<f32>(x_1618.x, x_1618.y, x_1618.x, x_1618.y)) + vec4<f32>(x_1621.x, x_1621.y, x_1621.z, x_1621.y));
        let x_1624 : vec4<f32> = u_xlat7;
        let x_1627 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1630 : vec4<f32> = u_xlat12;
        let x_1632 : vec2<f32> = ((vec2<f32>(x_1624.x, x_1624.y) * vec2<f32>(x_1627.x, x_1627.y)) + vec2<f32>(x_1630.w, x_1630.y));
        let x_1633 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1632.x, x_1632.y, x_1633.z, x_1633.w);
        let x_1636 : f32 = u_xlat12.y;
        u_xlat9.z = x_1636;
        let x_1639 : vec4<f32> = u_xlat7;
        let x_1642 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1645 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1639.x, x_1639.y, x_1639.x, x_1639.y) * vec4<f32>(x_1642.x, x_1642.y, x_1642.x, x_1642.y)) + vec4<f32>(x_1645.x, x_1645.y, x_1645.x, x_1645.z));
        let x_1649 : f32 = u_xlat10.w;
        u_xlat12.y = x_1649;
        let x_1652 : vec4<f32> = u_xlat7;
        let x_1655 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1658 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1652.x, x_1652.y, x_1652.x, x_1652.y) * vec4<f32>(x_1655.x, x_1655.y, x_1655.x, x_1655.y)) + vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1658.y));
        let x_1662 : vec4<f32> = u_xlat7;
        let x_1665 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1668 : vec4<f32> = u_xlat12;
        let x_1670 : vec2<f32> = ((vec2<f32>(x_1662.x, x_1662.y) * vec2<f32>(x_1665.x, x_1665.y)) + vec2<f32>(x_1668.w, x_1668.y));
        let x_1671 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1670.x, x_1670.y, x_1671.z);
        let x_1674 : f32 = u_xlat12.y;
        u_xlat9.w = x_1674;
        let x_1677 : vec4<f32> = u_xlat7;
        let x_1680 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1683 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1677.x, x_1677.y) * vec2<f32>(x_1680.x, x_1680.y)) + vec2<f32>(x_1683.x, x_1683.w));
        let x_1686 : vec4<f32> = u_xlat12;
        let x_1687 : vec3<f32> = vec3<f32>(x_1686.x, x_1686.z, x_1686.w);
        let x_1688 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1687.x, x_1688.y, x_1687.y, x_1687.z);
        let x_1690 : vec4<f32> = u_xlat7;
        let x_1693 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1696 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1690.x, x_1690.y, x_1690.x, x_1690.y) * vec4<f32>(x_1693.x, x_1693.y, x_1693.x, x_1693.y)) + vec4<f32>(x_1696.x, x_1696.y, x_1696.z, x_1696.y));
        let x_1700 : vec4<f32> = u_xlat7;
        let x_1703 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1706 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1700.x, x_1700.y) * vec2<f32>(x_1703.x, x_1703.y)) + vec2<f32>(x_1706.w, x_1706.y));
        let x_1710 : f32 = u_xlat9.x;
        u_xlat10.x = x_1710;
        let x_1712 : vec4<f32> = u_xlat7;
        let x_1715 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1718 : vec4<f32> = u_xlat10;
        let x_1720 : vec2<f32> = ((vec2<f32>(x_1712.x, x_1712.y) * vec2<f32>(x_1715.x, x_1715.y)) + vec2<f32>(x_1718.x, x_1718.y));
        let x_1721 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1720.x, x_1720.y, x_1721.z, x_1721.w);
        let x_1724 : vec4<f32> = u_xlat8;
        let x_1726 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1724.x, x_1724.x, x_1724.x, x_1724.x) * x_1726);
        let x_1729 : vec4<f32> = u_xlat8;
        let x_1731 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1729.y, x_1729.y, x_1729.y, x_1729.y) * x_1731);
        let x_1734 : vec4<f32> = u_xlat8;
        let x_1736 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1734.z, x_1734.z, x_1734.z, x_1734.z) * x_1736);
        let x_1738 : vec4<f32> = u_xlat8;
        let x_1740 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1738.w, x_1738.w, x_1738.w, x_1738.w) * x_1740);
        let x_1743 : vec4<f32> = u_xlat13;
        let x_1744 : vec2<f32> = vec2<f32>(x_1743.x, x_1743.y);
        let x_1746 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec13;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1753.xy, x_1753.z);
        u_xlat83 = x_1755;
        let x_1757 : vec4<f32> = u_xlat13;
        let x_1758 : vec2<f32> = vec2<f32>(x_1757.z, x_1757.w);
        let x_1760 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1758.x, x_1758.y, x_1760);
        let x_1767 : vec3<f32> = txVec14;
        let x_1769 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1767.xy, x_1767.z);
        u_xlat84 = x_1769;
        let x_1770 : f32 = u_xlat84;
        let x_1772 : f32 = u_xlat18.y;
        u_xlat84 = (x_1770 * x_1772);
        let x_1775 : f32 = u_xlat18.x;
        let x_1776 : f32 = u_xlat83;
        let x_1778 : f32 = u_xlat84;
        u_xlat83 = ((x_1775 * x_1776) + x_1778);
        let x_1781 : vec2<f32> = u_xlat59;
        let x_1783 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1781.x, x_1781.y, x_1783);
        let x_1790 : vec3<f32> = txVec15;
        let x_1792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1790.xy, x_1790.z);
        u_xlat84 = x_1792;
        let x_1794 : f32 = u_xlat18.z;
        let x_1795 : f32 = u_xlat84;
        let x_1797 : f32 = u_xlat83;
        u_xlat83 = ((x_1794 * x_1795) + x_1797);
        let x_1800 : vec4<f32> = u_xlat16;
        let x_1801 : vec2<f32> = vec2<f32>(x_1800.x, x_1800.y);
        let x_1803 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1801.x, x_1801.y, x_1803);
        let x_1810 : vec3<f32> = txVec16;
        let x_1812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1810.xy, x_1810.z);
        u_xlat84 = x_1812;
        let x_1814 : f32 = u_xlat18.w;
        let x_1815 : f32 = u_xlat84;
        let x_1817 : f32 = u_xlat83;
        u_xlat83 = ((x_1814 * x_1815) + x_1817);
        let x_1820 : vec4<f32> = u_xlat14;
        let x_1821 : vec2<f32> = vec2<f32>(x_1820.x, x_1820.y);
        let x_1823 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1821.x, x_1821.y, x_1823);
        let x_1830 : vec3<f32> = txVec17;
        let x_1832 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1830.xy, x_1830.z);
        u_xlat84 = x_1832;
        let x_1834 : f32 = u_xlat19.x;
        let x_1835 : f32 = u_xlat84;
        let x_1837 : f32 = u_xlat83;
        u_xlat83 = ((x_1834 * x_1835) + x_1837);
        let x_1840 : vec4<f32> = u_xlat14;
        let x_1841 : vec2<f32> = vec2<f32>(x_1840.z, x_1840.w);
        let x_1843 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1841.x, x_1841.y, x_1843);
        let x_1850 : vec3<f32> = txVec18;
        let x_1852 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1850.xy, x_1850.z);
        u_xlat84 = x_1852;
        let x_1854 : f32 = u_xlat19.y;
        let x_1855 : f32 = u_xlat84;
        let x_1857 : f32 = u_xlat83;
        u_xlat83 = ((x_1854 * x_1855) + x_1857);
        let x_1860 : vec4<f32> = u_xlat15;
        let x_1861 : vec2<f32> = vec2<f32>(x_1860.x, x_1860.y);
        let x_1863 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1861.x, x_1861.y, x_1863);
        let x_1870 : vec3<f32> = txVec19;
        let x_1872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1870.xy, x_1870.z);
        u_xlat84 = x_1872;
        let x_1874 : f32 = u_xlat19.z;
        let x_1875 : f32 = u_xlat84;
        let x_1877 : f32 = u_xlat83;
        u_xlat83 = ((x_1874 * x_1875) + x_1877);
        let x_1880 : vec4<f32> = u_xlat16;
        let x_1881 : vec2<f32> = vec2<f32>(x_1880.z, x_1880.w);
        let x_1883 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1881.x, x_1881.y, x_1883);
        let x_1890 : vec3<f32> = txVec20;
        let x_1892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1890.xy, x_1890.z);
        u_xlat84 = x_1892;
        let x_1894 : f32 = u_xlat19.w;
        let x_1895 : f32 = u_xlat84;
        let x_1897 : f32 = u_xlat83;
        u_xlat83 = ((x_1894 * x_1895) + x_1897);
        let x_1900 : vec4<f32> = u_xlat17;
        let x_1901 : vec2<f32> = vec2<f32>(x_1900.x, x_1900.y);
        let x_1903 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1901.x, x_1901.y, x_1903);
        let x_1910 : vec3<f32> = txVec21;
        let x_1912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1910.xy, x_1910.z);
        u_xlat84 = x_1912;
        let x_1914 : f32 = u_xlat20.x;
        let x_1915 : f32 = u_xlat84;
        let x_1917 : f32 = u_xlat83;
        u_xlat83 = ((x_1914 * x_1915) + x_1917);
        let x_1920 : vec4<f32> = u_xlat17;
        let x_1921 : vec2<f32> = vec2<f32>(x_1920.z, x_1920.w);
        let x_1923 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1921.x, x_1921.y, x_1923);
        let x_1930 : vec3<f32> = txVec22;
        let x_1932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1930.xy, x_1930.z);
        u_xlat84 = x_1932;
        let x_1934 : f32 = u_xlat20.y;
        let x_1935 : f32 = u_xlat84;
        let x_1937 : f32 = u_xlat83;
        u_xlat83 = ((x_1934 * x_1935) + x_1937);
        let x_1940 : vec3<f32> = u_xlat35;
        let x_1941 : vec2<f32> = vec2<f32>(x_1940.x, x_1940.y);
        let x_1943 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1941.x, x_1941.y, x_1943);
        let x_1950 : vec3<f32> = txVec23;
        let x_1952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1950.xy, x_1950.z);
        u_xlat84 = x_1952;
        let x_1954 : f32 = u_xlat20.z;
        let x_1955 : f32 = u_xlat84;
        let x_1957 : f32 = u_xlat83;
        u_xlat83 = ((x_1954 * x_1955) + x_1957);
        let x_1960 : vec2<f32> = u_xlat67;
        let x_1962 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1960.x, x_1960.y, x_1962);
        let x_1969 : vec3<f32> = txVec24;
        let x_1971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1969.xy, x_1969.z);
        u_xlat84 = x_1971;
        let x_1973 : f32 = u_xlat20.w;
        let x_1974 : f32 = u_xlat84;
        let x_1976 : f32 = u_xlat83;
        u_xlat83 = ((x_1973 * x_1974) + x_1976);
        let x_1979 : vec4<f32> = u_xlat12;
        let x_1980 : vec2<f32> = vec2<f32>(x_1979.x, x_1979.y);
        let x_1982 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1980.x, x_1980.y, x_1982);
        let x_1989 : vec3<f32> = txVec25;
        let x_1991 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1989.xy, x_1989.z);
        u_xlat84 = x_1991;
        let x_1993 : f32 = u_xlat8.x;
        let x_1994 : f32 = u_xlat84;
        let x_1996 : f32 = u_xlat83;
        u_xlat83 = ((x_1993 * x_1994) + x_1996);
        let x_1999 : vec4<f32> = u_xlat12;
        let x_2000 : vec2<f32> = vec2<f32>(x_1999.z, x_1999.w);
        let x_2002 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2000.x, x_2000.y, x_2002);
        let x_2009 : vec3<f32> = txVec26;
        let x_2011 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2009.xy, x_2009.z);
        u_xlat84 = x_2011;
        let x_2013 : f32 = u_xlat8.y;
        let x_2014 : f32 = u_xlat84;
        let x_2016 : f32 = u_xlat83;
        u_xlat83 = ((x_2013 * x_2014) + x_2016);
        let x_2019 : vec2<f32> = u_xlat62;
        let x_2021 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2019.x, x_2019.y, x_2021);
        let x_2028 : vec3<f32> = txVec27;
        let x_2030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2028.xy, x_2028.z);
        u_xlat84 = x_2030;
        let x_2032 : f32 = u_xlat8.z;
        let x_2033 : f32 = u_xlat84;
        let x_2035 : f32 = u_xlat83;
        u_xlat83 = ((x_2032 * x_2033) + x_2035);
        let x_2038 : vec4<f32> = u_xlat7;
        let x_2039 : vec2<f32> = vec2<f32>(x_2038.x, x_2038.y);
        let x_2041 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2039.x, x_2039.y, x_2041);
        let x_2048 : vec3<f32> = txVec28;
        let x_2050 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2048.xy, x_2048.z);
        u_xlat84 = x_2050;
        let x_2052 : f32 = u_xlat8.w;
        let x_2053 : f32 = u_xlat84;
        let x_2055 : f32 = u_xlat83;
        u_xlat82 = ((x_2052 * x_2053) + x_2055);
      }
    }
  } else {
    let x_2059 : vec4<f32> = u_xlat4;
    let x_2060 : vec2<f32> = vec2<f32>(x_2059.x, x_2059.y);
    let x_2062 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2060.x, x_2060.y, x_2062);
    let x_2069 : vec3<f32> = txVec29;
    let x_2071 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2069.xy, x_2069.z);
    u_xlat82 = x_2071;
  }
  let x_2073 : f32 = x_497.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2073) + 1.0f);
  let x_2077 : f32 = u_xlat82;
  let x_2079 : f32 = x_497.x_MainLightShadowParams.x;
  let x_2082 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2077 * x_2079) + x_2082);
  let x_2087 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_2087);
  let x_2091 : f32 = u_xlat4.z;
  u_xlatb56.x = (x_2091 >= 1.0f);
  let x_2095 : bool = u_xlatb56.x;
  let x_2096 : bool = u_xlatb30;
  u_xlatb30 = (x_2095 | x_2096);
  let x_2098 : bool = u_xlatb30;
  if (x_2098) {
    x_2099 = 1.0f;
  } else {
    let x_2104 : f32 = u_xlat4.x;
    x_2099 = x_2104;
  }
  let x_2105 : f32 = x_2099;
  u_xlat4.x = x_2105;
  let x_2108 : vec3<f32> = vs_INTERP7;
  let x_2110 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat30 = (x_2108 + -(x_2110));
  let x_2113 : vec3<f32> = u_xlat30;
  let x_2114 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_2113, x_2114);
  let x_2119 : f32 = u_xlat30.x;
  let x_2121 : f32 = x_497.x_MainLightShadowParams.z;
  let x_2124 : f32 = x_497.x_MainLightShadowParams.w;
  u_xlat56.x = ((x_2119 * x_2121) + x_2124);
  let x_2128 : f32 = u_xlat56.x;
  u_xlat56.x = clamp(x_2128, 0.0f, 1.0f);
  let x_2132 : f32 = u_xlat4.x;
  u_xlat82 = (-(x_2132) + 1.0f);
  let x_2136 : f32 = u_xlat56.x;
  let x_2137 : f32 = u_xlat82;
  let x_2140 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2136 * x_2137) + x_2140);
  let x_2150 : f32 = x_2148.x_MainLightCookieTextureFormat;
  u_xlatb56.x = !((x_2150 == -1.0f));
  let x_2154 : bool = u_xlatb56.x;
  if (x_2154) {
    let x_2157 : vec3<f32> = vs_INTERP7;
    let x_2160 : vec4<f32> = x_2148.x_MainLightWorldToLight[1i];
    u_xlat56 = (vec2<f32>(x_2157.y, x_2157.y) * vec2<f32>(x_2160.x, x_2160.y));
    let x_2164 : vec4<f32> = x_2148.x_MainLightWorldToLight[0i];
    let x_2166 : vec3<f32> = vs_INTERP7;
    let x_2169 : vec2<f32> = u_xlat56;
    u_xlat56 = ((vec2<f32>(x_2164.x, x_2164.y) * vec2<f32>(x_2166.x, x_2166.x)) + x_2169);
    let x_2172 : vec4<f32> = x_2148.x_MainLightWorldToLight[2i];
    let x_2174 : vec3<f32> = vs_INTERP7;
    let x_2177 : vec2<f32> = u_xlat56;
    u_xlat56 = ((vec2<f32>(x_2172.x, x_2172.y) * vec2<f32>(x_2174.z, x_2174.z)) + x_2177);
    let x_2179 : vec2<f32> = u_xlat56;
    let x_2181 : vec4<f32> = x_2148.x_MainLightWorldToLight[3i];
    u_xlat56 = (x_2179 + vec2<f32>(x_2181.x, x_2181.y));
    let x_2184 : vec2<f32> = u_xlat56;
    u_xlat56 = ((x_2184 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2192 : vec2<f32> = u_xlat56;
    let x_2194 : f32 = x_29.x_GlobalMipBias.x;
    let x_2195 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2192, x_2194);
    u_xlat7 = x_2195;
    let x_2197 : f32 = x_2148.x_MainLightCookieTextureFormat;
    let x_2199 : f32 = x_2148.x_MainLightCookieTextureFormat;
    let x_2201 : f32 = x_2148.x_MainLightCookieTextureFormat;
    let x_2203 : f32 = x_2148.x_MainLightCookieTextureFormat;
    let x_2204 : vec4<f32> = vec4<f32>(x_2197, x_2199, x_2201, x_2203);
    let x_2211 : vec4<bool> = (vec4<f32>(x_2204.x, x_2204.y, x_2204.z, x_2204.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb56 = vec2<bool>(x_2211.x, x_2211.y);
    let x_2214 : bool = u_xlatb56.y;
    if (x_2214) {
      let x_2219 : f32 = u_xlat7.w;
      x_2215 = x_2219;
    } else {
      let x_2222 : f32 = u_xlat7.x;
      x_2215 = x_2222;
    }
    let x_2223 : f32 = x_2215;
    u_xlat82 = x_2223;
    let x_2225 : bool = u_xlatb56.x;
    if (x_2225) {
      let x_2229 : vec4<f32> = u_xlat7;
      x_2226 = vec3<f32>(x_2229.x, x_2229.y, x_2229.z);
    } else {
      let x_2232 : f32 = u_xlat82;
      x_2226 = vec3<f32>(x_2232, x_2232, x_2232);
    }
    let x_2234 : vec3<f32> = x_2226;
    let x_2235 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2234.x, x_2234.y, x_2234.z, x_2235.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2241 : vec4<f32> = u_xlat7;
  let x_2244 : vec4<f32> = x_29.x_MainLightColor;
  let x_2246 : vec3<f32> = (vec3<f32>(x_2241.x, x_2241.y, x_2241.z) * vec3<f32>(x_2244.x, x_2244.y, x_2244.z));
  let x_2247 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
  let x_2249 : vec4<f32> = u_xlat3;
  let x_2252 : vec4<f32> = u_xlat1;
  u_xlat56.x = dot(-(vec3<f32>(x_2249.x, x_2249.y, x_2249.z)), vec3<f32>(x_2252.x, x_2252.y, x_2252.z));
  let x_2257 : f32 = u_xlat56.x;
  let x_2259 : f32 = u_xlat56.x;
  u_xlat56.x = (x_2257 + x_2259);
  let x_2262 : vec4<f32> = u_xlat1;
  let x_2264 : vec2<f32> = u_xlat56;
  let x_2268 : vec4<f32> = u_xlat3;
  let x_2271 : vec3<f32> = ((vec3<f32>(x_2262.x, x_2262.y, x_2262.z) * -(vec3<f32>(x_2264.x, x_2264.x, x_2264.x))) + -(vec3<f32>(x_2268.x, x_2268.y, x_2268.z)));
  let x_2272 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
  let x_2274 : vec4<f32> = u_xlat1;
  let x_2276 : vec4<f32> = u_xlat3;
  u_xlat56.x = dot(vec3<f32>(x_2274.x, x_2274.y, x_2274.z), vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2281 : f32 = u_xlat56.x;
  u_xlat56.x = clamp(x_2281, 0.0f, 1.0f);
  let x_2285 : f32 = u_xlat56.x;
  u_xlat56.x = (-(x_2285) + 1.0f);
  let x_2290 : f32 = u_xlat56.x;
  let x_2292 : f32 = u_xlat56.x;
  u_xlat56.x = (x_2290 * x_2292);
  let x_2296 : f32 = u_xlat56.x;
  let x_2298 : f32 = u_xlat56.x;
  u_xlat56.x = (x_2296 * x_2298);
  let x_2301 : f32 = u_xlat79;
  u_xlat82 = ((-(x_2301) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2307 : f32 = u_xlat79;
  let x_2308 : f32 = u_xlat82;
  u_xlat79 = (x_2307 * x_2308);
  let x_2310 : f32 = u_xlat79;
  u_xlat79 = (x_2310 * 6.0f);
  let x_2320 : vec4<f32> = u_xlat8;
  let x_2322 : f32 = u_xlat79;
  let x_2323 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2320.x, x_2320.y, x_2320.z), x_2322);
  u_xlat8 = x_2323;
  let x_2325 : f32 = u_xlat8.w;
  u_xlat79 = (x_2325 + -1.0f);
  let x_2328 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2329 : f32 = u_xlat79;
  u_xlat79 = ((x_2328 * x_2329) + 1.0f);
  let x_2332 : f32 = u_xlat79;
  u_xlat79 = max(x_2332, 0.0f);
  let x_2334 : f32 = u_xlat79;
  u_xlat79 = log2(x_2334);
  let x_2336 : f32 = u_xlat79;
  let x_2338 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat79 = (x_2336 * x_2338);
  let x_2340 : f32 = u_xlat79;
  u_xlat79 = exp2(x_2340);
  let x_2342 : f32 = u_xlat79;
  let x_2344 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat79 = (x_2342 * x_2344);
  let x_2346 : vec4<f32> = u_xlat8;
  let x_2348 : f32 = u_xlat79;
  let x_2350 : vec3<f32> = (vec3<f32>(x_2346.x, x_2346.y, x_2346.z) * vec3<f32>(x_2348, x_2348, x_2348));
  let x_2351 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2350.x, x_2350.y, x_2350.z, x_2351.w);
  let x_2353 : vec4<f32> = u_xlat2;
  let x_2355 : vec4<f32> = u_xlat2;
  let x_2359 : vec2<f32> = ((vec2<f32>(x_2353.x, x_2353.x) * vec2<f32>(x_2355.x, x_2355.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2360 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2359.x, x_2359.y, x_2360.z, x_2360.w);
  let x_2363 : f32 = u_xlat9.y;
  u_xlat79 = (1.0f / x_2363);
  let x_2365 : vec4<f32> = u_xlat0;
  let x_2368 : f32 = u_xlat80;
  u_xlat35 = (-(vec3<f32>(x_2365.x, x_2365.y, x_2365.z)) + vec3<f32>(x_2368, x_2368, x_2368));
  let x_2371 : vec2<f32> = u_xlat56;
  let x_2373 : vec3<f32> = u_xlat35;
  let x_2375 : vec4<f32> = u_xlat0;
  u_xlat35 = ((vec3<f32>(x_2371.x, x_2371.x, x_2371.x) * x_2373) + vec3<f32>(x_2375.x, x_2375.y, x_2375.z));
  let x_2378 : f32 = u_xlat79;
  let x_2380 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2378, x_2378, x_2378) * x_2380);
  let x_2382 : vec4<f32> = u_xlat8;
  let x_2384 : vec3<f32> = u_xlat35;
  let x_2385 : vec3<f32> = (vec3<f32>(x_2382.x, x_2382.y, x_2382.z) * x_2384);
  let x_2386 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
  let x_2388 : vec4<f32> = u_xlat5;
  let x_2390 : vec3<f32> = u_xlat6;
  let x_2392 : vec4<f32> = u_xlat8;
  let x_2394 : vec3<f32> = ((vec3<f32>(x_2388.x, x_2388.y, x_2388.z) * x_2390) + vec3<f32>(x_2392.x, x_2392.y, x_2392.z));
  let x_2395 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2394.x, x_2394.y, x_2394.z, x_2395.w);
  let x_2398 : f32 = u_xlat4.x;
  let x_2400 : f32 = x_349.unity_LightData.z;
  u_xlat79 = (x_2398 * x_2400);
  let x_2402 : vec4<f32> = u_xlat1;
  let x_2405 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2402.x, x_2402.y, x_2402.z), vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
  let x_2410 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2410, 0.0f, 1.0f);
  let x_2413 : f32 = u_xlat79;
  let x_2415 : f32 = u_xlat2.x;
  u_xlat79 = (x_2413 * x_2415);
  let x_2417 : f32 = u_xlat79;
  let x_2419 : vec4<f32> = u_xlat7;
  let x_2421 : vec3<f32> = (vec3<f32>(x_2417, x_2417, x_2417) * vec3<f32>(x_2419.x, x_2419.y, x_2419.z));
  let x_2422 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2421.x, x_2422.y, x_2421.y, x_2421.z);
  let x_2424 : vec4<f32> = u_xlat3;
  let x_2427 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2429 : vec3<f32> = (vec3<f32>(x_2424.x, x_2424.y, x_2424.z) + vec3<f32>(x_2427.x, x_2427.y, x_2427.z));
  let x_2430 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
  let x_2432 : vec4<f32> = u_xlat7;
  let x_2434 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2432.x, x_2432.y, x_2432.z), vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
  let x_2437 : f32 = u_xlat79;
  u_xlat79 = max(x_2437, 1.17549435e-38f);
  let x_2440 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_2440);
  let x_2442 : f32 = u_xlat79;
  let x_2444 : vec4<f32> = u_xlat7;
  let x_2446 : vec3<f32> = (vec3<f32>(x_2442, x_2442, x_2442) * vec3<f32>(x_2444.x, x_2444.y, x_2444.z));
  let x_2447 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2446.x, x_2446.y, x_2446.z, x_2447.w);
  let x_2449 : vec4<f32> = u_xlat1;
  let x_2451 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2449.x, x_2449.y, x_2449.z), vec3<f32>(x_2451.x, x_2451.y, x_2451.z));
  let x_2454 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2454, 0.0f, 1.0f);
  let x_2457 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2459 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2457.x, x_2457.y, x_2457.z), vec3<f32>(x_2459.x, x_2459.y, x_2459.z));
  let x_2464 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2464, 0.0f, 1.0f);
  let x_2467 : f32 = u_xlat79;
  let x_2468 : f32 = u_xlat79;
  u_xlat79 = (x_2467 * x_2468);
  let x_2470 : f32 = u_xlat79;
  let x_2472 : f32 = u_xlat9.x;
  u_xlat79 = ((x_2470 * x_2472) + 1.00001001358032226562f);
  let x_2477 : f32 = u_xlat2.x;
  let x_2479 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2477 * x_2479);
  let x_2482 : f32 = u_xlat79;
  let x_2483 : f32 = u_xlat79;
  u_xlat79 = (x_2482 * x_2483);
  let x_2486 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2486, 0.10000000149011611938f);
  let x_2490 : f32 = u_xlat79;
  let x_2492 : f32 = u_xlat2.x;
  u_xlat79 = (x_2490 * x_2492);
  let x_2494 : f32 = u_xlat81;
  let x_2495 : f32 = u_xlat79;
  u_xlat79 = (x_2494 * x_2495);
  let x_2497 : f32 = u_xlat28;
  let x_2498 : f32 = u_xlat79;
  u_xlat79 = (x_2497 / x_2498);
  let x_2500 : vec4<f32> = u_xlat0;
  let x_2502 : f32 = u_xlat79;
  let x_2505 : vec3<f32> = u_xlat6;
  let x_2506 : vec3<f32> = ((vec3<f32>(x_2500.x, x_2500.y, x_2500.z) * vec3<f32>(x_2502, x_2502, x_2502)) + x_2505);
  let x_2507 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
  let x_2509 : vec4<f32> = u_xlat4;
  let x_2511 : vec4<f32> = u_xlat7;
  let x_2513 : vec3<f32> = (vec3<f32>(x_2509.x, x_2509.z, x_2509.w) * vec3<f32>(x_2511.x, x_2511.y, x_2511.z));
  let x_2514 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2513.x, x_2514.y, x_2513.y, x_2513.z);
  let x_2517 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2519 : f32 = x_349.unity_LightData.y;
  u_xlat79 = min(x_2517, x_2519);
  let x_2522 : f32 = u_xlat79;
  u_xlatu79 = bitcast<u32>(i32(x_2522));
  let x_2526 : f32 = u_xlat30.x;
  let x_2529 : f32 = x_497.x_AdditionalShadowFadeParams.x;
  let x_2532 : f32 = x_497.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2526 * x_2529) + x_2532);
  let x_2536 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2536, 0.0f, 1.0f);
  let x_2541 : f32 = x_2148.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2543 : f32 = x_2148.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2545 : f32 = x_2148.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2547 : f32 = x_2148.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2548 : vec4<f32> = vec4<f32>(x_2541, x_2543, x_2545, x_2547);
  let x_2555 : vec4<bool> = (vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2548.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2555.x, x_2555.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2567 : u32 = u_xlatu_loop_1;
    let x_2568 : u32 = u_xlatu79;
    if ((x_2567 < x_2568)) {
    } else {
      break;
    }
    let x_2571 : u32 = u_xlatu_loop_1;
    u_xlatu30 = (x_2571 >> 2u);
    let x_2574 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2574 & 3u));
    let x_2577 : u32 = u_xlatu30;
    let x_2580 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2577)];
    let x_2590 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2595 : vec4<u32> = indexable[x_2590];
    u_xlat30.x = dot(x_2580, bitcast<vec4<f32>>(x_2595));
    let x_2601 : f32 = u_xlat30.x;
    u_xlati30 = i32(x_2601);
    let x_2603 : vec3<f32> = vs_INTERP7;
    let x_2614 : i32 = u_xlati30;
    let x_2616 : vec4<f32> = x_2613.x_AdditionalLightsPosition[x_2614];
    let x_2619 : i32 = u_xlati30;
    let x_2621 : vec4<f32> = x_2613.x_AdditionalLightsPosition[x_2619];
    u_xlat35 = ((-(x_2603) * vec3<f32>(x_2616.w, x_2616.w, x_2616.w)) + vec3<f32>(x_2621.x, x_2621.y, x_2621.z));
    let x_2624 : vec3<f32> = u_xlat35;
    let x_2625 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_2624, x_2625);
    let x_2627 : f32 = u_xlat83;
    u_xlat83 = max(x_2627, 0.00006103515625f);
    let x_2630 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2630);
    let x_2632 : f32 = u_xlat84;
    let x_2634 : vec3<f32> = u_xlat35;
    let x_2635 : vec3<f32> = (vec3<f32>(x_2632, x_2632, x_2632) * x_2634);
    let x_2636 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2635.x, x_2635.y, x_2635.z, x_2636.w);
    let x_2638 : f32 = u_xlat83;
    u_xlat59.x = (1.0f / x_2638);
    let x_2641 : f32 = u_xlat83;
    let x_2642 : i32 = u_xlati30;
    let x_2644 : f32 = x_2613.x_AdditionalLightsAttenuation[x_2642].x;
    u_xlat83 = (x_2641 * x_2644);
    let x_2646 : f32 = u_xlat83;
    let x_2648 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2646) * x_2648) + 1.0f);
    let x_2651 : f32 = u_xlat83;
    u_xlat83 = max(x_2651, 0.0f);
    let x_2653 : f32 = u_xlat83;
    let x_2654 : f32 = u_xlat83;
    u_xlat83 = (x_2653 * x_2654);
    let x_2656 : f32 = u_xlat83;
    let x_2658 : f32 = u_xlat59.x;
    u_xlat83 = (x_2656 * x_2658);
    let x_2660 : i32 = u_xlati30;
    let x_2662 : vec4<f32> = x_2613.x_AdditionalLightsSpotDir[x_2660];
    let x_2664 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(vec3<f32>(x_2662.x, x_2662.y, x_2662.z), vec3<f32>(x_2664.x, x_2664.y, x_2664.z));
    let x_2669 : f32 = u_xlat59.x;
    let x_2670 : i32 = u_xlati30;
    let x_2672 : f32 = x_2613.x_AdditionalLightsAttenuation[x_2670].z;
    let x_2674 : i32 = u_xlati30;
    let x_2676 : f32 = x_2613.x_AdditionalLightsAttenuation[x_2674].w;
    u_xlat59.x = ((x_2669 * x_2672) + x_2676);
    let x_2680 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_2680, 0.0f, 1.0f);
    let x_2684 : f32 = u_xlat59.x;
    let x_2686 : f32 = u_xlat59.x;
    u_xlat59.x = (x_2684 * x_2686);
    let x_2689 : f32 = u_xlat83;
    let x_2691 : f32 = u_xlat59.x;
    u_xlat83 = (x_2689 * x_2691);
    let x_2695 : i32 = u_xlati30;
    let x_2697 : f32 = x_497.x_AdditionalShadowParams[x_2695].w;
    u_xlati59 = i32(x_2697);
    let x_2700 : i32 = u_xlati59;
    u_xlatb85 = (x_2700 >= 0i);
    let x_2702 : bool = u_xlatb85;
    if (x_2702) {
      let x_2706 : i32 = u_xlati30;
      let x_2708 : f32 = x_497.x_AdditionalShadowParams[x_2706].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2708, x_2708, x_2708, x_2708))));
      let x_2712 : bool = u_xlatb85;
      if (x_2712) {
        let x_2716 : vec4<f32> = u_xlat10;
        let x_2719 : vec4<f32> = u_xlat10;
        let x_2722 : vec4<bool> = (abs(vec4<f32>(x_2716.z, x_2716.z, x_2716.y, x_2716.z)) >= abs(vec4<f32>(x_2719.x, x_2719.y, x_2719.x, x_2719.x)));
        let x_2724 : vec3<bool> = vec3<bool>(x_2722.x, x_2722.y, x_2722.z);
        let x_2725 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2724.x, x_2724.y, x_2724.z, x_2725.w);
        let x_2728 : bool = u_xlatb11.y;
        let x_2730 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2728 & x_2730);
        let x_2732 : vec4<f32> = u_xlat10;
        let x_2735 : vec4<bool> = (-(vec4<f32>(x_2732.z, x_2732.y, x_2732.z, x_2732.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2736 : vec3<bool> = vec3<bool>(x_2735.x, x_2735.y, x_2735.w);
        let x_2737 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2736.x, x_2736.y, x_2737.z, x_2736.z);
        let x_2740 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2740);
        let x_2745 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2745);
        let x_2750 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2750);
        let x_2753 : bool = u_xlatb11.z;
        if (x_2753) {
          let x_2758 : f32 = u_xlat11.y;
          x_2754 = x_2758;
        } else {
          let x_2760 : f32 = u_xlat86;
          x_2754 = x_2760;
        }
        let x_2761 : f32 = x_2754;
        u_xlat86 = x_2761;
        let x_2763 : bool = u_xlatb85;
        if (x_2763) {
          let x_2768 : f32 = u_xlat11.x;
          x_2764 = x_2768;
        } else {
          let x_2770 : f32 = u_xlat86;
          x_2764 = x_2770;
        }
        let x_2771 : f32 = x_2764;
        u_xlat85 = x_2771;
        let x_2772 : i32 = u_xlati30;
        let x_2774 : f32 = x_497.x_AdditionalShadowParams[x_2772].w;
        u_xlat86 = trunc(x_2774);
        let x_2776 : f32 = u_xlat85;
        let x_2777 : f32 = u_xlat86;
        u_xlat85 = (x_2776 + x_2777);
        let x_2779 : f32 = u_xlat85;
        u_xlati59 = i32(x_2779);
      }
      let x_2781 : i32 = u_xlati59;
      u_xlati59 = (x_2781 << bitcast<u32>(2i));
      let x_2783 : vec3<f32> = vs_INTERP7;
      let x_2786 : i32 = u_xlati59;
      let x_2789 : i32 = u_xlati59;
      let x_2793 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2786 + 1i) / 4i)][((x_2789 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2783.y, x_2783.y, x_2783.y, x_2783.y) * x_2793);
      let x_2795 : i32 = u_xlati59;
      let x_2797 : i32 = u_xlati59;
      let x_2800 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[(x_2795 / 4i)][(x_2797 % 4i)];
      let x_2801 : vec3<f32> = vs_INTERP7;
      let x_2804 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2800 * vec4<f32>(x_2801.x, x_2801.x, x_2801.x, x_2801.x)) + x_2804);
      let x_2806 : i32 = u_xlati59;
      let x_2809 : i32 = u_xlati59;
      let x_2813 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2806 + 2i) / 4i)][((x_2809 + 2i) % 4i)];
      let x_2814 : vec3<f32> = vs_INTERP7;
      let x_2817 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2813 * vec4<f32>(x_2814.z, x_2814.z, x_2814.z, x_2814.z)) + x_2817);
      let x_2819 : vec4<f32> = u_xlat11;
      let x_2820 : i32 = u_xlati59;
      let x_2823 : i32 = u_xlati59;
      let x_2827 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2820 + 3i) / 4i)][((x_2823 + 3i) % 4i)];
      u_xlat11 = (x_2819 + x_2827);
      let x_2829 : vec4<f32> = u_xlat11;
      let x_2831 : vec4<f32> = u_xlat11;
      let x_2833 : vec3<f32> = (vec3<f32>(x_2829.x, x_2829.y, x_2829.z) / vec3<f32>(x_2831.w, x_2831.w, x_2831.w));
      let x_2834 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2833.x, x_2833.y, x_2833.z, x_2834.w);
      let x_2837 : i32 = u_xlati30;
      let x_2839 : f32 = x_497.x_AdditionalShadowParams[x_2837].y;
      u_xlatb59 = (0.0f < x_2839);
      let x_2841 : bool = u_xlatb59;
      if (x_2841) {
        let x_2844 : i32 = u_xlati30;
        let x_2846 : f32 = x_497.x_AdditionalShadowParams[x_2844].y;
        u_xlatb59 = (1.0f == x_2846);
        let x_2848 : bool = u_xlatb59;
        if (x_2848) {
          let x_2851 : vec4<f32> = u_xlat11;
          let x_2855 : vec4<f32> = x_497.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2851.x, x_2851.y, x_2851.x, x_2851.y) + x_2855);
          let x_2858 : vec4<f32> = u_xlat12;
          let x_2859 : vec2<f32> = vec2<f32>(x_2858.x, x_2858.y);
          let x_2861 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2859.x, x_2859.y, x_2861);
          let x_2869 : vec3<f32> = txVec30;
          let x_2871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2869.xy, x_2869.z);
          u_xlat13.x = x_2871;
          let x_2874 : vec4<f32> = u_xlat12;
          let x_2875 : vec2<f32> = vec2<f32>(x_2874.z, x_2874.w);
          let x_2877 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2875.x, x_2875.y, x_2877);
          let x_2884 : vec3<f32> = txVec31;
          let x_2886 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2884.xy, x_2884.z);
          u_xlat13.y = x_2886;
          let x_2888 : vec4<f32> = u_xlat11;
          let x_2892 : vec4<f32> = x_497.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2888.x, x_2888.y, x_2888.x, x_2888.y) + x_2892);
          let x_2895 : vec4<f32> = u_xlat12;
          let x_2896 : vec2<f32> = vec2<f32>(x_2895.x, x_2895.y);
          let x_2898 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2896.x, x_2896.y, x_2898);
          let x_2905 : vec3<f32> = txVec32;
          let x_2907 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2905.xy, x_2905.z);
          u_xlat13.z = x_2907;
          let x_2910 : vec4<f32> = u_xlat12;
          let x_2911 : vec2<f32> = vec2<f32>(x_2910.z, x_2910.w);
          let x_2913 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2911.x, x_2911.y, x_2913);
          let x_2920 : vec3<f32> = txVec33;
          let x_2922 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2920.xy, x_2920.z);
          u_xlat13.w = x_2922;
          let x_2924 : vec4<f32> = u_xlat13;
          u_xlat59.x = dot(x_2924, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2928 : i32 = u_xlati30;
          let x_2930 : f32 = x_497.x_AdditionalShadowParams[x_2928].y;
          u_xlatb85 = (2.0f == x_2930);
          let x_2932 : bool = u_xlatb85;
          if (x_2932) {
            let x_2935 : vec4<f32> = u_xlat11;
            let x_2939 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2942 : vec2<f32> = ((vec2<f32>(x_2935.x, x_2935.y) * vec2<f32>(x_2939.z, x_2939.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2943 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2942.x, x_2942.y, x_2943.z, x_2943.w);
            let x_2945 : vec4<f32> = u_xlat12;
            let x_2947 : vec2<f32> = floor(vec2<f32>(x_2945.x, x_2945.y));
            let x_2948 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2947.x, x_2947.y, x_2948.z, x_2948.w);
            let x_2951 : vec4<f32> = u_xlat11;
            let x_2954 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2957 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2951.x, x_2951.y) * vec2<f32>(x_2954.z, x_2954.w)) + -(vec2<f32>(x_2957.x, x_2957.y)));
            let x_2961 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2961.x, x_2961.x, x_2961.y, x_2961.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2964 : vec4<f32> = u_xlat13;
            let x_2966 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2964.x, x_2964.x, x_2964.z, x_2964.z) * vec4<f32>(x_2966.x, x_2966.x, x_2966.z, x_2966.z));
            let x_2969 : vec4<f32> = u_xlat14;
            let x_2971 : vec2<f32> = (vec2<f32>(x_2969.y, x_2969.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2972 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2971.x, x_2972.y, x_2971.y, x_2972.w);
            let x_2974 : vec4<f32> = u_xlat14;
            let x_2977 : vec2<f32> = u_xlat64;
            let x_2979 : vec2<f32> = ((vec2<f32>(x_2974.x, x_2974.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2977));
            let x_2980 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2979.x, x_2979.y, x_2980.z, x_2980.w);
            let x_2983 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2983) + vec2<f32>(1.0f, 1.0f));
            let x_2986 : vec2<f32> = u_xlat64;
            let x_2987 : vec2<f32> = min(x_2986, vec2<f32>(0.0f, 0.0f));
            let x_2988 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2987.x, x_2987.y, x_2988.z, x_2988.w);
            let x_2990 : vec4<f32> = u_xlat15;
            let x_2993 : vec4<f32> = u_xlat15;
            let x_2996 : vec2<f32> = u_xlat66;
            let x_2997 : vec2<f32> = ((-(vec2<f32>(x_2990.x, x_2990.y)) * vec2<f32>(x_2993.x, x_2993.y)) + x_2996);
            let x_2998 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2997.x, x_2997.y, x_2998.z, x_2998.w);
            let x_3000 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3000, vec2<f32>(0.0f, 0.0f));
            let x_3002 : vec2<f32> = u_xlat64;
            let x_3004 : vec2<f32> = u_xlat64;
            let x_3006 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3002) * x_3004) + vec2<f32>(x_3006.y, x_3006.w));
            let x_3009 : vec4<f32> = u_xlat15;
            let x_3011 : vec2<f32> = (vec2<f32>(x_3009.x, x_3009.y) + vec2<f32>(1.0f, 1.0f));
            let x_3012 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3011.x, x_3011.y, x_3012.z, x_3012.w);
            let x_3014 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3014 + vec2<f32>(1.0f, 1.0f));
            let x_3016 : vec4<f32> = u_xlat14;
            let x_3018 : vec2<f32> = (vec2<f32>(x_3016.x, x_3016.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3019 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3018.x, x_3018.y, x_3019.z, x_3019.w);
            let x_3021 : vec2<f32> = u_xlat66;
            let x_3022 : vec2<f32> = (x_3021 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3023 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3022.x, x_3022.y, x_3023.z, x_3023.w);
            let x_3025 : vec4<f32> = u_xlat15;
            let x_3027 : vec2<f32> = (vec2<f32>(x_3025.x, x_3025.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3028 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3027.x, x_3027.y, x_3028.z, x_3028.w);
            let x_3030 : vec2<f32> = u_xlat64;
            let x_3031 : vec2<f32> = (x_3030 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3032 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3031.x, x_3031.y, x_3032.z, x_3032.w);
            let x_3034 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3034.y, x_3034.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3038 : f32 = u_xlat15.x;
            u_xlat16.z = x_3038;
            let x_3041 : f32 = u_xlat64.x;
            u_xlat16.w = x_3041;
            let x_3044 : f32 = u_xlat17.x;
            u_xlat14.z = x_3044;
            let x_3047 : f32 = u_xlat13.x;
            u_xlat14.w = x_3047;
            let x_3049 : vec4<f32> = u_xlat14;
            let x_3051 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3049.z, x_3049.w, x_3049.x, x_3049.z) + vec4<f32>(x_3051.z, x_3051.w, x_3051.x, x_3051.z));
            let x_3055 : f32 = u_xlat16.y;
            u_xlat15.z = x_3055;
            let x_3058 : f32 = u_xlat64.y;
            u_xlat15.w = x_3058;
            let x_3061 : f32 = u_xlat14.y;
            u_xlat17.z = x_3061;
            let x_3064 : f32 = u_xlat13.z;
            u_xlat17.w = x_3064;
            let x_3066 : vec4<f32> = u_xlat15;
            let x_3068 : vec4<f32> = u_xlat17;
            let x_3070 : vec3<f32> = (vec3<f32>(x_3066.z, x_3066.y, x_3066.w) + vec3<f32>(x_3068.z, x_3068.y, x_3068.w));
            let x_3071 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3070.x, x_3070.y, x_3070.z, x_3071.w);
            let x_3073 : vec4<f32> = u_xlat14;
            let x_3075 : vec4<f32> = u_xlat18;
            let x_3077 : vec3<f32> = (vec3<f32>(x_3073.x, x_3073.z, x_3073.w) / vec3<f32>(x_3075.z, x_3075.w, x_3075.y));
            let x_3078 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3077.x, x_3077.y, x_3077.z, x_3078.w);
            let x_3080 : vec4<f32> = u_xlat14;
            let x_3082 : vec3<f32> = (vec3<f32>(x_3080.x, x_3080.y, x_3080.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3083 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3082.x, x_3082.y, x_3082.z, x_3083.w);
            let x_3085 : vec4<f32> = u_xlat17;
            let x_3087 : vec4<f32> = u_xlat13;
            let x_3089 : vec3<f32> = (vec3<f32>(x_3085.z, x_3085.y, x_3085.w) / vec3<f32>(x_3087.x, x_3087.y, x_3087.z));
            let x_3090 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3089.x, x_3089.y, x_3089.z, x_3090.w);
            let x_3092 : vec4<f32> = u_xlat15;
            let x_3094 : vec3<f32> = (vec3<f32>(x_3092.x, x_3092.y, x_3092.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3095 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3094.x, x_3094.y, x_3094.z, x_3095.w);
            let x_3097 : vec4<f32> = u_xlat14;
            let x_3100 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3102 : vec3<f32> = (vec3<f32>(x_3097.y, x_3097.x, x_3097.z) * vec3<f32>(x_3100.x, x_3100.x, x_3100.x));
            let x_3103 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3102.x, x_3102.y, x_3102.z, x_3103.w);
            let x_3105 : vec4<f32> = u_xlat15;
            let x_3108 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3110 : vec3<f32> = (vec3<f32>(x_3105.x, x_3105.y, x_3105.z) * vec3<f32>(x_3108.y, x_3108.y, x_3108.y));
            let x_3111 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3110.x, x_3110.y, x_3110.z, x_3111.w);
            let x_3114 : f32 = u_xlat15.x;
            u_xlat14.w = x_3114;
            let x_3116 : vec4<f32> = u_xlat12;
            let x_3119 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3122 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3116.x, x_3116.y, x_3116.x, x_3116.y) * vec4<f32>(x_3119.x, x_3119.y, x_3119.x, x_3119.y)) + vec4<f32>(x_3122.y, x_3122.w, x_3122.x, x_3122.w));
            let x_3125 : vec4<f32> = u_xlat12;
            let x_3128 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3131 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3125.x, x_3125.y) * vec2<f32>(x_3128.x, x_3128.y)) + vec2<f32>(x_3131.z, x_3131.w));
            let x_3135 : f32 = u_xlat14.y;
            u_xlat15.w = x_3135;
            let x_3137 : vec4<f32> = u_xlat15;
            let x_3138 : vec2<f32> = vec2<f32>(x_3137.y, x_3137.z);
            let x_3139 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3139.x, x_3138.x, x_3139.z, x_3138.y);
            let x_3141 : vec4<f32> = u_xlat12;
            let x_3144 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3147 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3141.x, x_3141.y, x_3141.x, x_3141.y) * vec4<f32>(x_3144.x, x_3144.y, x_3144.x, x_3144.y)) + vec4<f32>(x_3147.x, x_3147.y, x_3147.z, x_3147.y));
            let x_3150 : vec4<f32> = u_xlat12;
            let x_3153 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3156 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3150.x, x_3150.y, x_3150.x, x_3150.y) * vec4<f32>(x_3153.x, x_3153.y, x_3153.x, x_3153.y)) + vec4<f32>(x_3156.w, x_3156.y, x_3156.w, x_3156.z));
            let x_3159 : vec4<f32> = u_xlat12;
            let x_3162 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3165 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3159.x, x_3159.y, x_3159.x, x_3159.y) * vec4<f32>(x_3162.x, x_3162.y, x_3162.x, x_3162.y)) + vec4<f32>(x_3165.x, x_3165.w, x_3165.z, x_3165.w));
            let x_3168 : vec4<f32> = u_xlat13;
            let x_3170 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3168.x, x_3168.x, x_3168.x, x_3168.y) * vec4<f32>(x_3170.z, x_3170.w, x_3170.y, x_3170.z));
            let x_3173 : vec4<f32> = u_xlat13;
            let x_3175 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3173.y, x_3173.y, x_3173.z, x_3173.z) * x_3175);
            let x_3178 : f32 = u_xlat13.z;
            let x_3180 : f32 = u_xlat18.y;
            u_xlat85 = (x_3178 * x_3180);
            let x_3183 : vec4<f32> = u_xlat16;
            let x_3184 : vec2<f32> = vec2<f32>(x_3183.x, x_3183.y);
            let x_3186 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3184.x, x_3184.y, x_3186);
            let x_3193 : vec3<f32> = txVec34;
            let x_3195 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3193.xy, x_3193.z);
            u_xlat86 = x_3195;
            let x_3197 : vec4<f32> = u_xlat16;
            let x_3198 : vec2<f32> = vec2<f32>(x_3197.z, x_3197.w);
            let x_3200 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
            let x_3208 : vec3<f32> = txVec35;
            let x_3210 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3208.xy, x_3208.z);
            u_xlat88 = x_3210;
            let x_3211 : f32 = u_xlat88;
            let x_3213 : f32 = u_xlat19.y;
            u_xlat88 = (x_3211 * x_3213);
            let x_3216 : f32 = u_xlat19.x;
            let x_3217 : f32 = u_xlat86;
            let x_3219 : f32 = u_xlat88;
            u_xlat86 = ((x_3216 * x_3217) + x_3219);
            let x_3222 : vec2<f32> = u_xlat64;
            let x_3224 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3222.x, x_3222.y, x_3224);
            let x_3231 : vec3<f32> = txVec36;
            let x_3233 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3231.xy, x_3231.z);
            u_xlat88 = x_3233;
            let x_3235 : f32 = u_xlat19.z;
            let x_3236 : f32 = u_xlat88;
            let x_3238 : f32 = u_xlat86;
            u_xlat86 = ((x_3235 * x_3236) + x_3238);
            let x_3241 : vec4<f32> = u_xlat15;
            let x_3242 : vec2<f32> = vec2<f32>(x_3241.x, x_3241.y);
            let x_3244 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3242.x, x_3242.y, x_3244);
            let x_3251 : vec3<f32> = txVec37;
            let x_3253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3251.xy, x_3251.z);
            u_xlat88 = x_3253;
            let x_3255 : f32 = u_xlat19.w;
            let x_3256 : f32 = u_xlat88;
            let x_3258 : f32 = u_xlat86;
            u_xlat86 = ((x_3255 * x_3256) + x_3258);
            let x_3261 : vec4<f32> = u_xlat17;
            let x_3262 : vec2<f32> = vec2<f32>(x_3261.x, x_3261.y);
            let x_3264 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
            let x_3271 : vec3<f32> = txVec38;
            let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
            u_xlat88 = x_3273;
            let x_3275 : f32 = u_xlat20.x;
            let x_3276 : f32 = u_xlat88;
            let x_3278 : f32 = u_xlat86;
            u_xlat86 = ((x_3275 * x_3276) + x_3278);
            let x_3281 : vec4<f32> = u_xlat17;
            let x_3282 : vec2<f32> = vec2<f32>(x_3281.z, x_3281.w);
            let x_3284 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3282.x, x_3282.y, x_3284);
            let x_3291 : vec3<f32> = txVec39;
            let x_3293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3291.xy, x_3291.z);
            u_xlat88 = x_3293;
            let x_3295 : f32 = u_xlat20.y;
            let x_3296 : f32 = u_xlat88;
            let x_3298 : f32 = u_xlat86;
            u_xlat86 = ((x_3295 * x_3296) + x_3298);
            let x_3301 : vec4<f32> = u_xlat15;
            let x_3302 : vec2<f32> = vec2<f32>(x_3301.z, x_3301.w);
            let x_3304 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3302.x, x_3302.y, x_3304);
            let x_3311 : vec3<f32> = txVec40;
            let x_3313 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3311.xy, x_3311.z);
            u_xlat88 = x_3313;
            let x_3315 : f32 = u_xlat20.z;
            let x_3316 : f32 = u_xlat88;
            let x_3318 : f32 = u_xlat86;
            u_xlat86 = ((x_3315 * x_3316) + x_3318);
            let x_3321 : vec4<f32> = u_xlat14;
            let x_3322 : vec2<f32> = vec2<f32>(x_3321.x, x_3321.y);
            let x_3324 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3322.x, x_3322.y, x_3324);
            let x_3331 : vec3<f32> = txVec41;
            let x_3333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3331.xy, x_3331.z);
            u_xlat88 = x_3333;
            let x_3335 : f32 = u_xlat20.w;
            let x_3336 : f32 = u_xlat88;
            let x_3338 : f32 = u_xlat86;
            u_xlat86 = ((x_3335 * x_3336) + x_3338);
            let x_3341 : vec4<f32> = u_xlat14;
            let x_3342 : vec2<f32> = vec2<f32>(x_3341.z, x_3341.w);
            let x_3344 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3342.x, x_3342.y, x_3344);
            let x_3351 : vec3<f32> = txVec42;
            let x_3353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3351.xy, x_3351.z);
            u_xlat88 = x_3353;
            let x_3354 : f32 = u_xlat85;
            let x_3355 : f32 = u_xlat88;
            let x_3357 : f32 = u_xlat86;
            u_xlat59.x = ((x_3354 * x_3355) + x_3357);
          } else {
            let x_3361 : vec4<f32> = u_xlat11;
            let x_3364 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3367 : vec2<f32> = ((vec2<f32>(x_3361.x, x_3361.y) * vec2<f32>(x_3364.z, x_3364.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3368 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3367.x, x_3367.y, x_3368.z, x_3368.w);
            let x_3370 : vec4<f32> = u_xlat12;
            let x_3372 : vec2<f32> = floor(vec2<f32>(x_3370.x, x_3370.y));
            let x_3373 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3372.x, x_3372.y, x_3373.z, x_3373.w);
            let x_3375 : vec4<f32> = u_xlat11;
            let x_3378 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3381 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3375.x, x_3375.y) * vec2<f32>(x_3378.z, x_3378.w)) + -(vec2<f32>(x_3381.x, x_3381.y)));
            let x_3385 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3385.x, x_3385.x, x_3385.y, x_3385.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3388 : vec4<f32> = u_xlat13;
            let x_3390 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3388.x, x_3388.x, x_3388.z, x_3388.z) * vec4<f32>(x_3390.x, x_3390.x, x_3390.z, x_3390.z));
            let x_3393 : vec4<f32> = u_xlat14;
            let x_3395 : vec2<f32> = (vec2<f32>(x_3393.y, x_3393.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3396 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3396.x, x_3395.x, x_3396.z, x_3395.y);
            let x_3398 : vec4<f32> = u_xlat14;
            let x_3401 : vec2<f32> = u_xlat64;
            let x_3403 : vec2<f32> = ((vec2<f32>(x_3398.x, x_3398.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3401));
            let x_3404 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3403.x, x_3404.y, x_3403.y, x_3404.w);
            let x_3406 : vec2<f32> = u_xlat64;
            let x_3408 : vec2<f32> = (-(x_3406) + vec2<f32>(1.0f, 1.0f));
            let x_3409 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3408.x, x_3408.y, x_3409.z, x_3409.w);
            let x_3411 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3411, vec2<f32>(0.0f, 0.0f));
            let x_3413 : vec2<f32> = u_xlat66;
            let x_3415 : vec2<f32> = u_xlat66;
            let x_3417 : vec4<f32> = u_xlat14;
            let x_3419 : vec2<f32> = ((-(x_3413) * x_3415) + vec2<f32>(x_3417.x, x_3417.y));
            let x_3420 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3419.x, x_3419.y, x_3420.z, x_3420.w);
            let x_3422 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3422, vec2<f32>(0.0f, 0.0f));
            let x_3425 : vec2<f32> = u_xlat66;
            let x_3427 : vec2<f32> = u_xlat66;
            let x_3429 : vec4<f32> = u_xlat13;
            let x_3431 : vec2<f32> = ((-(x_3425) * x_3427) + vec2<f32>(x_3429.y, x_3429.w));
            let x_3432 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3431.x, x_3432.y, x_3431.y);
            let x_3434 : vec4<f32> = u_xlat14;
            let x_3436 : vec2<f32> = (vec2<f32>(x_3434.x, x_3434.y) + vec2<f32>(2.0f, 2.0f));
            let x_3437 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3436.x, x_3436.y, x_3437.z, x_3437.w);
            let x_3439 : vec3<f32> = u_xlat39;
            let x_3441 : vec2<f32> = (vec2<f32>(x_3439.x, x_3439.z) + vec2<f32>(2.0f, 2.0f));
            let x_3442 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3442.x, x_3441.x, x_3442.z, x_3441.y);
            let x_3445 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3445 * 0.08163200318813323975f);
            let x_3448 : vec4<f32> = u_xlat13;
            let x_3450 : vec3<f32> = (vec3<f32>(x_3448.z, x_3448.x, x_3448.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3451 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3450.x, x_3450.y, x_3450.z, x_3451.w);
            let x_3453 : vec4<f32> = u_xlat14;
            let x_3455 : vec2<f32> = (vec2<f32>(x_3453.x, x_3453.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3456 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3455.x, x_3455.y, x_3456.z, x_3456.w);
            let x_3459 : f32 = u_xlat17.y;
            u_xlat16.x = x_3459;
            let x_3461 : vec2<f32> = u_xlat64;
            let x_3464 : vec2<f32> = ((vec2<f32>(x_3461.x, x_3461.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3465 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3465.x, x_3464.x, x_3465.z, x_3464.y);
            let x_3467 : vec2<f32> = u_xlat64;
            let x_3470 : vec2<f32> = ((vec2<f32>(x_3467.x, x_3467.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3471 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3470.x, x_3471.y, x_3470.y, x_3471.w);
            let x_3474 : f32 = u_xlat13.x;
            u_xlat14.y = x_3474;
            let x_3477 : f32 = u_xlat15.y;
            u_xlat14.w = x_3477;
            let x_3479 : vec4<f32> = u_xlat14;
            let x_3480 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3479 + x_3480);
            let x_3482 : vec2<f32> = u_xlat64;
            let x_3485 : vec2<f32> = ((vec2<f32>(x_3482.y, x_3482.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3486 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3486.x, x_3485.x, x_3486.z, x_3485.y);
            let x_3488 : vec2<f32> = u_xlat64;
            let x_3491 : vec2<f32> = ((vec2<f32>(x_3488.y, x_3488.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3492 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3491.x, x_3492.y, x_3491.y, x_3492.w);
            let x_3495 : f32 = u_xlat13.y;
            u_xlat15.y = x_3495;
            let x_3497 : vec4<f32> = u_xlat15;
            let x_3498 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3497 + x_3498);
            let x_3500 : vec4<f32> = u_xlat14;
            let x_3501 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3500 / x_3501);
            let x_3503 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3503 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3505 : vec4<f32> = u_xlat15;
            let x_3506 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3505 / x_3506);
            let x_3508 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3508 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3510 : vec4<f32> = u_xlat14;
            let x_3513 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3510.w, x_3510.x, x_3510.y, x_3510.z) * vec4<f32>(x_3513.x, x_3513.x, x_3513.x, x_3513.x));
            let x_3516 : vec4<f32> = u_xlat15;
            let x_3519 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3516.x, x_3516.w, x_3516.y, x_3516.z) * vec4<f32>(x_3519.y, x_3519.y, x_3519.y, x_3519.y));
            let x_3522 : vec4<f32> = u_xlat14;
            let x_3523 : vec3<f32> = vec3<f32>(x_3522.y, x_3522.z, x_3522.w);
            let x_3524 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3523.x, x_3524.y, x_3523.y, x_3523.z);
            let x_3527 : f32 = u_xlat15.x;
            u_xlat17.y = x_3527;
            let x_3529 : vec4<f32> = u_xlat12;
            let x_3532 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3535 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3529.x, x_3529.y, x_3529.x, x_3529.y) * vec4<f32>(x_3532.x, x_3532.y, x_3532.x, x_3532.y)) + vec4<f32>(x_3535.x, x_3535.y, x_3535.z, x_3535.y));
            let x_3538 : vec4<f32> = u_xlat12;
            let x_3541 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3544 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3538.x, x_3538.y) * vec2<f32>(x_3541.x, x_3541.y)) + vec2<f32>(x_3544.w, x_3544.y));
            let x_3548 : f32 = u_xlat17.y;
            u_xlat14.y = x_3548;
            let x_3551 : f32 = u_xlat15.z;
            u_xlat17.y = x_3551;
            let x_3553 : vec4<f32> = u_xlat12;
            let x_3556 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3559 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3553.x, x_3553.y, x_3553.x, x_3553.y) * vec4<f32>(x_3556.x, x_3556.y, x_3556.x, x_3556.y)) + vec4<f32>(x_3559.x, x_3559.y, x_3559.z, x_3559.y));
            let x_3562 : vec4<f32> = u_xlat12;
            let x_3565 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3568 : vec4<f32> = u_xlat17;
            let x_3570 : vec2<f32> = ((vec2<f32>(x_3562.x, x_3562.y) * vec2<f32>(x_3565.x, x_3565.y)) + vec2<f32>(x_3568.w, x_3568.y));
            let x_3571 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3570.x, x_3570.y, x_3571.z, x_3571.w);
            let x_3574 : f32 = u_xlat17.y;
            u_xlat14.z = x_3574;
            let x_3577 : vec4<f32> = u_xlat12;
            let x_3580 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3583 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3577.x, x_3577.y, x_3577.x, x_3577.y) * vec4<f32>(x_3580.x, x_3580.y, x_3580.x, x_3580.y)) + vec4<f32>(x_3583.x, x_3583.y, x_3583.x, x_3583.z));
            let x_3587 : f32 = u_xlat15.w;
            u_xlat17.y = x_3587;
            let x_3590 : vec4<f32> = u_xlat12;
            let x_3593 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3596 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3590.x, x_3590.y, x_3590.x, x_3590.y) * vec4<f32>(x_3593.x, x_3593.y, x_3593.x, x_3593.y)) + vec4<f32>(x_3596.x, x_3596.y, x_3596.z, x_3596.y));
            let x_3600 : vec4<f32> = u_xlat12;
            let x_3603 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3606 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3600.x, x_3600.y) * vec2<f32>(x_3603.x, x_3603.y)) + vec2<f32>(x_3606.w, x_3606.y));
            let x_3610 : f32 = u_xlat17.y;
            u_xlat14.w = x_3610;
            let x_3613 : vec4<f32> = u_xlat12;
            let x_3616 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3619 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3613.x, x_3613.y) * vec2<f32>(x_3616.x, x_3616.y)) + vec2<f32>(x_3619.x, x_3619.w));
            let x_3622 : vec4<f32> = u_xlat17;
            let x_3623 : vec3<f32> = vec3<f32>(x_3622.x, x_3622.z, x_3622.w);
            let x_3624 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3623.x, x_3624.y, x_3623.y, x_3623.z);
            let x_3626 : vec4<f32> = u_xlat12;
            let x_3629 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3632 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3626.x, x_3626.y, x_3626.x, x_3626.y) * vec4<f32>(x_3629.x, x_3629.y, x_3629.x, x_3629.y)) + vec4<f32>(x_3632.x, x_3632.y, x_3632.z, x_3632.y));
            let x_3635 : vec4<f32> = u_xlat12;
            let x_3638 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3641 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3635.x, x_3635.y) * vec2<f32>(x_3638.x, x_3638.y)) + vec2<f32>(x_3641.w, x_3641.y));
            let x_3645 : f32 = u_xlat14.x;
            u_xlat15.x = x_3645;
            let x_3647 : vec4<f32> = u_xlat12;
            let x_3650 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3653 : vec4<f32> = u_xlat15;
            let x_3655 : vec2<f32> = ((vec2<f32>(x_3647.x, x_3647.y) * vec2<f32>(x_3650.x, x_3650.y)) + vec2<f32>(x_3653.x, x_3653.y));
            let x_3656 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3655.x, x_3655.y, x_3656.z, x_3656.w);
            let x_3659 : vec4<f32> = u_xlat13;
            let x_3661 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3659.x, x_3659.x, x_3659.x, x_3659.x) * x_3661);
            let x_3664 : vec4<f32> = u_xlat13;
            let x_3666 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3664.y, x_3664.y, x_3664.y, x_3664.y) * x_3666);
            let x_3669 : vec4<f32> = u_xlat13;
            let x_3671 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3669.z, x_3669.z, x_3669.z, x_3669.z) * x_3671);
            let x_3673 : vec4<f32> = u_xlat13;
            let x_3675 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3673.w, x_3673.w, x_3673.w, x_3673.w) * x_3675);
            let x_3678 : vec4<f32> = u_xlat18;
            let x_3679 : vec2<f32> = vec2<f32>(x_3678.x, x_3678.y);
            let x_3681 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3679.x, x_3679.y, x_3681);
            let x_3688 : vec3<f32> = txVec43;
            let x_3690 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3688.xy, x_3688.z);
            u_xlat85 = x_3690;
            let x_3692 : vec4<f32> = u_xlat18;
            let x_3693 : vec2<f32> = vec2<f32>(x_3692.z, x_3692.w);
            let x_3695 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3693.x, x_3693.y, x_3695);
            let x_3702 : vec3<f32> = txVec44;
            let x_3704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3702.xy, x_3702.z);
            u_xlat86 = x_3704;
            let x_3705 : f32 = u_xlat86;
            let x_3707 : f32 = u_xlat23.y;
            u_xlat86 = (x_3705 * x_3707);
            let x_3710 : f32 = u_xlat23.x;
            let x_3711 : f32 = u_xlat85;
            let x_3713 : f32 = u_xlat86;
            u_xlat85 = ((x_3710 * x_3711) + x_3713);
            let x_3716 : vec2<f32> = u_xlat64;
            let x_3718 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3716.x, x_3716.y, x_3718);
            let x_3725 : vec3<f32> = txVec45;
            let x_3727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3725.xy, x_3725.z);
            u_xlat86 = x_3727;
            let x_3729 : f32 = u_xlat23.z;
            let x_3730 : f32 = u_xlat86;
            let x_3732 : f32 = u_xlat85;
            u_xlat85 = ((x_3729 * x_3730) + x_3732);
            let x_3735 : vec4<f32> = u_xlat21;
            let x_3736 : vec2<f32> = vec2<f32>(x_3735.x, x_3735.y);
            let x_3738 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3736.x, x_3736.y, x_3738);
            let x_3745 : vec3<f32> = txVec46;
            let x_3747 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3745.xy, x_3745.z);
            u_xlat86 = x_3747;
            let x_3749 : f32 = u_xlat23.w;
            let x_3750 : f32 = u_xlat86;
            let x_3752 : f32 = u_xlat85;
            u_xlat85 = ((x_3749 * x_3750) + x_3752);
            let x_3755 : vec4<f32> = u_xlat19;
            let x_3756 : vec2<f32> = vec2<f32>(x_3755.x, x_3755.y);
            let x_3758 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3756.x, x_3756.y, x_3758);
            let x_3765 : vec3<f32> = txVec47;
            let x_3767 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3765.xy, x_3765.z);
            u_xlat86 = x_3767;
            let x_3769 : f32 = u_xlat24.x;
            let x_3770 : f32 = u_xlat86;
            let x_3772 : f32 = u_xlat85;
            u_xlat85 = ((x_3769 * x_3770) + x_3772);
            let x_3775 : vec4<f32> = u_xlat19;
            let x_3776 : vec2<f32> = vec2<f32>(x_3775.z, x_3775.w);
            let x_3778 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3776.x, x_3776.y, x_3778);
            let x_3785 : vec3<f32> = txVec48;
            let x_3787 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3785.xy, x_3785.z);
            u_xlat86 = x_3787;
            let x_3789 : f32 = u_xlat24.y;
            let x_3790 : f32 = u_xlat86;
            let x_3792 : f32 = u_xlat85;
            u_xlat85 = ((x_3789 * x_3790) + x_3792);
            let x_3795 : vec4<f32> = u_xlat20;
            let x_3796 : vec2<f32> = vec2<f32>(x_3795.x, x_3795.y);
            let x_3798 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3796.x, x_3796.y, x_3798);
            let x_3805 : vec3<f32> = txVec49;
            let x_3807 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3805.xy, x_3805.z);
            u_xlat86 = x_3807;
            let x_3809 : f32 = u_xlat24.z;
            let x_3810 : f32 = u_xlat86;
            let x_3812 : f32 = u_xlat85;
            u_xlat85 = ((x_3809 * x_3810) + x_3812);
            let x_3815 : vec4<f32> = u_xlat21;
            let x_3816 : vec2<f32> = vec2<f32>(x_3815.z, x_3815.w);
            let x_3818 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3816.x, x_3816.y, x_3818);
            let x_3825 : vec3<f32> = txVec50;
            let x_3827 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3825.xy, x_3825.z);
            u_xlat86 = x_3827;
            let x_3829 : f32 = u_xlat24.w;
            let x_3830 : f32 = u_xlat86;
            let x_3832 : f32 = u_xlat85;
            u_xlat85 = ((x_3829 * x_3830) + x_3832);
            let x_3835 : vec4<f32> = u_xlat22;
            let x_3836 : vec2<f32> = vec2<f32>(x_3835.x, x_3835.y);
            let x_3838 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3836.x, x_3836.y, x_3838);
            let x_3845 : vec3<f32> = txVec51;
            let x_3847 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3845.xy, x_3845.z);
            u_xlat86 = x_3847;
            let x_3849 : f32 = u_xlat25.x;
            let x_3850 : f32 = u_xlat86;
            let x_3852 : f32 = u_xlat85;
            u_xlat85 = ((x_3849 * x_3850) + x_3852);
            let x_3855 : vec4<f32> = u_xlat22;
            let x_3856 : vec2<f32> = vec2<f32>(x_3855.z, x_3855.w);
            let x_3858 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3856.x, x_3856.y, x_3858);
            let x_3865 : vec3<f32> = txVec52;
            let x_3867 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3865.xy, x_3865.z);
            u_xlat86 = x_3867;
            let x_3869 : f32 = u_xlat25.y;
            let x_3870 : f32 = u_xlat86;
            let x_3872 : f32 = u_xlat85;
            u_xlat85 = ((x_3869 * x_3870) + x_3872);
            let x_3875 : vec2<f32> = u_xlat40;
            let x_3877 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3875.x, x_3875.y, x_3877);
            let x_3884 : vec3<f32> = txVec53;
            let x_3886 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3884.xy, x_3884.z);
            u_xlat86 = x_3886;
            let x_3888 : f32 = u_xlat25.z;
            let x_3889 : f32 = u_xlat86;
            let x_3891 : f32 = u_xlat85;
            u_xlat85 = ((x_3888 * x_3889) + x_3891);
            let x_3894 : vec2<f32> = u_xlat72;
            let x_3896 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3894.x, x_3894.y, x_3896);
            let x_3903 : vec3<f32> = txVec54;
            let x_3905 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3903.xy, x_3903.z);
            u_xlat86 = x_3905;
            let x_3907 : f32 = u_xlat25.w;
            let x_3908 : f32 = u_xlat86;
            let x_3910 : f32 = u_xlat85;
            u_xlat85 = ((x_3907 * x_3908) + x_3910);
            let x_3913 : vec4<f32> = u_xlat17;
            let x_3914 : vec2<f32> = vec2<f32>(x_3913.x, x_3913.y);
            let x_3916 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3914.x, x_3914.y, x_3916);
            let x_3923 : vec3<f32> = txVec55;
            let x_3925 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3923.xy, x_3923.z);
            u_xlat86 = x_3925;
            let x_3927 : f32 = u_xlat13.x;
            let x_3928 : f32 = u_xlat86;
            let x_3930 : f32 = u_xlat85;
            u_xlat85 = ((x_3927 * x_3928) + x_3930);
            let x_3933 : vec4<f32> = u_xlat17;
            let x_3934 : vec2<f32> = vec2<f32>(x_3933.z, x_3933.w);
            let x_3936 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3934.x, x_3934.y, x_3936);
            let x_3943 : vec3<f32> = txVec56;
            let x_3945 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3943.xy, x_3943.z);
            u_xlat86 = x_3945;
            let x_3947 : f32 = u_xlat13.y;
            let x_3948 : f32 = u_xlat86;
            let x_3950 : f32 = u_xlat85;
            u_xlat85 = ((x_3947 * x_3948) + x_3950);
            let x_3953 : vec2<f32> = u_xlat67;
            let x_3955 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3953.x, x_3953.y, x_3955);
            let x_3962 : vec3<f32> = txVec57;
            let x_3964 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3962.xy, x_3962.z);
            u_xlat86 = x_3964;
            let x_3966 : f32 = u_xlat13.z;
            let x_3967 : f32 = u_xlat86;
            let x_3969 : f32 = u_xlat85;
            u_xlat85 = ((x_3966 * x_3967) + x_3969);
            let x_3972 : vec4<f32> = u_xlat12;
            let x_3973 : vec2<f32> = vec2<f32>(x_3972.x, x_3972.y);
            let x_3975 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3973.x, x_3973.y, x_3975);
            let x_3982 : vec3<f32> = txVec58;
            let x_3984 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3982.xy, x_3982.z);
            u_xlat86 = x_3984;
            let x_3986 : f32 = u_xlat13.w;
            let x_3987 : f32 = u_xlat86;
            let x_3989 : f32 = u_xlat85;
            u_xlat59.x = ((x_3986 * x_3987) + x_3989);
          }
        }
      } else {
        let x_3994 : vec4<f32> = u_xlat11;
        let x_3995 : vec2<f32> = vec2<f32>(x_3994.x, x_3994.y);
        let x_3997 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3995.x, x_3995.y, x_3997);
        let x_4004 : vec3<f32> = txVec59;
        let x_4006 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4004.xy, x_4004.z);
        u_xlat59.x = x_4006;
      }
      let x_4008 : i32 = u_xlati30;
      let x_4010 : f32 = x_497.x_AdditionalShadowParams[x_4008].x;
      u_xlat85 = (1.0f + -(x_4010));
      let x_4014 : f32 = u_xlat59.x;
      let x_4015 : i32 = u_xlati30;
      let x_4017 : f32 = x_497.x_AdditionalShadowParams[x_4015].x;
      let x_4019 : f32 = u_xlat85;
      u_xlat59.x = ((x_4014 * x_4017) + x_4019);
      let x_4023 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4023);
      let x_4027 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4027 >= 1.0f);
      let x_4029 : bool = u_xlatb85;
      let x_4030 : bool = u_xlatb86;
      u_xlatb85 = (x_4029 | x_4030);
      let x_4032 : bool = u_xlatb85;
      if (x_4032) {
        x_4033 = 1.0f;
      } else {
        let x_4038 : f32 = u_xlat59.x;
        x_4033 = x_4038;
      }
      let x_4039 : f32 = x_4033;
      u_xlat59.x = x_4039;
    } else {
      u_xlat59.x = 1.0f;
    }
    let x_4044 : f32 = u_xlat59.x;
    u_xlat85 = (-(x_4044) + 1.0f);
    let x_4048 : f32 = u_xlat2.x;
    let x_4049 : f32 = u_xlat85;
    let x_4052 : f32 = u_xlat59.x;
    u_xlat59.x = ((x_4048 * x_4049) + x_4052);
    let x_4056 : i32 = u_xlati30;
    u_xlati85 = (1i << bitcast<u32>((x_4056 & 31i)));
    let x_4060 : i32 = u_xlati85;
    let x_4063 : f32 = x_2148.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_4060) & bitcast<u32>(x_4063)));
    let x_4067 : i32 = u_xlati85;
    if ((x_4067 != 0i)) {
      let x_4071 : i32 = u_xlati30;
      let x_4073 : f32 = x_2148.x_AdditionalLightsLightTypes[x_4071].el;
      u_xlati85 = i32(x_4073);
      let x_4076 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_4076 != 0i));
      let x_4080 : i32 = u_xlati30;
      u_xlati88 = (x_4080 << bitcast<u32>(2i));
      let x_4082 : i32 = u_xlati86;
      if ((x_4082 != 0i)) {
        let x_4086 : vec3<f32> = vs_INTERP7;
        let x_4088 : i32 = u_xlati88;
        let x_4091 : i32 = u_xlati88;
        let x_4095 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[((x_4088 + 1i) / 4i)][((x_4091 + 1i) % 4i)];
        let x_4097 : vec3<f32> = (vec3<f32>(x_4086.y, x_4086.y, x_4086.y) * vec3<f32>(x_4095.x, x_4095.y, x_4095.w));
        let x_4098 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4097.x, x_4097.y, x_4097.z, x_4098.w);
        let x_4100 : i32 = u_xlati88;
        let x_4102 : i32 = u_xlati88;
        let x_4105 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[(x_4100 / 4i)][(x_4102 % 4i)];
        let x_4107 : vec3<f32> = vs_INTERP7;
        let x_4110 : vec4<f32> = u_xlat11;
        let x_4112 : vec3<f32> = ((vec3<f32>(x_4105.x, x_4105.y, x_4105.w) * vec3<f32>(x_4107.x, x_4107.x, x_4107.x)) + vec3<f32>(x_4110.x, x_4110.y, x_4110.z));
        let x_4113 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4112.x, x_4112.y, x_4112.z, x_4113.w);
        let x_4115 : i32 = u_xlati88;
        let x_4118 : i32 = u_xlati88;
        let x_4122 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[((x_4115 + 2i) / 4i)][((x_4118 + 2i) % 4i)];
        let x_4124 : vec3<f32> = vs_INTERP7;
        let x_4127 : vec4<f32> = u_xlat11;
        let x_4129 : vec3<f32> = ((vec3<f32>(x_4122.x, x_4122.y, x_4122.w) * vec3<f32>(x_4124.z, x_4124.z, x_4124.z)) + vec3<f32>(x_4127.x, x_4127.y, x_4127.z));
        let x_4130 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4129.x, x_4129.y, x_4129.z, x_4130.w);
        let x_4132 : vec4<f32> = u_xlat11;
        let x_4134 : i32 = u_xlati88;
        let x_4137 : i32 = u_xlati88;
        let x_4141 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[((x_4134 + 3i) / 4i)][((x_4137 + 3i) % 4i)];
        let x_4143 : vec3<f32> = (vec3<f32>(x_4132.x, x_4132.y, x_4132.z) + vec3<f32>(x_4141.x, x_4141.y, x_4141.w));
        let x_4144 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4143.x, x_4143.y, x_4143.z, x_4144.w);
        let x_4146 : vec4<f32> = u_xlat11;
        let x_4148 : vec4<f32> = u_xlat11;
        let x_4150 : vec2<f32> = (vec2<f32>(x_4146.x, x_4146.y) / vec2<f32>(x_4148.z, x_4148.z));
        let x_4151 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4150.x, x_4150.y, x_4151.z, x_4151.w);
        let x_4153 : vec4<f32> = u_xlat11;
        let x_4156 : vec2<f32> = ((vec2<f32>(x_4153.x, x_4153.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4157 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4156.x, x_4156.y, x_4157.z, x_4157.w);
        let x_4159 : vec4<f32> = u_xlat11;
        let x_4163 : vec2<f32> = clamp(vec2<f32>(x_4159.x, x_4159.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4164 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4163.x, x_4163.y, x_4164.z, x_4164.w);
        let x_4166 : i32 = u_xlati30;
        let x_4168 : vec4<f32> = x_2148.x_AdditionalLightsCookieAtlasUVRects[x_4166];
        let x_4170 : vec4<f32> = u_xlat11;
        let x_4173 : i32 = u_xlati30;
        let x_4175 : vec4<f32> = x_2148.x_AdditionalLightsCookieAtlasUVRects[x_4173];
        let x_4177 : vec2<f32> = ((vec2<f32>(x_4168.x, x_4168.y) * vec2<f32>(x_4170.x, x_4170.y)) + vec2<f32>(x_4175.z, x_4175.w));
        let x_4178 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4177.x, x_4177.y, x_4178.z, x_4178.w);
      } else {
        let x_4181 : i32 = u_xlati85;
        u_xlatb85 = (x_4181 == 1i);
        let x_4183 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4183);
        let x_4185 : i32 = u_xlati85;
        if ((x_4185 != 0i)) {
          let x_4190 : vec3<f32> = vs_INTERP7;
          let x_4192 : i32 = u_xlati88;
          let x_4195 : i32 = u_xlati88;
          let x_4199 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[((x_4192 + 1i) / 4i)][((x_4195 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4190.y, x_4190.y) * vec2<f32>(x_4199.x, x_4199.y));
          let x_4202 : i32 = u_xlati88;
          let x_4204 : i32 = u_xlati88;
          let x_4207 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[(x_4202 / 4i)][(x_4204 % 4i)];
          let x_4209 : vec3<f32> = vs_INTERP7;
          let x_4212 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4207.x, x_4207.y) * vec2<f32>(x_4209.x, x_4209.x)) + x_4212);
          let x_4214 : i32 = u_xlati88;
          let x_4217 : i32 = u_xlati88;
          let x_4221 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[((x_4214 + 2i) / 4i)][((x_4217 + 2i) % 4i)];
          let x_4223 : vec3<f32> = vs_INTERP7;
          let x_4226 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4221.x, x_4221.y) * vec2<f32>(x_4223.z, x_4223.z)) + x_4226);
          let x_4228 : vec2<f32> = u_xlat63;
          let x_4229 : i32 = u_xlati88;
          let x_4232 : i32 = u_xlati88;
          let x_4236 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[((x_4229 + 3i) / 4i)][((x_4232 + 3i) % 4i)];
          u_xlat63 = (x_4228 + vec2<f32>(x_4236.x, x_4236.y));
          let x_4239 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4239 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4242 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4242);
          let x_4244 : i32 = u_xlati30;
          let x_4246 : vec4<f32> = x_2148.x_AdditionalLightsCookieAtlasUVRects[x_4244];
          let x_4248 : vec2<f32> = u_xlat63;
          let x_4250 : i32 = u_xlati30;
          let x_4252 : vec4<f32> = x_2148.x_AdditionalLightsCookieAtlasUVRects[x_4250];
          let x_4254 : vec2<f32> = ((vec2<f32>(x_4246.x, x_4246.y) * x_4248) + vec2<f32>(x_4252.z, x_4252.w));
          let x_4255 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4254.x, x_4254.y, x_4255.z, x_4255.w);
        } else {
          let x_4258 : vec3<f32> = vs_INTERP7;
          let x_4260 : i32 = u_xlati88;
          let x_4263 : i32 = u_xlati88;
          let x_4267 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[((x_4260 + 1i) / 4i)][((x_4263 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4258.y, x_4258.y, x_4258.y, x_4258.y) * x_4267);
          let x_4269 : i32 = u_xlati88;
          let x_4271 : i32 = u_xlati88;
          let x_4274 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[(x_4269 / 4i)][(x_4271 % 4i)];
          let x_4275 : vec3<f32> = vs_INTERP7;
          let x_4278 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4274 * vec4<f32>(x_4275.x, x_4275.x, x_4275.x, x_4275.x)) + x_4278);
          let x_4280 : i32 = u_xlati88;
          let x_4283 : i32 = u_xlati88;
          let x_4287 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[((x_4280 + 2i) / 4i)][((x_4283 + 2i) % 4i)];
          let x_4288 : vec3<f32> = vs_INTERP7;
          let x_4291 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4287 * vec4<f32>(x_4288.z, x_4288.z, x_4288.z, x_4288.z)) + x_4291);
          let x_4293 : vec4<f32> = u_xlat12;
          let x_4294 : i32 = u_xlati88;
          let x_4297 : i32 = u_xlati88;
          let x_4301 : vec4<f32> = x_2148.x_AdditionalLightsWorldToLights[((x_4294 + 3i) / 4i)][((x_4297 + 3i) % 4i)];
          u_xlat12 = (x_4293 + x_4301);
          let x_4303 : vec4<f32> = u_xlat12;
          let x_4305 : vec4<f32> = u_xlat12;
          let x_4307 : vec3<f32> = (vec3<f32>(x_4303.x, x_4303.y, x_4303.z) / vec3<f32>(x_4305.w, x_4305.w, x_4305.w));
          let x_4308 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4307.x, x_4307.y, x_4307.z, x_4308.w);
          let x_4310 : vec4<f32> = u_xlat12;
          let x_4312 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4310.x, x_4310.y, x_4310.z), vec3<f32>(x_4312.x, x_4312.y, x_4312.z));
          let x_4315 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4315);
          let x_4317 : f32 = u_xlat85;
          let x_4319 : vec4<f32> = u_xlat12;
          let x_4321 : vec3<f32> = (vec3<f32>(x_4317, x_4317, x_4317) * vec3<f32>(x_4319.x, x_4319.y, x_4319.z));
          let x_4322 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4321.x, x_4321.y, x_4321.z, x_4322.w);
          let x_4324 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4324.x, x_4324.y, x_4324.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4328 : f32 = u_xlat85;
          u_xlat85 = max(x_4328, 0.00000099999999747524f);
          let x_4331 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4331);
          let x_4333 : f32 = u_xlat85;
          let x_4335 : vec4<f32> = u_xlat12;
          let x_4337 : vec3<f32> = (vec3<f32>(x_4333, x_4333, x_4333) * vec3<f32>(x_4335.z, x_4335.x, x_4335.y));
          let x_4338 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4337.x, x_4337.y, x_4337.z, x_4338.w);
          let x_4341 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4341);
          let x_4345 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4345, 0.0f, 1.0f);
          let x_4349 : vec4<f32> = u_xlat13;
          let x_4351 : vec4<bool> = (vec4<f32>(x_4349.y, x_4349.z, x_4349.y, x_4349.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4351.x, x_4351.y);
          let x_4354 : bool = u_xlatb63.x;
          if (x_4354) {
            let x_4359 : f32 = u_xlat13.x;
            x_4355 = x_4359;
          } else {
            let x_4362 : f32 = u_xlat13.x;
            x_4355 = -(x_4362);
          }
          let x_4364 : f32 = x_4355;
          u_xlat63.x = x_4364;
          let x_4367 : bool = u_xlatb63.y;
          if (x_4367) {
            let x_4372 : f32 = u_xlat13.x;
            x_4368 = x_4372;
          } else {
            let x_4375 : f32 = u_xlat13.x;
            x_4368 = -(x_4375);
          }
          let x_4377 : f32 = x_4368;
          u_xlat63.y = x_4377;
          let x_4379 : vec4<f32> = u_xlat12;
          let x_4381 : f32 = u_xlat85;
          let x_4384 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4379.x, x_4379.y) * vec2<f32>(x_4381, x_4381)) + x_4384);
          let x_4386 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4386 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4389 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4389, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4393 : i32 = u_xlati30;
          let x_4395 : vec4<f32> = x_2148.x_AdditionalLightsCookieAtlasUVRects[x_4393];
          let x_4397 : vec2<f32> = u_xlat63;
          let x_4399 : i32 = u_xlati30;
          let x_4401 : vec4<f32> = x_2148.x_AdditionalLightsCookieAtlasUVRects[x_4399];
          let x_4403 : vec2<f32> = ((vec2<f32>(x_4395.x, x_4395.y) * x_4397) + vec2<f32>(x_4401.z, x_4401.w));
          let x_4404 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4403.x, x_4403.y, x_4404.z, x_4404.w);
        }
      }
      let x_4411 : vec4<f32> = u_xlat11;
      let x_4413 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4411.x, x_4411.y), 0.0f);
      u_xlat11 = x_4413;
      let x_4415 : bool = u_xlatb7.y;
      if (x_4415) {
        let x_4420 : f32 = u_xlat11.w;
        x_4416 = x_4420;
      } else {
        let x_4423 : f32 = u_xlat11.x;
        x_4416 = x_4423;
      }
      let x_4424 : f32 = x_4416;
      u_xlat85 = x_4424;
      let x_4426 : bool = u_xlatb7.x;
      if (x_4426) {
        let x_4430 : vec4<f32> = u_xlat11;
        x_4427 = vec3<f32>(x_4430.x, x_4430.y, x_4430.z);
      } else {
        let x_4433 : f32 = u_xlat85;
        x_4427 = vec3<f32>(x_4433, x_4433, x_4433);
      }
      let x_4435 : vec3<f32> = x_4427;
      let x_4436 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4435.x, x_4435.y, x_4435.z, x_4436.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4442 : vec4<f32> = u_xlat11;
    let x_4444 : i32 = u_xlati30;
    let x_4446 : vec4<f32> = x_2613.x_AdditionalLightsColor[x_4444];
    let x_4448 : vec3<f32> = (vec3<f32>(x_4442.x, x_4442.y, x_4442.z) * vec3<f32>(x_4446.x, x_4446.y, x_4446.z));
    let x_4449 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4448.x, x_4448.y, x_4448.z, x_4449.w);
    let x_4451 : f32 = u_xlat83;
    let x_4453 : f32 = u_xlat59.x;
    u_xlat30.x = (x_4451 * x_4453);
    let x_4456 : vec4<f32> = u_xlat1;
    let x_4458 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4456.x, x_4456.y, x_4456.z), vec3<f32>(x_4458.x, x_4458.y, x_4458.z));
    let x_4461 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4461, 0.0f, 1.0f);
    let x_4464 : f32 = u_xlat30.x;
    let x_4465 : f32 = u_xlat83;
    u_xlat30.x = (x_4464 * x_4465);
    let x_4468 : vec3<f32> = u_xlat30;
    let x_4470 : vec4<f32> = u_xlat11;
    let x_4472 : vec3<f32> = (vec3<f32>(x_4468.x, x_4468.x, x_4468.x) * vec3<f32>(x_4470.x, x_4470.y, x_4470.z));
    let x_4473 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4472.x, x_4472.y, x_4472.z, x_4473.w);
    let x_4475 : vec3<f32> = u_xlat35;
    let x_4476 : f32 = u_xlat84;
    let x_4479 : vec4<f32> = u_xlat3;
    u_xlat35 = ((x_4475 * vec3<f32>(x_4476, x_4476, x_4476)) + vec3<f32>(x_4479.x, x_4479.y, x_4479.z));
    let x_4482 : vec3<f32> = u_xlat35;
    let x_4483 : vec3<f32> = u_xlat35;
    u_xlat30.x = dot(x_4482, x_4483);
    let x_4487 : f32 = u_xlat30.x;
    u_xlat30.x = max(x_4487, 1.17549435e-38f);
    let x_4491 : f32 = u_xlat30.x;
    u_xlat30.x = inverseSqrt(x_4491);
    let x_4494 : vec3<f32> = u_xlat30;
    let x_4496 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4494.x, x_4494.x, x_4494.x) * x_4496);
    let x_4498 : vec4<f32> = u_xlat1;
    let x_4500 : vec3<f32> = u_xlat35;
    u_xlat30.x = dot(vec3<f32>(x_4498.x, x_4498.y, x_4498.z), x_4500);
    let x_4504 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_4504, 0.0f, 1.0f);
    let x_4507 : vec4<f32> = u_xlat10;
    let x_4509 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_4507.x, x_4507.y, x_4507.z), x_4509);
    let x_4511 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4511, 0.0f, 1.0f);
    let x_4514 : f32 = u_xlat30.x;
    let x_4516 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4514 * x_4516);
    let x_4520 : f32 = u_xlat30.x;
    let x_4522 : f32 = u_xlat9.x;
    u_xlat30.x = ((x_4520 * x_4522) + 1.00001001358032226562f);
    let x_4526 : f32 = u_xlat83;
    let x_4527 : f32 = u_xlat83;
    u_xlat83 = (x_4526 * x_4527);
    let x_4530 : f32 = u_xlat30.x;
    let x_4532 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4530 * x_4532);
    let x_4535 : f32 = u_xlat83;
    u_xlat83 = max(x_4535, 0.10000000149011611938f);
    let x_4538 : f32 = u_xlat30.x;
    let x_4539 : f32 = u_xlat83;
    u_xlat30.x = (x_4538 * x_4539);
    let x_4542 : f32 = u_xlat81;
    let x_4544 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4542 * x_4544);
    let x_4547 : f32 = u_xlat28;
    let x_4549 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4547 / x_4549);
    let x_4552 : vec4<f32> = u_xlat0;
    let x_4554 : vec3<f32> = u_xlat30;
    let x_4557 : vec3<f32> = u_xlat6;
    u_xlat35 = ((vec3<f32>(x_4552.x, x_4552.y, x_4552.z) * vec3<f32>(x_4554.x, x_4554.x, x_4554.x)) + x_4557);
    let x_4559 : vec3<f32> = u_xlat35;
    let x_4560 : vec4<f32> = u_xlat11;
    let x_4563 : vec4<f32> = u_xlat8;
    let x_4565 : vec3<f32> = ((x_4559 * vec3<f32>(x_4560.x, x_4560.y, x_4560.z)) + vec3<f32>(x_4563.x, x_4563.y, x_4563.z));
    let x_4566 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4565.x, x_4565.y, x_4565.z, x_4566.w);

    continuing {
      let x_4568 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4568 + bitcast<u32>(1i));
    }
  }
  let x_4570 : vec4<f32> = u_xlat5;
  let x_4572 : f32 = u_xlat54;
  let x_4575 : vec4<f32> = u_xlat4;
  let x_4577 : vec3<f32> = ((vec3<f32>(x_4570.x, x_4570.y, x_4570.z) * vec3<f32>(x_4572, x_4572, x_4572)) + vec3<f32>(x_4575.x, x_4575.z, x_4575.w));
  let x_4578 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4577.x, x_4577.y, x_4577.z, x_4578.w);
  let x_4580 : vec4<f32> = u_xlat8;
  let x_4582 : vec4<f32> = u_xlat0;
  let x_4584 : vec3<f32> = (vec3<f32>(x_4580.x, x_4580.y, x_4580.z) + vec3<f32>(x_4582.x, x_4582.y, x_4582.z));
  let x_4585 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4584.x, x_4584.y, x_4584.z, x_4585.w);
  let x_4587 : f32 = u_xlat78;
  let x_4588 : f32 = u_xlat78;
  u_xlat78 = (x_4587 * -(x_4588));
  let x_4591 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4591);
  let x_4593 : vec4<f32> = u_xlat0;
  let x_4596 : vec4<f32> = x_29.unity_FogColor;
  let x_4599 : vec3<f32> = (vec3<f32>(x_4593.x, x_4593.y, x_4593.z) + -(vec3<f32>(x_4596.x, x_4596.y, x_4596.z)));
  let x_4600 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4599.x, x_4599.y, x_4599.z, x_4600.w);
  let x_4604 : f32 = u_xlat78;
  let x_4606 : vec4<f32> = u_xlat0;
  let x_4610 : vec4<f32> = x_29.unity_FogColor;
  let x_4612 : vec3<f32> = ((vec3<f32>(x_4604, x_4604, x_4604) * vec3<f32>(x_4606.x, x_4606.y, x_4606.z)) + vec3<f32>(x_4610.x, x_4610.y, x_4610.z));
  let x_4613 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4612.x, x_4612.y, x_4612.z, x_4613.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



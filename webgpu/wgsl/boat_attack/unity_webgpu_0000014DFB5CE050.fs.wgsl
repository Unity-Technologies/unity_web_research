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

@group(0) @binding(5) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_25A083BC : sampler;

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

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat78 : f32;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb53 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat53 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_497 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

var<private> u_xlat79 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(4) var<uniform> x_2183 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu79 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu30 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati30 : i32;

@group(1) @binding(1) var<uniform> x_2650 : AdditionalLights;

var<private> u_xlati59 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat86 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlatb59 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu28 : u32;

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
  var x_2134 : f32;
  var x_2250 : f32;
  var x_2261 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2791 : f32;
  var x_2801 : f32;
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
  var x_4070 : f32;
  var x_4392 : f32;
  var x_4405 : f32;
  var x_4453 : f32;
  var x_4464 : vec3<f32>;
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
  u_xlat80 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat80;
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
  let x_521 : vec3<f32> = (x_516 + -(vec3<f32>(x_518.x, x_518.y, x_518.z)));
  let x_522 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : vec3<f32> = vs_INTERP7;
  let x_527 : vec4<f32> = x_497.x_CascadeShadowSplitSpheres3;
  let x_530 : vec3<f32> = (x_525 + -(vec3<f32>(x_527.x, x_527.y, x_527.z)));
  let x_531 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat4;
  let x_535 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_539 : vec4<f32> = u_xlat5;
  let x_541 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_539.x, x_539.y, x_539.z), vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_545 : vec4<f32> = u_xlat6;
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_545.x, x_545.y, x_545.z), vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_551 : vec4<f32> = u_xlat7;
  let x_553 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_551.x, x_551.y, x_551.z), vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_560 : vec4<f32> = u_xlat4;
  let x_563 : vec4<f32> = x_497.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_560 < x_563);
  let x_566 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_566);
  let x_570 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_570);
  let x_574 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_574);
  let x_578 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_578);
  let x_582 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_582);
  let x_587 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_587);
  let x_591 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_591);
  let x_594 : vec4<f32> = u_xlat4;
  let x_596 : vec4<f32> = u_xlat5;
  let x_598 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) + vec3<f32>(x_596.y, x_596.z, x_596.w));
  let x_599 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat4;
  let x_604 : vec3<f32> = max(vec3<f32>(x_601.x, x_601.y, x_601.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_605 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_605.x, x_604.x, x_604.y, x_604.z);
  let x_607 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_607, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_612 : f32 = u_xlat78;
  u_xlat78 = (-(x_612) + 4.0f);
  let x_617 : f32 = u_xlat78;
  u_xlatu78 = u32(x_617);
  let x_621 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_621) << bitcast<u32>(2i));
  let x_624 : vec3<f32> = vs_INTERP7;
  let x_626 : i32 = u_xlati78;
  let x_629 : i32 = u_xlati78;
  let x_633 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_626 + 1i) / 4i)][((x_629 + 1i) % 4i)];
  let x_635 : vec3<f32> = (vec3<f32>(x_624.y, x_624.y, x_624.y) * vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_638 : i32 = u_xlati78;
  let x_640 : i32 = u_xlati78;
  let x_643 : vec4<f32> = x_497.x_MainLightWorldToShadow[(x_638 / 4i)][(x_640 % 4i)];
  let x_645 : vec3<f32> = vs_INTERP7;
  let x_648 : vec4<f32> = u_xlat4;
  let x_650 : vec3<f32> = ((vec3<f32>(x_643.x, x_643.y, x_643.z) * vec3<f32>(x_645.x, x_645.x, x_645.x)) + vec3<f32>(x_648.x, x_648.y, x_648.z));
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : i32 = u_xlati78;
  let x_656 : i32 = u_xlati78;
  let x_660 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_653 + 2i) / 4i)][((x_656 + 2i) % 4i)];
  let x_662 : vec3<f32> = vs_INTERP7;
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : vec3<f32> = ((vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_662.z, x_662.z, x_662.z)) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat4;
  let x_672 : i32 = u_xlati78;
  let x_675 : i32 = u_xlati78;
  let x_679 : vec4<f32> = x_497.x_MainLightWorldToShadow[((x_672 + 3i) / 4i)][((x_675 + 3i) % 4i)];
  let x_681 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) + vec3<f32>(x_679.x, x_679.y, x_679.z));
  let x_682 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_685 : f32 = vs_INTERP7.y;
  let x_687 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat78 = (x_685 * x_687);
  let x_690 : f32 = x_29.unity_MatrixV[0i].z;
  let x_692 : f32 = vs_INTERP7.x;
  let x_694 : f32 = u_xlat78;
  u_xlat78 = ((x_690 * x_692) + x_694);
  let x_697 : f32 = x_29.unity_MatrixV[2i].z;
  let x_699 : f32 = vs_INTERP7.z;
  let x_701 : f32 = u_xlat78;
  u_xlat78 = ((x_697 * x_699) + x_701);
  let x_703 : f32 = u_xlat78;
  let x_705 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat78 = (x_703 + x_705);
  let x_707 : f32 = u_xlat78;
  let x_710 : f32 = x_29.x_ProjectionParams.y;
  u_xlat78 = (-(x_707) + -(x_710));
  let x_713 : f32 = u_xlat78;
  u_xlat78 = max(x_713, 0.0f);
  let x_715 : f32 = u_xlat78;
  let x_718 : f32 = x_29.unity_FogParams.x;
  u_xlat78 = (x_715 * x_718);
  u_xlat1.w = 1.0f;
  let x_723 : vec4<f32> = x_349.unity_SHAr;
  let x_724 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_723, x_724);
  let x_729 : vec4<f32> = x_349.unity_SHAg;
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_729, x_730);
  let x_735 : vec4<f32> = x_349.unity_SHAb;
  let x_736 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_735, x_736);
  let x_739 : vec4<f32> = u_xlat1;
  let x_741 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_739.y, x_739.z, x_739.z, x_739.x) * vec4<f32>(x_741.x, x_741.y, x_741.z, x_741.z));
  let x_746 : vec4<f32> = x_349.unity_SHBr;
  let x_747 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_746, x_747);
  let x_752 : vec4<f32> = x_349.unity_SHBg;
  let x_753 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_752, x_753);
  let x_758 : vec4<f32> = x_349.unity_SHBb;
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_758, x_759);
  let x_764 : f32 = u_xlat1.y;
  let x_766 : f32 = u_xlat1.y;
  u_xlat79 = (x_764 * x_766);
  let x_769 : f32 = u_xlat1.x;
  let x_771 : f32 = u_xlat1.x;
  let x_773 : f32 = u_xlat79;
  u_xlat79 = ((x_769 * x_771) + -(x_773));
  let x_778 : vec4<f32> = x_349.unity_SHC;
  let x_780 : f32 = u_xlat79;
  let x_783 : vec4<f32> = u_xlat7;
  let x_785 : vec3<f32> = ((vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(x_780, x_780, x_780)) + vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat5;
  let x_790 : vec4<f32> = u_xlat6;
  let x_792 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) + vec3<f32>(x_790.x, x_790.y, x_790.z));
  let x_793 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat5;
  let x_797 : vec3<f32> = max(vec3<f32>(x_795.x, x_795.y, x_795.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_798 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat2;
  let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
  let x_802 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat2;
  let x_808 : vec2<f32> = clamp(vec2<f32>(x_804.x, x_804.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
  let x_812 : f32 = u_xlat2.x;
  u_xlat79 = ((-(x_812) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_817 : f32 = u_xlat79;
  u_xlat80 = (-(x_817) + 1.0f);
  let x_820 : vec4<f32> = u_xlat0;
  let x_822 : f32 = u_xlat79;
  let x_824 : vec3<f32> = (vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(x_822, x_822, x_822));
  let x_825 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat0;
  let x_831 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_832 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat2;
  let x_836 : vec4<f32> = u_xlat0;
  let x_841 : vec3<f32> = ((vec3<f32>(x_834.x, x_834.x, x_834.x) * vec3<f32>(x_836.x, x_836.y, x_836.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_842 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_845 : f32 = u_xlat2.y;
  u_xlat79 = (-(x_845) + 1.0f);
  let x_848 : f32 = u_xlat79;
  let x_849 : f32 = u_xlat79;
  u_xlat2.x = (x_848 * x_849);
  let x_853 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_853, 0.0078125f);
  let x_859 : f32 = u_xlat2.x;
  let x_861 : f32 = u_xlat2.x;
  u_xlat81 = (x_859 * x_861);
  let x_864 : f32 = u_xlat80;
  let x_866 : f32 = u_xlat2.y;
  u_xlat28 = (x_864 + x_866);
  let x_868 : f32 = u_xlat28;
  u_xlat28 = min(x_868, 1.0f);
  let x_871 : f32 = u_xlat2.x;
  u_xlat80 = ((x_871 * 4.0f) + 2.0f);
  let x_876 : f32 = u_xlat2.z;
  u_xlat54 = min(x_876, 1.0f);
  let x_881 : f32 = x_497.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_881);
  let x_883 : bool = u_xlatb82;
  if (x_883) {
    let x_887 : f32 = x_497.x_MainLightShadowParams.y;
    u_xlatb82 = (x_887 == 1.0f);
    let x_889 : bool = u_xlatb82;
    if (x_889) {
      let x_892 : vec4<f32> = u_xlat4;
      let x_895 : vec4<f32> = x_497.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_892.x, x_892.y, x_892.x, x_892.y) + x_895);
      let x_898 : vec4<f32> = u_xlat7;
      let x_899 : vec2<f32> = vec2<f32>(x_898.x, x_898.y);
      let x_901 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_899.x, x_899.y, x_901);
      let x_914 : vec3<f32> = txVec0;
      let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_914.xy, x_914.z);
      u_xlat8.x = x_916;
      let x_919 : vec4<f32> = u_xlat7;
      let x_920 : vec2<f32> = vec2<f32>(x_919.z, x_919.w);
      let x_922 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_920.x, x_920.y, x_922);
      let x_929 : vec3<f32> = txVec1;
      let x_931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_929.xy, x_929.z);
      u_xlat8.y = x_931;
      let x_933 : vec4<f32> = u_xlat4;
      let x_936 : vec4<f32> = x_497.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_933.x, x_933.y, x_933.x, x_933.y) + x_936);
      let x_939 : vec4<f32> = u_xlat7;
      let x_940 : vec2<f32> = vec2<f32>(x_939.x, x_939.y);
      let x_942 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_940.x, x_940.y, x_942);
      let x_949 : vec3<f32> = txVec2;
      let x_951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_949.xy, x_949.z);
      u_xlat8.z = x_951;
      let x_954 : vec4<f32> = u_xlat7;
      let x_955 : vec2<f32> = vec2<f32>(x_954.z, x_954.w);
      let x_957 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_955.x, x_955.y, x_957);
      let x_964 : vec3<f32> = txVec3;
      let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_964.xy, x_964.z);
      u_xlat8.w = x_966;
      let x_969 : vec4<f32> = u_xlat8;
      u_xlat82 = dot(x_969, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_976 : f32 = x_497.x_MainLightShadowParams.y;
      u_xlatb83 = (x_976 == 2.0f);
      let x_978 : bool = u_xlatb83;
      if (x_978) {
        let x_981 : vec4<f32> = u_xlat4;
        let x_984 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_989 : vec2<f32> = ((vec2<f32>(x_981.x, x_981.y) * vec2<f32>(x_984.z, x_984.w)) + vec2<f32>(0.5f, 0.5f));
        let x_990 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_989.x, x_989.y, x_990.z, x_990.w);
        let x_992 : vec4<f32> = u_xlat7;
        let x_994 : vec2<f32> = floor(vec2<f32>(x_992.x, x_992.y));
        let x_995 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
        let x_998 : vec4<f32> = u_xlat4;
        let x_1001 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1001.z, x_1001.w)) + -(vec2<f32>(x_1004.x, x_1004.y)));
        let x_1008 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1008.x, x_1008.x, x_1008.y, x_1008.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1015 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1013.x, x_1013.x, x_1013.z, x_1013.z) * vec4<f32>(x_1015.x, x_1015.x, x_1015.z, x_1015.z));
        let x_1018 : vec4<f32> = u_xlat9;
        let x_1022 : vec2<f32> = (vec2<f32>(x_1018.y, x_1018.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_1023 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1022.x, x_1023.y, x_1022.y, x_1023.w);
        let x_1025 : vec4<f32> = u_xlat9;
        let x_1028 : vec2<f32> = u_xlat59;
        let x_1030 : vec2<f32> = ((vec2<f32>(x_1025.x, x_1025.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1028));
        let x_1031 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
        let x_1034 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1034) + vec2<f32>(1.0f, 1.0f));
        let x_1039 : vec2<f32> = u_xlat59;
        let x_1041 : vec2<f32> = min(x_1039, vec2<f32>(0.0f, 0.0f));
        let x_1042 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec4<f32> = u_xlat10;
        let x_1047 : vec4<f32> = u_xlat10;
        let x_1050 : vec2<f32> = u_xlat61;
        let x_1051 : vec2<f32> = ((-(vec2<f32>(x_1044.x, x_1044.y)) * vec2<f32>(x_1047.x, x_1047.y)) + x_1050);
        let x_1052 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1054 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1054, vec2<f32>(0.0f, 0.0f));
        let x_1056 : vec2<f32> = u_xlat59;
        let x_1058 : vec2<f32> = u_xlat59;
        let x_1060 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1056) * x_1058) + vec2<f32>(x_1060.y, x_1060.w));
        let x_1063 : vec4<f32> = u_xlat10;
        let x_1065 : vec2<f32> = (vec2<f32>(x_1063.x, x_1063.y) + vec2<f32>(1.0f, 1.0f));
        let x_1066 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1068 + vec2<f32>(1.0f, 1.0f));
        let x_1071 : vec4<f32> = u_xlat9;
        let x_1075 : vec2<f32> = (vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1076 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1075.x, x_1075.y, x_1076.z, x_1076.w);
        let x_1078 : vec2<f32> = u_xlat61;
        let x_1079 : vec2<f32> = (x_1078 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1080 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
        let x_1082 : vec4<f32> = u_xlat10;
        let x_1084 : vec2<f32> = (vec2<f32>(x_1082.x, x_1082.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1085 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1088 : vec2<f32> = u_xlat59;
        let x_1089 : vec2<f32> = (x_1088 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1090 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1092.y, x_1092.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1096 : f32 = u_xlat10.x;
        u_xlat11.z = x_1096;
        let x_1099 : f32 = u_xlat59.x;
        u_xlat11.w = x_1099;
        let x_1102 : f32 = u_xlat12.x;
        u_xlat9.z = x_1102;
        let x_1105 : f32 = u_xlat8.x;
        u_xlat9.w = x_1105;
        let x_1108 : vec4<f32> = u_xlat9;
        let x_1110 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1108.z, x_1108.w, x_1108.x, x_1108.z) + vec4<f32>(x_1110.z, x_1110.w, x_1110.x, x_1110.z));
        let x_1114 : f32 = u_xlat11.y;
        u_xlat10.z = x_1114;
        let x_1117 : f32 = u_xlat59.y;
        u_xlat10.w = x_1117;
        let x_1120 : f32 = u_xlat9.y;
        u_xlat12.z = x_1120;
        let x_1123 : f32 = u_xlat8.z;
        u_xlat12.w = x_1123;
        let x_1125 : vec4<f32> = u_xlat10;
        let x_1127 : vec4<f32> = u_xlat12;
        let x_1129 : vec3<f32> = (vec3<f32>(x_1125.z, x_1125.y, x_1125.w) + vec3<f32>(x_1127.z, x_1127.y, x_1127.w));
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
        let x_1132 : vec4<f32> = u_xlat9;
        let x_1134 : vec4<f32> = u_xlat13;
        let x_1136 : vec3<f32> = (vec3<f32>(x_1132.x, x_1132.z, x_1132.w) / vec3<f32>(x_1134.z, x_1134.w, x_1134.y));
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
        let x_1139 : vec4<f32> = u_xlat9;
        let x_1145 : vec3<f32> = (vec3<f32>(x_1139.x, x_1139.y, x_1139.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1146 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
        let x_1148 : vec4<f32> = u_xlat12;
        let x_1150 : vec4<f32> = u_xlat8;
        let x_1152 : vec3<f32> = (vec3<f32>(x_1148.z, x_1148.y, x_1148.w) / vec3<f32>(x_1150.x, x_1150.y, x_1150.z));
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
        let x_1155 : vec4<f32> = u_xlat10;
        let x_1157 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1158 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
        let x_1160 : vec4<f32> = u_xlat9;
        let x_1163 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1165 : vec3<f32> = (vec3<f32>(x_1160.y, x_1160.x, x_1160.z) * vec3<f32>(x_1163.x, x_1163.x, x_1163.x));
        let x_1166 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
        let x_1168 : vec4<f32> = u_xlat10;
        let x_1171 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1173 : vec3<f32> = (vec3<f32>(x_1168.x, x_1168.y, x_1168.z) * vec3<f32>(x_1171.y, x_1171.y, x_1171.y));
        let x_1174 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
        let x_1177 : f32 = u_xlat10.x;
        u_xlat9.w = x_1177;
        let x_1179 : vec4<f32> = u_xlat7;
        let x_1182 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1185 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1179.x, x_1179.y, x_1179.x, x_1179.y) * vec4<f32>(x_1182.x, x_1182.y, x_1182.x, x_1182.y)) + vec4<f32>(x_1185.y, x_1185.w, x_1185.x, x_1185.w));
        let x_1188 : vec4<f32> = u_xlat7;
        let x_1191 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1188.x, x_1188.y) * vec2<f32>(x_1191.x, x_1191.y)) + vec2<f32>(x_1194.z, x_1194.w));
        let x_1198 : f32 = u_xlat9.y;
        u_xlat10.w = x_1198;
        let x_1200 : vec4<f32> = u_xlat10;
        let x_1201 : vec2<f32> = vec2<f32>(x_1200.y, x_1200.z);
        let x_1202 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1202.x, x_1201.x, x_1202.z, x_1201.y);
        let x_1204 : vec4<f32> = u_xlat7;
        let x_1207 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.y) * vec4<f32>(x_1207.x, x_1207.y, x_1207.x, x_1207.y)) + vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1210.y));
        let x_1213 : vec4<f32> = u_xlat7;
        let x_1216 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1219 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1213.x, x_1213.y, x_1213.x, x_1213.y) * vec4<f32>(x_1216.x, x_1216.y, x_1216.x, x_1216.y)) + vec4<f32>(x_1219.w, x_1219.y, x_1219.w, x_1219.z));
        let x_1222 : vec4<f32> = u_xlat7;
        let x_1225 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1228 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1222.x, x_1222.y, x_1222.x, x_1222.y) * vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y)) + vec4<f32>(x_1228.x, x_1228.w, x_1228.z, x_1228.w));
        let x_1232 : vec4<f32> = u_xlat8;
        let x_1234 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1232.x, x_1232.x, x_1232.x, x_1232.y) * vec4<f32>(x_1234.z, x_1234.w, x_1234.y, x_1234.z));
        let x_1238 : vec4<f32> = u_xlat8;
        let x_1240 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1238.y, x_1238.y, x_1238.z, x_1238.z) * x_1240);
        let x_1244 : f32 = u_xlat8.z;
        let x_1246 : f32 = u_xlat13.y;
        u_xlat83 = (x_1244 * x_1246);
        let x_1249 : vec4<f32> = u_xlat11;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.x, x_1249.y);
        let x_1252 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1260 : vec3<f32> = txVec4;
        let x_1262 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1260.xy, x_1260.z);
        u_xlat84 = x_1262;
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.z, x_1264.w);
        let x_1267 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec5;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1274.xy, x_1274.z);
        u_xlat7.x = x_1276;
        let x_1279 : f32 = u_xlat7.x;
        let x_1281 : f32 = u_xlat14.y;
        u_xlat7.x = (x_1279 * x_1281);
        let x_1285 : f32 = u_xlat14.x;
        let x_1286 : f32 = u_xlat84;
        let x_1289 : f32 = u_xlat7.x;
        u_xlat84 = ((x_1285 * x_1286) + x_1289);
        let x_1292 : vec2<f32> = u_xlat59;
        let x_1294 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_1292.x, x_1292.y, x_1294);
        let x_1301 : vec3<f32> = txVec6;
        let x_1303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1301.xy, x_1301.z);
        u_xlat7.x = x_1303;
        let x_1306 : f32 = u_xlat14.z;
        let x_1308 : f32 = u_xlat7.x;
        let x_1310 : f32 = u_xlat84;
        u_xlat84 = ((x_1306 * x_1308) + x_1310);
        let x_1313 : vec4<f32> = u_xlat10;
        let x_1314 : vec2<f32> = vec2<f32>(x_1313.x, x_1313.y);
        let x_1316 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_1314.x, x_1314.y, x_1316);
        let x_1323 : vec3<f32> = txVec7;
        let x_1325 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1323.xy, x_1323.z);
        u_xlat7.x = x_1325;
        let x_1328 : f32 = u_xlat14.w;
        let x_1330 : f32 = u_xlat7.x;
        let x_1332 : f32 = u_xlat84;
        u_xlat84 = ((x_1328 * x_1330) + x_1332);
        let x_1335 : vec4<f32> = u_xlat12;
        let x_1336 : vec2<f32> = vec2<f32>(x_1335.x, x_1335.y);
        let x_1338 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1336.x, x_1336.y, x_1338);
        let x_1345 : vec3<f32> = txVec8;
        let x_1347 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1345.xy, x_1345.z);
        u_xlat7.x = x_1347;
        let x_1350 : f32 = u_xlat15.x;
        let x_1352 : f32 = u_xlat7.x;
        let x_1354 : f32 = u_xlat84;
        u_xlat84 = ((x_1350 * x_1352) + x_1354);
        let x_1357 : vec4<f32> = u_xlat12;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.z, x_1357.w);
        let x_1360 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec9;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1367.xy, x_1367.z);
        u_xlat7.x = x_1369;
        let x_1372 : f32 = u_xlat15.y;
        let x_1374 : f32 = u_xlat7.x;
        let x_1376 : f32 = u_xlat84;
        u_xlat84 = ((x_1372 * x_1374) + x_1376);
        let x_1379 : vec4<f32> = u_xlat10;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.z, x_1379.w);
        let x_1382 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec10;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1389.xy, x_1389.z);
        u_xlat7.x = x_1391;
        let x_1394 : f32 = u_xlat15.z;
        let x_1396 : f32 = u_xlat7.x;
        let x_1398 : f32 = u_xlat84;
        u_xlat84 = ((x_1394 * x_1396) + x_1398);
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1402 : vec2<f32> = vec2<f32>(x_1401.x, x_1401.y);
        let x_1404 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1402.x, x_1402.y, x_1404);
        let x_1411 : vec3<f32> = txVec11;
        let x_1413 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1411.xy, x_1411.z);
        u_xlat7.x = x_1413;
        let x_1416 : f32 = u_xlat15.w;
        let x_1418 : f32 = u_xlat7.x;
        let x_1420 : f32 = u_xlat84;
        u_xlat84 = ((x_1416 * x_1418) + x_1420);
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1424 : vec2<f32> = vec2<f32>(x_1423.z, x_1423.w);
        let x_1426 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1424.x, x_1424.y, x_1426);
        let x_1433 : vec3<f32> = txVec12;
        let x_1435 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1433.xy, x_1433.z);
        u_xlat7.x = x_1435;
        let x_1437 : f32 = u_xlat83;
        let x_1439 : f32 = u_xlat7.x;
        let x_1441 : f32 = u_xlat84;
        u_xlat82 = ((x_1437 * x_1439) + x_1441);
      } else {
        let x_1444 : vec4<f32> = u_xlat4;
        let x_1447 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1450 : vec2<f32> = ((vec2<f32>(x_1444.x, x_1444.y) * vec2<f32>(x_1447.z, x_1447.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1451 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1450.x, x_1450.y, x_1451.z, x_1451.w);
        let x_1453 : vec4<f32> = u_xlat7;
        let x_1455 : vec2<f32> = floor(vec2<f32>(x_1453.x, x_1453.y));
        let x_1456 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1455.x, x_1455.y, x_1456.z, x_1456.w);
        let x_1458 : vec4<f32> = u_xlat4;
        let x_1461 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1464 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1458.x, x_1458.y) * vec2<f32>(x_1461.z, x_1461.w)) + -(vec2<f32>(x_1464.x, x_1464.y)));
        let x_1468 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1468.x, x_1468.x, x_1468.y, x_1468.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1471 : vec4<f32> = u_xlat8;
        let x_1473 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1471.x, x_1471.x, x_1471.z, x_1471.z) * vec4<f32>(x_1473.x, x_1473.x, x_1473.z, x_1473.z));
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1480 : vec2<f32> = (vec2<f32>(x_1476.y, x_1476.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1481 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1481.x, x_1480.x, x_1481.z, x_1480.y);
        let x_1483 : vec4<f32> = u_xlat9;
        let x_1486 : vec2<f32> = u_xlat59;
        let x_1488 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1486));
        let x_1489 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1488.x, x_1489.y, x_1488.y, x_1489.w);
        let x_1491 : vec2<f32> = u_xlat59;
        let x_1493 : vec2<f32> = (-(x_1491) + vec2<f32>(1.0f, 1.0f));
        let x_1494 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1493.x, x_1493.y, x_1494.z, x_1494.w);
        let x_1496 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1496, vec2<f32>(0.0f, 0.0f));
        let x_1498 : vec2<f32> = u_xlat61;
        let x_1500 : vec2<f32> = u_xlat61;
        let x_1502 : vec4<f32> = u_xlat9;
        let x_1504 : vec2<f32> = ((-(x_1498) * x_1500) + vec2<f32>(x_1502.x, x_1502.y));
        let x_1505 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1504.x, x_1504.y, x_1505.z, x_1505.w);
        let x_1507 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1507, vec2<f32>(0.0f, 0.0f));
        let x_1510 : vec2<f32> = u_xlat61;
        let x_1512 : vec2<f32> = u_xlat61;
        let x_1514 : vec4<f32> = u_xlat8;
        let x_1516 : vec2<f32> = ((-(x_1510) * x_1512) + vec2<f32>(x_1514.y, x_1514.w));
        let x_1517 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1516.x, x_1517.y, x_1516.y);
        let x_1519 : vec4<f32> = u_xlat9;
        let x_1521 : vec2<f32> = (vec2<f32>(x_1519.x, x_1519.y) + vec2<f32>(2.0f, 2.0f));
        let x_1522 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1521.x, x_1521.y, x_1522.z, x_1522.w);
        let x_1524 : vec3<f32> = u_xlat34;
        let x_1526 : vec2<f32> = (vec2<f32>(x_1524.x, x_1524.z) + vec2<f32>(2.0f, 2.0f));
        let x_1527 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1527.x, x_1526.x, x_1527.z, x_1526.y);
        let x_1530 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1530 * 0.08163200318813323975f);
        let x_1534 : vec4<f32> = u_xlat8;
        let x_1537 : vec3<f32> = (vec3<f32>(x_1534.z, x_1534.x, x_1534.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1538 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1537.x, x_1537.y, x_1537.z, x_1538.w);
        let x_1540 : vec4<f32> = u_xlat9;
        let x_1543 : vec2<f32> = (vec2<f32>(x_1540.x, x_1540.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1544 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1543.x, x_1543.y, x_1544.z, x_1544.w);
        let x_1547 : f32 = u_xlat12.y;
        u_xlat11.x = x_1547;
        let x_1549 : vec2<f32> = u_xlat59;
        let x_1556 : vec2<f32> = ((vec2<f32>(x_1549.x, x_1549.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1557 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1557.x, x_1556.x, x_1557.z, x_1556.y);
        let x_1559 : vec2<f32> = u_xlat59;
        let x_1563 : vec2<f32> = ((vec2<f32>(x_1559.x, x_1559.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1564 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1563.x, x_1564.y, x_1563.y, x_1564.w);
        let x_1567 : f32 = u_xlat8.x;
        u_xlat9.y = x_1567;
        let x_1570 : f32 = u_xlat10.y;
        u_xlat9.w = x_1570;
        let x_1572 : vec4<f32> = u_xlat9;
        let x_1573 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1572 + x_1573);
        let x_1575 : vec2<f32> = u_xlat59;
        let x_1578 : vec2<f32> = ((vec2<f32>(x_1575.y, x_1575.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1579 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1579.x, x_1578.x, x_1579.z, x_1578.y);
        let x_1581 : vec2<f32> = u_xlat59;
        let x_1584 : vec2<f32> = ((vec2<f32>(x_1581.y, x_1581.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1585 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1584.x, x_1585.y, x_1584.y, x_1585.w);
        let x_1588 : f32 = u_xlat8.y;
        u_xlat10.y = x_1588;
        let x_1590 : vec4<f32> = u_xlat10;
        let x_1591 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1590 + x_1591);
        let x_1593 : vec4<f32> = u_xlat9;
        let x_1594 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1593 / x_1594);
        let x_1596 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1596 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1602 : vec4<f32> = u_xlat10;
        let x_1603 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1602 / x_1603);
        let x_1605 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1605 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1607 : vec4<f32> = u_xlat9;
        let x_1610 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1607.w, x_1607.x, x_1607.y, x_1607.z) * vec4<f32>(x_1610.x, x_1610.x, x_1610.x, x_1610.x));
        let x_1613 : vec4<f32> = u_xlat10;
        let x_1616 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1613.x, x_1613.w, x_1613.y, x_1613.z) * vec4<f32>(x_1616.y, x_1616.y, x_1616.y, x_1616.y));
        let x_1619 : vec4<f32> = u_xlat9;
        let x_1620 : vec3<f32> = vec3<f32>(x_1619.y, x_1619.z, x_1619.w);
        let x_1621 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1620.x, x_1621.y, x_1620.y, x_1620.z);
        let x_1624 : f32 = u_xlat10.x;
        u_xlat12.y = x_1624;
        let x_1626 : vec4<f32> = u_xlat7;
        let x_1629 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1632 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1626.x, x_1626.y, x_1626.x, x_1626.y) * vec4<f32>(x_1629.x, x_1629.y, x_1629.x, x_1629.y)) + vec4<f32>(x_1632.x, x_1632.y, x_1632.z, x_1632.y));
        let x_1635 : vec4<f32> = u_xlat7;
        let x_1638 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1641 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1635.x, x_1635.y) * vec2<f32>(x_1638.x, x_1638.y)) + vec2<f32>(x_1641.w, x_1641.y));
        let x_1645 : f32 = u_xlat12.y;
        u_xlat9.y = x_1645;
        let x_1648 : f32 = u_xlat10.z;
        u_xlat12.y = x_1648;
        let x_1650 : vec4<f32> = u_xlat7;
        let x_1653 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1656 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1650.x, x_1650.y, x_1650.x, x_1650.y) * vec4<f32>(x_1653.x, x_1653.y, x_1653.x, x_1653.y)) + vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1656.y));
        let x_1659 : vec4<f32> = u_xlat7;
        let x_1662 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1665 : vec4<f32> = u_xlat12;
        let x_1667 : vec2<f32> = ((vec2<f32>(x_1659.x, x_1659.y) * vec2<f32>(x_1662.x, x_1662.y)) + vec2<f32>(x_1665.w, x_1665.y));
        let x_1668 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1667.x, x_1667.y, x_1668.z, x_1668.w);
        let x_1671 : f32 = u_xlat12.y;
        u_xlat9.z = x_1671;
        let x_1674 : vec4<f32> = u_xlat7;
        let x_1677 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1680 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1674.x, x_1674.y, x_1674.x, x_1674.y) * vec4<f32>(x_1677.x, x_1677.y, x_1677.x, x_1677.y)) + vec4<f32>(x_1680.x, x_1680.y, x_1680.x, x_1680.z));
        let x_1684 : f32 = u_xlat10.w;
        u_xlat12.y = x_1684;
        let x_1687 : vec4<f32> = u_xlat7;
        let x_1690 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1693 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1687.x, x_1687.y, x_1687.x, x_1687.y) * vec4<f32>(x_1690.x, x_1690.y, x_1690.x, x_1690.y)) + vec4<f32>(x_1693.x, x_1693.y, x_1693.z, x_1693.y));
        let x_1697 : vec4<f32> = u_xlat7;
        let x_1700 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1703 : vec4<f32> = u_xlat12;
        let x_1705 : vec2<f32> = ((vec2<f32>(x_1697.x, x_1697.y) * vec2<f32>(x_1700.x, x_1700.y)) + vec2<f32>(x_1703.w, x_1703.y));
        let x_1706 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1705.x, x_1705.y, x_1706.z);
        let x_1709 : f32 = u_xlat12.y;
        u_xlat9.w = x_1709;
        let x_1712 : vec4<f32> = u_xlat7;
        let x_1715 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1718 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1712.x, x_1712.y) * vec2<f32>(x_1715.x, x_1715.y)) + vec2<f32>(x_1718.x, x_1718.w));
        let x_1721 : vec4<f32> = u_xlat12;
        let x_1722 : vec3<f32> = vec3<f32>(x_1721.x, x_1721.z, x_1721.w);
        let x_1723 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1722.x, x_1723.y, x_1722.y, x_1722.z);
        let x_1725 : vec4<f32> = u_xlat7;
        let x_1728 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1731 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1725.x, x_1725.y, x_1725.x, x_1725.y) * vec4<f32>(x_1728.x, x_1728.y, x_1728.x, x_1728.y)) + vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1731.y));
        let x_1735 : vec4<f32> = u_xlat7;
        let x_1738 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1741 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1735.x, x_1735.y) * vec2<f32>(x_1738.x, x_1738.y)) + vec2<f32>(x_1741.w, x_1741.y));
        let x_1745 : f32 = u_xlat9.x;
        u_xlat10.x = x_1745;
        let x_1747 : vec4<f32> = u_xlat7;
        let x_1750 : vec4<f32> = x_497.x_MainLightShadowmapSize;
        let x_1753 : vec4<f32> = u_xlat10;
        let x_1755 : vec2<f32> = ((vec2<f32>(x_1747.x, x_1747.y) * vec2<f32>(x_1750.x, x_1750.y)) + vec2<f32>(x_1753.x, x_1753.y));
        let x_1756 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1755.x, x_1755.y, x_1756.z, x_1756.w);
        let x_1759 : vec4<f32> = u_xlat8;
        let x_1761 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1759.x, x_1759.x, x_1759.x, x_1759.x) * x_1761);
        let x_1764 : vec4<f32> = u_xlat8;
        let x_1766 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1764.y, x_1764.y, x_1764.y, x_1764.y) * x_1766);
        let x_1769 : vec4<f32> = u_xlat8;
        let x_1771 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1769.z, x_1769.z, x_1769.z, x_1769.z) * x_1771);
        let x_1773 : vec4<f32> = u_xlat8;
        let x_1775 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1773.w, x_1773.w, x_1773.w, x_1773.w) * x_1775);
        let x_1778 : vec4<f32> = u_xlat13;
        let x_1779 : vec2<f32> = vec2<f32>(x_1778.x, x_1778.y);
        let x_1781 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec13;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1788.xy, x_1788.z);
        u_xlat83 = x_1790;
        let x_1792 : vec4<f32> = u_xlat13;
        let x_1793 : vec2<f32> = vec2<f32>(x_1792.z, x_1792.w);
        let x_1795 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1793.x, x_1793.y, x_1795);
        let x_1802 : vec3<f32> = txVec14;
        let x_1804 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1802.xy, x_1802.z);
        u_xlat84 = x_1804;
        let x_1805 : f32 = u_xlat84;
        let x_1807 : f32 = u_xlat18.y;
        u_xlat84 = (x_1805 * x_1807);
        let x_1810 : f32 = u_xlat18.x;
        let x_1811 : f32 = u_xlat83;
        let x_1813 : f32 = u_xlat84;
        u_xlat83 = ((x_1810 * x_1811) + x_1813);
        let x_1816 : vec2<f32> = u_xlat59;
        let x_1818 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1816.x, x_1816.y, x_1818);
        let x_1825 : vec3<f32> = txVec15;
        let x_1827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1825.xy, x_1825.z);
        u_xlat84 = x_1827;
        let x_1829 : f32 = u_xlat18.z;
        let x_1830 : f32 = u_xlat84;
        let x_1832 : f32 = u_xlat83;
        u_xlat83 = ((x_1829 * x_1830) + x_1832);
        let x_1835 : vec4<f32> = u_xlat16;
        let x_1836 : vec2<f32> = vec2<f32>(x_1835.x, x_1835.y);
        let x_1838 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1836.x, x_1836.y, x_1838);
        let x_1845 : vec3<f32> = txVec16;
        let x_1847 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1845.xy, x_1845.z);
        u_xlat84 = x_1847;
        let x_1849 : f32 = u_xlat18.w;
        let x_1850 : f32 = u_xlat84;
        let x_1852 : f32 = u_xlat83;
        u_xlat83 = ((x_1849 * x_1850) + x_1852);
        let x_1855 : vec4<f32> = u_xlat14;
        let x_1856 : vec2<f32> = vec2<f32>(x_1855.x, x_1855.y);
        let x_1858 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1856.x, x_1856.y, x_1858);
        let x_1865 : vec3<f32> = txVec17;
        let x_1867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1865.xy, x_1865.z);
        u_xlat84 = x_1867;
        let x_1869 : f32 = u_xlat19.x;
        let x_1870 : f32 = u_xlat84;
        let x_1872 : f32 = u_xlat83;
        u_xlat83 = ((x_1869 * x_1870) + x_1872);
        let x_1875 : vec4<f32> = u_xlat14;
        let x_1876 : vec2<f32> = vec2<f32>(x_1875.z, x_1875.w);
        let x_1878 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1876.x, x_1876.y, x_1878);
        let x_1885 : vec3<f32> = txVec18;
        let x_1887 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1885.xy, x_1885.z);
        u_xlat84 = x_1887;
        let x_1889 : f32 = u_xlat19.y;
        let x_1890 : f32 = u_xlat84;
        let x_1892 : f32 = u_xlat83;
        u_xlat83 = ((x_1889 * x_1890) + x_1892);
        let x_1895 : vec4<f32> = u_xlat15;
        let x_1896 : vec2<f32> = vec2<f32>(x_1895.x, x_1895.y);
        let x_1898 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1896.x, x_1896.y, x_1898);
        let x_1905 : vec3<f32> = txVec19;
        let x_1907 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1905.xy, x_1905.z);
        u_xlat84 = x_1907;
        let x_1909 : f32 = u_xlat19.z;
        let x_1910 : f32 = u_xlat84;
        let x_1912 : f32 = u_xlat83;
        u_xlat83 = ((x_1909 * x_1910) + x_1912);
        let x_1915 : vec4<f32> = u_xlat16;
        let x_1916 : vec2<f32> = vec2<f32>(x_1915.z, x_1915.w);
        let x_1918 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1916.x, x_1916.y, x_1918);
        let x_1925 : vec3<f32> = txVec20;
        let x_1927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1925.xy, x_1925.z);
        u_xlat84 = x_1927;
        let x_1929 : f32 = u_xlat19.w;
        let x_1930 : f32 = u_xlat84;
        let x_1932 : f32 = u_xlat83;
        u_xlat83 = ((x_1929 * x_1930) + x_1932);
        let x_1935 : vec4<f32> = u_xlat17;
        let x_1936 : vec2<f32> = vec2<f32>(x_1935.x, x_1935.y);
        let x_1938 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1936.x, x_1936.y, x_1938);
        let x_1945 : vec3<f32> = txVec21;
        let x_1947 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1945.xy, x_1945.z);
        u_xlat84 = x_1947;
        let x_1949 : f32 = u_xlat20.x;
        let x_1950 : f32 = u_xlat84;
        let x_1952 : f32 = u_xlat83;
        u_xlat83 = ((x_1949 * x_1950) + x_1952);
        let x_1955 : vec4<f32> = u_xlat17;
        let x_1956 : vec2<f32> = vec2<f32>(x_1955.z, x_1955.w);
        let x_1958 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1956.x, x_1956.y, x_1958);
        let x_1965 : vec3<f32> = txVec22;
        let x_1967 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1965.xy, x_1965.z);
        u_xlat84 = x_1967;
        let x_1969 : f32 = u_xlat20.y;
        let x_1970 : f32 = u_xlat84;
        let x_1972 : f32 = u_xlat83;
        u_xlat83 = ((x_1969 * x_1970) + x_1972);
        let x_1975 : vec3<f32> = u_xlat35;
        let x_1976 : vec2<f32> = vec2<f32>(x_1975.x, x_1975.y);
        let x_1978 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1976.x, x_1976.y, x_1978);
        let x_1985 : vec3<f32> = txVec23;
        let x_1987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1985.xy, x_1985.z);
        u_xlat84 = x_1987;
        let x_1989 : f32 = u_xlat20.z;
        let x_1990 : f32 = u_xlat84;
        let x_1992 : f32 = u_xlat83;
        u_xlat83 = ((x_1989 * x_1990) + x_1992);
        let x_1995 : vec2<f32> = u_xlat67;
        let x_1997 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1995.x, x_1995.y, x_1997);
        let x_2004 : vec3<f32> = txVec24;
        let x_2006 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2004.xy, x_2004.z);
        u_xlat84 = x_2006;
        let x_2008 : f32 = u_xlat20.w;
        let x_2009 : f32 = u_xlat84;
        let x_2011 : f32 = u_xlat83;
        u_xlat83 = ((x_2008 * x_2009) + x_2011);
        let x_2014 : vec4<f32> = u_xlat12;
        let x_2015 : vec2<f32> = vec2<f32>(x_2014.x, x_2014.y);
        let x_2017 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_2015.x, x_2015.y, x_2017);
        let x_2024 : vec3<f32> = txVec25;
        let x_2026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2024.xy, x_2024.z);
        u_xlat84 = x_2026;
        let x_2028 : f32 = u_xlat8.x;
        let x_2029 : f32 = u_xlat84;
        let x_2031 : f32 = u_xlat83;
        u_xlat83 = ((x_2028 * x_2029) + x_2031);
        let x_2034 : vec4<f32> = u_xlat12;
        let x_2035 : vec2<f32> = vec2<f32>(x_2034.z, x_2034.w);
        let x_2037 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_2035.x, x_2035.y, x_2037);
        let x_2044 : vec3<f32> = txVec26;
        let x_2046 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2044.xy, x_2044.z);
        u_xlat84 = x_2046;
        let x_2048 : f32 = u_xlat8.y;
        let x_2049 : f32 = u_xlat84;
        let x_2051 : f32 = u_xlat83;
        u_xlat83 = ((x_2048 * x_2049) + x_2051);
        let x_2054 : vec2<f32> = u_xlat62;
        let x_2056 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_2054.x, x_2054.y, x_2056);
        let x_2063 : vec3<f32> = txVec27;
        let x_2065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2063.xy, x_2063.z);
        u_xlat84 = x_2065;
        let x_2067 : f32 = u_xlat8.z;
        let x_2068 : f32 = u_xlat84;
        let x_2070 : f32 = u_xlat83;
        u_xlat83 = ((x_2067 * x_2068) + x_2070);
        let x_2073 : vec4<f32> = u_xlat7;
        let x_2074 : vec2<f32> = vec2<f32>(x_2073.x, x_2073.y);
        let x_2076 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_2074.x, x_2074.y, x_2076);
        let x_2083 : vec3<f32> = txVec28;
        let x_2085 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2083.xy, x_2083.z);
        u_xlat84 = x_2085;
        let x_2087 : f32 = u_xlat8.w;
        let x_2088 : f32 = u_xlat84;
        let x_2090 : f32 = u_xlat83;
        u_xlat82 = ((x_2087 * x_2088) + x_2090);
      }
    }
  } else {
    let x_2094 : vec4<f32> = u_xlat4;
    let x_2095 : vec2<f32> = vec2<f32>(x_2094.x, x_2094.y);
    let x_2097 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_2095.x, x_2095.y, x_2097);
    let x_2104 : vec3<f32> = txVec29;
    let x_2106 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2104.xy, x_2104.z);
    u_xlat82 = x_2106;
  }
  let x_2108 : f32 = x_497.x_MainLightShadowParams.x;
  u_xlat4.x = (-(x_2108) + 1.0f);
  let x_2112 : f32 = u_xlat82;
  let x_2114 : f32 = x_497.x_MainLightShadowParams.x;
  let x_2117 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2112 * x_2114) + x_2117);
  let x_2122 : f32 = u_xlat4.z;
  u_xlatb30 = (0.0f >= x_2122);
  let x_2126 : f32 = u_xlat4.z;
  u_xlatb56.x = (x_2126 >= 1.0f);
  let x_2130 : bool = u_xlatb56.x;
  let x_2131 : bool = u_xlatb30;
  u_xlatb30 = (x_2130 | x_2131);
  let x_2133 : bool = u_xlatb30;
  if (x_2133) {
    x_2134 = 1.0f;
  } else {
    let x_2139 : f32 = u_xlat4.x;
    x_2134 = x_2139;
  }
  let x_2140 : f32 = x_2134;
  u_xlat4.x = x_2140;
  let x_2143 : vec3<f32> = vs_INTERP7;
  let x_2145 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat30 = (x_2143 + -(x_2145));
  let x_2148 : vec3<f32> = u_xlat30;
  let x_2149 : vec3<f32> = u_xlat30;
  u_xlat30.x = dot(x_2148, x_2149);
  let x_2154 : f32 = u_xlat30.x;
  let x_2156 : f32 = x_497.x_MainLightShadowParams.z;
  let x_2159 : f32 = x_497.x_MainLightShadowParams.w;
  u_xlat56.x = ((x_2154 * x_2156) + x_2159);
  let x_2163 : f32 = u_xlat56.x;
  u_xlat56.x = clamp(x_2163, 0.0f, 1.0f);
  let x_2167 : f32 = u_xlat4.x;
  u_xlat82 = (-(x_2167) + 1.0f);
  let x_2171 : f32 = u_xlat56.x;
  let x_2172 : f32 = u_xlat82;
  let x_2175 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_2171 * x_2172) + x_2175);
  let x_2185 : f32 = x_2183.x_MainLightCookieTextureFormat;
  u_xlatb56.x = !((x_2185 == -1.0f));
  let x_2189 : bool = u_xlatb56.x;
  if (x_2189) {
    let x_2192 : vec3<f32> = vs_INTERP7;
    let x_2195 : vec4<f32> = x_2183.x_MainLightWorldToLight[1i];
    u_xlat56 = (vec2<f32>(x_2192.y, x_2192.y) * vec2<f32>(x_2195.x, x_2195.y));
    let x_2199 : vec4<f32> = x_2183.x_MainLightWorldToLight[0i];
    let x_2201 : vec3<f32> = vs_INTERP7;
    let x_2204 : vec2<f32> = u_xlat56;
    u_xlat56 = ((vec2<f32>(x_2199.x, x_2199.y) * vec2<f32>(x_2201.x, x_2201.x)) + x_2204);
    let x_2207 : vec4<f32> = x_2183.x_MainLightWorldToLight[2i];
    let x_2209 : vec3<f32> = vs_INTERP7;
    let x_2212 : vec2<f32> = u_xlat56;
    u_xlat56 = ((vec2<f32>(x_2207.x, x_2207.y) * vec2<f32>(x_2209.z, x_2209.z)) + x_2212);
    let x_2214 : vec2<f32> = u_xlat56;
    let x_2216 : vec4<f32> = x_2183.x_MainLightWorldToLight[3i];
    u_xlat56 = (x_2214 + vec2<f32>(x_2216.x, x_2216.y));
    let x_2219 : vec2<f32> = u_xlat56;
    u_xlat56 = ((x_2219 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2227 : vec2<f32> = u_xlat56;
    let x_2229 : f32 = x_29.x_GlobalMipBias.x;
    let x_2230 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2227, x_2229);
    u_xlat7 = x_2230;
    let x_2232 : f32 = x_2183.x_MainLightCookieTextureFormat;
    let x_2234 : f32 = x_2183.x_MainLightCookieTextureFormat;
    let x_2236 : f32 = x_2183.x_MainLightCookieTextureFormat;
    let x_2238 : f32 = x_2183.x_MainLightCookieTextureFormat;
    let x_2239 : vec4<f32> = vec4<f32>(x_2232, x_2234, x_2236, x_2238);
    let x_2246 : vec4<bool> = (vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2239.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb56 = vec2<bool>(x_2246.x, x_2246.y);
    let x_2249 : bool = u_xlatb56.y;
    if (x_2249) {
      let x_2254 : f32 = u_xlat7.w;
      x_2250 = x_2254;
    } else {
      let x_2257 : f32 = u_xlat7.x;
      x_2250 = x_2257;
    }
    let x_2258 : f32 = x_2250;
    u_xlat82 = x_2258;
    let x_2260 : bool = u_xlatb56.x;
    if (x_2260) {
      let x_2264 : vec4<f32> = u_xlat7;
      x_2261 = vec3<f32>(x_2264.x, x_2264.y, x_2264.z);
    } else {
      let x_2267 : f32 = u_xlat82;
      x_2261 = vec3<f32>(x_2267, x_2267, x_2267);
    }
    let x_2269 : vec3<f32> = x_2261;
    let x_2270 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2269.x, x_2269.y, x_2269.z, x_2270.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2276 : vec4<f32> = u_xlat7;
  let x_2279 : vec4<f32> = x_29.x_MainLightColor;
  let x_2281 : vec3<f32> = (vec3<f32>(x_2276.x, x_2276.y, x_2276.z) * vec3<f32>(x_2279.x, x_2279.y, x_2279.z));
  let x_2282 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
  let x_2284 : vec4<f32> = u_xlat3;
  let x_2287 : vec4<f32> = u_xlat1;
  u_xlat56.x = dot(-(vec3<f32>(x_2284.x, x_2284.y, x_2284.z)), vec3<f32>(x_2287.x, x_2287.y, x_2287.z));
  let x_2292 : f32 = u_xlat56.x;
  let x_2294 : f32 = u_xlat56.x;
  u_xlat56.x = (x_2292 + x_2294);
  let x_2297 : vec4<f32> = u_xlat1;
  let x_2299 : vec2<f32> = u_xlat56;
  let x_2303 : vec4<f32> = u_xlat3;
  let x_2306 : vec3<f32> = ((vec3<f32>(x_2297.x, x_2297.y, x_2297.z) * -(vec3<f32>(x_2299.x, x_2299.x, x_2299.x))) + -(vec3<f32>(x_2303.x, x_2303.y, x_2303.z)));
  let x_2307 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
  let x_2309 : vec4<f32> = u_xlat1;
  let x_2311 : vec4<f32> = u_xlat3;
  u_xlat56.x = dot(vec3<f32>(x_2309.x, x_2309.y, x_2309.z), vec3<f32>(x_2311.x, x_2311.y, x_2311.z));
  let x_2316 : f32 = u_xlat56.x;
  u_xlat56.x = clamp(x_2316, 0.0f, 1.0f);
  let x_2320 : f32 = u_xlat56.x;
  u_xlat56.x = (-(x_2320) + 1.0f);
  let x_2325 : f32 = u_xlat56.x;
  let x_2327 : f32 = u_xlat56.x;
  u_xlat56.x = (x_2325 * x_2327);
  let x_2331 : f32 = u_xlat56.x;
  let x_2333 : f32 = u_xlat56.x;
  u_xlat56.x = (x_2331 * x_2333);
  let x_2336 : f32 = u_xlat79;
  u_xlat82 = ((-(x_2336) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2342 : f32 = u_xlat79;
  let x_2343 : f32 = u_xlat82;
  u_xlat79 = (x_2342 * x_2343);
  let x_2345 : f32 = u_xlat79;
  u_xlat79 = (x_2345 * 6.0f);
  let x_2355 : vec4<f32> = u_xlat8;
  let x_2357 : f32 = u_xlat79;
  let x_2358 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2355.x, x_2355.y, x_2355.z), x_2357);
  u_xlat8 = x_2358;
  let x_2360 : f32 = u_xlat8.w;
  u_xlat79 = (x_2360 + -1.0f);
  let x_2363 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2364 : f32 = u_xlat79;
  u_xlat79 = ((x_2363 * x_2364) + 1.0f);
  let x_2367 : f32 = u_xlat79;
  u_xlat79 = max(x_2367, 0.0f);
  let x_2369 : f32 = u_xlat79;
  u_xlat79 = log2(x_2369);
  let x_2371 : f32 = u_xlat79;
  let x_2373 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat79 = (x_2371 * x_2373);
  let x_2375 : f32 = u_xlat79;
  u_xlat79 = exp2(x_2375);
  let x_2377 : f32 = u_xlat79;
  let x_2379 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat79 = (x_2377 * x_2379);
  let x_2381 : vec4<f32> = u_xlat8;
  let x_2383 : f32 = u_xlat79;
  let x_2385 : vec3<f32> = (vec3<f32>(x_2381.x, x_2381.y, x_2381.z) * vec3<f32>(x_2383, x_2383, x_2383));
  let x_2386 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
  let x_2388 : vec4<f32> = u_xlat2;
  let x_2390 : vec4<f32> = u_xlat2;
  let x_2394 : vec2<f32> = ((vec2<f32>(x_2388.x, x_2388.x) * vec2<f32>(x_2390.x, x_2390.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2395 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2394.x, x_2394.y, x_2395.z, x_2395.w);
  let x_2398 : f32 = u_xlat9.y;
  u_xlat79 = (1.0f / x_2398);
  let x_2400 : vec4<f32> = u_xlat0;
  let x_2403 : f32 = u_xlat28;
  u_xlat35 = (-(vec3<f32>(x_2400.x, x_2400.y, x_2400.z)) + vec3<f32>(x_2403, x_2403, x_2403));
  let x_2406 : vec2<f32> = u_xlat56;
  let x_2408 : vec3<f32> = u_xlat35;
  let x_2410 : vec4<f32> = u_xlat0;
  u_xlat35 = ((vec3<f32>(x_2406.x, x_2406.x, x_2406.x) * x_2408) + vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
  let x_2413 : f32 = u_xlat79;
  let x_2415 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2413, x_2413, x_2413) * x_2415);
  let x_2417 : vec4<f32> = u_xlat8;
  let x_2419 : vec3<f32> = u_xlat35;
  let x_2420 : vec3<f32> = (vec3<f32>(x_2417.x, x_2417.y, x_2417.z) * x_2419);
  let x_2421 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2420.x, x_2420.y, x_2420.z, x_2421.w);
  let x_2423 : vec4<f32> = u_xlat5;
  let x_2425 : vec4<f32> = u_xlat6;
  let x_2428 : vec4<f32> = u_xlat8;
  let x_2430 : vec3<f32> = ((vec3<f32>(x_2423.x, x_2423.y, x_2423.z) * vec3<f32>(x_2425.x, x_2425.y, x_2425.z)) + vec3<f32>(x_2428.x, x_2428.y, x_2428.z));
  let x_2431 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2430.x, x_2430.y, x_2430.z, x_2431.w);
  let x_2434 : f32 = u_xlat4.x;
  let x_2436 : f32 = x_349.unity_LightData.z;
  u_xlat79 = (x_2434 * x_2436);
  let x_2438 : vec4<f32> = u_xlat1;
  let x_2441 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2438.x, x_2438.y, x_2438.z), vec3<f32>(x_2441.x, x_2441.y, x_2441.z));
  let x_2446 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2446, 0.0f, 1.0f);
  let x_2449 : f32 = u_xlat79;
  let x_2451 : f32 = u_xlat2.x;
  u_xlat79 = (x_2449 * x_2451);
  let x_2453 : f32 = u_xlat79;
  let x_2455 : vec4<f32> = u_xlat7;
  let x_2457 : vec3<f32> = (vec3<f32>(x_2453, x_2453, x_2453) * vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
  let x_2458 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2457.x, x_2458.y, x_2457.y, x_2457.z);
  let x_2460 : vec4<f32> = u_xlat3;
  let x_2463 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2465 : vec3<f32> = (vec3<f32>(x_2460.x, x_2460.y, x_2460.z) + vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
  let x_2466 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
  let x_2468 : vec4<f32> = u_xlat7;
  let x_2470 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2468.x, x_2468.y, x_2468.z), vec3<f32>(x_2470.x, x_2470.y, x_2470.z));
  let x_2473 : f32 = u_xlat79;
  u_xlat79 = max(x_2473, 1.17549435e-38f);
  let x_2476 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_2476);
  let x_2478 : f32 = u_xlat79;
  let x_2480 : vec4<f32> = u_xlat7;
  let x_2482 : vec3<f32> = (vec3<f32>(x_2478, x_2478, x_2478) * vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
  let x_2483 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
  let x_2485 : vec4<f32> = u_xlat1;
  let x_2487 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2485.x, x_2485.y, x_2485.z), vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
  let x_2490 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2490, 0.0f, 1.0f);
  let x_2493 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2495 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2493.x, x_2493.y, x_2493.z), vec3<f32>(x_2495.x, x_2495.y, x_2495.z));
  let x_2500 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2500, 0.0f, 1.0f);
  let x_2503 : f32 = u_xlat79;
  let x_2504 : f32 = u_xlat79;
  u_xlat79 = (x_2503 * x_2504);
  let x_2506 : f32 = u_xlat79;
  let x_2508 : f32 = u_xlat9.x;
  u_xlat79 = ((x_2506 * x_2508) + 1.00001001358032226562f);
  let x_2513 : f32 = u_xlat2.x;
  let x_2515 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2513 * x_2515);
  let x_2518 : f32 = u_xlat79;
  let x_2519 : f32 = u_xlat79;
  u_xlat79 = (x_2518 * x_2519);
  let x_2522 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2522, 0.10000000149011611938f);
  let x_2526 : f32 = u_xlat79;
  let x_2528 : f32 = u_xlat2.x;
  u_xlat79 = (x_2526 * x_2528);
  let x_2530 : f32 = u_xlat80;
  let x_2531 : f32 = u_xlat79;
  u_xlat79 = (x_2530 * x_2531);
  let x_2533 : f32 = u_xlat81;
  let x_2534 : f32 = u_xlat79;
  u_xlat79 = (x_2533 / x_2534);
  let x_2536 : vec4<f32> = u_xlat0;
  let x_2538 : f32 = u_xlat79;
  let x_2541 : vec4<f32> = u_xlat6;
  let x_2543 : vec3<f32> = ((vec3<f32>(x_2536.x, x_2536.y, x_2536.z) * vec3<f32>(x_2538, x_2538, x_2538)) + vec3<f32>(x_2541.x, x_2541.y, x_2541.z));
  let x_2544 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2543.x, x_2543.y, x_2543.z, x_2544.w);
  let x_2546 : vec4<f32> = u_xlat4;
  let x_2548 : vec4<f32> = u_xlat7;
  let x_2550 : vec3<f32> = (vec3<f32>(x_2546.x, x_2546.z, x_2546.w) * vec3<f32>(x_2548.x, x_2548.y, x_2548.z));
  let x_2551 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2550.x, x_2551.y, x_2550.y, x_2550.z);
  let x_2554 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2556 : f32 = x_349.unity_LightData.y;
  u_xlat79 = min(x_2554, x_2556);
  let x_2559 : f32 = u_xlat79;
  u_xlatu79 = bitcast<u32>(i32(x_2559));
  let x_2563 : f32 = u_xlat30.x;
  let x_2566 : f32 = x_497.x_AdditionalShadowFadeParams.x;
  let x_2569 : f32 = x_497.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2563 * x_2566) + x_2569);
  let x_2573 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2573, 0.0f, 1.0f);
  let x_2578 : f32 = x_2183.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2580 : f32 = x_2183.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2582 : f32 = x_2183.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2584 : f32 = x_2183.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2585 : vec4<f32> = vec4<f32>(x_2578, x_2580, x_2582, x_2584);
  let x_2592 : vec4<bool> = (vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2585.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2592.x, x_2592.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2604 : u32 = u_xlatu_loop_1;
    let x_2605 : u32 = u_xlatu79;
    if ((x_2604 < x_2605)) {
    } else {
      break;
    }
    let x_2608 : u32 = u_xlatu_loop_1;
    u_xlatu30 = (x_2608 >> 2u);
    let x_2611 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2611 & 3u));
    let x_2614 : u32 = u_xlatu30;
    let x_2617 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2614)];
    let x_2627 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2632 : vec4<u32> = indexable[x_2627];
    u_xlat30.x = dot(x_2617, bitcast<vec4<f32>>(x_2632));
    let x_2638 : f32 = u_xlat30.x;
    u_xlati30 = i32(x_2638);
    let x_2640 : vec3<f32> = vs_INTERP7;
    let x_2651 : i32 = u_xlati30;
    let x_2653 : vec4<f32> = x_2650.x_AdditionalLightsPosition[x_2651];
    let x_2656 : i32 = u_xlati30;
    let x_2658 : vec4<f32> = x_2650.x_AdditionalLightsPosition[x_2656];
    u_xlat35 = ((-(x_2640) * vec3<f32>(x_2653.w, x_2653.w, x_2653.w)) + vec3<f32>(x_2658.x, x_2658.y, x_2658.z));
    let x_2661 : vec3<f32> = u_xlat35;
    let x_2662 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(x_2661, x_2662);
    let x_2664 : f32 = u_xlat83;
    u_xlat83 = max(x_2664, 0.00006103515625f);
    let x_2667 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2667);
    let x_2669 : f32 = u_xlat84;
    let x_2671 : vec3<f32> = u_xlat35;
    let x_2672 : vec3<f32> = (vec3<f32>(x_2669, x_2669, x_2669) * x_2671);
    let x_2673 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2672.x, x_2672.y, x_2672.z, x_2673.w);
    let x_2675 : f32 = u_xlat83;
    u_xlat59.x = (1.0f / x_2675);
    let x_2678 : f32 = u_xlat83;
    let x_2679 : i32 = u_xlati30;
    let x_2681 : f32 = x_2650.x_AdditionalLightsAttenuation[x_2679].x;
    u_xlat83 = (x_2678 * x_2681);
    let x_2683 : f32 = u_xlat83;
    let x_2685 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2683) * x_2685) + 1.0f);
    let x_2688 : f32 = u_xlat83;
    u_xlat83 = max(x_2688, 0.0f);
    let x_2690 : f32 = u_xlat83;
    let x_2691 : f32 = u_xlat83;
    u_xlat83 = (x_2690 * x_2691);
    let x_2693 : f32 = u_xlat83;
    let x_2695 : f32 = u_xlat59.x;
    u_xlat83 = (x_2693 * x_2695);
    let x_2697 : i32 = u_xlati30;
    let x_2699 : vec4<f32> = x_2650.x_AdditionalLightsSpotDir[x_2697];
    let x_2701 : vec4<f32> = u_xlat10;
    u_xlat59.x = dot(vec3<f32>(x_2699.x, x_2699.y, x_2699.z), vec3<f32>(x_2701.x, x_2701.y, x_2701.z));
    let x_2706 : f32 = u_xlat59.x;
    let x_2707 : i32 = u_xlati30;
    let x_2709 : f32 = x_2650.x_AdditionalLightsAttenuation[x_2707].z;
    let x_2711 : i32 = u_xlati30;
    let x_2713 : f32 = x_2650.x_AdditionalLightsAttenuation[x_2711].w;
    u_xlat59.x = ((x_2706 * x_2709) + x_2713);
    let x_2717 : f32 = u_xlat59.x;
    u_xlat59.x = clamp(x_2717, 0.0f, 1.0f);
    let x_2721 : f32 = u_xlat59.x;
    let x_2723 : f32 = u_xlat59.x;
    u_xlat59.x = (x_2721 * x_2723);
    let x_2726 : f32 = u_xlat83;
    let x_2728 : f32 = u_xlat59.x;
    u_xlat83 = (x_2726 * x_2728);
    let x_2732 : i32 = u_xlati30;
    let x_2734 : f32 = x_497.x_AdditionalShadowParams[x_2732].w;
    u_xlati59 = i32(x_2734);
    let x_2737 : i32 = u_xlati59;
    u_xlatb85 = (x_2737 >= 0i);
    let x_2739 : bool = u_xlatb85;
    if (x_2739) {
      let x_2743 : i32 = u_xlati30;
      let x_2745 : f32 = x_497.x_AdditionalShadowParams[x_2743].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2745, x_2745, x_2745, x_2745))));
      let x_2749 : bool = u_xlatb85;
      if (x_2749) {
        let x_2753 : vec4<f32> = u_xlat10;
        let x_2756 : vec4<f32> = u_xlat10;
        let x_2759 : vec4<bool> = (abs(vec4<f32>(x_2753.z, x_2753.z, x_2753.y, x_2753.z)) >= abs(vec4<f32>(x_2756.x, x_2756.y, x_2756.x, x_2756.x)));
        let x_2761 : vec3<bool> = vec3<bool>(x_2759.x, x_2759.y, x_2759.z);
        let x_2762 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2761.x, x_2761.y, x_2761.z, x_2762.w);
        let x_2765 : bool = u_xlatb11.y;
        let x_2767 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2765 & x_2767);
        let x_2769 : vec4<f32> = u_xlat10;
        let x_2772 : vec4<bool> = (-(vec4<f32>(x_2769.z, x_2769.y, x_2769.z, x_2769.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2773 : vec3<bool> = vec3<bool>(x_2772.x, x_2772.y, x_2772.w);
        let x_2774 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2773.x, x_2773.y, x_2774.z, x_2773.z);
        let x_2777 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2777);
        let x_2782 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2782);
        let x_2787 : bool = u_xlatb11.w;
        u_xlat86 = select(0.0f, 1.0f, x_2787);
        let x_2790 : bool = u_xlatb11.z;
        if (x_2790) {
          let x_2795 : f32 = u_xlat11.y;
          x_2791 = x_2795;
        } else {
          let x_2797 : f32 = u_xlat86;
          x_2791 = x_2797;
        }
        let x_2798 : f32 = x_2791;
        u_xlat86 = x_2798;
        let x_2800 : bool = u_xlatb85;
        if (x_2800) {
          let x_2805 : f32 = u_xlat11.x;
          x_2801 = x_2805;
        } else {
          let x_2807 : f32 = u_xlat86;
          x_2801 = x_2807;
        }
        let x_2808 : f32 = x_2801;
        u_xlat85 = x_2808;
        let x_2809 : i32 = u_xlati30;
        let x_2811 : f32 = x_497.x_AdditionalShadowParams[x_2809].w;
        u_xlat86 = trunc(x_2811);
        let x_2813 : f32 = u_xlat85;
        let x_2814 : f32 = u_xlat86;
        u_xlat85 = (x_2813 + x_2814);
        let x_2816 : f32 = u_xlat85;
        u_xlati59 = i32(x_2816);
      }
      let x_2818 : i32 = u_xlati59;
      u_xlati59 = (x_2818 << bitcast<u32>(2i));
      let x_2820 : vec3<f32> = vs_INTERP7;
      let x_2823 : i32 = u_xlati59;
      let x_2826 : i32 = u_xlati59;
      let x_2830 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2823 + 1i) / 4i)][((x_2826 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2820.y, x_2820.y, x_2820.y, x_2820.y) * x_2830);
      let x_2832 : i32 = u_xlati59;
      let x_2834 : i32 = u_xlati59;
      let x_2837 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[(x_2832 / 4i)][(x_2834 % 4i)];
      let x_2838 : vec3<f32> = vs_INTERP7;
      let x_2841 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2837 * vec4<f32>(x_2838.x, x_2838.x, x_2838.x, x_2838.x)) + x_2841);
      let x_2843 : i32 = u_xlati59;
      let x_2846 : i32 = u_xlati59;
      let x_2850 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2843 + 2i) / 4i)][((x_2846 + 2i) % 4i)];
      let x_2851 : vec3<f32> = vs_INTERP7;
      let x_2854 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2850 * vec4<f32>(x_2851.z, x_2851.z, x_2851.z, x_2851.z)) + x_2854);
      let x_2856 : vec4<f32> = u_xlat11;
      let x_2857 : i32 = u_xlati59;
      let x_2860 : i32 = u_xlati59;
      let x_2864 : vec4<f32> = x_497.x_AdditionalLightsWorldToShadow[((x_2857 + 3i) / 4i)][((x_2860 + 3i) % 4i)];
      u_xlat11 = (x_2856 + x_2864);
      let x_2866 : vec4<f32> = u_xlat11;
      let x_2868 : vec4<f32> = u_xlat11;
      let x_2870 : vec3<f32> = (vec3<f32>(x_2866.x, x_2866.y, x_2866.z) / vec3<f32>(x_2868.w, x_2868.w, x_2868.w));
      let x_2871 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2870.x, x_2870.y, x_2870.z, x_2871.w);
      let x_2874 : i32 = u_xlati30;
      let x_2876 : f32 = x_497.x_AdditionalShadowParams[x_2874].y;
      u_xlatb59 = (0.0f < x_2876);
      let x_2878 : bool = u_xlatb59;
      if (x_2878) {
        let x_2881 : i32 = u_xlati30;
        let x_2883 : f32 = x_497.x_AdditionalShadowParams[x_2881].y;
        u_xlatb59 = (1.0f == x_2883);
        let x_2885 : bool = u_xlatb59;
        if (x_2885) {
          let x_2888 : vec4<f32> = u_xlat11;
          let x_2892 : vec4<f32> = x_497.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2888.x, x_2888.y, x_2888.x, x_2888.y) + x_2892);
          let x_2895 : vec4<f32> = u_xlat12;
          let x_2896 : vec2<f32> = vec2<f32>(x_2895.x, x_2895.y);
          let x_2898 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2896.x, x_2896.y, x_2898);
          let x_2906 : vec3<f32> = txVec30;
          let x_2908 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2906.xy, x_2906.z);
          u_xlat13.x = x_2908;
          let x_2911 : vec4<f32> = u_xlat12;
          let x_2912 : vec2<f32> = vec2<f32>(x_2911.z, x_2911.w);
          let x_2914 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2912.x, x_2912.y, x_2914);
          let x_2921 : vec3<f32> = txVec31;
          let x_2923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2921.xy, x_2921.z);
          u_xlat13.y = x_2923;
          let x_2925 : vec4<f32> = u_xlat11;
          let x_2929 : vec4<f32> = x_497.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2925.x, x_2925.y, x_2925.x, x_2925.y) + x_2929);
          let x_2932 : vec4<f32> = u_xlat12;
          let x_2933 : vec2<f32> = vec2<f32>(x_2932.x, x_2932.y);
          let x_2935 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2933.x, x_2933.y, x_2935);
          let x_2942 : vec3<f32> = txVec32;
          let x_2944 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2942.xy, x_2942.z);
          u_xlat13.z = x_2944;
          let x_2947 : vec4<f32> = u_xlat12;
          let x_2948 : vec2<f32> = vec2<f32>(x_2947.z, x_2947.w);
          let x_2950 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2948.x, x_2948.y, x_2950);
          let x_2957 : vec3<f32> = txVec33;
          let x_2959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2957.xy, x_2957.z);
          u_xlat13.w = x_2959;
          let x_2961 : vec4<f32> = u_xlat13;
          u_xlat59.x = dot(x_2961, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2965 : i32 = u_xlati30;
          let x_2967 : f32 = x_497.x_AdditionalShadowParams[x_2965].y;
          u_xlatb85 = (2.0f == x_2967);
          let x_2969 : bool = u_xlatb85;
          if (x_2969) {
            let x_2972 : vec4<f32> = u_xlat11;
            let x_2976 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2979 : vec2<f32> = ((vec2<f32>(x_2972.x, x_2972.y) * vec2<f32>(x_2976.z, x_2976.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2980 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2979.x, x_2979.y, x_2980.z, x_2980.w);
            let x_2982 : vec4<f32> = u_xlat12;
            let x_2984 : vec2<f32> = floor(vec2<f32>(x_2982.x, x_2982.y));
            let x_2985 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2984.x, x_2984.y, x_2985.z, x_2985.w);
            let x_2988 : vec4<f32> = u_xlat11;
            let x_2991 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_2994 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2988.x, x_2988.y) * vec2<f32>(x_2991.z, x_2991.w)) + -(vec2<f32>(x_2994.x, x_2994.y)));
            let x_2998 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2998.x, x_2998.x, x_2998.y, x_2998.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3001 : vec4<f32> = u_xlat13;
            let x_3003 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3001.x, x_3001.x, x_3001.z, x_3001.z) * vec4<f32>(x_3003.x, x_3003.x, x_3003.z, x_3003.z));
            let x_3006 : vec4<f32> = u_xlat14;
            let x_3008 : vec2<f32> = (vec2<f32>(x_3006.y, x_3006.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_3009 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3008.x, x_3009.y, x_3008.y, x_3009.w);
            let x_3011 : vec4<f32> = u_xlat14;
            let x_3014 : vec2<f32> = u_xlat64;
            let x_3016 : vec2<f32> = ((vec2<f32>(x_3011.x, x_3011.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3014));
            let x_3017 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3016.x, x_3016.y, x_3017.z, x_3017.w);
            let x_3020 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_3020) + vec2<f32>(1.0f, 1.0f));
            let x_3023 : vec2<f32> = u_xlat64;
            let x_3024 : vec2<f32> = min(x_3023, vec2<f32>(0.0f, 0.0f));
            let x_3025 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3024.x, x_3024.y, x_3025.z, x_3025.w);
            let x_3027 : vec4<f32> = u_xlat15;
            let x_3030 : vec4<f32> = u_xlat15;
            let x_3033 : vec2<f32> = u_xlat66;
            let x_3034 : vec2<f32> = ((-(vec2<f32>(x_3027.x, x_3027.y)) * vec2<f32>(x_3030.x, x_3030.y)) + x_3033);
            let x_3035 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3034.x, x_3034.y, x_3035.z, x_3035.w);
            let x_3037 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_3037, vec2<f32>(0.0f, 0.0f));
            let x_3039 : vec2<f32> = u_xlat64;
            let x_3041 : vec2<f32> = u_xlat64;
            let x_3043 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_3039) * x_3041) + vec2<f32>(x_3043.y, x_3043.w));
            let x_3046 : vec4<f32> = u_xlat15;
            let x_3048 : vec2<f32> = (vec2<f32>(x_3046.x, x_3046.y) + vec2<f32>(1.0f, 1.0f));
            let x_3049 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3048.x, x_3048.y, x_3049.z, x_3049.w);
            let x_3051 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_3051 + vec2<f32>(1.0f, 1.0f));
            let x_3053 : vec4<f32> = u_xlat14;
            let x_3055 : vec2<f32> = (vec2<f32>(x_3053.x, x_3053.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3056 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3055.x, x_3055.y, x_3056.z, x_3056.w);
            let x_3058 : vec2<f32> = u_xlat66;
            let x_3059 : vec2<f32> = (x_3058 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3060 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3059.x, x_3059.y, x_3060.z, x_3060.w);
            let x_3062 : vec4<f32> = u_xlat15;
            let x_3064 : vec2<f32> = (vec2<f32>(x_3062.x, x_3062.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3065 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3064.x, x_3064.y, x_3065.z, x_3065.w);
            let x_3067 : vec2<f32> = u_xlat64;
            let x_3068 : vec2<f32> = (x_3067 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3069 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3068.x, x_3068.y, x_3069.z, x_3069.w);
            let x_3071 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3071.y, x_3071.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3075 : f32 = u_xlat15.x;
            u_xlat16.z = x_3075;
            let x_3078 : f32 = u_xlat64.x;
            u_xlat16.w = x_3078;
            let x_3081 : f32 = u_xlat17.x;
            u_xlat14.z = x_3081;
            let x_3084 : f32 = u_xlat13.x;
            u_xlat14.w = x_3084;
            let x_3086 : vec4<f32> = u_xlat14;
            let x_3088 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_3086.z, x_3086.w, x_3086.x, x_3086.z) + vec4<f32>(x_3088.z, x_3088.w, x_3088.x, x_3088.z));
            let x_3092 : f32 = u_xlat16.y;
            u_xlat15.z = x_3092;
            let x_3095 : f32 = u_xlat64.y;
            u_xlat15.w = x_3095;
            let x_3098 : f32 = u_xlat14.y;
            u_xlat17.z = x_3098;
            let x_3101 : f32 = u_xlat13.z;
            u_xlat17.w = x_3101;
            let x_3103 : vec4<f32> = u_xlat15;
            let x_3105 : vec4<f32> = u_xlat17;
            let x_3107 : vec3<f32> = (vec3<f32>(x_3103.z, x_3103.y, x_3103.w) + vec3<f32>(x_3105.z, x_3105.y, x_3105.w));
            let x_3108 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3107.x, x_3107.y, x_3107.z, x_3108.w);
            let x_3110 : vec4<f32> = u_xlat14;
            let x_3112 : vec4<f32> = u_xlat18;
            let x_3114 : vec3<f32> = (vec3<f32>(x_3110.x, x_3110.z, x_3110.w) / vec3<f32>(x_3112.z, x_3112.w, x_3112.y));
            let x_3115 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3114.x, x_3114.y, x_3114.z, x_3115.w);
            let x_3117 : vec4<f32> = u_xlat14;
            let x_3119 : vec3<f32> = (vec3<f32>(x_3117.x, x_3117.y, x_3117.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3120 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3119.x, x_3119.y, x_3119.z, x_3120.w);
            let x_3122 : vec4<f32> = u_xlat17;
            let x_3124 : vec4<f32> = u_xlat13;
            let x_3126 : vec3<f32> = (vec3<f32>(x_3122.z, x_3122.y, x_3122.w) / vec3<f32>(x_3124.x, x_3124.y, x_3124.z));
            let x_3127 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3126.x, x_3126.y, x_3126.z, x_3127.w);
            let x_3129 : vec4<f32> = u_xlat15;
            let x_3131 : vec3<f32> = (vec3<f32>(x_3129.x, x_3129.y, x_3129.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3132 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3131.x, x_3131.y, x_3131.z, x_3132.w);
            let x_3134 : vec4<f32> = u_xlat14;
            let x_3137 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3139 : vec3<f32> = (vec3<f32>(x_3134.y, x_3134.x, x_3134.z) * vec3<f32>(x_3137.x, x_3137.x, x_3137.x));
            let x_3140 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3139.x, x_3139.y, x_3139.z, x_3140.w);
            let x_3142 : vec4<f32> = u_xlat15;
            let x_3145 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3147 : vec3<f32> = (vec3<f32>(x_3142.x, x_3142.y, x_3142.z) * vec3<f32>(x_3145.y, x_3145.y, x_3145.y));
            let x_3148 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3147.x, x_3147.y, x_3147.z, x_3148.w);
            let x_3151 : f32 = u_xlat15.x;
            u_xlat14.w = x_3151;
            let x_3153 : vec4<f32> = u_xlat12;
            let x_3156 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3159 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3153.x, x_3153.y, x_3153.x, x_3153.y) * vec4<f32>(x_3156.x, x_3156.y, x_3156.x, x_3156.y)) + vec4<f32>(x_3159.y, x_3159.w, x_3159.x, x_3159.w));
            let x_3162 : vec4<f32> = u_xlat12;
            let x_3165 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3168 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3162.x, x_3162.y) * vec2<f32>(x_3165.x, x_3165.y)) + vec2<f32>(x_3168.z, x_3168.w));
            let x_3172 : f32 = u_xlat14.y;
            u_xlat15.w = x_3172;
            let x_3174 : vec4<f32> = u_xlat15;
            let x_3175 : vec2<f32> = vec2<f32>(x_3174.y, x_3174.z);
            let x_3176 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3176.x, x_3175.x, x_3176.z, x_3175.y);
            let x_3178 : vec4<f32> = u_xlat12;
            let x_3181 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3184 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_3178.x, x_3178.y, x_3178.x, x_3178.y) * vec4<f32>(x_3181.x, x_3181.y, x_3181.x, x_3181.y)) + vec4<f32>(x_3184.x, x_3184.y, x_3184.z, x_3184.y));
            let x_3187 : vec4<f32> = u_xlat12;
            let x_3190 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3193 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3187.x, x_3187.y, x_3187.x, x_3187.y) * vec4<f32>(x_3190.x, x_3190.y, x_3190.x, x_3190.y)) + vec4<f32>(x_3193.w, x_3193.y, x_3193.w, x_3193.z));
            let x_3196 : vec4<f32> = u_xlat12;
            let x_3199 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3202 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3196.x, x_3196.y, x_3196.x, x_3196.y) * vec4<f32>(x_3199.x, x_3199.y, x_3199.x, x_3199.y)) + vec4<f32>(x_3202.x, x_3202.w, x_3202.z, x_3202.w));
            let x_3205 : vec4<f32> = u_xlat13;
            let x_3207 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3205.x, x_3205.x, x_3205.x, x_3205.y) * vec4<f32>(x_3207.z, x_3207.w, x_3207.y, x_3207.z));
            let x_3210 : vec4<f32> = u_xlat13;
            let x_3212 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3210.y, x_3210.y, x_3210.z, x_3210.z) * x_3212);
            let x_3215 : f32 = u_xlat13.z;
            let x_3217 : f32 = u_xlat18.y;
            u_xlat85 = (x_3215 * x_3217);
            let x_3220 : vec4<f32> = u_xlat16;
            let x_3221 : vec2<f32> = vec2<f32>(x_3220.x, x_3220.y);
            let x_3223 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3221.x, x_3221.y, x_3223);
            let x_3230 : vec3<f32> = txVec34;
            let x_3232 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3230.xy, x_3230.z);
            u_xlat86 = x_3232;
            let x_3234 : vec4<f32> = u_xlat16;
            let x_3235 : vec2<f32> = vec2<f32>(x_3234.z, x_3234.w);
            let x_3237 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
            let x_3245 : vec3<f32> = txVec35;
            let x_3247 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3245.xy, x_3245.z);
            u_xlat88 = x_3247;
            let x_3248 : f32 = u_xlat88;
            let x_3250 : f32 = u_xlat19.y;
            u_xlat88 = (x_3248 * x_3250);
            let x_3253 : f32 = u_xlat19.x;
            let x_3254 : f32 = u_xlat86;
            let x_3256 : f32 = u_xlat88;
            u_xlat86 = ((x_3253 * x_3254) + x_3256);
            let x_3259 : vec2<f32> = u_xlat64;
            let x_3261 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3259.x, x_3259.y, x_3261);
            let x_3268 : vec3<f32> = txVec36;
            let x_3270 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3268.xy, x_3268.z);
            u_xlat88 = x_3270;
            let x_3272 : f32 = u_xlat19.z;
            let x_3273 : f32 = u_xlat88;
            let x_3275 : f32 = u_xlat86;
            u_xlat86 = ((x_3272 * x_3273) + x_3275);
            let x_3278 : vec4<f32> = u_xlat15;
            let x_3279 : vec2<f32> = vec2<f32>(x_3278.x, x_3278.y);
            let x_3281 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3279.x, x_3279.y, x_3281);
            let x_3288 : vec3<f32> = txVec37;
            let x_3290 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3288.xy, x_3288.z);
            u_xlat88 = x_3290;
            let x_3292 : f32 = u_xlat19.w;
            let x_3293 : f32 = u_xlat88;
            let x_3295 : f32 = u_xlat86;
            u_xlat86 = ((x_3292 * x_3293) + x_3295);
            let x_3298 : vec4<f32> = u_xlat17;
            let x_3299 : vec2<f32> = vec2<f32>(x_3298.x, x_3298.y);
            let x_3301 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3299.x, x_3299.y, x_3301);
            let x_3308 : vec3<f32> = txVec38;
            let x_3310 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3308.xy, x_3308.z);
            u_xlat88 = x_3310;
            let x_3312 : f32 = u_xlat20.x;
            let x_3313 : f32 = u_xlat88;
            let x_3315 : f32 = u_xlat86;
            u_xlat86 = ((x_3312 * x_3313) + x_3315);
            let x_3318 : vec4<f32> = u_xlat17;
            let x_3319 : vec2<f32> = vec2<f32>(x_3318.z, x_3318.w);
            let x_3321 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3319.x, x_3319.y, x_3321);
            let x_3328 : vec3<f32> = txVec39;
            let x_3330 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3328.xy, x_3328.z);
            u_xlat88 = x_3330;
            let x_3332 : f32 = u_xlat20.y;
            let x_3333 : f32 = u_xlat88;
            let x_3335 : f32 = u_xlat86;
            u_xlat86 = ((x_3332 * x_3333) + x_3335);
            let x_3338 : vec4<f32> = u_xlat15;
            let x_3339 : vec2<f32> = vec2<f32>(x_3338.z, x_3338.w);
            let x_3341 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3339.x, x_3339.y, x_3341);
            let x_3348 : vec3<f32> = txVec40;
            let x_3350 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3348.xy, x_3348.z);
            u_xlat88 = x_3350;
            let x_3352 : f32 = u_xlat20.z;
            let x_3353 : f32 = u_xlat88;
            let x_3355 : f32 = u_xlat86;
            u_xlat86 = ((x_3352 * x_3353) + x_3355);
            let x_3358 : vec4<f32> = u_xlat14;
            let x_3359 : vec2<f32> = vec2<f32>(x_3358.x, x_3358.y);
            let x_3361 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3359.x, x_3359.y, x_3361);
            let x_3368 : vec3<f32> = txVec41;
            let x_3370 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3368.xy, x_3368.z);
            u_xlat88 = x_3370;
            let x_3372 : f32 = u_xlat20.w;
            let x_3373 : f32 = u_xlat88;
            let x_3375 : f32 = u_xlat86;
            u_xlat86 = ((x_3372 * x_3373) + x_3375);
            let x_3378 : vec4<f32> = u_xlat14;
            let x_3379 : vec2<f32> = vec2<f32>(x_3378.z, x_3378.w);
            let x_3381 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3379.x, x_3379.y, x_3381);
            let x_3388 : vec3<f32> = txVec42;
            let x_3390 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3388.xy, x_3388.z);
            u_xlat88 = x_3390;
            let x_3391 : f32 = u_xlat85;
            let x_3392 : f32 = u_xlat88;
            let x_3394 : f32 = u_xlat86;
            u_xlat59.x = ((x_3391 * x_3392) + x_3394);
          } else {
            let x_3398 : vec4<f32> = u_xlat11;
            let x_3401 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3404 : vec2<f32> = ((vec2<f32>(x_3398.x, x_3398.y) * vec2<f32>(x_3401.z, x_3401.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3405 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3404.x, x_3404.y, x_3405.z, x_3405.w);
            let x_3407 : vec4<f32> = u_xlat12;
            let x_3409 : vec2<f32> = floor(vec2<f32>(x_3407.x, x_3407.y));
            let x_3410 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3409.x, x_3409.y, x_3410.z, x_3410.w);
            let x_3412 : vec4<f32> = u_xlat11;
            let x_3415 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3418 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3412.x, x_3412.y) * vec2<f32>(x_3415.z, x_3415.w)) + -(vec2<f32>(x_3418.x, x_3418.y)));
            let x_3422 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3422.x, x_3422.x, x_3422.y, x_3422.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3425 : vec4<f32> = u_xlat13;
            let x_3427 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3425.x, x_3425.x, x_3425.z, x_3425.z) * vec4<f32>(x_3427.x, x_3427.x, x_3427.z, x_3427.z));
            let x_3430 : vec4<f32> = u_xlat14;
            let x_3432 : vec2<f32> = (vec2<f32>(x_3430.y, x_3430.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3433 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3433.x, x_3432.x, x_3433.z, x_3432.y);
            let x_3435 : vec4<f32> = u_xlat14;
            let x_3438 : vec2<f32> = u_xlat64;
            let x_3440 : vec2<f32> = ((vec2<f32>(x_3435.x, x_3435.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3438));
            let x_3441 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3440.x, x_3441.y, x_3440.y, x_3441.w);
            let x_3443 : vec2<f32> = u_xlat64;
            let x_3445 : vec2<f32> = (-(x_3443) + vec2<f32>(1.0f, 1.0f));
            let x_3446 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3445.x, x_3445.y, x_3446.z, x_3446.w);
            let x_3448 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3448, vec2<f32>(0.0f, 0.0f));
            let x_3450 : vec2<f32> = u_xlat66;
            let x_3452 : vec2<f32> = u_xlat66;
            let x_3454 : vec4<f32> = u_xlat14;
            let x_3456 : vec2<f32> = ((-(x_3450) * x_3452) + vec2<f32>(x_3454.x, x_3454.y));
            let x_3457 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3456.x, x_3456.y, x_3457.z, x_3457.w);
            let x_3459 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3459, vec2<f32>(0.0f, 0.0f));
            let x_3462 : vec2<f32> = u_xlat66;
            let x_3464 : vec2<f32> = u_xlat66;
            let x_3466 : vec4<f32> = u_xlat13;
            let x_3468 : vec2<f32> = ((-(x_3462) * x_3464) + vec2<f32>(x_3466.y, x_3466.w));
            let x_3469 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3468.x, x_3469.y, x_3468.y);
            let x_3471 : vec4<f32> = u_xlat14;
            let x_3473 : vec2<f32> = (vec2<f32>(x_3471.x, x_3471.y) + vec2<f32>(2.0f, 2.0f));
            let x_3474 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3473.x, x_3473.y, x_3474.z, x_3474.w);
            let x_3476 : vec3<f32> = u_xlat39;
            let x_3478 : vec2<f32> = (vec2<f32>(x_3476.x, x_3476.z) + vec2<f32>(2.0f, 2.0f));
            let x_3479 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3479.x, x_3478.x, x_3479.z, x_3478.y);
            let x_3482 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3482 * 0.08163200318813323975f);
            let x_3485 : vec4<f32> = u_xlat13;
            let x_3487 : vec3<f32> = (vec3<f32>(x_3485.z, x_3485.x, x_3485.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3488 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3487.x, x_3487.y, x_3487.z, x_3488.w);
            let x_3490 : vec4<f32> = u_xlat14;
            let x_3492 : vec2<f32> = (vec2<f32>(x_3490.x, x_3490.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3493 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3492.x, x_3492.y, x_3493.z, x_3493.w);
            let x_3496 : f32 = u_xlat17.y;
            u_xlat16.x = x_3496;
            let x_3498 : vec2<f32> = u_xlat64;
            let x_3501 : vec2<f32> = ((vec2<f32>(x_3498.x, x_3498.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3502 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3502.x, x_3501.x, x_3502.z, x_3501.y);
            let x_3504 : vec2<f32> = u_xlat64;
            let x_3507 : vec2<f32> = ((vec2<f32>(x_3504.x, x_3504.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3508 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3507.x, x_3508.y, x_3507.y, x_3508.w);
            let x_3511 : f32 = u_xlat13.x;
            u_xlat14.y = x_3511;
            let x_3514 : f32 = u_xlat15.y;
            u_xlat14.w = x_3514;
            let x_3516 : vec4<f32> = u_xlat14;
            let x_3517 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3516 + x_3517);
            let x_3519 : vec2<f32> = u_xlat64;
            let x_3522 : vec2<f32> = ((vec2<f32>(x_3519.y, x_3519.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3523 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3523.x, x_3522.x, x_3523.z, x_3522.y);
            let x_3525 : vec2<f32> = u_xlat64;
            let x_3528 : vec2<f32> = ((vec2<f32>(x_3525.y, x_3525.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3529 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3528.x, x_3529.y, x_3528.y, x_3529.w);
            let x_3532 : f32 = u_xlat13.y;
            u_xlat15.y = x_3532;
            let x_3534 : vec4<f32> = u_xlat15;
            let x_3535 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3534 + x_3535);
            let x_3537 : vec4<f32> = u_xlat14;
            let x_3538 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3537 / x_3538);
            let x_3540 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3540 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3542 : vec4<f32> = u_xlat15;
            let x_3543 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3542 / x_3543);
            let x_3545 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3545 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3547 : vec4<f32> = u_xlat14;
            let x_3550 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3547.w, x_3547.x, x_3547.y, x_3547.z) * vec4<f32>(x_3550.x, x_3550.x, x_3550.x, x_3550.x));
            let x_3553 : vec4<f32> = u_xlat15;
            let x_3556 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3553.x, x_3553.w, x_3553.y, x_3553.z) * vec4<f32>(x_3556.y, x_3556.y, x_3556.y, x_3556.y));
            let x_3559 : vec4<f32> = u_xlat14;
            let x_3560 : vec3<f32> = vec3<f32>(x_3559.y, x_3559.z, x_3559.w);
            let x_3561 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3560.x, x_3561.y, x_3560.y, x_3560.z);
            let x_3564 : f32 = u_xlat15.x;
            u_xlat17.y = x_3564;
            let x_3566 : vec4<f32> = u_xlat12;
            let x_3569 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3572 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3566.x, x_3566.y, x_3566.x, x_3566.y) * vec4<f32>(x_3569.x, x_3569.y, x_3569.x, x_3569.y)) + vec4<f32>(x_3572.x, x_3572.y, x_3572.z, x_3572.y));
            let x_3575 : vec4<f32> = u_xlat12;
            let x_3578 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3581 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3575.x, x_3575.y) * vec2<f32>(x_3578.x, x_3578.y)) + vec2<f32>(x_3581.w, x_3581.y));
            let x_3585 : f32 = u_xlat17.y;
            u_xlat14.y = x_3585;
            let x_3588 : f32 = u_xlat15.z;
            u_xlat17.y = x_3588;
            let x_3590 : vec4<f32> = u_xlat12;
            let x_3593 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3596 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3590.x, x_3590.y, x_3590.x, x_3590.y) * vec4<f32>(x_3593.x, x_3593.y, x_3593.x, x_3593.y)) + vec4<f32>(x_3596.x, x_3596.y, x_3596.z, x_3596.y));
            let x_3599 : vec4<f32> = u_xlat12;
            let x_3602 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3605 : vec4<f32> = u_xlat17;
            let x_3607 : vec2<f32> = ((vec2<f32>(x_3599.x, x_3599.y) * vec2<f32>(x_3602.x, x_3602.y)) + vec2<f32>(x_3605.w, x_3605.y));
            let x_3608 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3607.x, x_3607.y, x_3608.z, x_3608.w);
            let x_3611 : f32 = u_xlat17.y;
            u_xlat14.z = x_3611;
            let x_3614 : vec4<f32> = u_xlat12;
            let x_3617 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3620 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3614.x, x_3614.y, x_3614.x, x_3614.y) * vec4<f32>(x_3617.x, x_3617.y, x_3617.x, x_3617.y)) + vec4<f32>(x_3620.x, x_3620.y, x_3620.x, x_3620.z));
            let x_3624 : f32 = u_xlat15.w;
            u_xlat17.y = x_3624;
            let x_3627 : vec4<f32> = u_xlat12;
            let x_3630 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3633 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3627.x, x_3627.y, x_3627.x, x_3627.y) * vec4<f32>(x_3630.x, x_3630.y, x_3630.x, x_3630.y)) + vec4<f32>(x_3633.x, x_3633.y, x_3633.z, x_3633.y));
            let x_3637 : vec4<f32> = u_xlat12;
            let x_3640 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3643 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3637.x, x_3637.y) * vec2<f32>(x_3640.x, x_3640.y)) + vec2<f32>(x_3643.w, x_3643.y));
            let x_3647 : f32 = u_xlat17.y;
            u_xlat14.w = x_3647;
            let x_3650 : vec4<f32> = u_xlat12;
            let x_3653 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3656 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3650.x, x_3650.y) * vec2<f32>(x_3653.x, x_3653.y)) + vec2<f32>(x_3656.x, x_3656.w));
            let x_3659 : vec4<f32> = u_xlat17;
            let x_3660 : vec3<f32> = vec3<f32>(x_3659.x, x_3659.z, x_3659.w);
            let x_3661 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3660.x, x_3661.y, x_3660.y, x_3660.z);
            let x_3663 : vec4<f32> = u_xlat12;
            let x_3666 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3669 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3663.x, x_3663.y, x_3663.x, x_3663.y) * vec4<f32>(x_3666.x, x_3666.y, x_3666.x, x_3666.y)) + vec4<f32>(x_3669.x, x_3669.y, x_3669.z, x_3669.y));
            let x_3672 : vec4<f32> = u_xlat12;
            let x_3675 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3678 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3672.x, x_3672.y) * vec2<f32>(x_3675.x, x_3675.y)) + vec2<f32>(x_3678.w, x_3678.y));
            let x_3682 : f32 = u_xlat14.x;
            u_xlat15.x = x_3682;
            let x_3684 : vec4<f32> = u_xlat12;
            let x_3687 : vec4<f32> = x_497.x_AdditionalShadowmapSize;
            let x_3690 : vec4<f32> = u_xlat15;
            let x_3692 : vec2<f32> = ((vec2<f32>(x_3684.x, x_3684.y) * vec2<f32>(x_3687.x, x_3687.y)) + vec2<f32>(x_3690.x, x_3690.y));
            let x_3693 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3692.x, x_3692.y, x_3693.z, x_3693.w);
            let x_3696 : vec4<f32> = u_xlat13;
            let x_3698 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3696.x, x_3696.x, x_3696.x, x_3696.x) * x_3698);
            let x_3701 : vec4<f32> = u_xlat13;
            let x_3703 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3701.y, x_3701.y, x_3701.y, x_3701.y) * x_3703);
            let x_3706 : vec4<f32> = u_xlat13;
            let x_3708 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3706.z, x_3706.z, x_3706.z, x_3706.z) * x_3708);
            let x_3710 : vec4<f32> = u_xlat13;
            let x_3712 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3710.w, x_3710.w, x_3710.w, x_3710.w) * x_3712);
            let x_3715 : vec4<f32> = u_xlat18;
            let x_3716 : vec2<f32> = vec2<f32>(x_3715.x, x_3715.y);
            let x_3718 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3716.x, x_3716.y, x_3718);
            let x_3725 : vec3<f32> = txVec43;
            let x_3727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3725.xy, x_3725.z);
            u_xlat85 = x_3727;
            let x_3729 : vec4<f32> = u_xlat18;
            let x_3730 : vec2<f32> = vec2<f32>(x_3729.z, x_3729.w);
            let x_3732 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3730.x, x_3730.y, x_3732);
            let x_3739 : vec3<f32> = txVec44;
            let x_3741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3739.xy, x_3739.z);
            u_xlat86 = x_3741;
            let x_3742 : f32 = u_xlat86;
            let x_3744 : f32 = u_xlat23.y;
            u_xlat86 = (x_3742 * x_3744);
            let x_3747 : f32 = u_xlat23.x;
            let x_3748 : f32 = u_xlat85;
            let x_3750 : f32 = u_xlat86;
            u_xlat85 = ((x_3747 * x_3748) + x_3750);
            let x_3753 : vec2<f32> = u_xlat64;
            let x_3755 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3753.x, x_3753.y, x_3755);
            let x_3762 : vec3<f32> = txVec45;
            let x_3764 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3762.xy, x_3762.z);
            u_xlat86 = x_3764;
            let x_3766 : f32 = u_xlat23.z;
            let x_3767 : f32 = u_xlat86;
            let x_3769 : f32 = u_xlat85;
            u_xlat85 = ((x_3766 * x_3767) + x_3769);
            let x_3772 : vec4<f32> = u_xlat21;
            let x_3773 : vec2<f32> = vec2<f32>(x_3772.x, x_3772.y);
            let x_3775 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3773.x, x_3773.y, x_3775);
            let x_3782 : vec3<f32> = txVec46;
            let x_3784 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3782.xy, x_3782.z);
            u_xlat86 = x_3784;
            let x_3786 : f32 = u_xlat23.w;
            let x_3787 : f32 = u_xlat86;
            let x_3789 : f32 = u_xlat85;
            u_xlat85 = ((x_3786 * x_3787) + x_3789);
            let x_3792 : vec4<f32> = u_xlat19;
            let x_3793 : vec2<f32> = vec2<f32>(x_3792.x, x_3792.y);
            let x_3795 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3793.x, x_3793.y, x_3795);
            let x_3802 : vec3<f32> = txVec47;
            let x_3804 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3802.xy, x_3802.z);
            u_xlat86 = x_3804;
            let x_3806 : f32 = u_xlat24.x;
            let x_3807 : f32 = u_xlat86;
            let x_3809 : f32 = u_xlat85;
            u_xlat85 = ((x_3806 * x_3807) + x_3809);
            let x_3812 : vec4<f32> = u_xlat19;
            let x_3813 : vec2<f32> = vec2<f32>(x_3812.z, x_3812.w);
            let x_3815 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3813.x, x_3813.y, x_3815);
            let x_3822 : vec3<f32> = txVec48;
            let x_3824 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3822.xy, x_3822.z);
            u_xlat86 = x_3824;
            let x_3826 : f32 = u_xlat24.y;
            let x_3827 : f32 = u_xlat86;
            let x_3829 : f32 = u_xlat85;
            u_xlat85 = ((x_3826 * x_3827) + x_3829);
            let x_3832 : vec4<f32> = u_xlat20;
            let x_3833 : vec2<f32> = vec2<f32>(x_3832.x, x_3832.y);
            let x_3835 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3833.x, x_3833.y, x_3835);
            let x_3842 : vec3<f32> = txVec49;
            let x_3844 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3842.xy, x_3842.z);
            u_xlat86 = x_3844;
            let x_3846 : f32 = u_xlat24.z;
            let x_3847 : f32 = u_xlat86;
            let x_3849 : f32 = u_xlat85;
            u_xlat85 = ((x_3846 * x_3847) + x_3849);
            let x_3852 : vec4<f32> = u_xlat21;
            let x_3853 : vec2<f32> = vec2<f32>(x_3852.z, x_3852.w);
            let x_3855 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3853.x, x_3853.y, x_3855);
            let x_3862 : vec3<f32> = txVec50;
            let x_3864 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3862.xy, x_3862.z);
            u_xlat86 = x_3864;
            let x_3866 : f32 = u_xlat24.w;
            let x_3867 : f32 = u_xlat86;
            let x_3869 : f32 = u_xlat85;
            u_xlat85 = ((x_3866 * x_3867) + x_3869);
            let x_3872 : vec4<f32> = u_xlat22;
            let x_3873 : vec2<f32> = vec2<f32>(x_3872.x, x_3872.y);
            let x_3875 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3873.x, x_3873.y, x_3875);
            let x_3882 : vec3<f32> = txVec51;
            let x_3884 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3882.xy, x_3882.z);
            u_xlat86 = x_3884;
            let x_3886 : f32 = u_xlat25.x;
            let x_3887 : f32 = u_xlat86;
            let x_3889 : f32 = u_xlat85;
            u_xlat85 = ((x_3886 * x_3887) + x_3889);
            let x_3892 : vec4<f32> = u_xlat22;
            let x_3893 : vec2<f32> = vec2<f32>(x_3892.z, x_3892.w);
            let x_3895 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3893.x, x_3893.y, x_3895);
            let x_3902 : vec3<f32> = txVec52;
            let x_3904 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3902.xy, x_3902.z);
            u_xlat86 = x_3904;
            let x_3906 : f32 = u_xlat25.y;
            let x_3907 : f32 = u_xlat86;
            let x_3909 : f32 = u_xlat85;
            u_xlat85 = ((x_3906 * x_3907) + x_3909);
            let x_3912 : vec2<f32> = u_xlat40;
            let x_3914 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3912.x, x_3912.y, x_3914);
            let x_3921 : vec3<f32> = txVec53;
            let x_3923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3921.xy, x_3921.z);
            u_xlat86 = x_3923;
            let x_3925 : f32 = u_xlat25.z;
            let x_3926 : f32 = u_xlat86;
            let x_3928 : f32 = u_xlat85;
            u_xlat85 = ((x_3925 * x_3926) + x_3928);
            let x_3931 : vec2<f32> = u_xlat72;
            let x_3933 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3931.x, x_3931.y, x_3933);
            let x_3940 : vec3<f32> = txVec54;
            let x_3942 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3940.xy, x_3940.z);
            u_xlat86 = x_3942;
            let x_3944 : f32 = u_xlat25.w;
            let x_3945 : f32 = u_xlat86;
            let x_3947 : f32 = u_xlat85;
            u_xlat85 = ((x_3944 * x_3945) + x_3947);
            let x_3950 : vec4<f32> = u_xlat17;
            let x_3951 : vec2<f32> = vec2<f32>(x_3950.x, x_3950.y);
            let x_3953 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3951.x, x_3951.y, x_3953);
            let x_3960 : vec3<f32> = txVec55;
            let x_3962 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3960.xy, x_3960.z);
            u_xlat86 = x_3962;
            let x_3964 : f32 = u_xlat13.x;
            let x_3965 : f32 = u_xlat86;
            let x_3967 : f32 = u_xlat85;
            u_xlat85 = ((x_3964 * x_3965) + x_3967);
            let x_3970 : vec4<f32> = u_xlat17;
            let x_3971 : vec2<f32> = vec2<f32>(x_3970.z, x_3970.w);
            let x_3973 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3971.x, x_3971.y, x_3973);
            let x_3980 : vec3<f32> = txVec56;
            let x_3982 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3980.xy, x_3980.z);
            u_xlat86 = x_3982;
            let x_3984 : f32 = u_xlat13.y;
            let x_3985 : f32 = u_xlat86;
            let x_3987 : f32 = u_xlat85;
            u_xlat85 = ((x_3984 * x_3985) + x_3987);
            let x_3990 : vec2<f32> = u_xlat67;
            let x_3992 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3990.x, x_3990.y, x_3992);
            let x_3999 : vec3<f32> = txVec57;
            let x_4001 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3999.xy, x_3999.z);
            u_xlat86 = x_4001;
            let x_4003 : f32 = u_xlat13.z;
            let x_4004 : f32 = u_xlat86;
            let x_4006 : f32 = u_xlat85;
            u_xlat85 = ((x_4003 * x_4004) + x_4006);
            let x_4009 : vec4<f32> = u_xlat12;
            let x_4010 : vec2<f32> = vec2<f32>(x_4009.x, x_4009.y);
            let x_4012 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_4010.x, x_4010.y, x_4012);
            let x_4019 : vec3<f32> = txVec58;
            let x_4021 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4019.xy, x_4019.z);
            u_xlat86 = x_4021;
            let x_4023 : f32 = u_xlat13.w;
            let x_4024 : f32 = u_xlat86;
            let x_4026 : f32 = u_xlat85;
            u_xlat59.x = ((x_4023 * x_4024) + x_4026);
          }
        }
      } else {
        let x_4031 : vec4<f32> = u_xlat11;
        let x_4032 : vec2<f32> = vec2<f32>(x_4031.x, x_4031.y);
        let x_4034 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_4032.x, x_4032.y, x_4034);
        let x_4041 : vec3<f32> = txVec59;
        let x_4043 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_4041.xy, x_4041.z);
        u_xlat59.x = x_4043;
      }
      let x_4045 : i32 = u_xlati30;
      let x_4047 : f32 = x_497.x_AdditionalShadowParams[x_4045].x;
      u_xlat85 = (1.0f + -(x_4047));
      let x_4051 : f32 = u_xlat59.x;
      let x_4052 : i32 = u_xlati30;
      let x_4054 : f32 = x_497.x_AdditionalShadowParams[x_4052].x;
      let x_4056 : f32 = u_xlat85;
      u_xlat59.x = ((x_4051 * x_4054) + x_4056);
      let x_4060 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_4060);
      let x_4064 : f32 = u_xlat11.z;
      u_xlatb86 = (x_4064 >= 1.0f);
      let x_4066 : bool = u_xlatb85;
      let x_4067 : bool = u_xlatb86;
      u_xlatb85 = (x_4066 | x_4067);
      let x_4069 : bool = u_xlatb85;
      if (x_4069) {
        x_4070 = 1.0f;
      } else {
        let x_4075 : f32 = u_xlat59.x;
        x_4070 = x_4075;
      }
      let x_4076 : f32 = x_4070;
      u_xlat59.x = x_4076;
    } else {
      u_xlat59.x = 1.0f;
    }
    let x_4081 : f32 = u_xlat59.x;
    u_xlat85 = (-(x_4081) + 1.0f);
    let x_4085 : f32 = u_xlat2.x;
    let x_4086 : f32 = u_xlat85;
    let x_4089 : f32 = u_xlat59.x;
    u_xlat59.x = ((x_4085 * x_4086) + x_4089);
    let x_4093 : i32 = u_xlati30;
    u_xlati85 = (1i << bitcast<u32>((x_4093 & 31i)));
    let x_4097 : i32 = u_xlati85;
    let x_4100 : f32 = x_2183.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_4097) & bitcast<u32>(x_4100)));
    let x_4104 : i32 = u_xlati85;
    if ((x_4104 != 0i)) {
      let x_4108 : i32 = u_xlati30;
      let x_4110 : f32 = x_2183.x_AdditionalLightsLightTypes[x_4108].el;
      u_xlati85 = i32(x_4110);
      let x_4113 : i32 = u_xlati85;
      u_xlati86 = select(1i, 0i, (x_4113 != 0i));
      let x_4117 : i32 = u_xlati30;
      u_xlati88 = (x_4117 << bitcast<u32>(2i));
      let x_4119 : i32 = u_xlati86;
      if ((x_4119 != 0i)) {
        let x_4123 : vec3<f32> = vs_INTERP7;
        let x_4125 : i32 = u_xlati88;
        let x_4128 : i32 = u_xlati88;
        let x_4132 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[((x_4125 + 1i) / 4i)][((x_4128 + 1i) % 4i)];
        let x_4134 : vec3<f32> = (vec3<f32>(x_4123.y, x_4123.y, x_4123.y) * vec3<f32>(x_4132.x, x_4132.y, x_4132.w));
        let x_4135 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4134.x, x_4134.y, x_4134.z, x_4135.w);
        let x_4137 : i32 = u_xlati88;
        let x_4139 : i32 = u_xlati88;
        let x_4142 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[(x_4137 / 4i)][(x_4139 % 4i)];
        let x_4144 : vec3<f32> = vs_INTERP7;
        let x_4147 : vec4<f32> = u_xlat11;
        let x_4149 : vec3<f32> = ((vec3<f32>(x_4142.x, x_4142.y, x_4142.w) * vec3<f32>(x_4144.x, x_4144.x, x_4144.x)) + vec3<f32>(x_4147.x, x_4147.y, x_4147.z));
        let x_4150 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4149.x, x_4149.y, x_4149.z, x_4150.w);
        let x_4152 : i32 = u_xlati88;
        let x_4155 : i32 = u_xlati88;
        let x_4159 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[((x_4152 + 2i) / 4i)][((x_4155 + 2i) % 4i)];
        let x_4161 : vec3<f32> = vs_INTERP7;
        let x_4164 : vec4<f32> = u_xlat11;
        let x_4166 : vec3<f32> = ((vec3<f32>(x_4159.x, x_4159.y, x_4159.w) * vec3<f32>(x_4161.z, x_4161.z, x_4161.z)) + vec3<f32>(x_4164.x, x_4164.y, x_4164.z));
        let x_4167 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4166.x, x_4166.y, x_4166.z, x_4167.w);
        let x_4169 : vec4<f32> = u_xlat11;
        let x_4171 : i32 = u_xlati88;
        let x_4174 : i32 = u_xlati88;
        let x_4178 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[((x_4171 + 3i) / 4i)][((x_4174 + 3i) % 4i)];
        let x_4180 : vec3<f32> = (vec3<f32>(x_4169.x, x_4169.y, x_4169.z) + vec3<f32>(x_4178.x, x_4178.y, x_4178.w));
        let x_4181 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4180.x, x_4180.y, x_4180.z, x_4181.w);
        let x_4183 : vec4<f32> = u_xlat11;
        let x_4185 : vec4<f32> = u_xlat11;
        let x_4187 : vec2<f32> = (vec2<f32>(x_4183.x, x_4183.y) / vec2<f32>(x_4185.z, x_4185.z));
        let x_4188 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4187.x, x_4187.y, x_4188.z, x_4188.w);
        let x_4190 : vec4<f32> = u_xlat11;
        let x_4193 : vec2<f32> = ((vec2<f32>(x_4190.x, x_4190.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4194 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4193.x, x_4193.y, x_4194.z, x_4194.w);
        let x_4196 : vec4<f32> = u_xlat11;
        let x_4200 : vec2<f32> = clamp(vec2<f32>(x_4196.x, x_4196.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4201 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4200.x, x_4200.y, x_4201.z, x_4201.w);
        let x_4203 : i32 = u_xlati30;
        let x_4205 : vec4<f32> = x_2183.x_AdditionalLightsCookieAtlasUVRects[x_4203];
        let x_4207 : vec4<f32> = u_xlat11;
        let x_4210 : i32 = u_xlati30;
        let x_4212 : vec4<f32> = x_2183.x_AdditionalLightsCookieAtlasUVRects[x_4210];
        let x_4214 : vec2<f32> = ((vec2<f32>(x_4205.x, x_4205.y) * vec2<f32>(x_4207.x, x_4207.y)) + vec2<f32>(x_4212.z, x_4212.w));
        let x_4215 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4214.x, x_4214.y, x_4215.z, x_4215.w);
      } else {
        let x_4218 : i32 = u_xlati85;
        u_xlatb85 = (x_4218 == 1i);
        let x_4220 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4220);
        let x_4222 : i32 = u_xlati85;
        if ((x_4222 != 0i)) {
          let x_4227 : vec3<f32> = vs_INTERP7;
          let x_4229 : i32 = u_xlati88;
          let x_4232 : i32 = u_xlati88;
          let x_4236 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[((x_4229 + 1i) / 4i)][((x_4232 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4227.y, x_4227.y) * vec2<f32>(x_4236.x, x_4236.y));
          let x_4239 : i32 = u_xlati88;
          let x_4241 : i32 = u_xlati88;
          let x_4244 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[(x_4239 / 4i)][(x_4241 % 4i)];
          let x_4246 : vec3<f32> = vs_INTERP7;
          let x_4249 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4244.x, x_4244.y) * vec2<f32>(x_4246.x, x_4246.x)) + x_4249);
          let x_4251 : i32 = u_xlati88;
          let x_4254 : i32 = u_xlati88;
          let x_4258 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[((x_4251 + 2i) / 4i)][((x_4254 + 2i) % 4i)];
          let x_4260 : vec3<f32> = vs_INTERP7;
          let x_4263 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4258.x, x_4258.y) * vec2<f32>(x_4260.z, x_4260.z)) + x_4263);
          let x_4265 : vec2<f32> = u_xlat63;
          let x_4266 : i32 = u_xlati88;
          let x_4269 : i32 = u_xlati88;
          let x_4273 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[((x_4266 + 3i) / 4i)][((x_4269 + 3i) % 4i)];
          u_xlat63 = (x_4265 + vec2<f32>(x_4273.x, x_4273.y));
          let x_4276 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4276 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4279 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4279);
          let x_4281 : i32 = u_xlati30;
          let x_4283 : vec4<f32> = x_2183.x_AdditionalLightsCookieAtlasUVRects[x_4281];
          let x_4285 : vec2<f32> = u_xlat63;
          let x_4287 : i32 = u_xlati30;
          let x_4289 : vec4<f32> = x_2183.x_AdditionalLightsCookieAtlasUVRects[x_4287];
          let x_4291 : vec2<f32> = ((vec2<f32>(x_4283.x, x_4283.y) * x_4285) + vec2<f32>(x_4289.z, x_4289.w));
          let x_4292 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4291.x, x_4291.y, x_4292.z, x_4292.w);
        } else {
          let x_4295 : vec3<f32> = vs_INTERP7;
          let x_4297 : i32 = u_xlati88;
          let x_4300 : i32 = u_xlati88;
          let x_4304 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[((x_4297 + 1i) / 4i)][((x_4300 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4295.y, x_4295.y, x_4295.y, x_4295.y) * x_4304);
          let x_4306 : i32 = u_xlati88;
          let x_4308 : i32 = u_xlati88;
          let x_4311 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[(x_4306 / 4i)][(x_4308 % 4i)];
          let x_4312 : vec3<f32> = vs_INTERP7;
          let x_4315 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4311 * vec4<f32>(x_4312.x, x_4312.x, x_4312.x, x_4312.x)) + x_4315);
          let x_4317 : i32 = u_xlati88;
          let x_4320 : i32 = u_xlati88;
          let x_4324 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[((x_4317 + 2i) / 4i)][((x_4320 + 2i) % 4i)];
          let x_4325 : vec3<f32> = vs_INTERP7;
          let x_4328 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4324 * vec4<f32>(x_4325.z, x_4325.z, x_4325.z, x_4325.z)) + x_4328);
          let x_4330 : vec4<f32> = u_xlat12;
          let x_4331 : i32 = u_xlati88;
          let x_4334 : i32 = u_xlati88;
          let x_4338 : vec4<f32> = x_2183.x_AdditionalLightsWorldToLights[((x_4331 + 3i) / 4i)][((x_4334 + 3i) % 4i)];
          u_xlat12 = (x_4330 + x_4338);
          let x_4340 : vec4<f32> = u_xlat12;
          let x_4342 : vec4<f32> = u_xlat12;
          let x_4344 : vec3<f32> = (vec3<f32>(x_4340.x, x_4340.y, x_4340.z) / vec3<f32>(x_4342.w, x_4342.w, x_4342.w));
          let x_4345 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4344.x, x_4344.y, x_4344.z, x_4345.w);
          let x_4347 : vec4<f32> = u_xlat12;
          let x_4349 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4347.x, x_4347.y, x_4347.z), vec3<f32>(x_4349.x, x_4349.y, x_4349.z));
          let x_4352 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4352);
          let x_4354 : f32 = u_xlat85;
          let x_4356 : vec4<f32> = u_xlat12;
          let x_4358 : vec3<f32> = (vec3<f32>(x_4354, x_4354, x_4354) * vec3<f32>(x_4356.x, x_4356.y, x_4356.z));
          let x_4359 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4358.x, x_4358.y, x_4358.z, x_4359.w);
          let x_4361 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4361.x, x_4361.y, x_4361.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4365 : f32 = u_xlat85;
          u_xlat85 = max(x_4365, 0.00000099999999747524f);
          let x_4368 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4368);
          let x_4370 : f32 = u_xlat85;
          let x_4372 : vec4<f32> = u_xlat12;
          let x_4374 : vec3<f32> = (vec3<f32>(x_4370, x_4370, x_4370) * vec3<f32>(x_4372.z, x_4372.x, x_4372.y));
          let x_4375 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4374.x, x_4374.y, x_4374.z, x_4375.w);
          let x_4378 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4378);
          let x_4382 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4382, 0.0f, 1.0f);
          let x_4386 : vec4<f32> = u_xlat13;
          let x_4388 : vec4<bool> = (vec4<f32>(x_4386.y, x_4386.z, x_4386.y, x_4386.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4388.x, x_4388.y);
          let x_4391 : bool = u_xlatb63.x;
          if (x_4391) {
            let x_4396 : f32 = u_xlat13.x;
            x_4392 = x_4396;
          } else {
            let x_4399 : f32 = u_xlat13.x;
            x_4392 = -(x_4399);
          }
          let x_4401 : f32 = x_4392;
          u_xlat63.x = x_4401;
          let x_4404 : bool = u_xlatb63.y;
          if (x_4404) {
            let x_4409 : f32 = u_xlat13.x;
            x_4405 = x_4409;
          } else {
            let x_4412 : f32 = u_xlat13.x;
            x_4405 = -(x_4412);
          }
          let x_4414 : f32 = x_4405;
          u_xlat63.y = x_4414;
          let x_4416 : vec4<f32> = u_xlat12;
          let x_4418 : f32 = u_xlat85;
          let x_4421 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4416.x, x_4416.y) * vec2<f32>(x_4418, x_4418)) + x_4421);
          let x_4423 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4423 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4426 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4426, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4430 : i32 = u_xlati30;
          let x_4432 : vec4<f32> = x_2183.x_AdditionalLightsCookieAtlasUVRects[x_4430];
          let x_4434 : vec2<f32> = u_xlat63;
          let x_4436 : i32 = u_xlati30;
          let x_4438 : vec4<f32> = x_2183.x_AdditionalLightsCookieAtlasUVRects[x_4436];
          let x_4440 : vec2<f32> = ((vec2<f32>(x_4432.x, x_4432.y) * x_4434) + vec2<f32>(x_4438.z, x_4438.w));
          let x_4441 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4440.x, x_4440.y, x_4441.z, x_4441.w);
        }
      }
      let x_4448 : vec4<f32> = u_xlat11;
      let x_4450 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4448.x, x_4448.y), 0.0f);
      u_xlat11 = x_4450;
      let x_4452 : bool = u_xlatb7.y;
      if (x_4452) {
        let x_4457 : f32 = u_xlat11.w;
        x_4453 = x_4457;
      } else {
        let x_4460 : f32 = u_xlat11.x;
        x_4453 = x_4460;
      }
      let x_4461 : f32 = x_4453;
      u_xlat85 = x_4461;
      let x_4463 : bool = u_xlatb7.x;
      if (x_4463) {
        let x_4467 : vec4<f32> = u_xlat11;
        x_4464 = vec3<f32>(x_4467.x, x_4467.y, x_4467.z);
      } else {
        let x_4470 : f32 = u_xlat85;
        x_4464 = vec3<f32>(x_4470, x_4470, x_4470);
      }
      let x_4472 : vec3<f32> = x_4464;
      let x_4473 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4472.x, x_4472.y, x_4472.z, x_4473.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4479 : vec4<f32> = u_xlat11;
    let x_4481 : i32 = u_xlati30;
    let x_4483 : vec4<f32> = x_2650.x_AdditionalLightsColor[x_4481];
    let x_4485 : vec3<f32> = (vec3<f32>(x_4479.x, x_4479.y, x_4479.z) * vec3<f32>(x_4483.x, x_4483.y, x_4483.z));
    let x_4486 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4485.x, x_4485.y, x_4485.z, x_4486.w);
    let x_4488 : f32 = u_xlat83;
    let x_4490 : f32 = u_xlat59.x;
    u_xlat30.x = (x_4488 * x_4490);
    let x_4493 : vec4<f32> = u_xlat1;
    let x_4495 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4493.x, x_4493.y, x_4493.z), vec3<f32>(x_4495.x, x_4495.y, x_4495.z));
    let x_4498 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4498, 0.0f, 1.0f);
    let x_4501 : f32 = u_xlat30.x;
    let x_4502 : f32 = u_xlat83;
    u_xlat30.x = (x_4501 * x_4502);
    let x_4505 : vec3<f32> = u_xlat30;
    let x_4507 : vec4<f32> = u_xlat11;
    let x_4509 : vec3<f32> = (vec3<f32>(x_4505.x, x_4505.x, x_4505.x) * vec3<f32>(x_4507.x, x_4507.y, x_4507.z));
    let x_4510 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4509.x, x_4509.y, x_4509.z, x_4510.w);
    let x_4512 : vec3<f32> = u_xlat35;
    let x_4513 : f32 = u_xlat84;
    let x_4516 : vec4<f32> = u_xlat3;
    u_xlat35 = ((x_4512 * vec3<f32>(x_4513, x_4513, x_4513)) + vec3<f32>(x_4516.x, x_4516.y, x_4516.z));
    let x_4519 : vec3<f32> = u_xlat35;
    let x_4520 : vec3<f32> = u_xlat35;
    u_xlat30.x = dot(x_4519, x_4520);
    let x_4524 : f32 = u_xlat30.x;
    u_xlat30.x = max(x_4524, 1.17549435e-38f);
    let x_4528 : f32 = u_xlat30.x;
    u_xlat30.x = inverseSqrt(x_4528);
    let x_4531 : vec3<f32> = u_xlat30;
    let x_4533 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4531.x, x_4531.x, x_4531.x) * x_4533);
    let x_4535 : vec4<f32> = u_xlat1;
    let x_4537 : vec3<f32> = u_xlat35;
    u_xlat30.x = dot(vec3<f32>(x_4535.x, x_4535.y, x_4535.z), x_4537);
    let x_4541 : f32 = u_xlat30.x;
    u_xlat30.x = clamp(x_4541, 0.0f, 1.0f);
    let x_4544 : vec4<f32> = u_xlat10;
    let x_4546 : vec3<f32> = u_xlat35;
    u_xlat83 = dot(vec3<f32>(x_4544.x, x_4544.y, x_4544.z), x_4546);
    let x_4548 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4548, 0.0f, 1.0f);
    let x_4551 : f32 = u_xlat30.x;
    let x_4553 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4551 * x_4553);
    let x_4557 : f32 = u_xlat30.x;
    let x_4559 : f32 = u_xlat9.x;
    u_xlat30.x = ((x_4557 * x_4559) + 1.00001001358032226562f);
    let x_4563 : f32 = u_xlat83;
    let x_4564 : f32 = u_xlat83;
    u_xlat83 = (x_4563 * x_4564);
    let x_4567 : f32 = u_xlat30.x;
    let x_4569 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4567 * x_4569);
    let x_4572 : f32 = u_xlat83;
    u_xlat83 = max(x_4572, 0.10000000149011611938f);
    let x_4575 : f32 = u_xlat30.x;
    let x_4576 : f32 = u_xlat83;
    u_xlat30.x = (x_4575 * x_4576);
    let x_4579 : f32 = u_xlat80;
    let x_4581 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4579 * x_4581);
    let x_4584 : f32 = u_xlat81;
    let x_4586 : f32 = u_xlat30.x;
    u_xlat30.x = (x_4584 / x_4586);
    let x_4589 : vec4<f32> = u_xlat0;
    let x_4591 : vec3<f32> = u_xlat30;
    let x_4594 : vec4<f32> = u_xlat6;
    u_xlat35 = ((vec3<f32>(x_4589.x, x_4589.y, x_4589.z) * vec3<f32>(x_4591.x, x_4591.x, x_4591.x)) + vec3<f32>(x_4594.x, x_4594.y, x_4594.z));
    let x_4597 : vec3<f32> = u_xlat35;
    let x_4598 : vec4<f32> = u_xlat11;
    let x_4601 : vec4<f32> = u_xlat8;
    let x_4603 : vec3<f32> = ((x_4597 * vec3<f32>(x_4598.x, x_4598.y, x_4598.z)) + vec3<f32>(x_4601.x, x_4601.y, x_4601.z));
    let x_4604 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4603.x, x_4603.y, x_4603.z, x_4604.w);

    continuing {
      let x_4606 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4606 + bitcast<u32>(1i));
    }
  }
  let x_4608 : vec4<f32> = u_xlat5;
  let x_4610 : f32 = u_xlat54;
  let x_4613 : vec4<f32> = u_xlat4;
  let x_4615 : vec3<f32> = ((vec3<f32>(x_4608.x, x_4608.y, x_4608.z) * vec3<f32>(x_4610, x_4610, x_4610)) + vec3<f32>(x_4613.x, x_4613.z, x_4613.w));
  let x_4616 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4615.x, x_4615.y, x_4615.z, x_4616.w);
  let x_4618 : vec4<f32> = u_xlat8;
  let x_4620 : vec4<f32> = u_xlat0;
  let x_4622 : vec3<f32> = (vec3<f32>(x_4618.x, x_4618.y, x_4618.z) + vec3<f32>(x_4620.x, x_4620.y, x_4620.z));
  let x_4623 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4622.x, x_4622.y, x_4622.z, x_4623.w);
  let x_4625 : f32 = u_xlat78;
  let x_4626 : f32 = u_xlat78;
  u_xlat78 = (x_4625 * -(x_4626));
  let x_4629 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4629);
  let x_4631 : vec4<f32> = u_xlat0;
  let x_4634 : vec4<f32> = x_29.unity_FogColor;
  let x_4637 : vec3<f32> = (vec3<f32>(x_4631.x, x_4631.y, x_4631.z) + -(vec3<f32>(x_4634.x, x_4634.y, x_4634.z)));
  let x_4638 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4637.x, x_4637.y, x_4637.z, x_4638.w);
  let x_4642 : f32 = u_xlat78;
  let x_4644 : vec4<f32> = u_xlat0;
  let x_4648 : vec4<f32> = x_29.unity_FogColor;
  let x_4650 : vec3<f32> = ((vec3<f32>(x_4642, x_4642, x_4642) * vec3<f32>(x_4644.x, x_4644.y, x_4644.z)) + vec3<f32>(x_4648.x, x_4648.y, x_4648.z));
  let x_4651 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4650.x, x_4650.y, x_4650.z, x_4651.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP5_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



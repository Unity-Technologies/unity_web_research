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

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_508 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

var<private> u_xlat79 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb81 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat82 : f32;

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

var<private> u_xlatb29 : bool;

var<private> u_xlatb55 : vec2<bool>;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlat55 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_2142 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu29 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_2588 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb59 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb85 : bool;

var<private> u_xlati59 : i32;

var<private> u_xlati85 : i32;

var<private> u_xlati86 : i32;

var<private> u_xlatb63 : vec2<bool>;

var<private> u_xlat63 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu2 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var x_489 : f32;
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
  var x_2093 : f32;
  var x_2209 : f32;
  var x_2220 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2718 : f32;
  var x_2727 : f32;
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
  var x_4319 : f32;
  var x_4332 : f32;
  var x_4380 : f32;
  var x_4392 : vec3<f32>;
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
  let x_464 : bool = u_xlatb78;
  if (x_464) {
    let x_469 : f32 = u_xlat3.x;
    x_465 = x_469;
  } else {
    let x_473 : f32 = x_29.unity_MatrixV[0i].z;
    x_465 = x_473;
  }
  let x_474 : f32 = x_465;
  u_xlat4.x = x_474;
  let x_476 : bool = u_xlatb78;
  if (x_476) {
    let x_481 : f32 = u_xlat3.y;
    x_477 = x_481;
  } else {
    let x_485 : f32 = x_29.unity_MatrixV[1i].z;
    x_477 = x_485;
  }
  let x_486 : f32 = x_477;
  u_xlat4.y = x_486;
  let x_488 : bool = u_xlatb78;
  if (x_488) {
    let x_493 : f32 = u_xlat3.z;
    x_489 = x_493;
  } else {
    let x_497 : f32 = x_29.unity_MatrixV[2i].z;
    x_489 = x_497;
  }
  let x_498 : f32 = x_489;
  u_xlat4.z = x_498;
  let x_500 : vec3<f32> = vs_INTERP7;
  let x_511 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres0;
  let x_514 : vec3<f32> = (x_500 + -(vec3<f32>(x_511.x, x_511.y, x_511.z)));
  let x_515 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : vec3<f32> = vs_INTERP7;
  let x_520 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres1;
  let x_523 : vec3<f32> = (x_518 + -(vec3<f32>(x_520.x, x_520.y, x_520.z)));
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_527 : vec3<f32> = vs_INTERP7;
  let x_529 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres2;
  let x_532 : vec3<f32> = (x_527 + -(vec3<f32>(x_529.x, x_529.y, x_529.z)));
  let x_533 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : vec3<f32> = vs_INTERP7;
  let x_538 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres3;
  let x_541 : vec3<f32> = (x_536 + -(vec3<f32>(x_538.x, x_538.y, x_538.z)));
  let x_542 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat3;
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : vec4<f32> = u_xlat5;
  let x_552 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_556 : vec4<f32> = u_xlat6;
  let x_558 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_556.x, x_556.y, x_556.z), vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_562 : vec4<f32> = u_xlat7;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_562.x, x_562.y, x_562.z), vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_571 : vec4<f32> = u_xlat3;
  let x_573 : vec4<f32> = x_508.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_571 < x_573);
  let x_576 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_576);
  let x_580 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_580);
  let x_584 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_584);
  let x_588 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_588);
  let x_592 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_592);
  let x_597 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_597);
  let x_601 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_601);
  let x_604 : vec4<f32> = u_xlat3;
  let x_606 : vec4<f32> = u_xlat5;
  let x_608 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) + vec3<f32>(x_606.y, x_606.z, x_606.w));
  let x_609 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat3;
  let x_614 : vec3<f32> = max(vec3<f32>(x_611.x, x_611.y, x_611.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_615 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_615.x, x_614.x, x_614.y, x_614.z);
  let x_617 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_617, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_622 : f32 = u_xlat78;
  u_xlat78 = (-(x_622) + 4.0f);
  let x_627 : f32 = u_xlat78;
  u_xlatu78 = u32(x_627);
  let x_631 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_631) << bitcast<u32>(2i));
  let x_634 : vec3<f32> = vs_INTERP7;
  let x_636 : i32 = u_xlati78;
  let x_639 : i32 = u_xlati78;
  let x_643 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_636 + 1i) / 4i)][((x_639 + 1i) % 4i)];
  let x_645 : vec3<f32> = (vec3<f32>(x_634.y, x_634.y, x_634.y) * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : i32 = u_xlati78;
  let x_650 : i32 = u_xlati78;
  let x_653 : vec4<f32> = x_508.x_MainLightWorldToShadow[(x_648 / 4i)][(x_650 % 4i)];
  let x_655 : vec3<f32> = vs_INTERP7;
  let x_658 : vec4<f32> = u_xlat3;
  let x_660 : vec3<f32> = ((vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655.x, x_655.x, x_655.x)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : i32 = u_xlati78;
  let x_666 : i32 = u_xlati78;
  let x_670 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_663 + 2i) / 4i)][((x_666 + 2i) % 4i)];
  let x_672 : vec3<f32> = vs_INTERP7;
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672.z, x_672.z, x_672.z)) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : i32 = u_xlati78;
  let x_685 : i32 = u_xlati78;
  let x_689 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_682 + 3i) / 4i)][((x_685 + 3i) % 4i)];
  let x_691 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  u_xlat1.w = 1.0f;
  let x_697 : vec4<f32> = x_349.unity_SHAr;
  let x_698 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_697, x_698);
  let x_703 : vec4<f32> = x_349.unity_SHAg;
  let x_704 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_703, x_704);
  let x_709 : vec4<f32> = x_349.unity_SHAb;
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_709, x_710);
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_713.y, x_713.z, x_713.z, x_713.x) * vec4<f32>(x_715.x, x_715.y, x_715.z, x_715.z));
  let x_720 : vec4<f32> = x_349.unity_SHBr;
  let x_721 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_720, x_721);
  let x_726 : vec4<f32> = x_349.unity_SHBg;
  let x_727 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_726, x_727);
  let x_732 : vec4<f32> = x_349.unity_SHBb;
  let x_733 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_732, x_733);
  let x_737 : f32 = u_xlat1.y;
  let x_739 : f32 = u_xlat1.y;
  u_xlat78 = (x_737 * x_739);
  let x_742 : f32 = u_xlat1.x;
  let x_744 : f32 = u_xlat1.x;
  let x_746 : f32 = u_xlat78;
  u_xlat78 = ((x_742 * x_744) + -(x_746));
  let x_751 : vec4<f32> = x_349.unity_SHC;
  let x_753 : f32 = u_xlat78;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec3<f32> = ((vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(x_753, x_753, x_753)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat5;
  let x_763 : vec4<f32> = u_xlat6;
  let x_765 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) + vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat5;
  let x_770 : vec3<f32> = max(vec3<f32>(x_768.x, x_768.y, x_768.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_771 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat2;
  let x_774 : vec2<f32> = vec2<f32>(x_773.x, x_773.y);
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat2;
  let x_781 : vec2<f32> = clamp(vec2<f32>(x_777.x, x_777.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_782 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
  let x_785 : f32 = u_xlat2.x;
  u_xlat78 = ((-(x_785) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_791 : f32 = u_xlat78;
  u_xlat79 = (-(x_791) + 1.0f);
  let x_794 : f32 = u_xlat78;
  let x_796 : vec4<f32> = u_xlat0;
  let x_798 : vec3<f32> = (vec3<f32>(x_794, x_794, x_794) * vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat0;
  let x_805 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_806 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat2;
  let x_810 : vec4<f32> = u_xlat0;
  let x_815 : vec3<f32> = ((vec3<f32>(x_808.x, x_808.x, x_808.x) * vec3<f32>(x_810.x, x_810.y, x_810.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_819 : f32 = u_xlat2.y;
  u_xlat78 = (-(x_819) + 1.0f);
  let x_822 : f32 = u_xlat78;
  let x_823 : f32 = u_xlat78;
  u_xlat2.x = (x_822 * x_823);
  let x_827 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_827, 0.0078125f);
  let x_832 : f32 = u_xlat2.x;
  let x_834 : f32 = u_xlat2.x;
  u_xlat80 = (x_832 * x_834);
  let x_836 : f32 = u_xlat79;
  let x_838 : f32 = u_xlat2.y;
  u_xlat79 = (x_836 + x_838);
  let x_840 : f32 = u_xlat79;
  u_xlat79 = min(x_840, 1.0f);
  let x_844 : f32 = u_xlat2.x;
  u_xlat28 = ((x_844 * 4.0f) + 2.0f);
  let x_849 : f32 = u_xlat2.z;
  u_xlat54 = min(x_849, 1.0f);
  let x_854 : f32 = x_508.x_MainLightShadowParams.y;
  u_xlatb81 = (0.0f < x_854);
  let x_856 : bool = u_xlatb81;
  if (x_856) {
    let x_860 : f32 = x_508.x_MainLightShadowParams.y;
    u_xlatb81 = (x_860 == 1.0f);
    let x_862 : bool = u_xlatb81;
    if (x_862) {
      let x_865 : vec4<f32> = u_xlat3;
      let x_868 : vec4<f32> = x_508.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_865.x, x_865.y, x_865.x, x_865.y) + x_868);
      let x_872 : vec4<f32> = u_xlat7;
      let x_873 : vec2<f32> = vec2<f32>(x_872.x, x_872.y);
      let x_875 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_873.x, x_873.y, x_875);
      let x_888 : vec3<f32> = txVec0;
      let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_888.xy, x_888.z);
      u_xlat8.x = x_890;
      let x_893 : vec4<f32> = u_xlat7;
      let x_894 : vec2<f32> = vec2<f32>(x_893.z, x_893.w);
      let x_896 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_894.x, x_894.y, x_896);
      let x_903 : vec3<f32> = txVec1;
      let x_905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_903.xy, x_903.z);
      u_xlat8.y = x_905;
      let x_907 : vec4<f32> = u_xlat3;
      let x_911 : vec4<f32> = x_508.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_907.x, x_907.y, x_907.x, x_907.y) + x_911);
      let x_914 : vec4<f32> = u_xlat7;
      let x_915 : vec2<f32> = vec2<f32>(x_914.x, x_914.y);
      let x_917 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_915.x, x_915.y, x_917);
      let x_924 : vec3<f32> = txVec2;
      let x_926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_924.xy, x_924.z);
      u_xlat8.z = x_926;
      let x_929 : vec4<f32> = u_xlat7;
      let x_930 : vec2<f32> = vec2<f32>(x_929.z, x_929.w);
      let x_932 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_930.x, x_930.y, x_932);
      let x_939 : vec3<f32> = txVec3;
      let x_941 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_939.xy, x_939.z);
      u_xlat8.w = x_941;
      let x_944 : vec4<f32> = u_xlat8;
      u_xlat81 = dot(x_944, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_951 : f32 = x_508.x_MainLightShadowParams.y;
      u_xlatb82 = (x_951 == 2.0f);
      let x_953 : bool = u_xlatb82;
      if (x_953) {
        let x_956 : vec4<f32> = u_xlat3;
        let x_960 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_965 : vec2<f32> = ((vec2<f32>(x_956.x, x_956.y) * vec2<f32>(x_960.z, x_960.w)) + vec2<f32>(0.5f, 0.5f));
        let x_966 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat7;
        let x_970 : vec2<f32> = floor(vec2<f32>(x_968.x, x_968.y));
        let x_971 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_974 : vec4<f32> = u_xlat3;
        let x_977 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_980 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_974.x, x_974.y) * vec2<f32>(x_977.z, x_977.w)) + -(vec2<f32>(x_980.x, x_980.y)));
        let x_984 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_984.x, x_984.x, x_984.y, x_984.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_989 : vec4<f32> = u_xlat8;
        let x_991 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_989.x, x_989.x, x_989.z, x_989.z) * vec4<f32>(x_991.x, x_991.x, x_991.z, x_991.z));
        let x_994 : vec4<f32> = u_xlat9;
        let x_998 : vec2<f32> = (vec2<f32>(x_994.y, x_994.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_999.y, x_998.y, x_999.w);
        let x_1001 : vec4<f32> = u_xlat9;
        let x_1004 : vec2<f32> = u_xlat59;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1001.x, x_1001.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1004));
        let x_1007 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1006.x, x_1006.y, x_1007.z, x_1007.w);
        let x_1010 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_1010) + vec2<f32>(1.0f, 1.0f));
        let x_1015 : vec2<f32> = u_xlat59;
        let x_1017 : vec2<f32> = min(x_1015, vec2<f32>(0.0f, 0.0f));
        let x_1018 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        let x_1020 : vec4<f32> = u_xlat10;
        let x_1023 : vec4<f32> = u_xlat10;
        let x_1026 : vec2<f32> = u_xlat61;
        let x_1027 : vec2<f32> = ((-(vec2<f32>(x_1020.x, x_1020.y)) * vec2<f32>(x_1023.x, x_1023.y)) + x_1026);
        let x_1028 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1027.x, x_1027.y, x_1028.z, x_1028.w);
        let x_1030 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_1030, vec2<f32>(0.0f, 0.0f));
        let x_1032 : vec2<f32> = u_xlat59;
        let x_1034 : vec2<f32> = u_xlat59;
        let x_1036 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_1032) * x_1034) + vec2<f32>(x_1036.y, x_1036.w));
        let x_1039 : vec4<f32> = u_xlat10;
        let x_1041 : vec2<f32> = (vec2<f32>(x_1039.x, x_1039.y) + vec2<f32>(1.0f, 1.0f));
        let x_1042 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1044 + vec2<f32>(1.0f, 1.0f));
        let x_1047 : vec4<f32> = u_xlat9;
        let x_1051 : vec2<f32> = (vec2<f32>(x_1047.x, x_1047.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1052 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1051.x, x_1051.y, x_1052.z, x_1052.w);
        let x_1054 : vec2<f32> = u_xlat61;
        let x_1055 : vec2<f32> = (x_1054 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1056 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat10;
        let x_1060 : vec2<f32> = (vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1061 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1064 : vec2<f32> = u_xlat59;
        let x_1065 : vec2<f32> = (x_1064 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1066 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
        let x_1068 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1068.y, x_1068.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1072 : f32 = u_xlat10.x;
        u_xlat11.z = x_1072;
        let x_1075 : f32 = u_xlat59.x;
        u_xlat11.w = x_1075;
        let x_1078 : f32 = u_xlat12.x;
        u_xlat9.z = x_1078;
        let x_1081 : f32 = u_xlat8.x;
        u_xlat9.w = x_1081;
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1086 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1084.z, x_1084.w, x_1084.x, x_1084.z) + vec4<f32>(x_1086.z, x_1086.w, x_1086.x, x_1086.z));
        let x_1090 : f32 = u_xlat11.y;
        u_xlat10.z = x_1090;
        let x_1093 : f32 = u_xlat59.y;
        u_xlat10.w = x_1093;
        let x_1096 : f32 = u_xlat9.y;
        u_xlat12.z = x_1096;
        let x_1099 : f32 = u_xlat8.z;
        u_xlat12.w = x_1099;
        let x_1101 : vec4<f32> = u_xlat10;
        let x_1103 : vec4<f32> = u_xlat12;
        let x_1105 : vec3<f32> = (vec3<f32>(x_1101.z, x_1101.y, x_1101.w) + vec3<f32>(x_1103.z, x_1103.y, x_1103.w));
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
        let x_1108 : vec4<f32> = u_xlat9;
        let x_1110 : vec4<f32> = u_xlat13;
        let x_1112 : vec3<f32> = (vec3<f32>(x_1108.x, x_1108.z, x_1108.w) / vec3<f32>(x_1110.z, x_1110.w, x_1110.y));
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
        let x_1115 : vec4<f32> = u_xlat9;
        let x_1121 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1122 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
        let x_1124 : vec4<f32> = u_xlat12;
        let x_1126 : vec4<f32> = u_xlat8;
        let x_1128 : vec3<f32> = (vec3<f32>(x_1124.z, x_1124.y, x_1124.w) / vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
        let x_1129 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
        let x_1131 : vec4<f32> = u_xlat10;
        let x_1133 : vec3<f32> = (vec3<f32>(x_1131.x, x_1131.y, x_1131.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1134 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat9;
        let x_1139 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1141 : vec3<f32> = (vec3<f32>(x_1136.y, x_1136.x, x_1136.z) * vec3<f32>(x_1139.x, x_1139.x, x_1139.x));
        let x_1142 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1141.x, x_1141.y, x_1141.z, x_1142.w);
        let x_1144 : vec4<f32> = u_xlat10;
        let x_1147 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1149 : vec3<f32> = (vec3<f32>(x_1144.x, x_1144.y, x_1144.z) * vec3<f32>(x_1147.y, x_1147.y, x_1147.y));
        let x_1150 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
        let x_1153 : f32 = u_xlat10.x;
        u_xlat9.w = x_1153;
        let x_1155 : vec4<f32> = u_xlat7;
        let x_1158 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1155.x, x_1155.y, x_1155.x, x_1155.y) * vec4<f32>(x_1158.x, x_1158.y, x_1158.x, x_1158.y)) + vec4<f32>(x_1161.y, x_1161.w, x_1161.x, x_1161.w));
        let x_1164 : vec4<f32> = u_xlat7;
        let x_1167 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1164.x, x_1164.y) * vec2<f32>(x_1167.x, x_1167.y)) + vec2<f32>(x_1170.z, x_1170.w));
        let x_1174 : f32 = u_xlat9.y;
        u_xlat10.w = x_1174;
        let x_1176 : vec4<f32> = u_xlat10;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.y, x_1176.z);
        let x_1178 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1178.x, x_1177.x, x_1178.z, x_1177.y);
        let x_1180 : vec4<f32> = u_xlat7;
        let x_1183 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1180.x, x_1180.y, x_1180.x, x_1180.y) * vec4<f32>(x_1183.x, x_1183.y, x_1183.x, x_1183.y)) + vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1186.y));
        let x_1189 : vec4<f32> = u_xlat7;
        let x_1192 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1195 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1189.x, x_1189.y, x_1189.x, x_1189.y) * vec4<f32>(x_1192.x, x_1192.y, x_1192.x, x_1192.y)) + vec4<f32>(x_1195.w, x_1195.y, x_1195.w, x_1195.z));
        let x_1198 : vec4<f32> = u_xlat7;
        let x_1201 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y) * vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.y)) + vec4<f32>(x_1204.x, x_1204.w, x_1204.z, x_1204.w));
        let x_1208 : vec4<f32> = u_xlat8;
        let x_1210 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1208.x, x_1208.x, x_1208.x, x_1208.y) * vec4<f32>(x_1210.z, x_1210.w, x_1210.y, x_1210.z));
        let x_1214 : vec4<f32> = u_xlat8;
        let x_1216 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1214.y, x_1214.y, x_1214.z, x_1214.z) * x_1216);
        let x_1220 : f32 = u_xlat8.z;
        let x_1222 : f32 = u_xlat13.y;
        u_xlat82 = (x_1220 * x_1222);
        let x_1225 : vec4<f32> = u_xlat11;
        let x_1226 : vec2<f32> = vec2<f32>(x_1225.x, x_1225.y);
        let x_1228 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1226.x, x_1226.y, x_1228);
        let x_1236 : vec3<f32> = txVec4;
        let x_1238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1236.xy, x_1236.z);
        u_xlat83 = x_1238;
        let x_1240 : vec4<f32> = u_xlat11;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.z, x_1240.w);
        let x_1243 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1251 : vec3<f32> = txVec5;
        let x_1253 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1251.xy, x_1251.z);
        u_xlat84 = x_1253;
        let x_1254 : f32 = u_xlat84;
        let x_1256 : f32 = u_xlat14.y;
        u_xlat84 = (x_1254 * x_1256);
        let x_1259 : f32 = u_xlat14.x;
        let x_1260 : f32 = u_xlat83;
        let x_1262 : f32 = u_xlat84;
        u_xlat83 = ((x_1259 * x_1260) + x_1262);
        let x_1265 : vec2<f32> = u_xlat59;
        let x_1267 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec6;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1274.xy, x_1274.z);
        u_xlat84 = x_1276;
        let x_1278 : f32 = u_xlat14.z;
        let x_1279 : f32 = u_xlat84;
        let x_1281 : f32 = u_xlat83;
        u_xlat83 = ((x_1278 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat10;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.x, x_1284.y);
        let x_1287 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec7;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1294.xy, x_1294.z);
        u_xlat84 = x_1296;
        let x_1298 : f32 = u_xlat14.w;
        let x_1299 : f32 = u_xlat84;
        let x_1301 : f32 = u_xlat83;
        u_xlat83 = ((x_1298 * x_1299) + x_1301);
        let x_1304 : vec4<f32> = u_xlat12;
        let x_1305 : vec2<f32> = vec2<f32>(x_1304.x, x_1304.y);
        let x_1307 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1305.x, x_1305.y, x_1307);
        let x_1314 : vec3<f32> = txVec8;
        let x_1316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1314.xy, x_1314.z);
        u_xlat84 = x_1316;
        let x_1318 : f32 = u_xlat15.x;
        let x_1319 : f32 = u_xlat84;
        let x_1321 : f32 = u_xlat83;
        u_xlat83 = ((x_1318 * x_1319) + x_1321);
        let x_1324 : vec4<f32> = u_xlat12;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec9;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1334.xy, x_1334.z);
        u_xlat84 = x_1336;
        let x_1338 : f32 = u_xlat15.y;
        let x_1339 : f32 = u_xlat84;
        let x_1341 : f32 = u_xlat83;
        u_xlat83 = ((x_1338 * x_1339) + x_1341);
        let x_1344 : vec4<f32> = u_xlat10;
        let x_1345 : vec2<f32> = vec2<f32>(x_1344.z, x_1344.w);
        let x_1347 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1345.x, x_1345.y, x_1347);
        let x_1354 : vec3<f32> = txVec10;
        let x_1356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1354.xy, x_1354.z);
        u_xlat84 = x_1356;
        let x_1358 : f32 = u_xlat15.z;
        let x_1359 : f32 = u_xlat84;
        let x_1361 : f32 = u_xlat83;
        u_xlat83 = ((x_1358 * x_1359) + x_1361);
        let x_1364 : vec4<f32> = u_xlat9;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.x, x_1364.y);
        let x_1367 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec11;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1374.xy, x_1374.z);
        u_xlat84 = x_1376;
        let x_1378 : f32 = u_xlat15.w;
        let x_1379 : f32 = u_xlat84;
        let x_1381 : f32 = u_xlat83;
        u_xlat83 = ((x_1378 * x_1379) + x_1381);
        let x_1384 : vec4<f32> = u_xlat9;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.z, x_1384.w);
        let x_1387 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec12;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1394.xy, x_1394.z);
        u_xlat84 = x_1396;
        let x_1397 : f32 = u_xlat82;
        let x_1398 : f32 = u_xlat84;
        let x_1400 : f32 = u_xlat83;
        u_xlat81 = ((x_1397 * x_1398) + x_1400);
      } else {
        let x_1403 : vec4<f32> = u_xlat3;
        let x_1406 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1409 : vec2<f32> = ((vec2<f32>(x_1403.x, x_1403.y) * vec2<f32>(x_1406.z, x_1406.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1410 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1409.x, x_1409.y, x_1410.z, x_1410.w);
        let x_1412 : vec4<f32> = u_xlat7;
        let x_1414 : vec2<f32> = floor(vec2<f32>(x_1412.x, x_1412.y));
        let x_1415 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1414.x, x_1414.y, x_1415.z, x_1415.w);
        let x_1417 : vec4<f32> = u_xlat3;
        let x_1420 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1420.z, x_1420.w)) + -(vec2<f32>(x_1423.x, x_1423.y)));
        let x_1427 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1427.x, x_1427.x, x_1427.y, x_1427.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1432 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1430.x, x_1430.x, x_1430.z, x_1430.z) * vec4<f32>(x_1432.x, x_1432.x, x_1432.z, x_1432.z));
        let x_1435 : vec4<f32> = u_xlat9;
        let x_1439 : vec2<f32> = (vec2<f32>(x_1435.y, x_1435.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1440 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1440.x, x_1439.x, x_1440.z, x_1439.y);
        let x_1442 : vec4<f32> = u_xlat9;
        let x_1445 : vec2<f32> = u_xlat59;
        let x_1447 : vec2<f32> = ((vec2<f32>(x_1442.x, x_1442.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1445));
        let x_1448 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1447.x, x_1448.y, x_1447.y, x_1448.w);
        let x_1450 : vec2<f32> = u_xlat59;
        let x_1452 : vec2<f32> = (-(x_1450) + vec2<f32>(1.0f, 1.0f));
        let x_1453 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1452.x, x_1452.y, x_1453.z, x_1453.w);
        let x_1455 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1455, vec2<f32>(0.0f, 0.0f));
        let x_1457 : vec2<f32> = u_xlat61;
        let x_1459 : vec2<f32> = u_xlat61;
        let x_1461 : vec4<f32> = u_xlat9;
        let x_1463 : vec2<f32> = ((-(x_1457) * x_1459) + vec2<f32>(x_1461.x, x_1461.y));
        let x_1464 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1463.x, x_1463.y, x_1464.z, x_1464.w);
        let x_1466 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1466, vec2<f32>(0.0f, 0.0f));
        let x_1469 : vec2<f32> = u_xlat61;
        let x_1471 : vec2<f32> = u_xlat61;
        let x_1473 : vec4<f32> = u_xlat8;
        let x_1475 : vec2<f32> = ((-(x_1469) * x_1471) + vec2<f32>(x_1473.y, x_1473.w));
        let x_1476 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1475.x, x_1476.y, x_1475.y);
        let x_1478 : vec4<f32> = u_xlat9;
        let x_1480 : vec2<f32> = (vec2<f32>(x_1478.x, x_1478.y) + vec2<f32>(2.0f, 2.0f));
        let x_1481 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1480.x, x_1480.y, x_1481.z, x_1481.w);
        let x_1483 : vec3<f32> = u_xlat34;
        let x_1485 : vec2<f32> = (vec2<f32>(x_1483.x, x_1483.z) + vec2<f32>(2.0f, 2.0f));
        let x_1486 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1486.x, x_1485.x, x_1486.z, x_1485.y);
        let x_1489 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1489 * 0.08163200318813323975f);
        let x_1493 : vec4<f32> = u_xlat8;
        let x_1496 : vec3<f32> = (vec3<f32>(x_1493.z, x_1493.x, x_1493.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1497 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1496.x, x_1496.y, x_1496.z, x_1497.w);
        let x_1499 : vec4<f32> = u_xlat9;
        let x_1502 : vec2<f32> = (vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1503 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1502.x, x_1502.y, x_1503.z, x_1503.w);
        let x_1506 : f32 = u_xlat12.y;
        u_xlat11.x = x_1506;
        let x_1508 : vec2<f32> = u_xlat59;
        let x_1515 : vec2<f32> = ((vec2<f32>(x_1508.x, x_1508.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1516.x, x_1515.x, x_1516.z, x_1515.y);
        let x_1518 : vec2<f32> = u_xlat59;
        let x_1522 : vec2<f32> = ((vec2<f32>(x_1518.x, x_1518.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1523 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1522.x, x_1523.y, x_1522.y, x_1523.w);
        let x_1526 : f32 = u_xlat8.x;
        u_xlat9.y = x_1526;
        let x_1529 : f32 = u_xlat10.y;
        u_xlat9.w = x_1529;
        let x_1531 : vec4<f32> = u_xlat9;
        let x_1532 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1531 + x_1532);
        let x_1534 : vec2<f32> = u_xlat59;
        let x_1537 : vec2<f32> = ((vec2<f32>(x_1534.y, x_1534.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1538 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1538.x, x_1537.x, x_1538.z, x_1537.y);
        let x_1540 : vec2<f32> = u_xlat59;
        let x_1543 : vec2<f32> = ((vec2<f32>(x_1540.y, x_1540.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1544 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1543.x, x_1544.y, x_1543.y, x_1544.w);
        let x_1547 : f32 = u_xlat8.y;
        u_xlat10.y = x_1547;
        let x_1549 : vec4<f32> = u_xlat10;
        let x_1550 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1549 + x_1550);
        let x_1552 : vec4<f32> = u_xlat9;
        let x_1553 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1552 / x_1553);
        let x_1555 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1555 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1561 : vec4<f32> = u_xlat10;
        let x_1562 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1561 / x_1562);
        let x_1564 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1564 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1566 : vec4<f32> = u_xlat9;
        let x_1569 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1566.w, x_1566.x, x_1566.y, x_1566.z) * vec4<f32>(x_1569.x, x_1569.x, x_1569.x, x_1569.x));
        let x_1572 : vec4<f32> = u_xlat10;
        let x_1575 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1572.x, x_1572.w, x_1572.y, x_1572.z) * vec4<f32>(x_1575.y, x_1575.y, x_1575.y, x_1575.y));
        let x_1578 : vec4<f32> = u_xlat9;
        let x_1579 : vec3<f32> = vec3<f32>(x_1578.y, x_1578.z, x_1578.w);
        let x_1580 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1579.x, x_1580.y, x_1579.y, x_1579.z);
        let x_1583 : f32 = u_xlat10.x;
        u_xlat12.y = x_1583;
        let x_1585 : vec4<f32> = u_xlat7;
        let x_1588 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1591 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1585.x, x_1585.y, x_1585.x, x_1585.y) * vec4<f32>(x_1588.x, x_1588.y, x_1588.x, x_1588.y)) + vec4<f32>(x_1591.x, x_1591.y, x_1591.z, x_1591.y));
        let x_1594 : vec4<f32> = u_xlat7;
        let x_1597 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1600 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1594.x, x_1594.y) * vec2<f32>(x_1597.x, x_1597.y)) + vec2<f32>(x_1600.w, x_1600.y));
        let x_1604 : f32 = u_xlat12.y;
        u_xlat9.y = x_1604;
        let x_1607 : f32 = u_xlat10.z;
        u_xlat12.y = x_1607;
        let x_1609 : vec4<f32> = u_xlat7;
        let x_1612 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1615 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1609.x, x_1609.y, x_1609.x, x_1609.y) * vec4<f32>(x_1612.x, x_1612.y, x_1612.x, x_1612.y)) + vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1615.y));
        let x_1618 : vec4<f32> = u_xlat7;
        let x_1621 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1624 : vec4<f32> = u_xlat12;
        let x_1626 : vec2<f32> = ((vec2<f32>(x_1618.x, x_1618.y) * vec2<f32>(x_1621.x, x_1621.y)) + vec2<f32>(x_1624.w, x_1624.y));
        let x_1627 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1626.x, x_1626.y, x_1627.z, x_1627.w);
        let x_1630 : f32 = u_xlat12.y;
        u_xlat9.z = x_1630;
        let x_1633 : vec4<f32> = u_xlat7;
        let x_1636 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1639 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1633.x, x_1633.y, x_1633.x, x_1633.y) * vec4<f32>(x_1636.x, x_1636.y, x_1636.x, x_1636.y)) + vec4<f32>(x_1639.x, x_1639.y, x_1639.x, x_1639.z));
        let x_1643 : f32 = u_xlat10.w;
        u_xlat12.y = x_1643;
        let x_1646 : vec4<f32> = u_xlat7;
        let x_1649 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1652 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1646.x, x_1646.y, x_1646.x, x_1646.y) * vec4<f32>(x_1649.x, x_1649.y, x_1649.x, x_1649.y)) + vec4<f32>(x_1652.x, x_1652.y, x_1652.z, x_1652.y));
        let x_1656 : vec4<f32> = u_xlat7;
        let x_1659 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1662 : vec4<f32> = u_xlat12;
        let x_1664 : vec2<f32> = ((vec2<f32>(x_1656.x, x_1656.y) * vec2<f32>(x_1659.x, x_1659.y)) + vec2<f32>(x_1662.w, x_1662.y));
        let x_1665 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1664.x, x_1664.y, x_1665.z);
        let x_1668 : f32 = u_xlat12.y;
        u_xlat9.w = x_1668;
        let x_1671 : vec4<f32> = u_xlat7;
        let x_1674 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1677 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1671.x, x_1671.y) * vec2<f32>(x_1674.x, x_1674.y)) + vec2<f32>(x_1677.x, x_1677.w));
        let x_1680 : vec4<f32> = u_xlat12;
        let x_1681 : vec3<f32> = vec3<f32>(x_1680.x, x_1680.z, x_1680.w);
        let x_1682 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1681.x, x_1682.y, x_1681.y, x_1681.z);
        let x_1684 : vec4<f32> = u_xlat7;
        let x_1687 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1690 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1684.x, x_1684.y, x_1684.x, x_1684.y) * vec4<f32>(x_1687.x, x_1687.y, x_1687.x, x_1687.y)) + vec4<f32>(x_1690.x, x_1690.y, x_1690.z, x_1690.y));
        let x_1694 : vec4<f32> = u_xlat7;
        let x_1697 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1700 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1694.x, x_1694.y) * vec2<f32>(x_1697.x, x_1697.y)) + vec2<f32>(x_1700.w, x_1700.y));
        let x_1704 : f32 = u_xlat9.x;
        u_xlat10.x = x_1704;
        let x_1706 : vec4<f32> = u_xlat7;
        let x_1709 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1712 : vec4<f32> = u_xlat10;
        let x_1714 : vec2<f32> = ((vec2<f32>(x_1706.x, x_1706.y) * vec2<f32>(x_1709.x, x_1709.y)) + vec2<f32>(x_1712.x, x_1712.y));
        let x_1715 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1714.x, x_1714.y, x_1715.z, x_1715.w);
        let x_1718 : vec4<f32> = u_xlat8;
        let x_1720 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1718.x, x_1718.x, x_1718.x, x_1718.x) * x_1720);
        let x_1723 : vec4<f32> = u_xlat8;
        let x_1725 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1723.y, x_1723.y, x_1723.y, x_1723.y) * x_1725);
        let x_1728 : vec4<f32> = u_xlat8;
        let x_1730 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1728.z, x_1728.z, x_1728.z, x_1728.z) * x_1730);
        let x_1732 : vec4<f32> = u_xlat8;
        let x_1734 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1732.w, x_1732.w, x_1732.w, x_1732.w) * x_1734);
        let x_1737 : vec4<f32> = u_xlat13;
        let x_1738 : vec2<f32> = vec2<f32>(x_1737.x, x_1737.y);
        let x_1740 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1738.x, x_1738.y, x_1740);
        let x_1747 : vec3<f32> = txVec13;
        let x_1749 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1747.xy, x_1747.z);
        u_xlat82 = x_1749;
        let x_1751 : vec4<f32> = u_xlat13;
        let x_1752 : vec2<f32> = vec2<f32>(x_1751.z, x_1751.w);
        let x_1754 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
        let x_1761 : vec3<f32> = txVec14;
        let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1761.xy, x_1761.z);
        u_xlat83 = x_1763;
        let x_1764 : f32 = u_xlat83;
        let x_1766 : f32 = u_xlat18.y;
        u_xlat83 = (x_1764 * x_1766);
        let x_1769 : f32 = u_xlat18.x;
        let x_1770 : f32 = u_xlat82;
        let x_1772 : f32 = u_xlat83;
        u_xlat82 = ((x_1769 * x_1770) + x_1772);
        let x_1775 : vec2<f32> = u_xlat59;
        let x_1777 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1775.x, x_1775.y, x_1777);
        let x_1784 : vec3<f32> = txVec15;
        let x_1786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1784.xy, x_1784.z);
        u_xlat83 = x_1786;
        let x_1788 : f32 = u_xlat18.z;
        let x_1789 : f32 = u_xlat83;
        let x_1791 : f32 = u_xlat82;
        u_xlat82 = ((x_1788 * x_1789) + x_1791);
        let x_1794 : vec4<f32> = u_xlat16;
        let x_1795 : vec2<f32> = vec2<f32>(x_1794.x, x_1794.y);
        let x_1797 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1795.x, x_1795.y, x_1797);
        let x_1804 : vec3<f32> = txVec16;
        let x_1806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1804.xy, x_1804.z);
        u_xlat83 = x_1806;
        let x_1808 : f32 = u_xlat18.w;
        let x_1809 : f32 = u_xlat83;
        let x_1811 : f32 = u_xlat82;
        u_xlat82 = ((x_1808 * x_1809) + x_1811);
        let x_1814 : vec4<f32> = u_xlat14;
        let x_1815 : vec2<f32> = vec2<f32>(x_1814.x, x_1814.y);
        let x_1817 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1815.x, x_1815.y, x_1817);
        let x_1824 : vec3<f32> = txVec17;
        let x_1826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1824.xy, x_1824.z);
        u_xlat83 = x_1826;
        let x_1828 : f32 = u_xlat19.x;
        let x_1829 : f32 = u_xlat83;
        let x_1831 : f32 = u_xlat82;
        u_xlat82 = ((x_1828 * x_1829) + x_1831);
        let x_1834 : vec4<f32> = u_xlat14;
        let x_1835 : vec2<f32> = vec2<f32>(x_1834.z, x_1834.w);
        let x_1837 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1835.x, x_1835.y, x_1837);
        let x_1844 : vec3<f32> = txVec18;
        let x_1846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1844.xy, x_1844.z);
        u_xlat83 = x_1846;
        let x_1848 : f32 = u_xlat19.y;
        let x_1849 : f32 = u_xlat83;
        let x_1851 : f32 = u_xlat82;
        u_xlat82 = ((x_1848 * x_1849) + x_1851);
        let x_1854 : vec4<f32> = u_xlat15;
        let x_1855 : vec2<f32> = vec2<f32>(x_1854.x, x_1854.y);
        let x_1857 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1855.x, x_1855.y, x_1857);
        let x_1864 : vec3<f32> = txVec19;
        let x_1866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1864.xy, x_1864.z);
        u_xlat83 = x_1866;
        let x_1868 : f32 = u_xlat19.z;
        let x_1869 : f32 = u_xlat83;
        let x_1871 : f32 = u_xlat82;
        u_xlat82 = ((x_1868 * x_1869) + x_1871);
        let x_1874 : vec4<f32> = u_xlat16;
        let x_1875 : vec2<f32> = vec2<f32>(x_1874.z, x_1874.w);
        let x_1877 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1875.x, x_1875.y, x_1877);
        let x_1884 : vec3<f32> = txVec20;
        let x_1886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1884.xy, x_1884.z);
        u_xlat83 = x_1886;
        let x_1888 : f32 = u_xlat19.w;
        let x_1889 : f32 = u_xlat83;
        let x_1891 : f32 = u_xlat82;
        u_xlat82 = ((x_1888 * x_1889) + x_1891);
        let x_1894 : vec4<f32> = u_xlat17;
        let x_1895 : vec2<f32> = vec2<f32>(x_1894.x, x_1894.y);
        let x_1897 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1895.x, x_1895.y, x_1897);
        let x_1904 : vec3<f32> = txVec21;
        let x_1906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1904.xy, x_1904.z);
        u_xlat83 = x_1906;
        let x_1908 : f32 = u_xlat20.x;
        let x_1909 : f32 = u_xlat83;
        let x_1911 : f32 = u_xlat82;
        u_xlat82 = ((x_1908 * x_1909) + x_1911);
        let x_1914 : vec4<f32> = u_xlat17;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.z, x_1914.w);
        let x_1917 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec22;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1924.xy, x_1924.z);
        u_xlat83 = x_1926;
        let x_1928 : f32 = u_xlat20.y;
        let x_1929 : f32 = u_xlat83;
        let x_1931 : f32 = u_xlat82;
        u_xlat82 = ((x_1928 * x_1929) + x_1931);
        let x_1934 : vec3<f32> = u_xlat35;
        let x_1935 : vec2<f32> = vec2<f32>(x_1934.x, x_1934.y);
        let x_1937 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1935.x, x_1935.y, x_1937);
        let x_1944 : vec3<f32> = txVec23;
        let x_1946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1944.xy, x_1944.z);
        u_xlat83 = x_1946;
        let x_1948 : f32 = u_xlat20.z;
        let x_1949 : f32 = u_xlat83;
        let x_1951 : f32 = u_xlat82;
        u_xlat82 = ((x_1948 * x_1949) + x_1951);
        let x_1954 : vec2<f32> = u_xlat67;
        let x_1956 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1954.x, x_1954.y, x_1956);
        let x_1963 : vec3<f32> = txVec24;
        let x_1965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1963.xy, x_1963.z);
        u_xlat83 = x_1965;
        let x_1967 : f32 = u_xlat20.w;
        let x_1968 : f32 = u_xlat83;
        let x_1970 : f32 = u_xlat82;
        u_xlat82 = ((x_1967 * x_1968) + x_1970);
        let x_1973 : vec4<f32> = u_xlat12;
        let x_1974 : vec2<f32> = vec2<f32>(x_1973.x, x_1973.y);
        let x_1976 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1974.x, x_1974.y, x_1976);
        let x_1983 : vec3<f32> = txVec25;
        let x_1985 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1983.xy, x_1983.z);
        u_xlat83 = x_1985;
        let x_1987 : f32 = u_xlat8.x;
        let x_1988 : f32 = u_xlat83;
        let x_1990 : f32 = u_xlat82;
        u_xlat82 = ((x_1987 * x_1988) + x_1990);
        let x_1993 : vec4<f32> = u_xlat12;
        let x_1994 : vec2<f32> = vec2<f32>(x_1993.z, x_1993.w);
        let x_1996 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1994.x, x_1994.y, x_1996);
        let x_2003 : vec3<f32> = txVec26;
        let x_2005 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2003.xy, x_2003.z);
        u_xlat83 = x_2005;
        let x_2007 : f32 = u_xlat8.y;
        let x_2008 : f32 = u_xlat83;
        let x_2010 : f32 = u_xlat82;
        u_xlat82 = ((x_2007 * x_2008) + x_2010);
        let x_2013 : vec2<f32> = u_xlat62;
        let x_2015 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_2013.x, x_2013.y, x_2015);
        let x_2022 : vec3<f32> = txVec27;
        let x_2024 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2022.xy, x_2022.z);
        u_xlat83 = x_2024;
        let x_2026 : f32 = u_xlat8.z;
        let x_2027 : f32 = u_xlat83;
        let x_2029 : f32 = u_xlat82;
        u_xlat82 = ((x_2026 * x_2027) + x_2029);
        let x_2032 : vec4<f32> = u_xlat7;
        let x_2033 : vec2<f32> = vec2<f32>(x_2032.x, x_2032.y);
        let x_2035 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_2033.x, x_2033.y, x_2035);
        let x_2042 : vec3<f32> = txVec28;
        let x_2044 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2042.xy, x_2042.z);
        u_xlat83 = x_2044;
        let x_2046 : f32 = u_xlat8.w;
        let x_2047 : f32 = u_xlat83;
        let x_2049 : f32 = u_xlat82;
        u_xlat81 = ((x_2046 * x_2047) + x_2049);
      }
    }
  } else {
    let x_2053 : vec4<f32> = u_xlat3;
    let x_2054 : vec2<f32> = vec2<f32>(x_2053.x, x_2053.y);
    let x_2056 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2054.x, x_2054.y, x_2056);
    let x_2063 : vec3<f32> = txVec29;
    let x_2065 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2063.xy, x_2063.z);
    u_xlat81 = x_2065;
  }
  let x_2067 : f32 = x_508.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2067) + 1.0f);
  let x_2071 : f32 = u_xlat81;
  let x_2073 : f32 = x_508.x_MainLightShadowParams.x;
  let x_2076 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2071 * x_2073) + x_2076);
  let x_2081 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2081);
  let x_2085 : f32 = u_xlat3.z;
  u_xlatb55.x = (x_2085 >= 1.0f);
  let x_2089 : bool = u_xlatb55.x;
  let x_2090 : bool = u_xlatb29;
  u_xlatb29 = (x_2089 | x_2090);
  let x_2092 : bool = u_xlatb29;
  if (x_2092) {
    x_2093 = 1.0f;
  } else {
    let x_2098 : f32 = u_xlat3.x;
    x_2093 = x_2098;
  }
  let x_2099 : f32 = x_2093;
  u_xlat3.x = x_2099;
  let x_2102 : vec3<f32> = vs_INTERP7;
  let x_2104 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat29 = (x_2102 + -(x_2104));
  let x_2107 : vec3<f32> = u_xlat29;
  let x_2108 : vec3<f32> = u_xlat29;
  u_xlat29.x = dot(x_2107, x_2108);
  let x_2113 : f32 = u_xlat29.x;
  let x_2115 : f32 = x_508.x_MainLightShadowParams.z;
  let x_2118 : f32 = x_508.x_MainLightShadowParams.w;
  u_xlat55.x = ((x_2113 * x_2115) + x_2118);
  let x_2122 : f32 = u_xlat55.x;
  u_xlat55.x = clamp(x_2122, 0.0f, 1.0f);
  let x_2126 : f32 = u_xlat3.x;
  u_xlat81 = (-(x_2126) + 1.0f);
  let x_2130 : f32 = u_xlat55.x;
  let x_2131 : f32 = u_xlat81;
  let x_2134 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2130 * x_2131) + x_2134);
  let x_2144 : f32 = x_2142.x_MainLightCookieTextureFormat;
  u_xlatb55.x = !((x_2144 == -1.0f));
  let x_2148 : bool = u_xlatb55.x;
  if (x_2148) {
    let x_2151 : vec3<f32> = vs_INTERP7;
    let x_2154 : vec4<f32> = x_2142.x_MainLightWorldToLight[1i];
    u_xlat55 = (vec2<f32>(x_2151.y, x_2151.y) * vec2<f32>(x_2154.x, x_2154.y));
    let x_2158 : vec4<f32> = x_2142.x_MainLightWorldToLight[0i];
    let x_2160 : vec3<f32> = vs_INTERP7;
    let x_2163 : vec2<f32> = u_xlat55;
    u_xlat55 = ((vec2<f32>(x_2158.x, x_2158.y) * vec2<f32>(x_2160.x, x_2160.x)) + x_2163);
    let x_2166 : vec4<f32> = x_2142.x_MainLightWorldToLight[2i];
    let x_2168 : vec3<f32> = vs_INTERP7;
    let x_2171 : vec2<f32> = u_xlat55;
    u_xlat55 = ((vec2<f32>(x_2166.x, x_2166.y) * vec2<f32>(x_2168.z, x_2168.z)) + x_2171);
    let x_2173 : vec2<f32> = u_xlat55;
    let x_2175 : vec4<f32> = x_2142.x_MainLightWorldToLight[3i];
    u_xlat55 = (x_2173 + vec2<f32>(x_2175.x, x_2175.y));
    let x_2178 : vec2<f32> = u_xlat55;
    u_xlat55 = ((x_2178 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2186 : vec2<f32> = u_xlat55;
    let x_2188 : f32 = x_29.x_GlobalMipBias.x;
    let x_2189 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2186, x_2188);
    u_xlat7 = x_2189;
    let x_2191 : f32 = x_2142.x_MainLightCookieTextureFormat;
    let x_2193 : f32 = x_2142.x_MainLightCookieTextureFormat;
    let x_2195 : f32 = x_2142.x_MainLightCookieTextureFormat;
    let x_2197 : f32 = x_2142.x_MainLightCookieTextureFormat;
    let x_2198 : vec4<f32> = vec4<f32>(x_2191, x_2193, x_2195, x_2197);
    let x_2205 : vec4<bool> = (vec4<f32>(x_2198.x, x_2198.y, x_2198.z, x_2198.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb55 = vec2<bool>(x_2205.x, x_2205.y);
    let x_2208 : bool = u_xlatb55.y;
    if (x_2208) {
      let x_2213 : f32 = u_xlat7.w;
      x_2209 = x_2213;
    } else {
      let x_2216 : f32 = u_xlat7.x;
      x_2209 = x_2216;
    }
    let x_2217 : f32 = x_2209;
    u_xlat81 = x_2217;
    let x_2219 : bool = u_xlatb55.x;
    if (x_2219) {
      let x_2223 : vec4<f32> = u_xlat7;
      x_2220 = vec3<f32>(x_2223.x, x_2223.y, x_2223.z);
    } else {
      let x_2226 : f32 = u_xlat81;
      x_2220 = vec3<f32>(x_2226, x_2226, x_2226);
    }
    let x_2228 : vec3<f32> = x_2220;
    let x_2229 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2235 : vec4<f32> = u_xlat7;
  let x_2238 : vec4<f32> = x_29.x_MainLightColor;
  let x_2240 : vec3<f32> = (vec3<f32>(x_2235.x, x_2235.y, x_2235.z) * vec3<f32>(x_2238.x, x_2238.y, x_2238.z));
  let x_2241 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2240.x, x_2240.y, x_2240.z, x_2241.w);
  let x_2243 : vec3<f32> = u_xlat4;
  let x_2245 : vec4<f32> = u_xlat1;
  u_xlat55.x = dot(-(x_2243), vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
  let x_2250 : f32 = u_xlat55.x;
  let x_2252 : f32 = u_xlat55.x;
  u_xlat55.x = (x_2250 + x_2252);
  let x_2255 : vec4<f32> = u_xlat1;
  let x_2257 : vec2<f32> = u_xlat55;
  let x_2261 : vec3<f32> = u_xlat4;
  let x_2263 : vec3<f32> = ((vec3<f32>(x_2255.x, x_2255.y, x_2255.z) * -(vec3<f32>(x_2257.x, x_2257.x, x_2257.x))) + -(x_2261));
  let x_2264 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
  let x_2266 : vec4<f32> = u_xlat1;
  let x_2268 : vec3<f32> = u_xlat4;
  u_xlat55.x = dot(vec3<f32>(x_2266.x, x_2266.y, x_2266.z), x_2268);
  let x_2272 : f32 = u_xlat55.x;
  u_xlat55.x = clamp(x_2272, 0.0f, 1.0f);
  let x_2276 : f32 = u_xlat55.x;
  u_xlat55.x = (-(x_2276) + 1.0f);
  let x_2281 : f32 = u_xlat55.x;
  let x_2283 : f32 = u_xlat55.x;
  u_xlat55.x = (x_2281 * x_2283);
  let x_2287 : f32 = u_xlat55.x;
  let x_2289 : f32 = u_xlat55.x;
  u_xlat55.x = (x_2287 * x_2289);
  let x_2292 : f32 = u_xlat78;
  u_xlat81 = ((-(x_2292) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2298 : f32 = u_xlat78;
  let x_2299 : f32 = u_xlat81;
  u_xlat78 = (x_2298 * x_2299);
  let x_2301 : f32 = u_xlat78;
  u_xlat78 = (x_2301 * 6.0f);
  let x_2311 : vec4<f32> = u_xlat8;
  let x_2313 : f32 = u_xlat78;
  let x_2314 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2311.x, x_2311.y, x_2311.z), x_2313);
  u_xlat8 = x_2314;
  let x_2316 : f32 = u_xlat8.w;
  u_xlat78 = (x_2316 + -1.0f);
  let x_2319 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2320 : f32 = u_xlat78;
  u_xlat78 = ((x_2319 * x_2320) + 1.0f);
  let x_2323 : f32 = u_xlat78;
  u_xlat78 = max(x_2323, 0.0f);
  let x_2325 : f32 = u_xlat78;
  u_xlat78 = log2(x_2325);
  let x_2327 : f32 = u_xlat78;
  let x_2329 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_2327 * x_2329);
  let x_2331 : f32 = u_xlat78;
  u_xlat78 = exp2(x_2331);
  let x_2333 : f32 = u_xlat78;
  let x_2335 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_2333 * x_2335);
  let x_2337 : vec4<f32> = u_xlat8;
  let x_2339 : f32 = u_xlat78;
  let x_2341 : vec3<f32> = (vec3<f32>(x_2337.x, x_2337.y, x_2337.z) * vec3<f32>(x_2339, x_2339, x_2339));
  let x_2342 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
  let x_2344 : vec4<f32> = u_xlat2;
  let x_2346 : vec4<f32> = u_xlat2;
  let x_2350 : vec2<f32> = ((vec2<f32>(x_2344.x, x_2344.x) * vec2<f32>(x_2346.x, x_2346.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2351 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2350.x, x_2350.y, x_2351.z, x_2351.w);
  let x_2354 : f32 = u_xlat9.y;
  u_xlat78 = (1.0f / x_2354);
  let x_2356 : vec4<f32> = u_xlat0;
  let x_2359 : f32 = u_xlat79;
  u_xlat35 = (-(vec3<f32>(x_2356.x, x_2356.y, x_2356.z)) + vec3<f32>(x_2359, x_2359, x_2359));
  let x_2362 : vec2<f32> = u_xlat55;
  let x_2364 : vec3<f32> = u_xlat35;
  let x_2366 : vec4<f32> = u_xlat0;
  u_xlat35 = ((vec3<f32>(x_2362.x, x_2362.x, x_2362.x) * x_2364) + vec3<f32>(x_2366.x, x_2366.y, x_2366.z));
  let x_2369 : f32 = u_xlat78;
  let x_2371 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2369, x_2369, x_2369) * x_2371);
  let x_2373 : vec4<f32> = u_xlat8;
  let x_2375 : vec3<f32> = u_xlat35;
  let x_2376 : vec3<f32> = (vec3<f32>(x_2373.x, x_2373.y, x_2373.z) * x_2375);
  let x_2377 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
  let x_2379 : vec4<f32> = u_xlat5;
  let x_2381 : vec4<f32> = u_xlat6;
  let x_2384 : vec4<f32> = u_xlat8;
  let x_2386 : vec3<f32> = ((vec3<f32>(x_2379.x, x_2379.y, x_2379.z) * vec3<f32>(x_2381.x, x_2381.y, x_2381.z)) + vec3<f32>(x_2384.x, x_2384.y, x_2384.z));
  let x_2387 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2386.x, x_2386.y, x_2386.z, x_2387.w);
  let x_2390 : f32 = u_xlat3.x;
  let x_2392 : f32 = x_349.unity_LightData.z;
  u_xlat78 = (x_2390 * x_2392);
  let x_2394 : vec4<f32> = u_xlat1;
  let x_2397 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_2394.x, x_2394.y, x_2394.z), vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
  let x_2400 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2400, 0.0f, 1.0f);
  let x_2402 : f32 = u_xlat78;
  let x_2403 : f32 = u_xlat79;
  u_xlat78 = (x_2402 * x_2403);
  let x_2405 : f32 = u_xlat78;
  let x_2407 : vec4<f32> = u_xlat7;
  let x_2409 : vec3<f32> = (vec3<f32>(x_2405, x_2405, x_2405) * vec3<f32>(x_2407.x, x_2407.y, x_2407.z));
  let x_2410 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2409.x, x_2410.y, x_2409.y, x_2409.z);
  let x_2412 : vec3<f32> = u_xlat4;
  let x_2414 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2416 : vec3<f32> = (x_2412 + vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
  let x_2417 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
  let x_2419 : vec4<f32> = u_xlat7;
  let x_2421 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2419.x, x_2419.y, x_2419.z), vec3<f32>(x_2421.x, x_2421.y, x_2421.z));
  let x_2424 : f32 = u_xlat78;
  u_xlat78 = max(x_2424, 1.17549435e-38f);
  let x_2427 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2427);
  let x_2429 : f32 = u_xlat78;
  let x_2431 : vec4<f32> = u_xlat7;
  let x_2433 : vec3<f32> = (vec3<f32>(x_2429, x_2429, x_2429) * vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
  let x_2434 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
  let x_2436 : vec4<f32> = u_xlat1;
  let x_2438 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2436.x, x_2436.y, x_2436.z), vec3<f32>(x_2438.x, x_2438.y, x_2438.z));
  let x_2441 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2441, 0.0f, 1.0f);
  let x_2444 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2446 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2444.x, x_2444.y, x_2444.z), vec3<f32>(x_2446.x, x_2446.y, x_2446.z));
  let x_2449 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2449, 0.0f, 1.0f);
  let x_2451 : f32 = u_xlat78;
  let x_2452 : f32 = u_xlat78;
  u_xlat78 = (x_2451 * x_2452);
  let x_2454 : f32 = u_xlat78;
  let x_2456 : f32 = u_xlat9.x;
  u_xlat78 = ((x_2454 * x_2456) + 1.00001001358032226562f);
  let x_2460 : f32 = u_xlat79;
  let x_2461 : f32 = u_xlat79;
  u_xlat79 = (x_2460 * x_2461);
  let x_2463 : f32 = u_xlat78;
  let x_2464 : f32 = u_xlat78;
  u_xlat78 = (x_2463 * x_2464);
  let x_2466 : f32 = u_xlat79;
  u_xlat79 = max(x_2466, 0.10000000149011611938f);
  let x_2469 : f32 = u_xlat78;
  let x_2470 : f32 = u_xlat79;
  u_xlat78 = (x_2469 * x_2470);
  let x_2472 : f32 = u_xlat28;
  let x_2473 : f32 = u_xlat78;
  u_xlat78 = (x_2472 * x_2473);
  let x_2475 : f32 = u_xlat80;
  let x_2476 : f32 = u_xlat78;
  u_xlat78 = (x_2475 / x_2476);
  let x_2478 : vec4<f32> = u_xlat0;
  let x_2480 : f32 = u_xlat78;
  let x_2483 : vec4<f32> = u_xlat6;
  let x_2485 : vec3<f32> = ((vec3<f32>(x_2478.x, x_2478.y, x_2478.z) * vec3<f32>(x_2480, x_2480, x_2480)) + vec3<f32>(x_2483.x, x_2483.y, x_2483.z));
  let x_2486 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2485.x, x_2485.y, x_2485.z, x_2486.w);
  let x_2488 : vec4<f32> = u_xlat3;
  let x_2490 : vec4<f32> = u_xlat7;
  let x_2492 : vec3<f32> = (vec3<f32>(x_2488.x, x_2488.z, x_2488.w) * vec3<f32>(x_2490.x, x_2490.y, x_2490.z));
  let x_2493 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2492.x, x_2493.y, x_2492.y, x_2492.z);
  let x_2496 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2498 : f32 = x_349.unity_LightData.y;
  u_xlat78 = min(x_2496, x_2498);
  let x_2500 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2500));
  let x_2504 : f32 = u_xlat29.x;
  let x_2507 : f32 = x_508.x_AdditionalShadowFadeParams.x;
  let x_2510 : f32 = x_508.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2504 * x_2507) + x_2510);
  let x_2512 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2512, 0.0f, 1.0f);
  let x_2516 : f32 = x_2142.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2518 : f32 = x_2142.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2520 : f32 = x_2142.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2522 : f32 = x_2142.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2523 : vec4<f32> = vec4<f32>(x_2516, x_2518, x_2520, x_2522);
  let x_2530 : vec4<bool> = (vec4<f32>(x_2523.x, x_2523.y, x_2523.z, x_2523.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2530.x, x_2530.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2542 : u32 = u_xlatu_loop_1;
    let x_2543 : u32 = u_xlatu78;
    if ((x_2542 < x_2543)) {
    } else {
      break;
    }
    let x_2546 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_2546 >> 2u);
    let x_2549 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2549 & 3u));
    let x_2552 : u32 = u_xlatu29;
    let x_2555 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2552)];
    let x_2565 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2570 : vec4<u32> = indexable[x_2565];
    u_xlat29.x = dot(x_2555, bitcast<vec4<f32>>(x_2570));
    let x_2576 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_2576);
    let x_2578 : vec3<f32> = vs_INTERP7;
    let x_2589 : i32 = u_xlati29;
    let x_2591 : vec4<f32> = x_2588.x_AdditionalLightsPosition[x_2589];
    let x_2594 : i32 = u_xlati29;
    let x_2596 : vec4<f32> = x_2588.x_AdditionalLightsPosition[x_2594];
    u_xlat35 = ((-(x_2578) * vec3<f32>(x_2591.w, x_2591.w, x_2591.w)) + vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
    let x_2599 : vec3<f32> = u_xlat35;
    let x_2600 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(x_2599, x_2600);
    let x_2602 : f32 = u_xlat82;
    u_xlat82 = max(x_2602, 0.00006103515625f);
    let x_2605 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2605);
    let x_2607 : f32 = u_xlat83;
    let x_2609 : vec3<f32> = u_xlat35;
    let x_2610 : vec3<f32> = (vec3<f32>(x_2607, x_2607, x_2607) * x_2609);
    let x_2611 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);
    let x_2613 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2613);
    let x_2615 : f32 = u_xlat82;
    let x_2616 : i32 = u_xlati29;
    let x_2618 : f32 = x_2588.x_AdditionalLightsAttenuation[x_2616].x;
    u_xlat82 = (x_2615 * x_2618);
    let x_2620 : f32 = u_xlat82;
    let x_2622 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2620) * x_2622) + 1.0f);
    let x_2625 : f32 = u_xlat82;
    u_xlat82 = max(x_2625, 0.0f);
    let x_2627 : f32 = u_xlat82;
    let x_2628 : f32 = u_xlat82;
    u_xlat82 = (x_2627 * x_2628);
    let x_2630 : f32 = u_xlat82;
    let x_2631 : f32 = u_xlat84;
    u_xlat82 = (x_2630 * x_2631);
    let x_2633 : i32 = u_xlati29;
    let x_2635 : vec4<f32> = x_2588.x_AdditionalLightsSpotDir[x_2633];
    let x_2637 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2635.x, x_2635.y, x_2635.z), vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
    let x_2640 : f32 = u_xlat84;
    let x_2641 : i32 = u_xlati29;
    let x_2643 : f32 = x_2588.x_AdditionalLightsAttenuation[x_2641].z;
    let x_2645 : i32 = u_xlati29;
    let x_2647 : f32 = x_2588.x_AdditionalLightsAttenuation[x_2645].w;
    u_xlat84 = ((x_2640 * x_2643) + x_2647);
    let x_2649 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2649, 0.0f, 1.0f);
    let x_2651 : f32 = u_xlat84;
    let x_2652 : f32 = u_xlat84;
    u_xlat84 = (x_2651 * x_2652);
    let x_2654 : f32 = u_xlat82;
    let x_2655 : f32 = u_xlat84;
    u_xlat82 = (x_2654 * x_2655);
    let x_2659 : i32 = u_xlati29;
    let x_2661 : f32 = x_508.x_AdditionalShadowParams[x_2659].w;
    u_xlati84 = i32(x_2661);
    let x_2664 : i32 = u_xlati84;
    u_xlatb59 = (x_2664 >= 0i);
    let x_2666 : bool = u_xlatb59;
    if (x_2666) {
      let x_2670 : i32 = u_xlati29;
      let x_2672 : f32 = x_508.x_AdditionalShadowParams[x_2670].z;
      u_xlatb59 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2672, x_2672, x_2672, x_2672))));
      let x_2676 : bool = u_xlatb59;
      if (x_2676) {
        let x_2680 : vec4<f32> = u_xlat10;
        let x_2683 : vec4<f32> = u_xlat10;
        let x_2686 : vec4<bool> = (abs(vec4<f32>(x_2680.z, x_2680.z, x_2680.y, x_2680.z)) >= abs(vec4<f32>(x_2683.x, x_2683.y, x_2683.x, x_2683.x)));
        let x_2688 : vec3<bool> = vec3<bool>(x_2686.x, x_2686.y, x_2686.z);
        let x_2689 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2688.x, x_2688.y, x_2688.z, x_2689.w);
        let x_2692 : bool = u_xlatb11.y;
        let x_2694 : bool = u_xlatb11.x;
        u_xlatb59 = (x_2692 & x_2694);
        let x_2696 : vec4<f32> = u_xlat10;
        let x_2699 : vec4<bool> = (-(vec4<f32>(x_2696.z, x_2696.y, x_2696.z, x_2696.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2700 : vec3<bool> = vec3<bool>(x_2699.x, x_2699.y, x_2699.w);
        let x_2701 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2700.x, x_2700.y, x_2701.z, x_2700.z);
        let x_2704 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2704);
        let x_2709 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2709);
        let x_2714 : bool = u_xlatb11.w;
        u_xlat85 = select(0.0f, 1.0f, x_2714);
        let x_2717 : bool = u_xlatb11.z;
        if (x_2717) {
          let x_2722 : f32 = u_xlat11.y;
          x_2718 = x_2722;
        } else {
          let x_2724 : f32 = u_xlat85;
          x_2718 = x_2724;
        }
        let x_2725 : f32 = x_2718;
        u_xlat85 = x_2725;
        let x_2726 : bool = u_xlatb59;
        if (x_2726) {
          let x_2731 : f32 = u_xlat11.x;
          x_2727 = x_2731;
        } else {
          let x_2733 : f32 = u_xlat85;
          x_2727 = x_2733;
        }
        let x_2734 : f32 = x_2727;
        u_xlat59.x = x_2734;
        let x_2736 : i32 = u_xlati29;
        let x_2738 : f32 = x_508.x_AdditionalShadowParams[x_2736].w;
        u_xlat85 = trunc(x_2738);
        let x_2741 : f32 = u_xlat59.x;
        let x_2742 : f32 = u_xlat85;
        u_xlat59.x = (x_2741 + x_2742);
        let x_2746 : f32 = u_xlat59.x;
        u_xlati84 = i32(x_2746);
      }
      let x_2748 : i32 = u_xlati84;
      u_xlati84 = (x_2748 << bitcast<u32>(2i));
      let x_2750 : vec3<f32> = vs_INTERP7;
      let x_2753 : i32 = u_xlati84;
      let x_2756 : i32 = u_xlati84;
      let x_2760 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2753 + 1i) / 4i)][((x_2756 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2750.y, x_2750.y, x_2750.y, x_2750.y) * x_2760);
      let x_2762 : i32 = u_xlati84;
      let x_2764 : i32 = u_xlati84;
      let x_2767 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[(x_2762 / 4i)][(x_2764 % 4i)];
      let x_2768 : vec3<f32> = vs_INTERP7;
      let x_2771 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2767 * vec4<f32>(x_2768.x, x_2768.x, x_2768.x, x_2768.x)) + x_2771);
      let x_2773 : i32 = u_xlati84;
      let x_2776 : i32 = u_xlati84;
      let x_2780 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2773 + 2i) / 4i)][((x_2776 + 2i) % 4i)];
      let x_2781 : vec3<f32> = vs_INTERP7;
      let x_2784 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2780 * vec4<f32>(x_2781.z, x_2781.z, x_2781.z, x_2781.z)) + x_2784);
      let x_2786 : vec4<f32> = u_xlat11;
      let x_2787 : i32 = u_xlati84;
      let x_2790 : i32 = u_xlati84;
      let x_2794 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2787 + 3i) / 4i)][((x_2790 + 3i) % 4i)];
      u_xlat11 = (x_2786 + x_2794);
      let x_2796 : vec4<f32> = u_xlat11;
      let x_2798 : vec4<f32> = u_xlat11;
      let x_2800 : vec3<f32> = (vec3<f32>(x_2796.x, x_2796.y, x_2796.z) / vec3<f32>(x_2798.w, x_2798.w, x_2798.w));
      let x_2801 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2800.x, x_2800.y, x_2800.z, x_2801.w);
      let x_2804 : i32 = u_xlati29;
      let x_2806 : f32 = x_508.x_AdditionalShadowParams[x_2804].y;
      u_xlatb84 = (0.0f < x_2806);
      let x_2808 : bool = u_xlatb84;
      if (x_2808) {
        let x_2811 : i32 = u_xlati29;
        let x_2813 : f32 = x_508.x_AdditionalShadowParams[x_2811].y;
        u_xlatb84 = (1.0f == x_2813);
        let x_2815 : bool = u_xlatb84;
        if (x_2815) {
          let x_2818 : vec4<f32> = u_xlat11;
          let x_2822 : vec4<f32> = x_508.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2818.x, x_2818.y, x_2818.x, x_2818.y) + x_2822);
          let x_2825 : vec4<f32> = u_xlat12;
          let x_2826 : vec2<f32> = vec2<f32>(x_2825.x, x_2825.y);
          let x_2828 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2826.x, x_2826.y, x_2828);
          let x_2836 : vec3<f32> = txVec30;
          let x_2838 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2836.xy, x_2836.z);
          u_xlat13.x = x_2838;
          let x_2841 : vec4<f32> = u_xlat12;
          let x_2842 : vec2<f32> = vec2<f32>(x_2841.z, x_2841.w);
          let x_2844 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2842.x, x_2842.y, x_2844);
          let x_2851 : vec3<f32> = txVec31;
          let x_2853 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2851.xy, x_2851.z);
          u_xlat13.y = x_2853;
          let x_2855 : vec4<f32> = u_xlat11;
          let x_2859 : vec4<f32> = x_508.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2855.x, x_2855.y, x_2855.x, x_2855.y) + x_2859);
          let x_2862 : vec4<f32> = u_xlat12;
          let x_2863 : vec2<f32> = vec2<f32>(x_2862.x, x_2862.y);
          let x_2865 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2863.x, x_2863.y, x_2865);
          let x_2872 : vec3<f32> = txVec32;
          let x_2874 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2872.xy, x_2872.z);
          u_xlat13.z = x_2874;
          let x_2877 : vec4<f32> = u_xlat12;
          let x_2878 : vec2<f32> = vec2<f32>(x_2877.z, x_2877.w);
          let x_2880 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2878.x, x_2878.y, x_2880);
          let x_2887 : vec3<f32> = txVec33;
          let x_2889 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2887.xy, x_2887.z);
          u_xlat13.w = x_2889;
          let x_2891 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_2891, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2894 : i32 = u_xlati29;
          let x_2896 : f32 = x_508.x_AdditionalShadowParams[x_2894].y;
          u_xlatb59 = (2.0f == x_2896);
          let x_2898 : bool = u_xlatb59;
          if (x_2898) {
            let x_2901 : vec4<f32> = u_xlat11;
            let x_2905 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat59 = ((vec2<f32>(x_2901.x, x_2901.y) * vec2<f32>(x_2905.z, x_2905.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2909 : vec2<f32> = u_xlat59;
            u_xlat59 = floor(x_2909);
            let x_2911 : vec4<f32> = u_xlat11;
            let x_2914 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2917 : vec2<f32> = u_xlat59;
            let x_2919 : vec2<f32> = ((vec2<f32>(x_2911.x, x_2911.y) * vec2<f32>(x_2914.z, x_2914.w)) + -(x_2917));
            let x_2920 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2919.x, x_2919.y, x_2920.z, x_2920.w);
            let x_2922 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2922.x, x_2922.x, x_2922.y, x_2922.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2925 : vec4<f32> = u_xlat13;
            let x_2927 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2925.x, x_2925.x, x_2925.z, x_2925.z) * vec4<f32>(x_2927.x, x_2927.x, x_2927.z, x_2927.z));
            let x_2931 : vec4<f32> = u_xlat14;
            u_xlat64 = (vec2<f32>(x_2931.y, x_2931.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2934 : vec4<f32> = u_xlat14;
            let x_2937 : vec4<f32> = u_xlat12;
            let x_2940 : vec2<f32> = ((vec2<f32>(x_2934.x, x_2934.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2937.x, x_2937.y)));
            let x_2941 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2940.x, x_2941.y, x_2940.y, x_2941.w);
            let x_2943 : vec4<f32> = u_xlat12;
            let x_2946 : vec2<f32> = (-(vec2<f32>(x_2943.x, x_2943.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2947 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2946.x, x_2946.y, x_2947.z, x_2947.w);
            let x_2950 : vec4<f32> = u_xlat12;
            u_xlat66 = min(vec2<f32>(x_2950.x, x_2950.y), vec2<f32>(0.0f, 0.0f));
            let x_2953 : vec2<f32> = u_xlat66;
            let x_2955 : vec2<f32> = u_xlat66;
            let x_2957 : vec4<f32> = u_xlat14;
            u_xlat66 = ((-(x_2953) * x_2955) + vec2<f32>(x_2957.x, x_2957.y));
            let x_2960 : vec4<f32> = u_xlat12;
            let x_2962 : vec2<f32> = max(vec2<f32>(x_2960.x, x_2960.y), vec2<f32>(0.0f, 0.0f));
            let x_2963 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2962.x, x_2962.y, x_2963.z, x_2963.w);
            let x_2965 : vec4<f32> = u_xlat12;
            let x_2968 : vec4<f32> = u_xlat12;
            let x_2971 : vec4<f32> = u_xlat13;
            let x_2973 : vec2<f32> = ((-(vec2<f32>(x_2965.x, x_2965.y)) * vec2<f32>(x_2968.x, x_2968.y)) + vec2<f32>(x_2971.y, x_2971.w));
            let x_2974 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2973.x, x_2973.y, x_2974.z, x_2974.w);
            let x_2976 : vec2<f32> = u_xlat66;
            u_xlat66 = (x_2976 + vec2<f32>(1.0f, 1.0f));
            let x_2978 : vec4<f32> = u_xlat12;
            let x_2980 : vec2<f32> = (vec2<f32>(x_2978.x, x_2978.y) + vec2<f32>(1.0f, 1.0f));
            let x_2981 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2980.x, x_2980.y, x_2981.z, x_2981.w);
            let x_2983 : vec4<f32> = u_xlat13;
            let x_2985 : vec2<f32> = (vec2<f32>(x_2983.x, x_2983.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2986 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2985.x, x_2985.y, x_2986.z, x_2986.w);
            let x_2988 : vec4<f32> = u_xlat14;
            let x_2990 : vec2<f32> = (vec2<f32>(x_2988.x, x_2988.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2991 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2990.x, x_2990.y, x_2991.z, x_2991.w);
            let x_2993 : vec2<f32> = u_xlat66;
            let x_2994 : vec2<f32> = (x_2993 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2995 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2994.x, x_2994.y, x_2995.z, x_2995.w);
            let x_2997 : vec4<f32> = u_xlat12;
            let x_2999 : vec2<f32> = (vec2<f32>(x_2997.x, x_2997.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3000 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2999.x, x_2999.y, x_3000.z, x_3000.w);
            let x_3002 : vec4<f32> = u_xlat13;
            let x_3004 : vec2<f32> = (vec2<f32>(x_3002.y, x_3002.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_3005 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3004.x, x_3004.y, x_3005.z, x_3005.w);
            let x_3008 : f32 = u_xlat14.x;
            u_xlat15.z = x_3008;
            let x_3011 : f32 = u_xlat12.x;
            u_xlat15.w = x_3011;
            let x_3014 : f32 = u_xlat17.x;
            u_xlat16.z = x_3014;
            let x_3017 : f32 = u_xlat64.x;
            u_xlat16.w = x_3017;
            let x_3019 : vec4<f32> = u_xlat15;
            let x_3021 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3019.z, x_3019.w, x_3019.x, x_3019.z) + vec4<f32>(x_3021.z, x_3021.w, x_3021.x, x_3021.z));
            let x_3025 : f32 = u_xlat15.y;
            u_xlat14.z = x_3025;
            let x_3028 : f32 = u_xlat12.y;
            u_xlat14.w = x_3028;
            let x_3031 : f32 = u_xlat16.y;
            u_xlat17.z = x_3031;
            let x_3034 : f32 = u_xlat64.y;
            u_xlat17.w = x_3034;
            let x_3036 : vec4<f32> = u_xlat14;
            let x_3038 : vec4<f32> = u_xlat17;
            let x_3040 : vec3<f32> = (vec3<f32>(x_3036.z, x_3036.y, x_3036.w) + vec3<f32>(x_3038.z, x_3038.y, x_3038.w));
            let x_3041 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3040.x, x_3040.y, x_3040.z, x_3041.w);
            let x_3043 : vec4<f32> = u_xlat16;
            let x_3045 : vec4<f32> = u_xlat13;
            let x_3047 : vec3<f32> = (vec3<f32>(x_3043.x, x_3043.z, x_3043.w) / vec3<f32>(x_3045.z, x_3045.w, x_3045.y));
            let x_3048 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3047.x, x_3047.y, x_3047.z, x_3048.w);
            let x_3050 : vec4<f32> = u_xlat14;
            let x_3052 : vec3<f32> = (vec3<f32>(x_3050.x, x_3050.y, x_3050.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3053 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3052.x, x_3052.y, x_3052.z, x_3053.w);
            let x_3055 : vec4<f32> = u_xlat17;
            let x_3057 : vec4<f32> = u_xlat12;
            let x_3059 : vec3<f32> = (vec3<f32>(x_3055.z, x_3055.y, x_3055.w) / vec3<f32>(x_3057.x, x_3057.y, x_3057.z));
            let x_3060 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3059.x, x_3059.y, x_3059.z, x_3060.w);
            let x_3062 : vec4<f32> = u_xlat15;
            let x_3064 : vec3<f32> = (vec3<f32>(x_3062.x, x_3062.y, x_3062.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3065 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3064.x, x_3064.y, x_3064.z, x_3065.w);
            let x_3067 : vec4<f32> = u_xlat14;
            let x_3070 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3072 : vec3<f32> = (vec3<f32>(x_3067.y, x_3067.x, x_3067.z) * vec3<f32>(x_3070.x, x_3070.x, x_3070.x));
            let x_3073 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3072.x, x_3072.y, x_3072.z, x_3073.w);
            let x_3075 : vec4<f32> = u_xlat15;
            let x_3078 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3080 : vec3<f32> = (vec3<f32>(x_3075.x, x_3075.y, x_3075.z) * vec3<f32>(x_3078.y, x_3078.y, x_3078.y));
            let x_3081 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3080.x, x_3080.y, x_3080.z, x_3081.w);
            let x_3084 : f32 = u_xlat15.x;
            u_xlat14.w = x_3084;
            let x_3086 : vec2<f32> = u_xlat59;
            let x_3089 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3092 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3086.x, x_3086.y, x_3086.x, x_3086.y) * vec4<f32>(x_3089.x, x_3089.y, x_3089.x, x_3089.y)) + vec4<f32>(x_3092.y, x_3092.w, x_3092.x, x_3092.w));
            let x_3095 : vec2<f32> = u_xlat59;
            let x_3097 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3100 : vec4<f32> = u_xlat14;
            let x_3102 : vec2<f32> = ((x_3095 * vec2<f32>(x_3097.x, x_3097.y)) + vec2<f32>(x_3100.z, x_3100.w));
            let x_3103 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3102.x, x_3102.y, x_3103.z, x_3103.w);
            let x_3106 : f32 = u_xlat14.y;
            u_xlat15.w = x_3106;
            let x_3108 : vec4<f32> = u_xlat15;
            let x_3109 : vec2<f32> = vec2<f32>(x_3108.y, x_3108.z);
            let x_3110 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3110.x, x_3109.x, x_3110.z, x_3109.y);
            let x_3112 : vec2<f32> = u_xlat59;
            let x_3115 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3118 : vec4<f32> = u_xlat14;
            u_xlat18 = ((vec4<f32>(x_3112.x, x_3112.y, x_3112.x, x_3112.y) * vec4<f32>(x_3115.x, x_3115.y, x_3115.x, x_3115.y)) + vec4<f32>(x_3118.x, x_3118.y, x_3118.z, x_3118.y));
            let x_3121 : vec2<f32> = u_xlat59;
            let x_3124 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3127 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3121.x, x_3121.y, x_3121.x, x_3121.y) * vec4<f32>(x_3124.x, x_3124.y, x_3124.x, x_3124.y)) + vec4<f32>(x_3127.w, x_3127.y, x_3127.w, x_3127.z));
            let x_3130 : vec2<f32> = u_xlat59;
            let x_3133 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3136 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3130.x, x_3130.y, x_3130.x, x_3130.y) * vec4<f32>(x_3133.x, x_3133.y, x_3133.x, x_3133.y)) + vec4<f32>(x_3136.x, x_3136.w, x_3136.z, x_3136.w));
            let x_3139 : vec4<f32> = u_xlat12;
            let x_3141 : vec4<f32> = u_xlat13;
            u_xlat19 = (vec4<f32>(x_3139.x, x_3139.x, x_3139.x, x_3139.y) * vec4<f32>(x_3141.z, x_3141.w, x_3141.y, x_3141.z));
            let x_3144 : vec4<f32> = u_xlat12;
            let x_3146 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3144.y, x_3144.y, x_3144.z, x_3144.z) * x_3146);
            let x_3149 : f32 = u_xlat12.z;
            let x_3151 : f32 = u_xlat13.y;
            u_xlat59.x = (x_3149 * x_3151);
            let x_3155 : vec4<f32> = u_xlat16;
            let x_3156 : vec2<f32> = vec2<f32>(x_3155.x, x_3155.y);
            let x_3158 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3156.x, x_3156.y, x_3158);
            let x_3165 : vec3<f32> = txVec34;
            let x_3167 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3165.xy, x_3165.z);
            u_xlat85 = x_3167;
            let x_3169 : vec4<f32> = u_xlat16;
            let x_3170 : vec2<f32> = vec2<f32>(x_3169.z, x_3169.w);
            let x_3172 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3170.x, x_3170.y, x_3172);
            let x_3180 : vec3<f32> = txVec35;
            let x_3182 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3180.xy, x_3180.z);
            u_xlat86 = x_3182;
            let x_3183 : f32 = u_xlat86;
            let x_3185 : f32 = u_xlat19.y;
            u_xlat86 = (x_3183 * x_3185);
            let x_3188 : f32 = u_xlat19.x;
            let x_3189 : f32 = u_xlat85;
            let x_3191 : f32 = u_xlat86;
            u_xlat85 = ((x_3188 * x_3189) + x_3191);
            let x_3194 : vec4<f32> = u_xlat17;
            let x_3195 : vec2<f32> = vec2<f32>(x_3194.x, x_3194.y);
            let x_3197 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3195.x, x_3195.y, x_3197);
            let x_3204 : vec3<f32> = txVec36;
            let x_3206 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3204.xy, x_3204.z);
            u_xlat86 = x_3206;
            let x_3208 : f32 = u_xlat19.z;
            let x_3209 : f32 = u_xlat86;
            let x_3211 : f32 = u_xlat85;
            u_xlat85 = ((x_3208 * x_3209) + x_3211);
            let x_3214 : vec4<f32> = u_xlat15;
            let x_3215 : vec2<f32> = vec2<f32>(x_3214.x, x_3214.y);
            let x_3217 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3215.x, x_3215.y, x_3217);
            let x_3224 : vec3<f32> = txVec37;
            let x_3226 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3224.xy, x_3224.z);
            u_xlat86 = x_3226;
            let x_3228 : f32 = u_xlat19.w;
            let x_3229 : f32 = u_xlat86;
            let x_3231 : f32 = u_xlat85;
            u_xlat85 = ((x_3228 * x_3229) + x_3231);
            let x_3234 : vec4<f32> = u_xlat18;
            let x_3235 : vec2<f32> = vec2<f32>(x_3234.x, x_3234.y);
            let x_3237 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3235.x, x_3235.y, x_3237);
            let x_3244 : vec3<f32> = txVec38;
            let x_3246 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3244.xy, x_3244.z);
            u_xlat86 = x_3246;
            let x_3248 : f32 = u_xlat20.x;
            let x_3249 : f32 = u_xlat86;
            let x_3251 : f32 = u_xlat85;
            u_xlat85 = ((x_3248 * x_3249) + x_3251);
            let x_3254 : vec4<f32> = u_xlat18;
            let x_3255 : vec2<f32> = vec2<f32>(x_3254.z, x_3254.w);
            let x_3257 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3255.x, x_3255.y, x_3257);
            let x_3264 : vec3<f32> = txVec39;
            let x_3266 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3264.xy, x_3264.z);
            u_xlat86 = x_3266;
            let x_3268 : f32 = u_xlat20.y;
            let x_3269 : f32 = u_xlat86;
            let x_3271 : f32 = u_xlat85;
            u_xlat85 = ((x_3268 * x_3269) + x_3271);
            let x_3274 : vec4<f32> = u_xlat15;
            let x_3275 : vec2<f32> = vec2<f32>(x_3274.z, x_3274.w);
            let x_3277 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3275.x, x_3275.y, x_3277);
            let x_3284 : vec3<f32> = txVec40;
            let x_3286 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3284.xy, x_3284.z);
            u_xlat86 = x_3286;
            let x_3288 : f32 = u_xlat20.z;
            let x_3289 : f32 = u_xlat86;
            let x_3291 : f32 = u_xlat85;
            u_xlat85 = ((x_3288 * x_3289) + x_3291);
            let x_3294 : vec4<f32> = u_xlat14;
            let x_3295 : vec2<f32> = vec2<f32>(x_3294.x, x_3294.y);
            let x_3297 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3295.x, x_3295.y, x_3297);
            let x_3304 : vec3<f32> = txVec41;
            let x_3306 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3304.xy, x_3304.z);
            u_xlat86 = x_3306;
            let x_3308 : f32 = u_xlat20.w;
            let x_3309 : f32 = u_xlat86;
            let x_3311 : f32 = u_xlat85;
            u_xlat85 = ((x_3308 * x_3309) + x_3311);
            let x_3314 : vec4<f32> = u_xlat14;
            let x_3315 : vec2<f32> = vec2<f32>(x_3314.z, x_3314.w);
            let x_3317 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3315.x, x_3315.y, x_3317);
            let x_3324 : vec3<f32> = txVec42;
            let x_3326 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3324.xy, x_3324.z);
            u_xlat86 = x_3326;
            let x_3328 : f32 = u_xlat59.x;
            let x_3329 : f32 = u_xlat86;
            let x_3331 : f32 = u_xlat85;
            u_xlat84 = ((x_3328 * x_3329) + x_3331);
          } else {
            let x_3334 : vec4<f32> = u_xlat11;
            let x_3337 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat59 = ((vec2<f32>(x_3334.x, x_3334.y) * vec2<f32>(x_3337.z, x_3337.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3341 : vec2<f32> = u_xlat59;
            u_xlat59 = floor(x_3341);
            let x_3343 : vec4<f32> = u_xlat11;
            let x_3346 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3349 : vec2<f32> = u_xlat59;
            let x_3351 : vec2<f32> = ((vec2<f32>(x_3343.x, x_3343.y) * vec2<f32>(x_3346.z, x_3346.w)) + -(x_3349));
            let x_3352 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3351.x, x_3351.y, x_3352.z, x_3352.w);
            let x_3354 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3354.x, x_3354.x, x_3354.y, x_3354.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3357 : vec4<f32> = u_xlat13;
            let x_3359 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3357.x, x_3357.x, x_3357.z, x_3357.z) * vec4<f32>(x_3359.x, x_3359.x, x_3359.z, x_3359.z));
            let x_3362 : vec4<f32> = u_xlat14;
            let x_3364 : vec2<f32> = (vec2<f32>(x_3362.y, x_3362.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3365 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3365.x, x_3364.x, x_3365.z, x_3364.y);
            let x_3367 : vec4<f32> = u_xlat14;
            let x_3370 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3367.x, x_3367.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_3370.x, x_3370.y)));
            let x_3374 : vec4<f32> = u_xlat12;
            let x_3377 : vec2<f32> = (-(vec2<f32>(x_3374.x, x_3374.y)) + vec2<f32>(1.0f, 1.0f));
            let x_3378 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3377.x, x_3378.y, x_3377.y, x_3378.w);
            let x_3380 : vec4<f32> = u_xlat12;
            let x_3382 : vec2<f32> = min(vec2<f32>(x_3380.x, x_3380.y), vec2<f32>(0.0f, 0.0f));
            let x_3383 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3382.x, x_3382.y, x_3383.z, x_3383.w);
            let x_3385 : vec4<f32> = u_xlat14;
            let x_3388 : vec4<f32> = u_xlat14;
            let x_3391 : vec4<f32> = u_xlat13;
            let x_3393 : vec2<f32> = ((-(vec2<f32>(x_3385.x, x_3385.y)) * vec2<f32>(x_3388.x, x_3388.y)) + vec2<f32>(x_3391.x, x_3391.z));
            let x_3394 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3393.x, x_3394.y, x_3393.y, x_3394.w);
            let x_3396 : vec4<f32> = u_xlat12;
            let x_3398 : vec2<f32> = max(vec2<f32>(x_3396.x, x_3396.y), vec2<f32>(0.0f, 0.0f));
            let x_3399 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3398.x, x_3398.y, x_3399.z, x_3399.w);
            let x_3401 : vec4<f32> = u_xlat14;
            let x_3404 : vec4<f32> = u_xlat14;
            let x_3407 : vec4<f32> = u_xlat13;
            let x_3409 : vec2<f32> = ((-(vec2<f32>(x_3401.x, x_3401.y)) * vec2<f32>(x_3404.x, x_3404.y)) + vec2<f32>(x_3407.y, x_3407.w));
            let x_3410 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3410.x, x_3409.x, x_3410.z, x_3409.y);
            let x_3412 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3412 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_3416 : f32 = u_xlat13.y;
            u_xlat14.z = (x_3416 * 0.08163200318813323975f);
            let x_3419 : vec2<f32> = u_xlat64;
            let x_3421 : vec2<f32> = (vec2<f32>(x_3419.y, x_3419.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3422 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3421.x, x_3421.y, x_3422.z, x_3422.w);
            let x_3424 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3424.x, x_3424.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3428 : f32 = u_xlat13.w;
            u_xlat16.z = (x_3428 * 0.08163200318813323975f);
            let x_3432 : f32 = u_xlat16.y;
            u_xlat14.x = x_3432;
            let x_3434 : vec4<f32> = u_xlat12;
            let x_3437 : vec2<f32> = ((vec2<f32>(x_3434.x, x_3434.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3438 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3438.x, x_3437.x, x_3438.z, x_3437.y);
            let x_3440 : vec4<f32> = u_xlat12;
            let x_3443 : vec2<f32> = ((vec2<f32>(x_3440.x, x_3440.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3444 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3443.x, x_3444.y, x_3443.y, x_3444.w);
            let x_3447 : f32 = u_xlat64.x;
            u_xlat13.y = x_3447;
            let x_3450 : f32 = u_xlat15.y;
            u_xlat13.w = x_3450;
            let x_3452 : vec4<f32> = u_xlat13;
            let x_3453 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3452 + x_3453);
            let x_3455 : vec4<f32> = u_xlat12;
            let x_3458 : vec2<f32> = ((vec2<f32>(x_3455.y, x_3455.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3459 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3459.x, x_3458.x, x_3459.z, x_3458.y);
            let x_3461 : vec4<f32> = u_xlat12;
            let x_3464 : vec2<f32> = ((vec2<f32>(x_3461.y, x_3461.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3465 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3464.x, x_3465.y, x_3464.y, x_3465.w);
            let x_3468 : f32 = u_xlat64.y;
            u_xlat15.y = x_3468;
            let x_3470 : vec4<f32> = u_xlat15;
            let x_3471 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3470 + x_3471);
            let x_3473 : vec4<f32> = u_xlat13;
            let x_3474 : vec4<f32> = u_xlat14;
            u_xlat13 = (x_3473 / x_3474);
            let x_3476 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3476 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3478 : vec4<f32> = u_xlat15;
            let x_3479 : vec4<f32> = u_xlat12;
            u_xlat15 = (x_3478 / x_3479);
            let x_3481 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3481 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3483 : vec4<f32> = u_xlat13;
            let x_3486 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3483.w, x_3483.x, x_3483.y, x_3483.z) * vec4<f32>(x_3486.x, x_3486.x, x_3486.x, x_3486.x));
            let x_3489 : vec4<f32> = u_xlat15;
            let x_3492 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3489.x, x_3489.w, x_3489.y, x_3489.z) * vec4<f32>(x_3492.y, x_3492.y, x_3492.y, x_3492.y));
            let x_3495 : vec4<f32> = u_xlat13;
            let x_3496 : vec3<f32> = vec3<f32>(x_3495.y, x_3495.z, x_3495.w);
            let x_3497 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3496.x, x_3497.y, x_3496.y, x_3496.z);
            let x_3500 : f32 = u_xlat15.x;
            u_xlat16.y = x_3500;
            let x_3502 : vec2<f32> = u_xlat59;
            let x_3505 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3508 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3502.x, x_3502.y, x_3502.x, x_3502.y) * vec4<f32>(x_3505.x, x_3505.y, x_3505.x, x_3505.y)) + vec4<f32>(x_3508.x, x_3508.y, x_3508.z, x_3508.y));
            let x_3511 : vec2<f32> = u_xlat59;
            let x_3513 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3516 : vec4<f32> = u_xlat16;
            let x_3518 : vec2<f32> = ((x_3511 * vec2<f32>(x_3513.x, x_3513.y)) + vec2<f32>(x_3516.w, x_3516.y));
            let x_3519 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3518.x, x_3518.y, x_3519.z, x_3519.w);
            let x_3522 : f32 = u_xlat16.y;
            u_xlat13.y = x_3522;
            let x_3525 : f32 = u_xlat15.z;
            u_xlat16.y = x_3525;
            let x_3527 : vec2<f32> = u_xlat59;
            let x_3530 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3533 : vec4<f32> = u_xlat16;
            u_xlat19 = ((vec4<f32>(x_3527.x, x_3527.y, x_3527.x, x_3527.y) * vec4<f32>(x_3530.x, x_3530.y, x_3530.x, x_3530.y)) + vec4<f32>(x_3533.x, x_3533.y, x_3533.z, x_3533.y));
            let x_3537 : vec2<f32> = u_xlat59;
            let x_3539 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3542 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_3537 * vec2<f32>(x_3539.x, x_3539.y)) + vec2<f32>(x_3542.w, x_3542.y));
            let x_3546 : f32 = u_xlat16.y;
            u_xlat13.z = x_3546;
            let x_3548 : vec2<f32> = u_xlat59;
            let x_3551 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3554 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3548.x, x_3548.y, x_3548.x, x_3548.y) * vec4<f32>(x_3551.x, x_3551.y, x_3551.x, x_3551.y)) + vec4<f32>(x_3554.x, x_3554.y, x_3554.x, x_3554.z));
            let x_3558 : f32 = u_xlat15.w;
            u_xlat16.y = x_3558;
            let x_3561 : vec2<f32> = u_xlat59;
            let x_3564 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3567 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3561.x, x_3561.y, x_3561.x, x_3561.y) * vec4<f32>(x_3564.x, x_3564.y, x_3564.x, x_3564.y)) + vec4<f32>(x_3567.x, x_3567.y, x_3567.z, x_3567.y));
            let x_3571 : vec2<f32> = u_xlat59;
            let x_3573 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3576 : vec4<f32> = u_xlat16;
            u_xlat39 = ((x_3571 * vec2<f32>(x_3573.x, x_3573.y)) + vec2<f32>(x_3576.w, x_3576.y));
            let x_3580 : f32 = u_xlat16.y;
            u_xlat13.w = x_3580;
            let x_3583 : vec2<f32> = u_xlat59;
            let x_3585 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3588 : vec4<f32> = u_xlat13;
            u_xlat22 = ((x_3583 * vec2<f32>(x_3585.x, x_3585.y)) + vec2<f32>(x_3588.x, x_3588.w));
            let x_3591 : vec4<f32> = u_xlat16;
            let x_3592 : vec3<f32> = vec3<f32>(x_3591.x, x_3591.z, x_3591.w);
            let x_3593 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3592.x, x_3593.y, x_3592.y, x_3592.z);
            let x_3595 : vec2<f32> = u_xlat59;
            let x_3598 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3601 : vec4<f32> = u_xlat15;
            u_xlat16 = ((vec4<f32>(x_3595.x, x_3595.y, x_3595.x, x_3595.y) * vec4<f32>(x_3598.x, x_3598.y, x_3598.x, x_3598.y)) + vec4<f32>(x_3601.x, x_3601.y, x_3601.z, x_3601.y));
            let x_3604 : vec2<f32> = u_xlat59;
            let x_3606 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3609 : vec4<f32> = u_xlat15;
            u_xlat67 = ((x_3604 * vec2<f32>(x_3606.x, x_3606.y)) + vec2<f32>(x_3609.w, x_3609.y));
            let x_3613 : f32 = u_xlat13.x;
            u_xlat15.x = x_3613;
            let x_3615 : vec2<f32> = u_xlat59;
            let x_3617 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3620 : vec4<f32> = u_xlat15;
            u_xlat59 = ((x_3615 * vec2<f32>(x_3617.x, x_3617.y)) + vec2<f32>(x_3620.x, x_3620.y));
            let x_3624 : vec4<f32> = u_xlat12;
            let x_3626 : vec4<f32> = u_xlat14;
            u_xlat23 = (vec4<f32>(x_3624.x, x_3624.x, x_3624.x, x_3624.x) * x_3626);
            let x_3629 : vec4<f32> = u_xlat12;
            let x_3631 : vec4<f32> = u_xlat14;
            u_xlat24 = (vec4<f32>(x_3629.y, x_3629.y, x_3629.y, x_3629.y) * x_3631);
            let x_3634 : vec4<f32> = u_xlat12;
            let x_3636 : vec4<f32> = u_xlat14;
            u_xlat25 = (vec4<f32>(x_3634.z, x_3634.z, x_3634.z, x_3634.z) * x_3636);
            let x_3638 : vec4<f32> = u_xlat12;
            let x_3640 : vec4<f32> = u_xlat14;
            u_xlat12 = (vec4<f32>(x_3638.w, x_3638.w, x_3638.w, x_3638.w) * x_3640);
            let x_3643 : vec4<f32> = u_xlat17;
            let x_3644 : vec2<f32> = vec2<f32>(x_3643.x, x_3643.y);
            let x_3646 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3644.x, x_3644.y, x_3646);
            let x_3653 : vec3<f32> = txVec43;
            let x_3655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3653.xy, x_3653.z);
            u_xlat86 = x_3655;
            let x_3657 : vec4<f32> = u_xlat17;
            let x_3658 : vec2<f32> = vec2<f32>(x_3657.z, x_3657.w);
            let x_3660 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3658.x, x_3658.y, x_3660);
            let x_3668 : vec3<f32> = txVec44;
            let x_3670 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3668.xy, x_3668.z);
            u_xlat88 = x_3670;
            let x_3671 : f32 = u_xlat88;
            let x_3673 : f32 = u_xlat23.y;
            u_xlat88 = (x_3671 * x_3673);
            let x_3676 : f32 = u_xlat23.x;
            let x_3677 : f32 = u_xlat86;
            let x_3679 : f32 = u_xlat88;
            u_xlat86 = ((x_3676 * x_3677) + x_3679);
            let x_3682 : vec4<f32> = u_xlat18;
            let x_3683 : vec2<f32> = vec2<f32>(x_3682.x, x_3682.y);
            let x_3685 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3683.x, x_3683.y, x_3685);
            let x_3692 : vec3<f32> = txVec45;
            let x_3694 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3692.xy, x_3692.z);
            u_xlat88 = x_3694;
            let x_3696 : f32 = u_xlat23.z;
            let x_3697 : f32 = u_xlat88;
            let x_3699 : f32 = u_xlat86;
            u_xlat86 = ((x_3696 * x_3697) + x_3699);
            let x_3702 : vec4<f32> = u_xlat20;
            let x_3703 : vec2<f32> = vec2<f32>(x_3702.x, x_3702.y);
            let x_3705 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3703.x, x_3703.y, x_3705);
            let x_3712 : vec3<f32> = txVec46;
            let x_3714 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3712.xy, x_3712.z);
            u_xlat88 = x_3714;
            let x_3716 : f32 = u_xlat23.w;
            let x_3717 : f32 = u_xlat88;
            let x_3719 : f32 = u_xlat86;
            u_xlat86 = ((x_3716 * x_3717) + x_3719);
            let x_3722 : vec4<f32> = u_xlat19;
            let x_3723 : vec2<f32> = vec2<f32>(x_3722.x, x_3722.y);
            let x_3725 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3723.x, x_3723.y, x_3725);
            let x_3732 : vec3<f32> = txVec47;
            let x_3734 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3732.xy, x_3732.z);
            u_xlat88 = x_3734;
            let x_3736 : f32 = u_xlat24.x;
            let x_3737 : f32 = u_xlat88;
            let x_3739 : f32 = u_xlat86;
            u_xlat86 = ((x_3736 * x_3737) + x_3739);
            let x_3742 : vec4<f32> = u_xlat19;
            let x_3743 : vec2<f32> = vec2<f32>(x_3742.z, x_3742.w);
            let x_3745 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3743.x, x_3743.y, x_3745);
            let x_3752 : vec3<f32> = txVec48;
            let x_3754 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3752.xy, x_3752.z);
            u_xlat88 = x_3754;
            let x_3756 : f32 = u_xlat24.y;
            let x_3757 : f32 = u_xlat88;
            let x_3759 : f32 = u_xlat86;
            u_xlat86 = ((x_3756 * x_3757) + x_3759);
            let x_3762 : vec2<f32> = u_xlat70;
            let x_3764 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3762.x, x_3762.y, x_3764);
            let x_3771 : vec3<f32> = txVec49;
            let x_3773 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3771.xy, x_3771.z);
            u_xlat88 = x_3773;
            let x_3775 : f32 = u_xlat24.z;
            let x_3776 : f32 = u_xlat88;
            let x_3778 : f32 = u_xlat86;
            u_xlat86 = ((x_3775 * x_3776) + x_3778);
            let x_3781 : vec4<f32> = u_xlat20;
            let x_3782 : vec2<f32> = vec2<f32>(x_3781.z, x_3781.w);
            let x_3784 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3782.x, x_3782.y, x_3784);
            let x_3791 : vec3<f32> = txVec50;
            let x_3793 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3791.xy, x_3791.z);
            u_xlat88 = x_3793;
            let x_3795 : f32 = u_xlat24.w;
            let x_3796 : f32 = u_xlat88;
            let x_3798 : f32 = u_xlat86;
            u_xlat86 = ((x_3795 * x_3796) + x_3798);
            let x_3801 : vec4<f32> = u_xlat21;
            let x_3802 : vec2<f32> = vec2<f32>(x_3801.x, x_3801.y);
            let x_3804 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3802.x, x_3802.y, x_3804);
            let x_3811 : vec3<f32> = txVec51;
            let x_3813 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3811.xy, x_3811.z);
            u_xlat88 = x_3813;
            let x_3815 : f32 = u_xlat25.x;
            let x_3816 : f32 = u_xlat88;
            let x_3818 : f32 = u_xlat86;
            u_xlat86 = ((x_3815 * x_3816) + x_3818);
            let x_3821 : vec4<f32> = u_xlat21;
            let x_3822 : vec2<f32> = vec2<f32>(x_3821.z, x_3821.w);
            let x_3824 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3822.x, x_3822.y, x_3824);
            let x_3831 : vec3<f32> = txVec52;
            let x_3833 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3831.xy, x_3831.z);
            u_xlat88 = x_3833;
            let x_3835 : f32 = u_xlat25.y;
            let x_3836 : f32 = u_xlat88;
            let x_3838 : f32 = u_xlat86;
            u_xlat86 = ((x_3835 * x_3836) + x_3838);
            let x_3841 : vec2<f32> = u_xlat39;
            let x_3843 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3841.x, x_3841.y, x_3843);
            let x_3850 : vec3<f32> = txVec53;
            let x_3852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3850.xy, x_3850.z);
            u_xlat88 = x_3852;
            let x_3854 : f32 = u_xlat25.z;
            let x_3855 : f32 = u_xlat88;
            let x_3857 : f32 = u_xlat86;
            u_xlat86 = ((x_3854 * x_3855) + x_3857);
            let x_3860 : vec2<f32> = u_xlat22;
            let x_3862 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3860.x, x_3860.y, x_3862);
            let x_3869 : vec3<f32> = txVec54;
            let x_3871 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3869.xy, x_3869.z);
            u_xlat88 = x_3871;
            let x_3873 : f32 = u_xlat25.w;
            let x_3874 : f32 = u_xlat88;
            let x_3876 : f32 = u_xlat86;
            u_xlat86 = ((x_3873 * x_3874) + x_3876);
            let x_3879 : vec4<f32> = u_xlat16;
            let x_3880 : vec2<f32> = vec2<f32>(x_3879.x, x_3879.y);
            let x_3882 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3880.x, x_3880.y, x_3882);
            let x_3889 : vec3<f32> = txVec55;
            let x_3891 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3889.xy, x_3889.z);
            u_xlat88 = x_3891;
            let x_3893 : f32 = u_xlat12.x;
            let x_3894 : f32 = u_xlat88;
            let x_3896 : f32 = u_xlat86;
            u_xlat86 = ((x_3893 * x_3894) + x_3896);
            let x_3899 : vec4<f32> = u_xlat16;
            let x_3900 : vec2<f32> = vec2<f32>(x_3899.z, x_3899.w);
            let x_3902 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3900.x, x_3900.y, x_3902);
            let x_3909 : vec3<f32> = txVec56;
            let x_3911 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3909.xy, x_3909.z);
            u_xlat88 = x_3911;
            let x_3913 : f32 = u_xlat12.y;
            let x_3914 : f32 = u_xlat88;
            let x_3916 : f32 = u_xlat86;
            u_xlat86 = ((x_3913 * x_3914) + x_3916);
            let x_3919 : vec2<f32> = u_xlat67;
            let x_3921 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3919.x, x_3919.y, x_3921);
            let x_3928 : vec3<f32> = txVec57;
            let x_3930 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3928.xy, x_3928.z);
            u_xlat88 = x_3930;
            let x_3932 : f32 = u_xlat12.z;
            let x_3933 : f32 = u_xlat88;
            let x_3935 : f32 = u_xlat86;
            u_xlat86 = ((x_3932 * x_3933) + x_3935);
            let x_3938 : vec2<f32> = u_xlat59;
            let x_3940 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3938.x, x_3938.y, x_3940);
            let x_3947 : vec3<f32> = txVec58;
            let x_3949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3947.xy, x_3947.z);
            u_xlat59.x = x_3949;
            let x_3952 : f32 = u_xlat12.w;
            let x_3954 : f32 = u_xlat59.x;
            let x_3956 : f32 = u_xlat86;
            u_xlat84 = ((x_3952 * x_3954) + x_3956);
          }
        }
      } else {
        let x_3960 : vec4<f32> = u_xlat11;
        let x_3961 : vec2<f32> = vec2<f32>(x_3960.x, x_3960.y);
        let x_3963 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3961.x, x_3961.y, x_3963);
        let x_3970 : vec3<f32> = txVec59;
        let x_3972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3970.xy, x_3970.z);
        u_xlat84 = x_3972;
      }
      let x_3973 : i32 = u_xlati29;
      let x_3975 : f32 = x_508.x_AdditionalShadowParams[x_3973].x;
      u_xlat59.x = (1.0f + -(x_3975));
      let x_3979 : f32 = u_xlat84;
      let x_3980 : i32 = u_xlati29;
      let x_3982 : f32 = x_508.x_AdditionalShadowParams[x_3980].x;
      let x_3985 : f32 = u_xlat59.x;
      u_xlat84 = ((x_3979 * x_3982) + x_3985);
      let x_3988 : f32 = u_xlat11.z;
      u_xlatb59 = (0.0f >= x_3988);
      let x_3992 : f32 = u_xlat11.z;
      u_xlatb85 = (x_3992 >= 1.0f);
      let x_3994 : bool = u_xlatb85;
      let x_3995 : bool = u_xlatb59;
      u_xlatb59 = (x_3994 | x_3995);
      let x_3997 : bool = u_xlatb59;
      let x_3998 : f32 = u_xlat84;
      u_xlat84 = select(x_3998, 1.0f, x_3997);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_4001 : f32 = u_xlat84;
    u_xlat59.x = (-(x_4001) + 1.0f);
    let x_4005 : f32 = u_xlat79;
    let x_4007 : f32 = u_xlat59.x;
    let x_4009 : f32 = u_xlat84;
    u_xlat84 = ((x_4005 * x_4007) + x_4009);
    let x_4012 : i32 = u_xlati29;
    u_xlati59 = (1i << bitcast<u32>((x_4012 & 31i)));
    let x_4016 : i32 = u_xlati59;
    let x_4019 : f32 = x_2142.x_AdditionalLightsCookieEnableBits;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_4016) & bitcast<u32>(x_4019)));
    let x_4023 : i32 = u_xlati59;
    if ((x_4023 != 0i)) {
      let x_4027 : i32 = u_xlati29;
      let x_4029 : f32 = x_2142.x_AdditionalLightsLightTypes[x_4027].el;
      u_xlati59 = i32(x_4029);
      let x_4032 : i32 = u_xlati59;
      u_xlati85 = select(1i, 0i, (x_4032 != 0i));
      let x_4036 : i32 = u_xlati29;
      u_xlati86 = (x_4036 << bitcast<u32>(2i));
      let x_4038 : i32 = u_xlati85;
      if ((x_4038 != 0i)) {
        let x_4042 : vec3<f32> = vs_INTERP7;
        let x_4044 : i32 = u_xlati86;
        let x_4047 : i32 = u_xlati86;
        let x_4051 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[((x_4044 + 1i) / 4i)][((x_4047 + 1i) % 4i)];
        let x_4053 : vec3<f32> = (vec3<f32>(x_4042.y, x_4042.y, x_4042.y) * vec3<f32>(x_4051.x, x_4051.y, x_4051.w));
        let x_4054 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4053.x, x_4053.y, x_4053.z, x_4054.w);
        let x_4056 : i32 = u_xlati86;
        let x_4058 : i32 = u_xlati86;
        let x_4061 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[(x_4056 / 4i)][(x_4058 % 4i)];
        let x_4063 : vec3<f32> = vs_INTERP7;
        let x_4066 : vec4<f32> = u_xlat11;
        let x_4068 : vec3<f32> = ((vec3<f32>(x_4061.x, x_4061.y, x_4061.w) * vec3<f32>(x_4063.x, x_4063.x, x_4063.x)) + vec3<f32>(x_4066.x, x_4066.y, x_4066.z));
        let x_4069 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4068.x, x_4068.y, x_4068.z, x_4069.w);
        let x_4071 : i32 = u_xlati86;
        let x_4074 : i32 = u_xlati86;
        let x_4078 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[((x_4071 + 2i) / 4i)][((x_4074 + 2i) % 4i)];
        let x_4080 : vec3<f32> = vs_INTERP7;
        let x_4083 : vec4<f32> = u_xlat11;
        let x_4085 : vec3<f32> = ((vec3<f32>(x_4078.x, x_4078.y, x_4078.w) * vec3<f32>(x_4080.z, x_4080.z, x_4080.z)) + vec3<f32>(x_4083.x, x_4083.y, x_4083.z));
        let x_4086 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4085.x, x_4085.y, x_4085.z, x_4086.w);
        let x_4088 : vec4<f32> = u_xlat11;
        let x_4090 : i32 = u_xlati86;
        let x_4093 : i32 = u_xlati86;
        let x_4097 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[((x_4090 + 3i) / 4i)][((x_4093 + 3i) % 4i)];
        let x_4099 : vec3<f32> = (vec3<f32>(x_4088.x, x_4088.y, x_4088.z) + vec3<f32>(x_4097.x, x_4097.y, x_4097.w));
        let x_4100 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4099.x, x_4099.y, x_4099.z, x_4100.w);
        let x_4102 : vec4<f32> = u_xlat11;
        let x_4104 : vec4<f32> = u_xlat11;
        let x_4106 : vec2<f32> = (vec2<f32>(x_4102.x, x_4102.y) / vec2<f32>(x_4104.z, x_4104.z));
        let x_4107 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4106.x, x_4106.y, x_4107.z, x_4107.w);
        let x_4109 : vec4<f32> = u_xlat11;
        let x_4112 : vec2<f32> = ((vec2<f32>(x_4109.x, x_4109.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4113 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4112.x, x_4112.y, x_4113.z, x_4113.w);
        let x_4115 : vec4<f32> = u_xlat11;
        let x_4119 : vec2<f32> = clamp(vec2<f32>(x_4115.x, x_4115.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4120 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4119.x, x_4119.y, x_4120.z, x_4120.w);
        let x_4122 : i32 = u_xlati29;
        let x_4124 : vec4<f32> = x_2142.x_AdditionalLightsCookieAtlasUVRects[x_4122];
        let x_4126 : vec4<f32> = u_xlat11;
        let x_4129 : i32 = u_xlati29;
        let x_4131 : vec4<f32> = x_2142.x_AdditionalLightsCookieAtlasUVRects[x_4129];
        let x_4133 : vec2<f32> = ((vec2<f32>(x_4124.x, x_4124.y) * vec2<f32>(x_4126.x, x_4126.y)) + vec2<f32>(x_4131.z, x_4131.w));
        let x_4134 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4133.x, x_4133.y, x_4134.z, x_4134.w);
      } else {
        let x_4137 : i32 = u_xlati59;
        u_xlatb59 = (x_4137 == 1i);
        let x_4139 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_4139);
        let x_4141 : i32 = u_xlati59;
        if ((x_4141 != 0i)) {
          let x_4145 : vec3<f32> = vs_INTERP7;
          let x_4147 : i32 = u_xlati86;
          let x_4150 : i32 = u_xlati86;
          let x_4154 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[((x_4147 + 1i) / 4i)][((x_4150 + 1i) % 4i)];
          u_xlat59 = (vec2<f32>(x_4145.y, x_4145.y) * vec2<f32>(x_4154.x, x_4154.y));
          let x_4157 : i32 = u_xlati86;
          let x_4159 : i32 = u_xlati86;
          let x_4162 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[(x_4157 / 4i)][(x_4159 % 4i)];
          let x_4164 : vec3<f32> = vs_INTERP7;
          let x_4167 : vec2<f32> = u_xlat59;
          u_xlat59 = ((vec2<f32>(x_4162.x, x_4162.y) * vec2<f32>(x_4164.x, x_4164.x)) + x_4167);
          let x_4169 : i32 = u_xlati86;
          let x_4172 : i32 = u_xlati86;
          let x_4176 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[((x_4169 + 2i) / 4i)][((x_4172 + 2i) % 4i)];
          let x_4178 : vec3<f32> = vs_INTERP7;
          let x_4181 : vec2<f32> = u_xlat59;
          u_xlat59 = ((vec2<f32>(x_4176.x, x_4176.y) * vec2<f32>(x_4178.z, x_4178.z)) + x_4181);
          let x_4183 : vec2<f32> = u_xlat59;
          let x_4184 : i32 = u_xlati86;
          let x_4187 : i32 = u_xlati86;
          let x_4191 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[((x_4184 + 3i) / 4i)][((x_4187 + 3i) % 4i)];
          u_xlat59 = (x_4183 + vec2<f32>(x_4191.x, x_4191.y));
          let x_4194 : vec2<f32> = u_xlat59;
          u_xlat59 = ((x_4194 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4197 : vec2<f32> = u_xlat59;
          u_xlat59 = fract(x_4197);
          let x_4199 : i32 = u_xlati29;
          let x_4201 : vec4<f32> = x_2142.x_AdditionalLightsCookieAtlasUVRects[x_4199];
          let x_4203 : vec2<f32> = u_xlat59;
          let x_4205 : i32 = u_xlati29;
          let x_4207 : vec4<f32> = x_2142.x_AdditionalLightsCookieAtlasUVRects[x_4205];
          let x_4209 : vec2<f32> = ((vec2<f32>(x_4201.x, x_4201.y) * x_4203) + vec2<f32>(x_4207.z, x_4207.w));
          let x_4210 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4209.x, x_4209.y, x_4210.z, x_4210.w);
        } else {
          let x_4213 : vec3<f32> = vs_INTERP7;
          let x_4215 : i32 = u_xlati86;
          let x_4218 : i32 = u_xlati86;
          let x_4222 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[((x_4215 + 1i) / 4i)][((x_4218 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4213.y, x_4213.y, x_4213.y, x_4213.y) * x_4222);
          let x_4224 : i32 = u_xlati86;
          let x_4226 : i32 = u_xlati86;
          let x_4229 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[(x_4224 / 4i)][(x_4226 % 4i)];
          let x_4230 : vec3<f32> = vs_INTERP7;
          let x_4233 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4229 * vec4<f32>(x_4230.x, x_4230.x, x_4230.x, x_4230.x)) + x_4233);
          let x_4235 : i32 = u_xlati86;
          let x_4238 : i32 = u_xlati86;
          let x_4242 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[((x_4235 + 2i) / 4i)][((x_4238 + 2i) % 4i)];
          let x_4243 : vec3<f32> = vs_INTERP7;
          let x_4246 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4242 * vec4<f32>(x_4243.z, x_4243.z, x_4243.z, x_4243.z)) + x_4246);
          let x_4248 : vec4<f32> = u_xlat12;
          let x_4249 : i32 = u_xlati86;
          let x_4252 : i32 = u_xlati86;
          let x_4256 : vec4<f32> = x_2142.x_AdditionalLightsWorldToLights[((x_4249 + 3i) / 4i)][((x_4252 + 3i) % 4i)];
          u_xlat12 = (x_4248 + x_4256);
          let x_4258 : vec4<f32> = u_xlat12;
          let x_4260 : vec4<f32> = u_xlat12;
          let x_4262 : vec3<f32> = (vec3<f32>(x_4258.x, x_4258.y, x_4258.z) / vec3<f32>(x_4260.w, x_4260.w, x_4260.w));
          let x_4263 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4262.x, x_4262.y, x_4262.z, x_4263.w);
          let x_4265 : vec4<f32> = u_xlat12;
          let x_4267 : vec4<f32> = u_xlat12;
          u_xlat59.x = dot(vec3<f32>(x_4265.x, x_4265.y, x_4265.z), vec3<f32>(x_4267.x, x_4267.y, x_4267.z));
          let x_4272 : f32 = u_xlat59.x;
          u_xlat59.x = inverseSqrt(x_4272);
          let x_4275 : vec2<f32> = u_xlat59;
          let x_4277 : vec4<f32> = u_xlat12;
          let x_4279 : vec3<f32> = (vec3<f32>(x_4275.x, x_4275.x, x_4275.x) * vec3<f32>(x_4277.x, x_4277.y, x_4277.z));
          let x_4280 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4279.x, x_4279.y, x_4279.z, x_4280.w);
          let x_4282 : vec4<f32> = u_xlat12;
          u_xlat59.x = dot(abs(vec3<f32>(x_4282.x, x_4282.y, x_4282.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4288 : f32 = u_xlat59.x;
          u_xlat59.x = max(x_4288, 0.00000099999999747524f);
          let x_4293 : f32 = u_xlat59.x;
          u_xlat59.x = (1.0f / x_4293);
          let x_4296 : vec2<f32> = u_xlat59;
          let x_4298 : vec4<f32> = u_xlat12;
          let x_4300 : vec3<f32> = (vec3<f32>(x_4296.x, x_4296.x, x_4296.x) * vec3<f32>(x_4298.z, x_4298.x, x_4298.y));
          let x_4301 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4300.x, x_4300.y, x_4300.z, x_4301.w);
          let x_4304 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4304);
          let x_4308 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4308, 0.0f, 1.0f);
          let x_4312 : vec4<f32> = u_xlat13;
          let x_4314 : vec4<bool> = (vec4<f32>(x_4312.y, x_4312.z, x_4312.y, x_4312.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4314.x, x_4314.y);
          let x_4318 : bool = u_xlatb63.x;
          if (x_4318) {
            let x_4323 : f32 = u_xlat13.x;
            x_4319 = x_4323;
          } else {
            let x_4326 : f32 = u_xlat13.x;
            x_4319 = -(x_4326);
          }
          let x_4328 : f32 = x_4319;
          u_xlat63.x = x_4328;
          let x_4331 : bool = u_xlatb63.y;
          if (x_4331) {
            let x_4336 : f32 = u_xlat13.x;
            x_4332 = x_4336;
          } else {
            let x_4339 : f32 = u_xlat13.x;
            x_4332 = -(x_4339);
          }
          let x_4341 : f32 = x_4332;
          u_xlat63.y = x_4341;
          let x_4343 : vec4<f32> = u_xlat12;
          let x_4345 : vec2<f32> = u_xlat59;
          let x_4348 : vec2<f32> = u_xlat63;
          u_xlat59 = ((vec2<f32>(x_4343.x, x_4343.y) * vec2<f32>(x_4345.x, x_4345.x)) + x_4348);
          let x_4350 : vec2<f32> = u_xlat59;
          u_xlat59 = ((x_4350 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4353 : vec2<f32> = u_xlat59;
          u_xlat59 = clamp(x_4353, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4357 : i32 = u_xlati29;
          let x_4359 : vec4<f32> = x_2142.x_AdditionalLightsCookieAtlasUVRects[x_4357];
          let x_4361 : vec2<f32> = u_xlat59;
          let x_4363 : i32 = u_xlati29;
          let x_4365 : vec4<f32> = x_2142.x_AdditionalLightsCookieAtlasUVRects[x_4363];
          let x_4367 : vec2<f32> = ((vec2<f32>(x_4359.x, x_4359.y) * x_4361) + vec2<f32>(x_4365.z, x_4365.w));
          let x_4368 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4367.x, x_4367.y, x_4368.z, x_4368.w);
        }
      }
      let x_4375 : vec4<f32> = u_xlat11;
      let x_4377 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4375.x, x_4375.y), 0.0f);
      u_xlat11 = x_4377;
      let x_4379 : bool = u_xlatb7.y;
      if (x_4379) {
        let x_4384 : f32 = u_xlat11.w;
        x_4380 = x_4384;
      } else {
        let x_4387 : f32 = u_xlat11.x;
        x_4380 = x_4387;
      }
      let x_4388 : f32 = x_4380;
      u_xlat59.x = x_4388;
      let x_4391 : bool = u_xlatb7.x;
      if (x_4391) {
        let x_4395 : vec4<f32> = u_xlat11;
        x_4392 = vec3<f32>(x_4395.x, x_4395.y, x_4395.z);
      } else {
        let x_4398 : vec2<f32> = u_xlat59;
        x_4392 = vec3<f32>(x_4398.x, x_4398.x, x_4398.x);
      }
      let x_4400 : vec3<f32> = x_4392;
      let x_4401 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4400.x, x_4400.y, x_4400.z, x_4401.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4407 : vec4<f32> = u_xlat11;
    let x_4409 : i32 = u_xlati29;
    let x_4411 : vec4<f32> = x_2588.x_AdditionalLightsColor[x_4409];
    let x_4413 : vec3<f32> = (vec3<f32>(x_4407.x, x_4407.y, x_4407.z) * vec3<f32>(x_4411.x, x_4411.y, x_4411.z));
    let x_4414 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4413.x, x_4413.y, x_4413.z, x_4414.w);
    let x_4416 : f32 = u_xlat82;
    let x_4417 : f32 = u_xlat84;
    u_xlat29.x = (x_4416 * x_4417);
    let x_4420 : vec4<f32> = u_xlat1;
    let x_4422 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4420.x, x_4420.y, x_4420.z), vec3<f32>(x_4422.x, x_4422.y, x_4422.z));
    let x_4425 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4425, 0.0f, 1.0f);
    let x_4428 : f32 = u_xlat29.x;
    let x_4429 : f32 = u_xlat82;
    u_xlat29.x = (x_4428 * x_4429);
    let x_4432 : vec3<f32> = u_xlat29;
    let x_4434 : vec4<f32> = u_xlat11;
    let x_4436 : vec3<f32> = (vec3<f32>(x_4432.x, x_4432.x, x_4432.x) * vec3<f32>(x_4434.x, x_4434.y, x_4434.z));
    let x_4437 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4436.x, x_4436.y, x_4436.z, x_4437.w);
    let x_4439 : vec3<f32> = u_xlat35;
    let x_4440 : f32 = u_xlat83;
    let x_4443 : vec3<f32> = u_xlat4;
    u_xlat35 = ((x_4439 * vec3<f32>(x_4440, x_4440, x_4440)) + x_4443);
    let x_4445 : vec3<f32> = u_xlat35;
    let x_4446 : vec3<f32> = u_xlat35;
    u_xlat29.x = dot(x_4445, x_4446);
    let x_4450 : f32 = u_xlat29.x;
    u_xlat29.x = max(x_4450, 1.17549435e-38f);
    let x_4454 : f32 = u_xlat29.x;
    u_xlat29.x = inverseSqrt(x_4454);
    let x_4457 : vec3<f32> = u_xlat29;
    let x_4459 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4457.x, x_4457.x, x_4457.x) * x_4459);
    let x_4461 : vec4<f32> = u_xlat1;
    let x_4463 : vec3<f32> = u_xlat35;
    u_xlat29.x = dot(vec3<f32>(x_4461.x, x_4461.y, x_4461.z), x_4463);
    let x_4467 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_4467, 0.0f, 1.0f);
    let x_4470 : vec4<f32> = u_xlat10;
    let x_4472 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(vec3<f32>(x_4470.x, x_4470.y, x_4470.z), x_4472);
    let x_4474 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4474, 0.0f, 1.0f);
    let x_4477 : f32 = u_xlat29.x;
    let x_4479 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4477 * x_4479);
    let x_4483 : f32 = u_xlat29.x;
    let x_4485 : f32 = u_xlat9.x;
    u_xlat29.x = ((x_4483 * x_4485) + 1.00001001358032226562f);
    let x_4489 : f32 = u_xlat82;
    let x_4490 : f32 = u_xlat82;
    u_xlat82 = (x_4489 * x_4490);
    let x_4493 : f32 = u_xlat29.x;
    let x_4495 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4493 * x_4495);
    let x_4498 : f32 = u_xlat82;
    u_xlat82 = max(x_4498, 0.10000000149011611938f);
    let x_4501 : f32 = u_xlat29.x;
    let x_4502 : f32 = u_xlat82;
    u_xlat29.x = (x_4501 * x_4502);
    let x_4505 : f32 = u_xlat28;
    let x_4507 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4505 * x_4507);
    let x_4510 : f32 = u_xlat80;
    let x_4512 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4510 / x_4512);
    let x_4515 : vec4<f32> = u_xlat0;
    let x_4517 : vec3<f32> = u_xlat29;
    let x_4520 : vec4<f32> = u_xlat6;
    u_xlat35 = ((vec3<f32>(x_4515.x, x_4515.y, x_4515.z) * vec3<f32>(x_4517.x, x_4517.x, x_4517.x)) + vec3<f32>(x_4520.x, x_4520.y, x_4520.z));
    let x_4523 : vec3<f32> = u_xlat35;
    let x_4524 : vec4<f32> = u_xlat11;
    let x_4527 : vec4<f32> = u_xlat8;
    let x_4529 : vec3<f32> = ((x_4523 * vec3<f32>(x_4524.x, x_4524.y, x_4524.z)) + vec3<f32>(x_4527.x, x_4527.y, x_4527.z));
    let x_4530 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4529.x, x_4529.y, x_4529.z, x_4530.w);

    continuing {
      let x_4532 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4532 + bitcast<u32>(1i));
    }
  }
  let x_4534 : vec4<f32> = u_xlat5;
  let x_4536 : f32 = u_xlat54;
  let x_4539 : vec4<f32> = u_xlat3;
  let x_4541 : vec3<f32> = ((vec3<f32>(x_4534.x, x_4534.y, x_4534.z) * vec3<f32>(x_4536, x_4536, x_4536)) + vec3<f32>(x_4539.x, x_4539.z, x_4539.w));
  let x_4542 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4541.x, x_4541.y, x_4541.z, x_4542.w);
  let x_4546 : vec4<f32> = u_xlat8;
  let x_4548 : vec4<f32> = u_xlat0;
  let x_4550 : vec3<f32> = (vec3<f32>(x_4546.x, x_4546.y, x_4546.z) + vec3<f32>(x_4548.x, x_4548.y, x_4548.z));
  let x_4551 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4550.x, x_4550.y, x_4550.z, x_4551.w);
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



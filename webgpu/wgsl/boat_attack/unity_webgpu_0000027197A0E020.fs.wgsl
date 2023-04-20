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

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_508 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb81 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(4) var<uniform> x_2107 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu29 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati29 : i32;

@group(1) @binding(1) var<uniform> x_2551 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb59 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_LinearClamp : sampler;

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
  var x_2058 : f32;
  var x_2174 : f32;
  var x_2185 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2681 : f32;
  var x_2690 : f32;
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
  var x_4282 : f32;
  var x_4295 : f32;
  var x_4343 : f32;
  var x_4355 : vec3<f32>;
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
  u_xlat6 = (x_527 + -(vec3<f32>(x_529.x, x_529.y, x_529.z)));
  let x_534 : vec3<f32> = vs_INTERP7;
  let x_536 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres3;
  let x_539 : vec3<f32> = (x_534 + -(vec3<f32>(x_536.x, x_536.y, x_536.z)));
  let x_540 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : vec4<f32> = u_xlat3;
  let x_544 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_542.x, x_542.y, x_542.z), vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_548 : vec4<f32> = u_xlat5;
  let x_550 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_548.x, x_548.y, x_548.z), vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_554 : vec3<f32> = u_xlat6;
  let x_555 : vec3<f32> = u_xlat6;
  u_xlat3.z = dot(x_554, x_555);
  let x_558 : vec4<f32> = u_xlat7;
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_558.x, x_558.y, x_558.z), vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_567 : vec4<f32> = u_xlat3;
  let x_569 : vec4<f32> = x_508.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_567 < x_569);
  let x_572 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_572);
  let x_576 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_576);
  let x_580 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_580);
  let x_584 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_584);
  let x_588 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_588);
  let x_593 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_593);
  let x_597 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_597);
  let x_600 : vec4<f32> = u_xlat3;
  let x_602 : vec4<f32> = u_xlat5;
  let x_604 : vec3<f32> = (vec3<f32>(x_600.x, x_600.y, x_600.z) + vec3<f32>(x_602.y, x_602.z, x_602.w));
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat3;
  let x_610 : vec3<f32> = max(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_611.x, x_610.x, x_610.y, x_610.z);
  let x_613 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(x_613, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_618 : f32 = u_xlat78;
  u_xlat78 = (-(x_618) + 4.0f);
  let x_623 : f32 = u_xlat78;
  u_xlatu78 = u32(x_623);
  let x_627 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_627) << bitcast<u32>(2i));
  let x_630 : vec3<f32> = vs_INTERP7;
  let x_632 : i32 = u_xlati78;
  let x_635 : i32 = u_xlati78;
  let x_639 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_632 + 1i) / 4i)][((x_635 + 1i) % 4i)];
  let x_641 : vec3<f32> = (vec3<f32>(x_630.y, x_630.y, x_630.y) * vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : i32 = u_xlati78;
  let x_646 : i32 = u_xlati78;
  let x_649 : vec4<f32> = x_508.x_MainLightWorldToShadow[(x_644 / 4i)][(x_646 % 4i)];
  let x_651 : vec3<f32> = vs_INTERP7;
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec3<f32> = ((vec3<f32>(x_649.x, x_649.y, x_649.z) * vec3<f32>(x_651.x, x_651.x, x_651.x)) + vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : i32 = u_xlati78;
  let x_662 : i32 = u_xlati78;
  let x_666 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_659 + 2i) / 4i)][((x_662 + 2i) % 4i)];
  let x_668 : vec3<f32> = vs_INTERP7;
  let x_671 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(x_668.z, x_668.z, x_668.z)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : i32 = u_xlati78;
  let x_681 : i32 = u_xlati78;
  let x_685 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_678 + 3i) / 4i)][((x_681 + 3i) % 4i)];
  let x_687 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.z) + vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_697 : vec2<f32> = vs_INTERP0;
  let x_699 : f32 = x_29.x_GlobalMipBias.x;
  let x_700 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_697, x_699);
  u_xlat5 = x_700;
  let x_705 : vec2<f32> = vs_INTERP0;
  let x_707 : f32 = x_29.x_GlobalMipBias.x;
  let x_708 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_705, x_707);
  u_xlat6 = vec3<f32>(x_708.x, x_708.y, x_708.z);
  let x_710 : vec4<f32> = u_xlat5;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_715 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat1;
  let x_719 : vec4<f32> = u_xlat5;
  u_xlat78 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : f32 = u_xlat78;
  u_xlat78 = (x_722 + 0.5f);
  let x_725 : f32 = u_xlat78;
  let x_727 : vec3<f32> = u_xlat6;
  let x_728 : vec3<f32> = (vec3<f32>(x_725, x_725, x_725) * x_727);
  let x_729 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_732 : f32 = u_xlat5.w;
  u_xlat78 = max(x_732, 0.00009999999747378752f);
  let x_735 : vec4<f32> = u_xlat5;
  let x_737 : f32 = u_xlat78;
  let x_739 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) / vec3<f32>(x_737, x_737, x_737));
  let x_740 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat2;
  let x_743 : vec2<f32> = vec2<f32>(x_742.x, x_742.y);
  let x_744 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
  let x_746 : vec4<f32> = u_xlat2;
  let x_750 : vec2<f32> = clamp(vec2<f32>(x_746.x, x_746.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_751 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
  let x_754 : f32 = u_xlat2.x;
  u_xlat78 = ((-(x_754) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_759 : f32 = u_xlat78;
  let x_762 : f32 = u_xlat2.y;
  u_xlat79 = (-(x_759) + x_762);
  let x_764 : f32 = u_xlat78;
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_764, x_764, x_764) * vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat0;
  let x_773 : vec3<f32> = (vec3<f32>(x_769.x, x_769.y, x_769.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat2;
  let x_778 : vec4<f32> = u_xlat0;
  let x_783 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.x, x_776.x) * vec3<f32>(x_778.x, x_778.y, x_778.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_784 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_787 : f32 = u_xlat2.y;
  u_xlat78 = (-(x_787) + 1.0f);
  let x_790 : f32 = u_xlat78;
  let x_791 : f32 = u_xlat78;
  u_xlat2.x = (x_790 * x_791);
  let x_795 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_795, 0.0078125f);
  let x_801 : f32 = u_xlat2.x;
  let x_803 : f32 = u_xlat2.x;
  u_xlat28 = (x_801 * x_803);
  let x_805 : f32 = u_xlat79;
  u_xlat79 = (x_805 + 1.0f);
  let x_807 : f32 = u_xlat79;
  u_xlat79 = min(x_807, 1.0f);
  let x_811 : f32 = u_xlat2.x;
  u_xlat80 = ((x_811 * 4.0f) + 2.0f);
  let x_816 : f32 = u_xlat2.z;
  u_xlat54 = min(x_816, 1.0f);
  let x_821 : f32 = x_508.x_MainLightShadowParams.y;
  u_xlatb81 = (0.0f < x_821);
  let x_823 : bool = u_xlatb81;
  if (x_823) {
    let x_827 : f32 = x_508.x_MainLightShadowParams.y;
    u_xlatb81 = (x_827 == 1.0f);
    let x_829 : bool = u_xlatb81;
    if (x_829) {
      let x_832 : vec4<f32> = u_xlat3;
      let x_835 : vec4<f32> = x_508.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_832.x, x_832.y, x_832.x, x_832.y) + x_835);
      let x_839 : vec4<f32> = u_xlat7;
      let x_840 : vec2<f32> = vec2<f32>(x_839.x, x_839.y);
      let x_842 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_840.x, x_840.y, x_842);
      let x_855 : vec3<f32> = txVec0;
      let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_855.xy, x_855.z);
      u_xlat8.x = x_857;
      let x_860 : vec4<f32> = u_xlat7;
      let x_861 : vec2<f32> = vec2<f32>(x_860.z, x_860.w);
      let x_863 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_861.x, x_861.y, x_863);
      let x_870 : vec3<f32> = txVec1;
      let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_870.xy, x_870.z);
      u_xlat8.y = x_872;
      let x_874 : vec4<f32> = u_xlat3;
      let x_878 : vec4<f32> = x_508.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_874.x, x_874.y, x_874.x, x_874.y) + x_878);
      let x_881 : vec4<f32> = u_xlat7;
      let x_882 : vec2<f32> = vec2<f32>(x_881.x, x_881.y);
      let x_884 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_882.x, x_882.y, x_884);
      let x_891 : vec3<f32> = txVec2;
      let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_891.xy, x_891.z);
      u_xlat8.z = x_893;
      let x_896 : vec4<f32> = u_xlat7;
      let x_897 : vec2<f32> = vec2<f32>(x_896.z, x_896.w);
      let x_899 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_897.x, x_897.y, x_899);
      let x_906 : vec3<f32> = txVec3;
      let x_908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_906.xy, x_906.z);
      u_xlat8.w = x_908;
      let x_911 : vec4<f32> = u_xlat8;
      u_xlat81 = dot(x_911, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_918 : f32 = x_508.x_MainLightShadowParams.y;
      u_xlatb82 = (x_918 == 2.0f);
      let x_920 : bool = u_xlatb82;
      if (x_920) {
        let x_923 : vec4<f32> = u_xlat3;
        let x_927 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_931 : vec2<f32> = ((vec2<f32>(x_923.x, x_923.y) * vec2<f32>(x_927.z, x_927.w)) + vec2<f32>(0.5f, 0.5f));
        let x_932 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
        let x_934 : vec4<f32> = u_xlat7;
        let x_936 : vec2<f32> = floor(vec2<f32>(x_934.x, x_934.y));
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_940 : vec4<f32> = u_xlat3;
        let x_943 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_946 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_940.x, x_940.y) * vec2<f32>(x_943.z, x_943.w)) + -(vec2<f32>(x_946.x, x_946.y)));
        let x_950 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_950.x, x_950.x, x_950.y, x_950.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_955 : vec4<f32> = u_xlat8;
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_955.x, x_955.x, x_955.z, x_955.z) * vec4<f32>(x_957.x, x_957.x, x_957.z, x_957.z));
        let x_960 : vec4<f32> = u_xlat9;
        let x_964 : vec2<f32> = (vec2<f32>(x_960.y, x_960.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_965 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_964.x, x_965.y, x_964.y, x_965.w);
        let x_967 : vec4<f32> = u_xlat9;
        let x_970 : vec2<f32> = u_xlat59;
        let x_972 : vec2<f32> = ((vec2<f32>(x_967.x, x_967.z) * vec2<f32>(0.5f, 0.5f)) + -(x_970));
        let x_973 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_972.x, x_972.y, x_973.z, x_973.w);
        let x_976 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_976) + vec2<f32>(1.0f, 1.0f));
        let x_981 : vec2<f32> = u_xlat59;
        let x_983 : vec2<f32> = min(x_981, vec2<f32>(0.0f, 0.0f));
        let x_984 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_983.x, x_983.y, x_984.z, x_984.w);
        let x_986 : vec4<f32> = u_xlat10;
        let x_989 : vec4<f32> = u_xlat10;
        let x_992 : vec2<f32> = u_xlat61;
        let x_993 : vec2<f32> = ((-(vec2<f32>(x_986.x, x_986.y)) * vec2<f32>(x_989.x, x_989.y)) + x_992);
        let x_994 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_993.x, x_993.y, x_994.z, x_994.w);
        let x_996 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_996, vec2<f32>(0.0f, 0.0f));
        let x_998 : vec2<f32> = u_xlat59;
        let x_1000 : vec2<f32> = u_xlat59;
        let x_1002 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_998) * x_1000) + vec2<f32>(x_1002.y, x_1002.w));
        let x_1005 : vec4<f32> = u_xlat10;
        let x_1007 : vec2<f32> = (vec2<f32>(x_1005.x, x_1005.y) + vec2<f32>(1.0f, 1.0f));
        let x_1008 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
        let x_1010 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_1010 + vec2<f32>(1.0f, 1.0f));
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1017 : vec2<f32> = (vec2<f32>(x_1013.x, x_1013.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1018 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1017.x, x_1017.y, x_1018.z, x_1018.w);
        let x_1020 : vec2<f32> = u_xlat61;
        let x_1021 : vec2<f32> = (x_1020 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1022 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1021.x, x_1021.y, x_1022.z, x_1022.w);
        let x_1024 : vec4<f32> = u_xlat10;
        let x_1026 : vec2<f32> = (vec2<f32>(x_1024.x, x_1024.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1027 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1026.x, x_1026.y, x_1027.z, x_1027.w);
        let x_1030 : vec2<f32> = u_xlat59;
        let x_1031 : vec2<f32> = (x_1030 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1032 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1031.x, x_1031.y, x_1032.z, x_1032.w);
        let x_1034 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_1034.y, x_1034.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_1038 : f32 = u_xlat10.x;
        u_xlat11.z = x_1038;
        let x_1041 : f32 = u_xlat59.x;
        u_xlat11.w = x_1041;
        let x_1044 : f32 = u_xlat12.x;
        u_xlat9.z = x_1044;
        let x_1047 : f32 = u_xlat8.x;
        u_xlat9.w = x_1047;
        let x_1050 : vec4<f32> = u_xlat9;
        let x_1052 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1050.z, x_1050.w, x_1050.x, x_1050.z) + vec4<f32>(x_1052.z, x_1052.w, x_1052.x, x_1052.z));
        let x_1056 : f32 = u_xlat11.y;
        u_xlat10.z = x_1056;
        let x_1059 : f32 = u_xlat59.y;
        u_xlat10.w = x_1059;
        let x_1062 : f32 = u_xlat9.y;
        u_xlat12.z = x_1062;
        let x_1065 : f32 = u_xlat8.z;
        u_xlat12.w = x_1065;
        let x_1067 : vec4<f32> = u_xlat10;
        let x_1069 : vec4<f32> = u_xlat12;
        let x_1071 : vec3<f32> = (vec3<f32>(x_1067.z, x_1067.y, x_1067.w) + vec3<f32>(x_1069.z, x_1069.y, x_1069.w));
        let x_1072 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
        let x_1074 : vec4<f32> = u_xlat9;
        let x_1076 : vec4<f32> = u_xlat13;
        let x_1078 : vec3<f32> = (vec3<f32>(x_1074.x, x_1074.z, x_1074.w) / vec3<f32>(x_1076.z, x_1076.w, x_1076.y));
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1086 : vec3<f32> = (vec3<f32>(x_1081.x, x_1081.y, x_1081.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1087 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
        let x_1089 : vec4<f32> = u_xlat12;
        let x_1091 : vec4<f32> = u_xlat8;
        let x_1093 : vec3<f32> = (vec3<f32>(x_1089.z, x_1089.y, x_1089.w) / vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
        let x_1094 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
        let x_1096 : vec4<f32> = u_xlat10;
        let x_1098 : vec3<f32> = (vec3<f32>(x_1096.x, x_1096.y, x_1096.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1099 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
        let x_1101 : vec4<f32> = u_xlat9;
        let x_1104 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1106 : vec3<f32> = (vec3<f32>(x_1101.y, x_1101.x, x_1101.z) * vec3<f32>(x_1104.x, x_1104.x, x_1104.x));
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
        let x_1109 : vec4<f32> = u_xlat10;
        let x_1112 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1114 : vec3<f32> = (vec3<f32>(x_1109.x, x_1109.y, x_1109.z) * vec3<f32>(x_1112.y, x_1112.y, x_1112.y));
        let x_1115 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
        let x_1118 : f32 = u_xlat10.x;
        u_xlat9.w = x_1118;
        let x_1120 : vec4<f32> = u_xlat7;
        let x_1123 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1126 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1120.x, x_1120.y, x_1120.x, x_1120.y) * vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y)) + vec4<f32>(x_1126.y, x_1126.w, x_1126.x, x_1126.w));
        let x_1129 : vec4<f32> = u_xlat7;
        let x_1132 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.x, x_1132.y)) + vec2<f32>(x_1135.z, x_1135.w));
        let x_1139 : f32 = u_xlat9.y;
        u_xlat10.w = x_1139;
        let x_1141 : vec4<f32> = u_xlat10;
        let x_1142 : vec2<f32> = vec2<f32>(x_1141.y, x_1141.z);
        let x_1143 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1143.x, x_1142.x, x_1143.z, x_1142.y);
        let x_1145 : vec4<f32> = u_xlat7;
        let x_1148 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y) * vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y)) + vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat7;
        let x_1157 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y) * vec4<f32>(x_1157.x, x_1157.y, x_1157.x, x_1157.y)) + vec4<f32>(x_1160.w, x_1160.y, x_1160.w, x_1160.z));
        let x_1163 : vec4<f32> = u_xlat7;
        let x_1166 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1163.x, x_1163.y, x_1163.x, x_1163.y) * vec4<f32>(x_1166.x, x_1166.y, x_1166.x, x_1166.y)) + vec4<f32>(x_1169.x, x_1169.w, x_1169.z, x_1169.w));
        let x_1173 : vec4<f32> = u_xlat8;
        let x_1175 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1173.x, x_1173.x, x_1173.x, x_1173.y) * vec4<f32>(x_1175.z, x_1175.w, x_1175.y, x_1175.z));
        let x_1179 : vec4<f32> = u_xlat8;
        let x_1181 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1179.y, x_1179.y, x_1179.z, x_1179.z) * x_1181);
        let x_1185 : f32 = u_xlat8.z;
        let x_1187 : f32 = u_xlat13.y;
        u_xlat82 = (x_1185 * x_1187);
        let x_1190 : vec4<f32> = u_xlat11;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.x, x_1190.y);
        let x_1193 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1201 : vec3<f32> = txVec4;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat83 = x_1203;
        let x_1205 : vec4<f32> = u_xlat11;
        let x_1206 : vec2<f32> = vec2<f32>(x_1205.z, x_1205.w);
        let x_1208 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1206.x, x_1206.y, x_1208);
        let x_1216 : vec3<f32> = txVec5;
        let x_1218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1216.xy, x_1216.z);
        u_xlat84 = x_1218;
        let x_1219 : f32 = u_xlat84;
        let x_1221 : f32 = u_xlat14.y;
        u_xlat84 = (x_1219 * x_1221);
        let x_1224 : f32 = u_xlat14.x;
        let x_1225 : f32 = u_xlat83;
        let x_1227 : f32 = u_xlat84;
        u_xlat83 = ((x_1224 * x_1225) + x_1227);
        let x_1230 : vec2<f32> = u_xlat59;
        let x_1232 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec6;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1239.xy, x_1239.z);
        u_xlat84 = x_1241;
        let x_1243 : f32 = u_xlat14.z;
        let x_1244 : f32 = u_xlat84;
        let x_1246 : f32 = u_xlat83;
        u_xlat83 = ((x_1243 * x_1244) + x_1246);
        let x_1249 : vec4<f32> = u_xlat10;
        let x_1250 : vec2<f32> = vec2<f32>(x_1249.x, x_1249.y);
        let x_1252 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1250.x, x_1250.y, x_1252);
        let x_1259 : vec3<f32> = txVec7;
        let x_1261 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1259.xy, x_1259.z);
        u_xlat84 = x_1261;
        let x_1263 : f32 = u_xlat14.w;
        let x_1264 : f32 = u_xlat84;
        let x_1266 : f32 = u_xlat83;
        u_xlat83 = ((x_1263 * x_1264) + x_1266);
        let x_1269 : vec4<f32> = u_xlat12;
        let x_1270 : vec2<f32> = vec2<f32>(x_1269.x, x_1269.y);
        let x_1272 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1270.x, x_1270.y, x_1272);
        let x_1279 : vec3<f32> = txVec8;
        let x_1281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1279.xy, x_1279.z);
        u_xlat84 = x_1281;
        let x_1283 : f32 = u_xlat15.x;
        let x_1284 : f32 = u_xlat84;
        let x_1286 : f32 = u_xlat83;
        u_xlat83 = ((x_1283 * x_1284) + x_1286);
        let x_1289 : vec4<f32> = u_xlat12;
        let x_1290 : vec2<f32> = vec2<f32>(x_1289.z, x_1289.w);
        let x_1292 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1290.x, x_1290.y, x_1292);
        let x_1299 : vec3<f32> = txVec9;
        let x_1301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1299.xy, x_1299.z);
        u_xlat84 = x_1301;
        let x_1303 : f32 = u_xlat15.y;
        let x_1304 : f32 = u_xlat84;
        let x_1306 : f32 = u_xlat83;
        u_xlat83 = ((x_1303 * x_1304) + x_1306);
        let x_1309 : vec4<f32> = u_xlat10;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.z, x_1309.w);
        let x_1312 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec10;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1319.xy, x_1319.z);
        u_xlat84 = x_1321;
        let x_1323 : f32 = u_xlat15.z;
        let x_1324 : f32 = u_xlat84;
        let x_1326 : f32 = u_xlat83;
        u_xlat83 = ((x_1323 * x_1324) + x_1326);
        let x_1329 : vec4<f32> = u_xlat9;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.x, x_1329.y);
        let x_1332 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1339 : vec3<f32> = txVec11;
        let x_1341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1339.xy, x_1339.z);
        u_xlat84 = x_1341;
        let x_1343 : f32 = u_xlat15.w;
        let x_1344 : f32 = u_xlat84;
        let x_1346 : f32 = u_xlat83;
        u_xlat83 = ((x_1343 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat9;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.z, x_1349.w);
        let x_1352 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec12;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1359.xy, x_1359.z);
        u_xlat84 = x_1361;
        let x_1362 : f32 = u_xlat82;
        let x_1363 : f32 = u_xlat84;
        let x_1365 : f32 = u_xlat83;
        u_xlat81 = ((x_1362 * x_1363) + x_1365);
      } else {
        let x_1368 : vec4<f32> = u_xlat3;
        let x_1371 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1374 : vec2<f32> = ((vec2<f32>(x_1368.x, x_1368.y) * vec2<f32>(x_1371.z, x_1371.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1375 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1374.x, x_1374.y, x_1375.z, x_1375.w);
        let x_1377 : vec4<f32> = u_xlat7;
        let x_1379 : vec2<f32> = floor(vec2<f32>(x_1377.x, x_1377.y));
        let x_1380 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1379.x, x_1379.y, x_1380.z, x_1380.w);
        let x_1382 : vec4<f32> = u_xlat3;
        let x_1385 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(x_1385.z, x_1385.w)) + -(vec2<f32>(x_1388.x, x_1388.y)));
        let x_1392 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1392.x, x_1392.x, x_1392.y, x_1392.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1395 : vec4<f32> = u_xlat8;
        let x_1397 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1395.x, x_1395.x, x_1395.z, x_1395.z) * vec4<f32>(x_1397.x, x_1397.x, x_1397.z, x_1397.z));
        let x_1400 : vec4<f32> = u_xlat9;
        let x_1404 : vec2<f32> = (vec2<f32>(x_1400.y, x_1400.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1405 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1405.x, x_1404.x, x_1405.z, x_1404.y);
        let x_1407 : vec4<f32> = u_xlat9;
        let x_1410 : vec2<f32> = u_xlat59;
        let x_1412 : vec2<f32> = ((vec2<f32>(x_1407.x, x_1407.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1410));
        let x_1413 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1412.x, x_1413.y, x_1412.y, x_1413.w);
        let x_1415 : vec2<f32> = u_xlat59;
        let x_1417 : vec2<f32> = (-(x_1415) + vec2<f32>(1.0f, 1.0f));
        let x_1418 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1417.x, x_1417.y, x_1418.z, x_1418.w);
        let x_1420 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1420, vec2<f32>(0.0f, 0.0f));
        let x_1422 : vec2<f32> = u_xlat61;
        let x_1424 : vec2<f32> = u_xlat61;
        let x_1426 : vec4<f32> = u_xlat9;
        let x_1428 : vec2<f32> = ((-(x_1422) * x_1424) + vec2<f32>(x_1426.x, x_1426.y));
        let x_1429 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1428.x, x_1428.y, x_1429.z, x_1429.w);
        let x_1431 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1431, vec2<f32>(0.0f, 0.0f));
        let x_1434 : vec2<f32> = u_xlat61;
        let x_1436 : vec2<f32> = u_xlat61;
        let x_1438 : vec4<f32> = u_xlat8;
        let x_1440 : vec2<f32> = ((-(x_1434) * x_1436) + vec2<f32>(x_1438.y, x_1438.w));
        let x_1441 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1440.x, x_1441.y, x_1440.y);
        let x_1443 : vec4<f32> = u_xlat9;
        let x_1445 : vec2<f32> = (vec2<f32>(x_1443.x, x_1443.y) + vec2<f32>(2.0f, 2.0f));
        let x_1446 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1445.x, x_1445.y, x_1446.z, x_1446.w);
        let x_1448 : vec3<f32> = u_xlat34;
        let x_1450 : vec2<f32> = (vec2<f32>(x_1448.x, x_1448.z) + vec2<f32>(2.0f, 2.0f));
        let x_1451 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1451.x, x_1450.x, x_1451.z, x_1450.y);
        let x_1454 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1454 * 0.08163200318813323975f);
        let x_1458 : vec4<f32> = u_xlat8;
        let x_1461 : vec3<f32> = (vec3<f32>(x_1458.z, x_1458.x, x_1458.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1462 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
        let x_1464 : vec4<f32> = u_xlat9;
        let x_1467 : vec2<f32> = (vec2<f32>(x_1464.x, x_1464.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1468 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1467.x, x_1467.y, x_1468.z, x_1468.w);
        let x_1471 : f32 = u_xlat12.y;
        u_xlat11.x = x_1471;
        let x_1473 : vec2<f32> = u_xlat59;
        let x_1480 : vec2<f32> = ((vec2<f32>(x_1473.x, x_1473.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1481 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1481.x, x_1480.x, x_1481.z, x_1480.y);
        let x_1483 : vec2<f32> = u_xlat59;
        let x_1487 : vec2<f32> = ((vec2<f32>(x_1483.x, x_1483.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1488 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1487.x, x_1488.y, x_1487.y, x_1488.w);
        let x_1491 : f32 = u_xlat8.x;
        u_xlat9.y = x_1491;
        let x_1494 : f32 = u_xlat10.y;
        u_xlat9.w = x_1494;
        let x_1496 : vec4<f32> = u_xlat9;
        let x_1497 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1496 + x_1497);
        let x_1499 : vec2<f32> = u_xlat59;
        let x_1502 : vec2<f32> = ((vec2<f32>(x_1499.y, x_1499.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1503 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1503.x, x_1502.x, x_1503.z, x_1502.y);
        let x_1505 : vec2<f32> = u_xlat59;
        let x_1508 : vec2<f32> = ((vec2<f32>(x_1505.y, x_1505.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1509 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1508.x, x_1509.y, x_1508.y, x_1509.w);
        let x_1512 : f32 = u_xlat8.y;
        u_xlat10.y = x_1512;
        let x_1514 : vec4<f32> = u_xlat10;
        let x_1515 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1514 + x_1515);
        let x_1517 : vec4<f32> = u_xlat9;
        let x_1518 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1517 / x_1518);
        let x_1520 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1520 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1526 : vec4<f32> = u_xlat10;
        let x_1527 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1526 / x_1527);
        let x_1529 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1529 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1531 : vec4<f32> = u_xlat9;
        let x_1534 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1531.w, x_1531.x, x_1531.y, x_1531.z) * vec4<f32>(x_1534.x, x_1534.x, x_1534.x, x_1534.x));
        let x_1537 : vec4<f32> = u_xlat10;
        let x_1540 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1537.x, x_1537.w, x_1537.y, x_1537.z) * vec4<f32>(x_1540.y, x_1540.y, x_1540.y, x_1540.y));
        let x_1543 : vec4<f32> = u_xlat9;
        let x_1544 : vec3<f32> = vec3<f32>(x_1543.y, x_1543.z, x_1543.w);
        let x_1545 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1544.x, x_1545.y, x_1544.y, x_1544.z);
        let x_1548 : f32 = u_xlat10.x;
        u_xlat12.y = x_1548;
        let x_1550 : vec4<f32> = u_xlat7;
        let x_1553 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1556 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y) * vec4<f32>(x_1553.x, x_1553.y, x_1553.x, x_1553.y)) + vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1556.y));
        let x_1559 : vec4<f32> = u_xlat7;
        let x_1562 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1565 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(x_1562.x, x_1562.y)) + vec2<f32>(x_1565.w, x_1565.y));
        let x_1569 : f32 = u_xlat12.y;
        u_xlat9.y = x_1569;
        let x_1572 : f32 = u_xlat10.z;
        u_xlat12.y = x_1572;
        let x_1574 : vec4<f32> = u_xlat7;
        let x_1577 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1580 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1574.x, x_1574.y, x_1574.x, x_1574.y) * vec4<f32>(x_1577.x, x_1577.y, x_1577.x, x_1577.y)) + vec4<f32>(x_1580.x, x_1580.y, x_1580.z, x_1580.y));
        let x_1583 : vec4<f32> = u_xlat7;
        let x_1586 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1589 : vec4<f32> = u_xlat12;
        let x_1591 : vec2<f32> = ((vec2<f32>(x_1583.x, x_1583.y) * vec2<f32>(x_1586.x, x_1586.y)) + vec2<f32>(x_1589.w, x_1589.y));
        let x_1592 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1591.x, x_1591.y, x_1592.z, x_1592.w);
        let x_1595 : f32 = u_xlat12.y;
        u_xlat9.z = x_1595;
        let x_1598 : vec4<f32> = u_xlat7;
        let x_1601 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1604 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1598.x, x_1598.y, x_1598.x, x_1598.y) * vec4<f32>(x_1601.x, x_1601.y, x_1601.x, x_1601.y)) + vec4<f32>(x_1604.x, x_1604.y, x_1604.x, x_1604.z));
        let x_1608 : f32 = u_xlat10.w;
        u_xlat12.y = x_1608;
        let x_1611 : vec4<f32> = u_xlat7;
        let x_1614 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1617 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1611.x, x_1611.y, x_1611.x, x_1611.y) * vec4<f32>(x_1614.x, x_1614.y, x_1614.x, x_1614.y)) + vec4<f32>(x_1617.x, x_1617.y, x_1617.z, x_1617.y));
        let x_1621 : vec4<f32> = u_xlat7;
        let x_1624 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1627 : vec4<f32> = u_xlat12;
        let x_1629 : vec2<f32> = ((vec2<f32>(x_1621.x, x_1621.y) * vec2<f32>(x_1624.x, x_1624.y)) + vec2<f32>(x_1627.w, x_1627.y));
        let x_1630 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1629.x, x_1629.y, x_1630.z);
        let x_1633 : f32 = u_xlat12.y;
        u_xlat9.w = x_1633;
        let x_1636 : vec4<f32> = u_xlat7;
        let x_1639 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1642 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1636.x, x_1636.y) * vec2<f32>(x_1639.x, x_1639.y)) + vec2<f32>(x_1642.x, x_1642.w));
        let x_1645 : vec4<f32> = u_xlat12;
        let x_1646 : vec3<f32> = vec3<f32>(x_1645.x, x_1645.z, x_1645.w);
        let x_1647 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1646.x, x_1647.y, x_1646.y, x_1646.z);
        let x_1649 : vec4<f32> = u_xlat7;
        let x_1652 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1655 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1649.x, x_1649.y, x_1649.x, x_1649.y) * vec4<f32>(x_1652.x, x_1652.y, x_1652.x, x_1652.y)) + vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1655.y));
        let x_1659 : vec4<f32> = u_xlat7;
        let x_1662 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1665 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1659.x, x_1659.y) * vec2<f32>(x_1662.x, x_1662.y)) + vec2<f32>(x_1665.w, x_1665.y));
        let x_1669 : f32 = u_xlat9.x;
        u_xlat10.x = x_1669;
        let x_1671 : vec4<f32> = u_xlat7;
        let x_1674 : vec4<f32> = x_508.x_MainLightShadowmapSize;
        let x_1677 : vec4<f32> = u_xlat10;
        let x_1679 : vec2<f32> = ((vec2<f32>(x_1671.x, x_1671.y) * vec2<f32>(x_1674.x, x_1674.y)) + vec2<f32>(x_1677.x, x_1677.y));
        let x_1680 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1679.x, x_1679.y, x_1680.z, x_1680.w);
        let x_1683 : vec4<f32> = u_xlat8;
        let x_1685 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1683.x, x_1683.x, x_1683.x, x_1683.x) * x_1685);
        let x_1688 : vec4<f32> = u_xlat8;
        let x_1690 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1688.y, x_1688.y, x_1688.y, x_1688.y) * x_1690);
        let x_1693 : vec4<f32> = u_xlat8;
        let x_1695 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1693.z, x_1693.z, x_1693.z, x_1693.z) * x_1695);
        let x_1697 : vec4<f32> = u_xlat8;
        let x_1699 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1697.w, x_1697.w, x_1697.w, x_1697.w) * x_1699);
        let x_1702 : vec4<f32> = u_xlat13;
        let x_1703 : vec2<f32> = vec2<f32>(x_1702.x, x_1702.y);
        let x_1705 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1703.x, x_1703.y, x_1705);
        let x_1712 : vec3<f32> = txVec13;
        let x_1714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1712.xy, x_1712.z);
        u_xlat82 = x_1714;
        let x_1716 : vec4<f32> = u_xlat13;
        let x_1717 : vec2<f32> = vec2<f32>(x_1716.z, x_1716.w);
        let x_1719 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec14;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1726.xy, x_1726.z);
        u_xlat83 = x_1728;
        let x_1729 : f32 = u_xlat83;
        let x_1731 : f32 = u_xlat18.y;
        u_xlat83 = (x_1729 * x_1731);
        let x_1734 : f32 = u_xlat18.x;
        let x_1735 : f32 = u_xlat82;
        let x_1737 : f32 = u_xlat83;
        u_xlat82 = ((x_1734 * x_1735) + x_1737);
        let x_1740 : vec2<f32> = u_xlat59;
        let x_1742 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1740.x, x_1740.y, x_1742);
        let x_1749 : vec3<f32> = txVec15;
        let x_1751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1749.xy, x_1749.z);
        u_xlat83 = x_1751;
        let x_1753 : f32 = u_xlat18.z;
        let x_1754 : f32 = u_xlat83;
        let x_1756 : f32 = u_xlat82;
        u_xlat82 = ((x_1753 * x_1754) + x_1756);
        let x_1759 : vec4<f32> = u_xlat16;
        let x_1760 : vec2<f32> = vec2<f32>(x_1759.x, x_1759.y);
        let x_1762 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1760.x, x_1760.y, x_1762);
        let x_1769 : vec3<f32> = txVec16;
        let x_1771 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1769.xy, x_1769.z);
        u_xlat83 = x_1771;
        let x_1773 : f32 = u_xlat18.w;
        let x_1774 : f32 = u_xlat83;
        let x_1776 : f32 = u_xlat82;
        u_xlat82 = ((x_1773 * x_1774) + x_1776);
        let x_1779 : vec4<f32> = u_xlat14;
        let x_1780 : vec2<f32> = vec2<f32>(x_1779.x, x_1779.y);
        let x_1782 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1780.x, x_1780.y, x_1782);
        let x_1789 : vec3<f32> = txVec17;
        let x_1791 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1789.xy, x_1789.z);
        u_xlat83 = x_1791;
        let x_1793 : f32 = u_xlat19.x;
        let x_1794 : f32 = u_xlat83;
        let x_1796 : f32 = u_xlat82;
        u_xlat82 = ((x_1793 * x_1794) + x_1796);
        let x_1799 : vec4<f32> = u_xlat14;
        let x_1800 : vec2<f32> = vec2<f32>(x_1799.z, x_1799.w);
        let x_1802 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1800.x, x_1800.y, x_1802);
        let x_1809 : vec3<f32> = txVec18;
        let x_1811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1809.xy, x_1809.z);
        u_xlat83 = x_1811;
        let x_1813 : f32 = u_xlat19.y;
        let x_1814 : f32 = u_xlat83;
        let x_1816 : f32 = u_xlat82;
        u_xlat82 = ((x_1813 * x_1814) + x_1816);
        let x_1819 : vec4<f32> = u_xlat15;
        let x_1820 : vec2<f32> = vec2<f32>(x_1819.x, x_1819.y);
        let x_1822 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1820.x, x_1820.y, x_1822);
        let x_1829 : vec3<f32> = txVec19;
        let x_1831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1829.xy, x_1829.z);
        u_xlat83 = x_1831;
        let x_1833 : f32 = u_xlat19.z;
        let x_1834 : f32 = u_xlat83;
        let x_1836 : f32 = u_xlat82;
        u_xlat82 = ((x_1833 * x_1834) + x_1836);
        let x_1839 : vec4<f32> = u_xlat16;
        let x_1840 : vec2<f32> = vec2<f32>(x_1839.z, x_1839.w);
        let x_1842 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1840.x, x_1840.y, x_1842);
        let x_1849 : vec3<f32> = txVec20;
        let x_1851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1849.xy, x_1849.z);
        u_xlat83 = x_1851;
        let x_1853 : f32 = u_xlat19.w;
        let x_1854 : f32 = u_xlat83;
        let x_1856 : f32 = u_xlat82;
        u_xlat82 = ((x_1853 * x_1854) + x_1856);
        let x_1859 : vec4<f32> = u_xlat17;
        let x_1860 : vec2<f32> = vec2<f32>(x_1859.x, x_1859.y);
        let x_1862 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1860.x, x_1860.y, x_1862);
        let x_1869 : vec3<f32> = txVec21;
        let x_1871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1869.xy, x_1869.z);
        u_xlat83 = x_1871;
        let x_1873 : f32 = u_xlat20.x;
        let x_1874 : f32 = u_xlat83;
        let x_1876 : f32 = u_xlat82;
        u_xlat82 = ((x_1873 * x_1874) + x_1876);
        let x_1879 : vec4<f32> = u_xlat17;
        let x_1880 : vec2<f32> = vec2<f32>(x_1879.z, x_1879.w);
        let x_1882 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1880.x, x_1880.y, x_1882);
        let x_1889 : vec3<f32> = txVec22;
        let x_1891 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1889.xy, x_1889.z);
        u_xlat83 = x_1891;
        let x_1893 : f32 = u_xlat20.y;
        let x_1894 : f32 = u_xlat83;
        let x_1896 : f32 = u_xlat82;
        u_xlat82 = ((x_1893 * x_1894) + x_1896);
        let x_1899 : vec3<f32> = u_xlat35;
        let x_1900 : vec2<f32> = vec2<f32>(x_1899.x, x_1899.y);
        let x_1902 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1900.x, x_1900.y, x_1902);
        let x_1909 : vec3<f32> = txVec23;
        let x_1911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1909.xy, x_1909.z);
        u_xlat83 = x_1911;
        let x_1913 : f32 = u_xlat20.z;
        let x_1914 : f32 = u_xlat83;
        let x_1916 : f32 = u_xlat82;
        u_xlat82 = ((x_1913 * x_1914) + x_1916);
        let x_1919 : vec2<f32> = u_xlat67;
        let x_1921 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1919.x, x_1919.y, x_1921);
        let x_1928 : vec3<f32> = txVec24;
        let x_1930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1928.xy, x_1928.z);
        u_xlat83 = x_1930;
        let x_1932 : f32 = u_xlat20.w;
        let x_1933 : f32 = u_xlat83;
        let x_1935 : f32 = u_xlat82;
        u_xlat82 = ((x_1932 * x_1933) + x_1935);
        let x_1938 : vec4<f32> = u_xlat12;
        let x_1939 : vec2<f32> = vec2<f32>(x_1938.x, x_1938.y);
        let x_1941 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1939.x, x_1939.y, x_1941);
        let x_1948 : vec3<f32> = txVec25;
        let x_1950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1948.xy, x_1948.z);
        u_xlat83 = x_1950;
        let x_1952 : f32 = u_xlat8.x;
        let x_1953 : f32 = u_xlat83;
        let x_1955 : f32 = u_xlat82;
        u_xlat82 = ((x_1952 * x_1953) + x_1955);
        let x_1958 : vec4<f32> = u_xlat12;
        let x_1959 : vec2<f32> = vec2<f32>(x_1958.z, x_1958.w);
        let x_1961 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1959.x, x_1959.y, x_1961);
        let x_1968 : vec3<f32> = txVec26;
        let x_1970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1968.xy, x_1968.z);
        u_xlat83 = x_1970;
        let x_1972 : f32 = u_xlat8.y;
        let x_1973 : f32 = u_xlat83;
        let x_1975 : f32 = u_xlat82;
        u_xlat82 = ((x_1972 * x_1973) + x_1975);
        let x_1978 : vec2<f32> = u_xlat62;
        let x_1980 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1978.x, x_1978.y, x_1980);
        let x_1987 : vec3<f32> = txVec27;
        let x_1989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1987.xy, x_1987.z);
        u_xlat83 = x_1989;
        let x_1991 : f32 = u_xlat8.z;
        let x_1992 : f32 = u_xlat83;
        let x_1994 : f32 = u_xlat82;
        u_xlat82 = ((x_1991 * x_1992) + x_1994);
        let x_1997 : vec4<f32> = u_xlat7;
        let x_1998 : vec2<f32> = vec2<f32>(x_1997.x, x_1997.y);
        let x_2000 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1998.x, x_1998.y, x_2000);
        let x_2007 : vec3<f32> = txVec28;
        let x_2009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2007.xy, x_2007.z);
        u_xlat83 = x_2009;
        let x_2011 : f32 = u_xlat8.w;
        let x_2012 : f32 = u_xlat83;
        let x_2014 : f32 = u_xlat82;
        u_xlat81 = ((x_2011 * x_2012) + x_2014);
      }
    }
  } else {
    let x_2018 : vec4<f32> = u_xlat3;
    let x_2019 : vec2<f32> = vec2<f32>(x_2018.x, x_2018.y);
    let x_2021 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2019.x, x_2019.y, x_2021);
    let x_2028 : vec3<f32> = txVec29;
    let x_2030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_2028.xy, x_2028.z);
    u_xlat81 = x_2030;
  }
  let x_2032 : f32 = x_508.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2032) + 1.0f);
  let x_2036 : f32 = u_xlat81;
  let x_2038 : f32 = x_508.x_MainLightShadowParams.x;
  let x_2041 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2036 * x_2038) + x_2041);
  let x_2046 : f32 = u_xlat3.z;
  u_xlatb29 = (0.0f >= x_2046);
  let x_2050 : f32 = u_xlat3.z;
  u_xlatb55.x = (x_2050 >= 1.0f);
  let x_2054 : bool = u_xlatb55.x;
  let x_2055 : bool = u_xlatb29;
  u_xlatb29 = (x_2054 | x_2055);
  let x_2057 : bool = u_xlatb29;
  if (x_2057) {
    x_2058 = 1.0f;
  } else {
    let x_2063 : f32 = u_xlat3.x;
    x_2058 = x_2063;
  }
  let x_2064 : f32 = x_2058;
  u_xlat3.x = x_2064;
  let x_2067 : vec3<f32> = vs_INTERP7;
  let x_2069 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat29 = (x_2067 + -(x_2069));
  let x_2072 : vec3<f32> = u_xlat29;
  let x_2073 : vec3<f32> = u_xlat29;
  u_xlat29.x = dot(x_2072, x_2073);
  let x_2078 : f32 = u_xlat29.x;
  let x_2080 : f32 = x_508.x_MainLightShadowParams.z;
  let x_2083 : f32 = x_508.x_MainLightShadowParams.w;
  u_xlat55.x = ((x_2078 * x_2080) + x_2083);
  let x_2087 : f32 = u_xlat55.x;
  u_xlat55.x = clamp(x_2087, 0.0f, 1.0f);
  let x_2091 : f32 = u_xlat3.x;
  u_xlat81 = (-(x_2091) + 1.0f);
  let x_2095 : f32 = u_xlat55.x;
  let x_2096 : f32 = u_xlat81;
  let x_2099 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2095 * x_2096) + x_2099);
  let x_2109 : f32 = x_2107.x_MainLightCookieTextureFormat;
  u_xlatb55.x = !((x_2109 == -1.0f));
  let x_2113 : bool = u_xlatb55.x;
  if (x_2113) {
    let x_2116 : vec3<f32> = vs_INTERP7;
    let x_2119 : vec4<f32> = x_2107.x_MainLightWorldToLight[1i];
    u_xlat55 = (vec2<f32>(x_2116.y, x_2116.y) * vec2<f32>(x_2119.x, x_2119.y));
    let x_2123 : vec4<f32> = x_2107.x_MainLightWorldToLight[0i];
    let x_2125 : vec3<f32> = vs_INTERP7;
    let x_2128 : vec2<f32> = u_xlat55;
    u_xlat55 = ((vec2<f32>(x_2123.x, x_2123.y) * vec2<f32>(x_2125.x, x_2125.x)) + x_2128);
    let x_2131 : vec4<f32> = x_2107.x_MainLightWorldToLight[2i];
    let x_2133 : vec3<f32> = vs_INTERP7;
    let x_2136 : vec2<f32> = u_xlat55;
    u_xlat55 = ((vec2<f32>(x_2131.x, x_2131.y) * vec2<f32>(x_2133.z, x_2133.z)) + x_2136);
    let x_2138 : vec2<f32> = u_xlat55;
    let x_2140 : vec4<f32> = x_2107.x_MainLightWorldToLight[3i];
    u_xlat55 = (x_2138 + vec2<f32>(x_2140.x, x_2140.y));
    let x_2143 : vec2<f32> = u_xlat55;
    u_xlat55 = ((x_2143 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2151 : vec2<f32> = u_xlat55;
    let x_2153 : f32 = x_29.x_GlobalMipBias.x;
    let x_2154 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_2151, x_2153);
    u_xlat7 = x_2154;
    let x_2156 : f32 = x_2107.x_MainLightCookieTextureFormat;
    let x_2158 : f32 = x_2107.x_MainLightCookieTextureFormat;
    let x_2160 : f32 = x_2107.x_MainLightCookieTextureFormat;
    let x_2162 : f32 = x_2107.x_MainLightCookieTextureFormat;
    let x_2163 : vec4<f32> = vec4<f32>(x_2156, x_2158, x_2160, x_2162);
    let x_2170 : vec4<bool> = (vec4<f32>(x_2163.x, x_2163.y, x_2163.z, x_2163.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb55 = vec2<bool>(x_2170.x, x_2170.y);
    let x_2173 : bool = u_xlatb55.y;
    if (x_2173) {
      let x_2178 : f32 = u_xlat7.w;
      x_2174 = x_2178;
    } else {
      let x_2181 : f32 = u_xlat7.x;
      x_2174 = x_2181;
    }
    let x_2182 : f32 = x_2174;
    u_xlat81 = x_2182;
    let x_2184 : bool = u_xlatb55.x;
    if (x_2184) {
      let x_2188 : vec4<f32> = u_xlat7;
      x_2185 = vec3<f32>(x_2188.x, x_2188.y, x_2188.z);
    } else {
      let x_2191 : f32 = u_xlat81;
      x_2185 = vec3<f32>(x_2191, x_2191, x_2191);
    }
    let x_2193 : vec3<f32> = x_2185;
    let x_2194 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_2200 : vec4<f32> = u_xlat7;
  let x_2203 : vec4<f32> = x_29.x_MainLightColor;
  let x_2205 : vec3<f32> = (vec3<f32>(x_2200.x, x_2200.y, x_2200.z) * vec3<f32>(x_2203.x, x_2203.y, x_2203.z));
  let x_2206 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2205.x, x_2205.y, x_2205.z, x_2206.w);
  let x_2208 : vec3<f32> = u_xlat4;
  let x_2210 : vec4<f32> = u_xlat1;
  u_xlat55.x = dot(-(x_2208), vec3<f32>(x_2210.x, x_2210.y, x_2210.z));
  let x_2215 : f32 = u_xlat55.x;
  let x_2217 : f32 = u_xlat55.x;
  u_xlat55.x = (x_2215 + x_2217);
  let x_2220 : vec4<f32> = u_xlat1;
  let x_2222 : vec2<f32> = u_xlat55;
  let x_2226 : vec3<f32> = u_xlat4;
  let x_2228 : vec3<f32> = ((vec3<f32>(x_2220.x, x_2220.y, x_2220.z) * -(vec3<f32>(x_2222.x, x_2222.x, x_2222.x))) + -(x_2226));
  let x_2229 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  let x_2231 : vec4<f32> = u_xlat1;
  let x_2233 : vec3<f32> = u_xlat4;
  u_xlat55.x = dot(vec3<f32>(x_2231.x, x_2231.y, x_2231.z), x_2233);
  let x_2237 : f32 = u_xlat55.x;
  u_xlat55.x = clamp(x_2237, 0.0f, 1.0f);
  let x_2241 : f32 = u_xlat55.x;
  u_xlat55.x = (-(x_2241) + 1.0f);
  let x_2246 : f32 = u_xlat55.x;
  let x_2248 : f32 = u_xlat55.x;
  u_xlat55.x = (x_2246 * x_2248);
  let x_2252 : f32 = u_xlat55.x;
  let x_2254 : f32 = u_xlat55.x;
  u_xlat55.x = (x_2252 * x_2254);
  let x_2257 : f32 = u_xlat78;
  u_xlat81 = ((-(x_2257) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2263 : f32 = u_xlat78;
  let x_2264 : f32 = u_xlat81;
  u_xlat78 = (x_2263 * x_2264);
  let x_2266 : f32 = u_xlat78;
  u_xlat78 = (x_2266 * 6.0f);
  let x_2276 : vec4<f32> = u_xlat8;
  let x_2278 : f32 = u_xlat78;
  let x_2279 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2276.x, x_2276.y, x_2276.z), x_2278);
  u_xlat8 = x_2279;
  let x_2281 : f32 = u_xlat8.w;
  u_xlat78 = (x_2281 + -1.0f);
  let x_2284 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2285 : f32 = u_xlat78;
  u_xlat78 = ((x_2284 * x_2285) + 1.0f);
  let x_2288 : f32 = u_xlat78;
  u_xlat78 = max(x_2288, 0.0f);
  let x_2290 : f32 = u_xlat78;
  u_xlat78 = log2(x_2290);
  let x_2292 : f32 = u_xlat78;
  let x_2294 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_2292 * x_2294);
  let x_2296 : f32 = u_xlat78;
  u_xlat78 = exp2(x_2296);
  let x_2298 : f32 = u_xlat78;
  let x_2300 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_2298 * x_2300);
  let x_2302 : vec4<f32> = u_xlat8;
  let x_2304 : f32 = u_xlat78;
  let x_2306 : vec3<f32> = (vec3<f32>(x_2302.x, x_2302.y, x_2302.z) * vec3<f32>(x_2304, x_2304, x_2304));
  let x_2307 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
  let x_2309 : vec4<f32> = u_xlat2;
  let x_2311 : vec4<f32> = u_xlat2;
  let x_2315 : vec2<f32> = ((vec2<f32>(x_2309.x, x_2309.x) * vec2<f32>(x_2311.x, x_2311.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2316 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2315.x, x_2315.y, x_2316.z, x_2316.w);
  let x_2319 : f32 = u_xlat9.y;
  u_xlat78 = (1.0f / x_2319);
  let x_2321 : vec4<f32> = u_xlat0;
  let x_2324 : f32 = u_xlat79;
  u_xlat35 = (-(vec3<f32>(x_2321.x, x_2321.y, x_2321.z)) + vec3<f32>(x_2324, x_2324, x_2324));
  let x_2327 : vec2<f32> = u_xlat55;
  let x_2329 : vec3<f32> = u_xlat35;
  let x_2331 : vec4<f32> = u_xlat0;
  u_xlat35 = ((vec3<f32>(x_2327.x, x_2327.x, x_2327.x) * x_2329) + vec3<f32>(x_2331.x, x_2331.y, x_2331.z));
  let x_2334 : f32 = u_xlat78;
  let x_2336 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2334, x_2334, x_2334) * x_2336);
  let x_2338 : vec4<f32> = u_xlat8;
  let x_2340 : vec3<f32> = u_xlat35;
  let x_2341 : vec3<f32> = (vec3<f32>(x_2338.x, x_2338.y, x_2338.z) * x_2340);
  let x_2342 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2341.x, x_2341.y, x_2341.z, x_2342.w);
  let x_2344 : vec4<f32> = u_xlat5;
  let x_2346 : vec3<f32> = u_xlat6;
  let x_2348 : vec4<f32> = u_xlat8;
  let x_2350 : vec3<f32> = ((vec3<f32>(x_2344.x, x_2344.y, x_2344.z) * x_2346) + vec3<f32>(x_2348.x, x_2348.y, x_2348.z));
  let x_2351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2350.x, x_2350.y, x_2350.z, x_2351.w);
  let x_2354 : f32 = u_xlat3.x;
  let x_2356 : f32 = x_349.unity_LightData.z;
  u_xlat78 = (x_2354 * x_2356);
  let x_2358 : vec4<f32> = u_xlat1;
  let x_2361 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_2358.x, x_2358.y, x_2358.z), vec3<f32>(x_2361.x, x_2361.y, x_2361.z));
  let x_2364 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2364, 0.0f, 1.0f);
  let x_2366 : f32 = u_xlat78;
  let x_2367 : f32 = u_xlat79;
  u_xlat78 = (x_2366 * x_2367);
  let x_2369 : f32 = u_xlat78;
  let x_2371 : vec4<f32> = u_xlat7;
  let x_2373 : vec3<f32> = (vec3<f32>(x_2369, x_2369, x_2369) * vec3<f32>(x_2371.x, x_2371.y, x_2371.z));
  let x_2374 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2373.x, x_2374.y, x_2373.y, x_2373.z);
  let x_2376 : vec3<f32> = u_xlat4;
  let x_2378 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2380 : vec3<f32> = (x_2376 + vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
  let x_2381 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
  let x_2383 : vec4<f32> = u_xlat7;
  let x_2385 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2383.x, x_2383.y, x_2383.z), vec3<f32>(x_2385.x, x_2385.y, x_2385.z));
  let x_2388 : f32 = u_xlat78;
  u_xlat78 = max(x_2388, 1.17549435e-38f);
  let x_2391 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2391);
  let x_2393 : f32 = u_xlat78;
  let x_2395 : vec4<f32> = u_xlat7;
  let x_2397 : vec3<f32> = (vec3<f32>(x_2393, x_2393, x_2393) * vec3<f32>(x_2395.x, x_2395.y, x_2395.z));
  let x_2398 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
  let x_2400 : vec4<f32> = u_xlat1;
  let x_2402 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2400.x, x_2400.y, x_2400.z), vec3<f32>(x_2402.x, x_2402.y, x_2402.z));
  let x_2405 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2405, 0.0f, 1.0f);
  let x_2408 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2410 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2408.x, x_2408.y, x_2408.z), vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
  let x_2413 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2413, 0.0f, 1.0f);
  let x_2415 : f32 = u_xlat78;
  let x_2416 : f32 = u_xlat78;
  u_xlat78 = (x_2415 * x_2416);
  let x_2418 : f32 = u_xlat78;
  let x_2420 : f32 = u_xlat9.x;
  u_xlat78 = ((x_2418 * x_2420) + 1.00001001358032226562f);
  let x_2424 : f32 = u_xlat79;
  let x_2425 : f32 = u_xlat79;
  u_xlat79 = (x_2424 * x_2425);
  let x_2427 : f32 = u_xlat78;
  let x_2428 : f32 = u_xlat78;
  u_xlat78 = (x_2427 * x_2428);
  let x_2430 : f32 = u_xlat79;
  u_xlat79 = max(x_2430, 0.10000000149011611938f);
  let x_2433 : f32 = u_xlat78;
  let x_2434 : f32 = u_xlat79;
  u_xlat78 = (x_2433 * x_2434);
  let x_2436 : f32 = u_xlat80;
  let x_2437 : f32 = u_xlat78;
  u_xlat78 = (x_2436 * x_2437);
  let x_2439 : f32 = u_xlat28;
  let x_2440 : f32 = u_xlat78;
  u_xlat78 = (x_2439 / x_2440);
  let x_2442 : vec4<f32> = u_xlat0;
  let x_2444 : f32 = u_xlat78;
  let x_2447 : vec3<f32> = u_xlat6;
  let x_2448 : vec3<f32> = ((vec3<f32>(x_2442.x, x_2442.y, x_2442.z) * vec3<f32>(x_2444, x_2444, x_2444)) + x_2447);
  let x_2449 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
  let x_2451 : vec4<f32> = u_xlat3;
  let x_2453 : vec4<f32> = u_xlat7;
  let x_2455 : vec3<f32> = (vec3<f32>(x_2451.x, x_2451.z, x_2451.w) * vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
  let x_2456 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2455.x, x_2456.y, x_2455.y, x_2455.z);
  let x_2459 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2461 : f32 = x_349.unity_LightData.y;
  u_xlat78 = min(x_2459, x_2461);
  let x_2463 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2463));
  let x_2467 : f32 = u_xlat29.x;
  let x_2470 : f32 = x_508.x_AdditionalShadowFadeParams.x;
  let x_2473 : f32 = x_508.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2467 * x_2470) + x_2473);
  let x_2475 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2475, 0.0f, 1.0f);
  let x_2479 : f32 = x_2107.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2481 : f32 = x_2107.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2483 : f32 = x_2107.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2485 : f32 = x_2107.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2486 : vec4<f32> = vec4<f32>(x_2479, x_2481, x_2483, x_2485);
  let x_2493 : vec4<bool> = (vec4<f32>(x_2486.x, x_2486.y, x_2486.z, x_2486.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2493.x, x_2493.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2505 : u32 = u_xlatu_loop_1;
    let x_2506 : u32 = u_xlatu78;
    if ((x_2505 < x_2506)) {
    } else {
      break;
    }
    let x_2509 : u32 = u_xlatu_loop_1;
    u_xlatu29 = (x_2509 >> 2u);
    let x_2512 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2512 & 3u));
    let x_2515 : u32 = u_xlatu29;
    let x_2518 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2515)];
    let x_2528 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2533 : vec4<u32> = indexable[x_2528];
    u_xlat29.x = dot(x_2518, bitcast<vec4<f32>>(x_2533));
    let x_2539 : f32 = u_xlat29.x;
    u_xlati29 = i32(x_2539);
    let x_2541 : vec3<f32> = vs_INTERP7;
    let x_2552 : i32 = u_xlati29;
    let x_2554 : vec4<f32> = x_2551.x_AdditionalLightsPosition[x_2552];
    let x_2557 : i32 = u_xlati29;
    let x_2559 : vec4<f32> = x_2551.x_AdditionalLightsPosition[x_2557];
    u_xlat35 = ((-(x_2541) * vec3<f32>(x_2554.w, x_2554.w, x_2554.w)) + vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
    let x_2562 : vec3<f32> = u_xlat35;
    let x_2563 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(x_2562, x_2563);
    let x_2565 : f32 = u_xlat82;
    u_xlat82 = max(x_2565, 0.00006103515625f);
    let x_2568 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2568);
    let x_2570 : f32 = u_xlat83;
    let x_2572 : vec3<f32> = u_xlat35;
    let x_2573 : vec3<f32> = (vec3<f32>(x_2570, x_2570, x_2570) * x_2572);
    let x_2574 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2573.x, x_2573.y, x_2573.z, x_2574.w);
    let x_2576 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2576);
    let x_2578 : f32 = u_xlat82;
    let x_2579 : i32 = u_xlati29;
    let x_2581 : f32 = x_2551.x_AdditionalLightsAttenuation[x_2579].x;
    u_xlat82 = (x_2578 * x_2581);
    let x_2583 : f32 = u_xlat82;
    let x_2585 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2583) * x_2585) + 1.0f);
    let x_2588 : f32 = u_xlat82;
    u_xlat82 = max(x_2588, 0.0f);
    let x_2590 : f32 = u_xlat82;
    let x_2591 : f32 = u_xlat82;
    u_xlat82 = (x_2590 * x_2591);
    let x_2593 : f32 = u_xlat82;
    let x_2594 : f32 = u_xlat84;
    u_xlat82 = (x_2593 * x_2594);
    let x_2596 : i32 = u_xlati29;
    let x_2598 : vec4<f32> = x_2551.x_AdditionalLightsSpotDir[x_2596];
    let x_2600 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2598.x, x_2598.y, x_2598.z), vec3<f32>(x_2600.x, x_2600.y, x_2600.z));
    let x_2603 : f32 = u_xlat84;
    let x_2604 : i32 = u_xlati29;
    let x_2606 : f32 = x_2551.x_AdditionalLightsAttenuation[x_2604].z;
    let x_2608 : i32 = u_xlati29;
    let x_2610 : f32 = x_2551.x_AdditionalLightsAttenuation[x_2608].w;
    u_xlat84 = ((x_2603 * x_2606) + x_2610);
    let x_2612 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2612, 0.0f, 1.0f);
    let x_2614 : f32 = u_xlat84;
    let x_2615 : f32 = u_xlat84;
    u_xlat84 = (x_2614 * x_2615);
    let x_2617 : f32 = u_xlat82;
    let x_2618 : f32 = u_xlat84;
    u_xlat82 = (x_2617 * x_2618);
    let x_2622 : i32 = u_xlati29;
    let x_2624 : f32 = x_508.x_AdditionalShadowParams[x_2622].w;
    u_xlati84 = i32(x_2624);
    let x_2627 : i32 = u_xlati84;
    u_xlatb59 = (x_2627 >= 0i);
    let x_2629 : bool = u_xlatb59;
    if (x_2629) {
      let x_2633 : i32 = u_xlati29;
      let x_2635 : f32 = x_508.x_AdditionalShadowParams[x_2633].z;
      u_xlatb59 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2635, x_2635, x_2635, x_2635))));
      let x_2639 : bool = u_xlatb59;
      if (x_2639) {
        let x_2643 : vec4<f32> = u_xlat10;
        let x_2646 : vec4<f32> = u_xlat10;
        let x_2649 : vec4<bool> = (abs(vec4<f32>(x_2643.z, x_2643.z, x_2643.y, x_2643.z)) >= abs(vec4<f32>(x_2646.x, x_2646.y, x_2646.x, x_2646.x)));
        let x_2651 : vec3<bool> = vec3<bool>(x_2649.x, x_2649.y, x_2649.z);
        let x_2652 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2651.x, x_2651.y, x_2651.z, x_2652.w);
        let x_2655 : bool = u_xlatb11.y;
        let x_2657 : bool = u_xlatb11.x;
        u_xlatb59 = (x_2655 & x_2657);
        let x_2659 : vec4<f32> = u_xlat10;
        let x_2662 : vec4<bool> = (-(vec4<f32>(x_2659.z, x_2659.y, x_2659.z, x_2659.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2663 : vec3<bool> = vec3<bool>(x_2662.x, x_2662.y, x_2662.w);
        let x_2664 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2663.x, x_2663.y, x_2664.z, x_2663.z);
        let x_2667 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2667);
        let x_2672 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2672);
        let x_2677 : bool = u_xlatb11.w;
        u_xlat85 = select(0.0f, 1.0f, x_2677);
        let x_2680 : bool = u_xlatb11.z;
        if (x_2680) {
          let x_2685 : f32 = u_xlat11.y;
          x_2681 = x_2685;
        } else {
          let x_2687 : f32 = u_xlat85;
          x_2681 = x_2687;
        }
        let x_2688 : f32 = x_2681;
        u_xlat85 = x_2688;
        let x_2689 : bool = u_xlatb59;
        if (x_2689) {
          let x_2694 : f32 = u_xlat11.x;
          x_2690 = x_2694;
        } else {
          let x_2696 : f32 = u_xlat85;
          x_2690 = x_2696;
        }
        let x_2697 : f32 = x_2690;
        u_xlat59.x = x_2697;
        let x_2699 : i32 = u_xlati29;
        let x_2701 : f32 = x_508.x_AdditionalShadowParams[x_2699].w;
        u_xlat85 = trunc(x_2701);
        let x_2704 : f32 = u_xlat59.x;
        let x_2705 : f32 = u_xlat85;
        u_xlat59.x = (x_2704 + x_2705);
        let x_2709 : f32 = u_xlat59.x;
        u_xlati84 = i32(x_2709);
      }
      let x_2711 : i32 = u_xlati84;
      u_xlati84 = (x_2711 << bitcast<u32>(2i));
      let x_2713 : vec3<f32> = vs_INTERP7;
      let x_2716 : i32 = u_xlati84;
      let x_2719 : i32 = u_xlati84;
      let x_2723 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2716 + 1i) / 4i)][((x_2719 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2713.y, x_2713.y, x_2713.y, x_2713.y) * x_2723);
      let x_2725 : i32 = u_xlati84;
      let x_2727 : i32 = u_xlati84;
      let x_2730 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[(x_2725 / 4i)][(x_2727 % 4i)];
      let x_2731 : vec3<f32> = vs_INTERP7;
      let x_2734 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2730 * vec4<f32>(x_2731.x, x_2731.x, x_2731.x, x_2731.x)) + x_2734);
      let x_2736 : i32 = u_xlati84;
      let x_2739 : i32 = u_xlati84;
      let x_2743 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2736 + 2i) / 4i)][((x_2739 + 2i) % 4i)];
      let x_2744 : vec3<f32> = vs_INTERP7;
      let x_2747 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2743 * vec4<f32>(x_2744.z, x_2744.z, x_2744.z, x_2744.z)) + x_2747);
      let x_2749 : vec4<f32> = u_xlat11;
      let x_2750 : i32 = u_xlati84;
      let x_2753 : i32 = u_xlati84;
      let x_2757 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_2750 + 3i) / 4i)][((x_2753 + 3i) % 4i)];
      u_xlat11 = (x_2749 + x_2757);
      let x_2759 : vec4<f32> = u_xlat11;
      let x_2761 : vec4<f32> = u_xlat11;
      let x_2763 : vec3<f32> = (vec3<f32>(x_2759.x, x_2759.y, x_2759.z) / vec3<f32>(x_2761.w, x_2761.w, x_2761.w));
      let x_2764 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2763.x, x_2763.y, x_2763.z, x_2764.w);
      let x_2767 : i32 = u_xlati29;
      let x_2769 : f32 = x_508.x_AdditionalShadowParams[x_2767].y;
      u_xlatb84 = (0.0f < x_2769);
      let x_2771 : bool = u_xlatb84;
      if (x_2771) {
        let x_2774 : i32 = u_xlati29;
        let x_2776 : f32 = x_508.x_AdditionalShadowParams[x_2774].y;
        u_xlatb84 = (1.0f == x_2776);
        let x_2778 : bool = u_xlatb84;
        if (x_2778) {
          let x_2781 : vec4<f32> = u_xlat11;
          let x_2785 : vec4<f32> = x_508.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2781.x, x_2781.y, x_2781.x, x_2781.y) + x_2785);
          let x_2788 : vec4<f32> = u_xlat12;
          let x_2789 : vec2<f32> = vec2<f32>(x_2788.x, x_2788.y);
          let x_2791 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2789.x, x_2789.y, x_2791);
          let x_2799 : vec3<f32> = txVec30;
          let x_2801 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2799.xy, x_2799.z);
          u_xlat13.x = x_2801;
          let x_2804 : vec4<f32> = u_xlat12;
          let x_2805 : vec2<f32> = vec2<f32>(x_2804.z, x_2804.w);
          let x_2807 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2805.x, x_2805.y, x_2807);
          let x_2814 : vec3<f32> = txVec31;
          let x_2816 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2814.xy, x_2814.z);
          u_xlat13.y = x_2816;
          let x_2818 : vec4<f32> = u_xlat11;
          let x_2822 : vec4<f32> = x_508.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2818.x, x_2818.y, x_2818.x, x_2818.y) + x_2822);
          let x_2825 : vec4<f32> = u_xlat12;
          let x_2826 : vec2<f32> = vec2<f32>(x_2825.x, x_2825.y);
          let x_2828 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2826.x, x_2826.y, x_2828);
          let x_2835 : vec3<f32> = txVec32;
          let x_2837 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2835.xy, x_2835.z);
          u_xlat13.z = x_2837;
          let x_2840 : vec4<f32> = u_xlat12;
          let x_2841 : vec2<f32> = vec2<f32>(x_2840.z, x_2840.w);
          let x_2843 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2841.x, x_2841.y, x_2843);
          let x_2850 : vec3<f32> = txVec33;
          let x_2852 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2850.xy, x_2850.z);
          u_xlat13.w = x_2852;
          let x_2854 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_2854, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2857 : i32 = u_xlati29;
          let x_2859 : f32 = x_508.x_AdditionalShadowParams[x_2857].y;
          u_xlatb59 = (2.0f == x_2859);
          let x_2861 : bool = u_xlatb59;
          if (x_2861) {
            let x_2864 : vec4<f32> = u_xlat11;
            let x_2868 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat59 = ((vec2<f32>(x_2864.x, x_2864.y) * vec2<f32>(x_2868.z, x_2868.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2872 : vec2<f32> = u_xlat59;
            u_xlat59 = floor(x_2872);
            let x_2874 : vec4<f32> = u_xlat11;
            let x_2877 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_2880 : vec2<f32> = u_xlat59;
            let x_2882 : vec2<f32> = ((vec2<f32>(x_2874.x, x_2874.y) * vec2<f32>(x_2877.z, x_2877.w)) + -(x_2880));
            let x_2883 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2882.x, x_2882.y, x_2883.z, x_2883.w);
            let x_2885 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2885.x, x_2885.x, x_2885.y, x_2885.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2888 : vec4<f32> = u_xlat13;
            let x_2890 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2888.x, x_2888.x, x_2888.z, x_2888.z) * vec4<f32>(x_2890.x, x_2890.x, x_2890.z, x_2890.z));
            let x_2894 : vec4<f32> = u_xlat14;
            u_xlat64 = (vec2<f32>(x_2894.y, x_2894.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2897 : vec4<f32> = u_xlat14;
            let x_2900 : vec4<f32> = u_xlat12;
            let x_2903 : vec2<f32> = ((vec2<f32>(x_2897.x, x_2897.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2900.x, x_2900.y)));
            let x_2904 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2903.x, x_2904.y, x_2903.y, x_2904.w);
            let x_2906 : vec4<f32> = u_xlat12;
            let x_2909 : vec2<f32> = (-(vec2<f32>(x_2906.x, x_2906.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2910 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2909.x, x_2909.y, x_2910.z, x_2910.w);
            let x_2913 : vec4<f32> = u_xlat12;
            u_xlat66 = min(vec2<f32>(x_2913.x, x_2913.y), vec2<f32>(0.0f, 0.0f));
            let x_2916 : vec2<f32> = u_xlat66;
            let x_2918 : vec2<f32> = u_xlat66;
            let x_2920 : vec4<f32> = u_xlat14;
            u_xlat66 = ((-(x_2916) * x_2918) + vec2<f32>(x_2920.x, x_2920.y));
            let x_2923 : vec4<f32> = u_xlat12;
            let x_2925 : vec2<f32> = max(vec2<f32>(x_2923.x, x_2923.y), vec2<f32>(0.0f, 0.0f));
            let x_2926 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2925.x, x_2925.y, x_2926.z, x_2926.w);
            let x_2928 : vec4<f32> = u_xlat12;
            let x_2931 : vec4<f32> = u_xlat12;
            let x_2934 : vec4<f32> = u_xlat13;
            let x_2936 : vec2<f32> = ((-(vec2<f32>(x_2928.x, x_2928.y)) * vec2<f32>(x_2931.x, x_2931.y)) + vec2<f32>(x_2934.y, x_2934.w));
            let x_2937 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2936.x, x_2936.y, x_2937.z, x_2937.w);
            let x_2939 : vec2<f32> = u_xlat66;
            u_xlat66 = (x_2939 + vec2<f32>(1.0f, 1.0f));
            let x_2941 : vec4<f32> = u_xlat12;
            let x_2943 : vec2<f32> = (vec2<f32>(x_2941.x, x_2941.y) + vec2<f32>(1.0f, 1.0f));
            let x_2944 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2943.x, x_2943.y, x_2944.z, x_2944.w);
            let x_2946 : vec4<f32> = u_xlat13;
            let x_2948 : vec2<f32> = (vec2<f32>(x_2946.x, x_2946.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2949 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2948.x, x_2948.y, x_2949.z, x_2949.w);
            let x_2951 : vec4<f32> = u_xlat14;
            let x_2953 : vec2<f32> = (vec2<f32>(x_2951.x, x_2951.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2954 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2953.x, x_2953.y, x_2954.z, x_2954.w);
            let x_2956 : vec2<f32> = u_xlat66;
            let x_2957 : vec2<f32> = (x_2956 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2958 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2957.x, x_2957.y, x_2958.z, x_2958.w);
            let x_2960 : vec4<f32> = u_xlat12;
            let x_2962 : vec2<f32> = (vec2<f32>(x_2960.x, x_2960.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2963 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2962.x, x_2962.y, x_2963.z, x_2963.w);
            let x_2965 : vec4<f32> = u_xlat13;
            let x_2967 : vec2<f32> = (vec2<f32>(x_2965.y, x_2965.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2968 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2967.x, x_2967.y, x_2968.z, x_2968.w);
            let x_2971 : f32 = u_xlat14.x;
            u_xlat15.z = x_2971;
            let x_2974 : f32 = u_xlat12.x;
            u_xlat15.w = x_2974;
            let x_2977 : f32 = u_xlat17.x;
            u_xlat16.z = x_2977;
            let x_2980 : f32 = u_xlat64.x;
            u_xlat16.w = x_2980;
            let x_2982 : vec4<f32> = u_xlat15;
            let x_2984 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_2982.z, x_2982.w, x_2982.x, x_2982.z) + vec4<f32>(x_2984.z, x_2984.w, x_2984.x, x_2984.z));
            let x_2988 : f32 = u_xlat15.y;
            u_xlat14.z = x_2988;
            let x_2991 : f32 = u_xlat12.y;
            u_xlat14.w = x_2991;
            let x_2994 : f32 = u_xlat16.y;
            u_xlat17.z = x_2994;
            let x_2997 : f32 = u_xlat64.y;
            u_xlat17.w = x_2997;
            let x_2999 : vec4<f32> = u_xlat14;
            let x_3001 : vec4<f32> = u_xlat17;
            let x_3003 : vec3<f32> = (vec3<f32>(x_2999.z, x_2999.y, x_2999.w) + vec3<f32>(x_3001.z, x_3001.y, x_3001.w));
            let x_3004 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3003.x, x_3003.y, x_3003.z, x_3004.w);
            let x_3006 : vec4<f32> = u_xlat16;
            let x_3008 : vec4<f32> = u_xlat13;
            let x_3010 : vec3<f32> = (vec3<f32>(x_3006.x, x_3006.z, x_3006.w) / vec3<f32>(x_3008.z, x_3008.w, x_3008.y));
            let x_3011 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3010.x, x_3010.y, x_3010.z, x_3011.w);
            let x_3013 : vec4<f32> = u_xlat14;
            let x_3015 : vec3<f32> = (vec3<f32>(x_3013.x, x_3013.y, x_3013.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3016 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3015.x, x_3015.y, x_3015.z, x_3016.w);
            let x_3018 : vec4<f32> = u_xlat17;
            let x_3020 : vec4<f32> = u_xlat12;
            let x_3022 : vec3<f32> = (vec3<f32>(x_3018.z, x_3018.y, x_3018.w) / vec3<f32>(x_3020.x, x_3020.y, x_3020.z));
            let x_3023 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3022.x, x_3022.y, x_3022.z, x_3023.w);
            let x_3025 : vec4<f32> = u_xlat15;
            let x_3027 : vec3<f32> = (vec3<f32>(x_3025.x, x_3025.y, x_3025.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_3028 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3027.x, x_3027.y, x_3027.z, x_3028.w);
            let x_3030 : vec4<f32> = u_xlat14;
            let x_3033 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3035 : vec3<f32> = (vec3<f32>(x_3030.y, x_3030.x, x_3030.z) * vec3<f32>(x_3033.x, x_3033.x, x_3033.x));
            let x_3036 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3035.x, x_3035.y, x_3035.z, x_3036.w);
            let x_3038 : vec4<f32> = u_xlat15;
            let x_3041 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3043 : vec3<f32> = (vec3<f32>(x_3038.x, x_3038.y, x_3038.z) * vec3<f32>(x_3041.y, x_3041.y, x_3041.y));
            let x_3044 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3043.x, x_3043.y, x_3043.z, x_3044.w);
            let x_3047 : f32 = u_xlat15.x;
            u_xlat14.w = x_3047;
            let x_3049 : vec2<f32> = u_xlat59;
            let x_3052 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3055 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3049.x, x_3049.y, x_3049.x, x_3049.y) * vec4<f32>(x_3052.x, x_3052.y, x_3052.x, x_3052.y)) + vec4<f32>(x_3055.y, x_3055.w, x_3055.x, x_3055.w));
            let x_3058 : vec2<f32> = u_xlat59;
            let x_3060 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3063 : vec4<f32> = u_xlat14;
            let x_3065 : vec2<f32> = ((x_3058 * vec2<f32>(x_3060.x, x_3060.y)) + vec2<f32>(x_3063.z, x_3063.w));
            let x_3066 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3065.x, x_3065.y, x_3066.z, x_3066.w);
            let x_3069 : f32 = u_xlat14.y;
            u_xlat15.w = x_3069;
            let x_3071 : vec4<f32> = u_xlat15;
            let x_3072 : vec2<f32> = vec2<f32>(x_3071.y, x_3071.z);
            let x_3073 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3073.x, x_3072.x, x_3073.z, x_3072.y);
            let x_3075 : vec2<f32> = u_xlat59;
            let x_3078 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3081 : vec4<f32> = u_xlat14;
            u_xlat18 = ((vec4<f32>(x_3075.x, x_3075.y, x_3075.x, x_3075.y) * vec4<f32>(x_3078.x, x_3078.y, x_3078.x, x_3078.y)) + vec4<f32>(x_3081.x, x_3081.y, x_3081.z, x_3081.y));
            let x_3084 : vec2<f32> = u_xlat59;
            let x_3087 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3090 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3084.x, x_3084.y, x_3084.x, x_3084.y) * vec4<f32>(x_3087.x, x_3087.y, x_3087.x, x_3087.y)) + vec4<f32>(x_3090.w, x_3090.y, x_3090.w, x_3090.z));
            let x_3093 : vec2<f32> = u_xlat59;
            let x_3096 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3099 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3093.x, x_3093.y, x_3093.x, x_3093.y) * vec4<f32>(x_3096.x, x_3096.y, x_3096.x, x_3096.y)) + vec4<f32>(x_3099.x, x_3099.w, x_3099.z, x_3099.w));
            let x_3102 : vec4<f32> = u_xlat12;
            let x_3104 : vec4<f32> = u_xlat13;
            u_xlat19 = (vec4<f32>(x_3102.x, x_3102.x, x_3102.x, x_3102.y) * vec4<f32>(x_3104.z, x_3104.w, x_3104.y, x_3104.z));
            let x_3107 : vec4<f32> = u_xlat12;
            let x_3109 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_3107.y, x_3107.y, x_3107.z, x_3107.z) * x_3109);
            let x_3112 : f32 = u_xlat12.z;
            let x_3114 : f32 = u_xlat13.y;
            u_xlat59.x = (x_3112 * x_3114);
            let x_3118 : vec4<f32> = u_xlat16;
            let x_3119 : vec2<f32> = vec2<f32>(x_3118.x, x_3118.y);
            let x_3121 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3119.x, x_3119.y, x_3121);
            let x_3128 : vec3<f32> = txVec34;
            let x_3130 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3128.xy, x_3128.z);
            u_xlat85 = x_3130;
            let x_3132 : vec4<f32> = u_xlat16;
            let x_3133 : vec2<f32> = vec2<f32>(x_3132.z, x_3132.w);
            let x_3135 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3133.x, x_3133.y, x_3135);
            let x_3143 : vec3<f32> = txVec35;
            let x_3145 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3143.xy, x_3143.z);
            u_xlat86 = x_3145;
            let x_3146 : f32 = u_xlat86;
            let x_3148 : f32 = u_xlat19.y;
            u_xlat86 = (x_3146 * x_3148);
            let x_3151 : f32 = u_xlat19.x;
            let x_3152 : f32 = u_xlat85;
            let x_3154 : f32 = u_xlat86;
            u_xlat85 = ((x_3151 * x_3152) + x_3154);
            let x_3157 : vec4<f32> = u_xlat17;
            let x_3158 : vec2<f32> = vec2<f32>(x_3157.x, x_3157.y);
            let x_3160 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3158.x, x_3158.y, x_3160);
            let x_3167 : vec3<f32> = txVec36;
            let x_3169 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3167.xy, x_3167.z);
            u_xlat86 = x_3169;
            let x_3171 : f32 = u_xlat19.z;
            let x_3172 : f32 = u_xlat86;
            let x_3174 : f32 = u_xlat85;
            u_xlat85 = ((x_3171 * x_3172) + x_3174);
            let x_3177 : vec4<f32> = u_xlat15;
            let x_3178 : vec2<f32> = vec2<f32>(x_3177.x, x_3177.y);
            let x_3180 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3178.x, x_3178.y, x_3180);
            let x_3187 : vec3<f32> = txVec37;
            let x_3189 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3187.xy, x_3187.z);
            u_xlat86 = x_3189;
            let x_3191 : f32 = u_xlat19.w;
            let x_3192 : f32 = u_xlat86;
            let x_3194 : f32 = u_xlat85;
            u_xlat85 = ((x_3191 * x_3192) + x_3194);
            let x_3197 : vec4<f32> = u_xlat18;
            let x_3198 : vec2<f32> = vec2<f32>(x_3197.x, x_3197.y);
            let x_3200 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3198.x, x_3198.y, x_3200);
            let x_3207 : vec3<f32> = txVec38;
            let x_3209 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3207.xy, x_3207.z);
            u_xlat86 = x_3209;
            let x_3211 : f32 = u_xlat20.x;
            let x_3212 : f32 = u_xlat86;
            let x_3214 : f32 = u_xlat85;
            u_xlat85 = ((x_3211 * x_3212) + x_3214);
            let x_3217 : vec4<f32> = u_xlat18;
            let x_3218 : vec2<f32> = vec2<f32>(x_3217.z, x_3217.w);
            let x_3220 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3218.x, x_3218.y, x_3220);
            let x_3227 : vec3<f32> = txVec39;
            let x_3229 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3227.xy, x_3227.z);
            u_xlat86 = x_3229;
            let x_3231 : f32 = u_xlat20.y;
            let x_3232 : f32 = u_xlat86;
            let x_3234 : f32 = u_xlat85;
            u_xlat85 = ((x_3231 * x_3232) + x_3234);
            let x_3237 : vec4<f32> = u_xlat15;
            let x_3238 : vec2<f32> = vec2<f32>(x_3237.z, x_3237.w);
            let x_3240 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3238.x, x_3238.y, x_3240);
            let x_3247 : vec3<f32> = txVec40;
            let x_3249 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3247.xy, x_3247.z);
            u_xlat86 = x_3249;
            let x_3251 : f32 = u_xlat20.z;
            let x_3252 : f32 = u_xlat86;
            let x_3254 : f32 = u_xlat85;
            u_xlat85 = ((x_3251 * x_3252) + x_3254);
            let x_3257 : vec4<f32> = u_xlat14;
            let x_3258 : vec2<f32> = vec2<f32>(x_3257.x, x_3257.y);
            let x_3260 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3258.x, x_3258.y, x_3260);
            let x_3267 : vec3<f32> = txVec41;
            let x_3269 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3267.xy, x_3267.z);
            u_xlat86 = x_3269;
            let x_3271 : f32 = u_xlat20.w;
            let x_3272 : f32 = u_xlat86;
            let x_3274 : f32 = u_xlat85;
            u_xlat85 = ((x_3271 * x_3272) + x_3274);
            let x_3277 : vec4<f32> = u_xlat14;
            let x_3278 : vec2<f32> = vec2<f32>(x_3277.z, x_3277.w);
            let x_3280 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3278.x, x_3278.y, x_3280);
            let x_3287 : vec3<f32> = txVec42;
            let x_3289 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3287.xy, x_3287.z);
            u_xlat86 = x_3289;
            let x_3291 : f32 = u_xlat59.x;
            let x_3292 : f32 = u_xlat86;
            let x_3294 : f32 = u_xlat85;
            u_xlat84 = ((x_3291 * x_3292) + x_3294);
          } else {
            let x_3297 : vec4<f32> = u_xlat11;
            let x_3300 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat59 = ((vec2<f32>(x_3297.x, x_3297.y) * vec2<f32>(x_3300.z, x_3300.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3304 : vec2<f32> = u_xlat59;
            u_xlat59 = floor(x_3304);
            let x_3306 : vec4<f32> = u_xlat11;
            let x_3309 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3312 : vec2<f32> = u_xlat59;
            let x_3314 : vec2<f32> = ((vec2<f32>(x_3306.x, x_3306.y) * vec2<f32>(x_3309.z, x_3309.w)) + -(x_3312));
            let x_3315 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3314.x, x_3314.y, x_3315.z, x_3315.w);
            let x_3317 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3317.x, x_3317.x, x_3317.y, x_3317.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3320 : vec4<f32> = u_xlat13;
            let x_3322 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3320.x, x_3320.x, x_3320.z, x_3320.z) * vec4<f32>(x_3322.x, x_3322.x, x_3322.z, x_3322.z));
            let x_3325 : vec4<f32> = u_xlat14;
            let x_3327 : vec2<f32> = (vec2<f32>(x_3325.y, x_3325.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3328 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3328.x, x_3327.x, x_3328.z, x_3327.y);
            let x_3330 : vec4<f32> = u_xlat14;
            let x_3333 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3330.x, x_3330.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_3333.x, x_3333.y)));
            let x_3337 : vec4<f32> = u_xlat12;
            let x_3340 : vec2<f32> = (-(vec2<f32>(x_3337.x, x_3337.y)) + vec2<f32>(1.0f, 1.0f));
            let x_3341 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3340.x, x_3341.y, x_3340.y, x_3341.w);
            let x_3343 : vec4<f32> = u_xlat12;
            let x_3345 : vec2<f32> = min(vec2<f32>(x_3343.x, x_3343.y), vec2<f32>(0.0f, 0.0f));
            let x_3346 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3345.x, x_3345.y, x_3346.z, x_3346.w);
            let x_3348 : vec4<f32> = u_xlat14;
            let x_3351 : vec4<f32> = u_xlat14;
            let x_3354 : vec4<f32> = u_xlat13;
            let x_3356 : vec2<f32> = ((-(vec2<f32>(x_3348.x, x_3348.y)) * vec2<f32>(x_3351.x, x_3351.y)) + vec2<f32>(x_3354.x, x_3354.z));
            let x_3357 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3356.x, x_3357.y, x_3356.y, x_3357.w);
            let x_3359 : vec4<f32> = u_xlat12;
            let x_3361 : vec2<f32> = max(vec2<f32>(x_3359.x, x_3359.y), vec2<f32>(0.0f, 0.0f));
            let x_3362 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3361.x, x_3361.y, x_3362.z, x_3362.w);
            let x_3364 : vec4<f32> = u_xlat14;
            let x_3367 : vec4<f32> = u_xlat14;
            let x_3370 : vec4<f32> = u_xlat13;
            let x_3372 : vec2<f32> = ((-(vec2<f32>(x_3364.x, x_3364.y)) * vec2<f32>(x_3367.x, x_3367.y)) + vec2<f32>(x_3370.y, x_3370.w));
            let x_3373 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3373.x, x_3372.x, x_3373.z, x_3372.y);
            let x_3375 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3375 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_3379 : f32 = u_xlat13.y;
            u_xlat14.z = (x_3379 * 0.08163200318813323975f);
            let x_3382 : vec2<f32> = u_xlat64;
            let x_3384 : vec2<f32> = (vec2<f32>(x_3382.y, x_3382.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3385 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3384.x, x_3384.y, x_3385.z, x_3385.w);
            let x_3387 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3387.x, x_3387.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3391 : f32 = u_xlat13.w;
            u_xlat16.z = (x_3391 * 0.08163200318813323975f);
            let x_3395 : f32 = u_xlat16.y;
            u_xlat14.x = x_3395;
            let x_3397 : vec4<f32> = u_xlat12;
            let x_3400 : vec2<f32> = ((vec2<f32>(x_3397.x, x_3397.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3401 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3401.x, x_3400.x, x_3401.z, x_3400.y);
            let x_3403 : vec4<f32> = u_xlat12;
            let x_3406 : vec2<f32> = ((vec2<f32>(x_3403.x, x_3403.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3407 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3406.x, x_3407.y, x_3406.y, x_3407.w);
            let x_3410 : f32 = u_xlat64.x;
            u_xlat13.y = x_3410;
            let x_3413 : f32 = u_xlat15.y;
            u_xlat13.w = x_3413;
            let x_3415 : vec4<f32> = u_xlat13;
            let x_3416 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3415 + x_3416);
            let x_3418 : vec4<f32> = u_xlat12;
            let x_3421 : vec2<f32> = ((vec2<f32>(x_3418.y, x_3418.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3422 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3422.x, x_3421.x, x_3422.z, x_3421.y);
            let x_3424 : vec4<f32> = u_xlat12;
            let x_3427 : vec2<f32> = ((vec2<f32>(x_3424.y, x_3424.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3428 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3427.x, x_3428.y, x_3427.y, x_3428.w);
            let x_3431 : f32 = u_xlat64.y;
            u_xlat15.y = x_3431;
            let x_3433 : vec4<f32> = u_xlat15;
            let x_3434 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3433 + x_3434);
            let x_3436 : vec4<f32> = u_xlat13;
            let x_3437 : vec4<f32> = u_xlat14;
            u_xlat13 = (x_3436 / x_3437);
            let x_3439 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3439 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3441 : vec4<f32> = u_xlat15;
            let x_3442 : vec4<f32> = u_xlat12;
            u_xlat15 = (x_3441 / x_3442);
            let x_3444 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3444 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3446 : vec4<f32> = u_xlat13;
            let x_3449 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3446.w, x_3446.x, x_3446.y, x_3446.z) * vec4<f32>(x_3449.x, x_3449.x, x_3449.x, x_3449.x));
            let x_3452 : vec4<f32> = u_xlat15;
            let x_3455 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3452.x, x_3452.w, x_3452.y, x_3452.z) * vec4<f32>(x_3455.y, x_3455.y, x_3455.y, x_3455.y));
            let x_3458 : vec4<f32> = u_xlat13;
            let x_3459 : vec3<f32> = vec3<f32>(x_3458.y, x_3458.z, x_3458.w);
            let x_3460 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3459.x, x_3460.y, x_3459.y, x_3459.z);
            let x_3463 : f32 = u_xlat15.x;
            u_xlat16.y = x_3463;
            let x_3465 : vec2<f32> = u_xlat59;
            let x_3468 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3471 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3465.x, x_3465.y, x_3465.x, x_3465.y) * vec4<f32>(x_3468.x, x_3468.y, x_3468.x, x_3468.y)) + vec4<f32>(x_3471.x, x_3471.y, x_3471.z, x_3471.y));
            let x_3474 : vec2<f32> = u_xlat59;
            let x_3476 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3479 : vec4<f32> = u_xlat16;
            let x_3481 : vec2<f32> = ((x_3474 * vec2<f32>(x_3476.x, x_3476.y)) + vec2<f32>(x_3479.w, x_3479.y));
            let x_3482 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3481.x, x_3481.y, x_3482.z, x_3482.w);
            let x_3485 : f32 = u_xlat16.y;
            u_xlat13.y = x_3485;
            let x_3488 : f32 = u_xlat15.z;
            u_xlat16.y = x_3488;
            let x_3490 : vec2<f32> = u_xlat59;
            let x_3493 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3496 : vec4<f32> = u_xlat16;
            u_xlat19 = ((vec4<f32>(x_3490.x, x_3490.y, x_3490.x, x_3490.y) * vec4<f32>(x_3493.x, x_3493.y, x_3493.x, x_3493.y)) + vec4<f32>(x_3496.x, x_3496.y, x_3496.z, x_3496.y));
            let x_3500 : vec2<f32> = u_xlat59;
            let x_3502 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3505 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_3500 * vec2<f32>(x_3502.x, x_3502.y)) + vec2<f32>(x_3505.w, x_3505.y));
            let x_3509 : f32 = u_xlat16.y;
            u_xlat13.z = x_3509;
            let x_3511 : vec2<f32> = u_xlat59;
            let x_3514 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3517 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3511.x, x_3511.y, x_3511.x, x_3511.y) * vec4<f32>(x_3514.x, x_3514.y, x_3514.x, x_3514.y)) + vec4<f32>(x_3517.x, x_3517.y, x_3517.x, x_3517.z));
            let x_3521 : f32 = u_xlat15.w;
            u_xlat16.y = x_3521;
            let x_3524 : vec2<f32> = u_xlat59;
            let x_3527 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3530 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3524.x, x_3524.y, x_3524.x, x_3524.y) * vec4<f32>(x_3527.x, x_3527.y, x_3527.x, x_3527.y)) + vec4<f32>(x_3530.x, x_3530.y, x_3530.z, x_3530.y));
            let x_3534 : vec2<f32> = u_xlat59;
            let x_3536 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3539 : vec4<f32> = u_xlat16;
            u_xlat39 = ((x_3534 * vec2<f32>(x_3536.x, x_3536.y)) + vec2<f32>(x_3539.w, x_3539.y));
            let x_3543 : f32 = u_xlat16.y;
            u_xlat13.w = x_3543;
            let x_3546 : vec2<f32> = u_xlat59;
            let x_3548 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3551 : vec4<f32> = u_xlat13;
            u_xlat22 = ((x_3546 * vec2<f32>(x_3548.x, x_3548.y)) + vec2<f32>(x_3551.x, x_3551.w));
            let x_3554 : vec4<f32> = u_xlat16;
            let x_3555 : vec3<f32> = vec3<f32>(x_3554.x, x_3554.z, x_3554.w);
            let x_3556 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3555.x, x_3556.y, x_3555.y, x_3555.z);
            let x_3558 : vec2<f32> = u_xlat59;
            let x_3561 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3564 : vec4<f32> = u_xlat15;
            u_xlat16 = ((vec4<f32>(x_3558.x, x_3558.y, x_3558.x, x_3558.y) * vec4<f32>(x_3561.x, x_3561.y, x_3561.x, x_3561.y)) + vec4<f32>(x_3564.x, x_3564.y, x_3564.z, x_3564.y));
            let x_3567 : vec2<f32> = u_xlat59;
            let x_3569 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3572 : vec4<f32> = u_xlat15;
            u_xlat67 = ((x_3567 * vec2<f32>(x_3569.x, x_3569.y)) + vec2<f32>(x_3572.w, x_3572.y));
            let x_3576 : f32 = u_xlat13.x;
            u_xlat15.x = x_3576;
            let x_3578 : vec2<f32> = u_xlat59;
            let x_3580 : vec4<f32> = x_508.x_AdditionalShadowmapSize;
            let x_3583 : vec4<f32> = u_xlat15;
            u_xlat59 = ((x_3578 * vec2<f32>(x_3580.x, x_3580.y)) + vec2<f32>(x_3583.x, x_3583.y));
            let x_3587 : vec4<f32> = u_xlat12;
            let x_3589 : vec4<f32> = u_xlat14;
            u_xlat23 = (vec4<f32>(x_3587.x, x_3587.x, x_3587.x, x_3587.x) * x_3589);
            let x_3592 : vec4<f32> = u_xlat12;
            let x_3594 : vec4<f32> = u_xlat14;
            u_xlat24 = (vec4<f32>(x_3592.y, x_3592.y, x_3592.y, x_3592.y) * x_3594);
            let x_3597 : vec4<f32> = u_xlat12;
            let x_3599 : vec4<f32> = u_xlat14;
            u_xlat25 = (vec4<f32>(x_3597.z, x_3597.z, x_3597.z, x_3597.z) * x_3599);
            let x_3601 : vec4<f32> = u_xlat12;
            let x_3603 : vec4<f32> = u_xlat14;
            u_xlat12 = (vec4<f32>(x_3601.w, x_3601.w, x_3601.w, x_3601.w) * x_3603);
            let x_3606 : vec4<f32> = u_xlat17;
            let x_3607 : vec2<f32> = vec2<f32>(x_3606.x, x_3606.y);
            let x_3609 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3607.x, x_3607.y, x_3609);
            let x_3616 : vec3<f32> = txVec43;
            let x_3618 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3616.xy, x_3616.z);
            u_xlat86 = x_3618;
            let x_3620 : vec4<f32> = u_xlat17;
            let x_3621 : vec2<f32> = vec2<f32>(x_3620.z, x_3620.w);
            let x_3623 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3621.x, x_3621.y, x_3623);
            let x_3631 : vec3<f32> = txVec44;
            let x_3633 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3631.xy, x_3631.z);
            u_xlat88 = x_3633;
            let x_3634 : f32 = u_xlat88;
            let x_3636 : f32 = u_xlat23.y;
            u_xlat88 = (x_3634 * x_3636);
            let x_3639 : f32 = u_xlat23.x;
            let x_3640 : f32 = u_xlat86;
            let x_3642 : f32 = u_xlat88;
            u_xlat86 = ((x_3639 * x_3640) + x_3642);
            let x_3645 : vec4<f32> = u_xlat18;
            let x_3646 : vec2<f32> = vec2<f32>(x_3645.x, x_3645.y);
            let x_3648 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3646.x, x_3646.y, x_3648);
            let x_3655 : vec3<f32> = txVec45;
            let x_3657 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3655.xy, x_3655.z);
            u_xlat88 = x_3657;
            let x_3659 : f32 = u_xlat23.z;
            let x_3660 : f32 = u_xlat88;
            let x_3662 : f32 = u_xlat86;
            u_xlat86 = ((x_3659 * x_3660) + x_3662);
            let x_3665 : vec4<f32> = u_xlat20;
            let x_3666 : vec2<f32> = vec2<f32>(x_3665.x, x_3665.y);
            let x_3668 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3666.x, x_3666.y, x_3668);
            let x_3675 : vec3<f32> = txVec46;
            let x_3677 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3675.xy, x_3675.z);
            u_xlat88 = x_3677;
            let x_3679 : f32 = u_xlat23.w;
            let x_3680 : f32 = u_xlat88;
            let x_3682 : f32 = u_xlat86;
            u_xlat86 = ((x_3679 * x_3680) + x_3682);
            let x_3685 : vec4<f32> = u_xlat19;
            let x_3686 : vec2<f32> = vec2<f32>(x_3685.x, x_3685.y);
            let x_3688 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3686.x, x_3686.y, x_3688);
            let x_3695 : vec3<f32> = txVec47;
            let x_3697 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3695.xy, x_3695.z);
            u_xlat88 = x_3697;
            let x_3699 : f32 = u_xlat24.x;
            let x_3700 : f32 = u_xlat88;
            let x_3702 : f32 = u_xlat86;
            u_xlat86 = ((x_3699 * x_3700) + x_3702);
            let x_3705 : vec4<f32> = u_xlat19;
            let x_3706 : vec2<f32> = vec2<f32>(x_3705.z, x_3705.w);
            let x_3708 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3706.x, x_3706.y, x_3708);
            let x_3715 : vec3<f32> = txVec48;
            let x_3717 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3715.xy, x_3715.z);
            u_xlat88 = x_3717;
            let x_3719 : f32 = u_xlat24.y;
            let x_3720 : f32 = u_xlat88;
            let x_3722 : f32 = u_xlat86;
            u_xlat86 = ((x_3719 * x_3720) + x_3722);
            let x_3725 : vec2<f32> = u_xlat70;
            let x_3727 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3725.x, x_3725.y, x_3727);
            let x_3734 : vec3<f32> = txVec49;
            let x_3736 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3734.xy, x_3734.z);
            u_xlat88 = x_3736;
            let x_3738 : f32 = u_xlat24.z;
            let x_3739 : f32 = u_xlat88;
            let x_3741 : f32 = u_xlat86;
            u_xlat86 = ((x_3738 * x_3739) + x_3741);
            let x_3744 : vec4<f32> = u_xlat20;
            let x_3745 : vec2<f32> = vec2<f32>(x_3744.z, x_3744.w);
            let x_3747 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3745.x, x_3745.y, x_3747);
            let x_3754 : vec3<f32> = txVec50;
            let x_3756 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3754.xy, x_3754.z);
            u_xlat88 = x_3756;
            let x_3758 : f32 = u_xlat24.w;
            let x_3759 : f32 = u_xlat88;
            let x_3761 : f32 = u_xlat86;
            u_xlat86 = ((x_3758 * x_3759) + x_3761);
            let x_3764 : vec4<f32> = u_xlat21;
            let x_3765 : vec2<f32> = vec2<f32>(x_3764.x, x_3764.y);
            let x_3767 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3765.x, x_3765.y, x_3767);
            let x_3774 : vec3<f32> = txVec51;
            let x_3776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3774.xy, x_3774.z);
            u_xlat88 = x_3776;
            let x_3778 : f32 = u_xlat25.x;
            let x_3779 : f32 = u_xlat88;
            let x_3781 : f32 = u_xlat86;
            u_xlat86 = ((x_3778 * x_3779) + x_3781);
            let x_3784 : vec4<f32> = u_xlat21;
            let x_3785 : vec2<f32> = vec2<f32>(x_3784.z, x_3784.w);
            let x_3787 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3785.x, x_3785.y, x_3787);
            let x_3794 : vec3<f32> = txVec52;
            let x_3796 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3794.xy, x_3794.z);
            u_xlat88 = x_3796;
            let x_3798 : f32 = u_xlat25.y;
            let x_3799 : f32 = u_xlat88;
            let x_3801 : f32 = u_xlat86;
            u_xlat86 = ((x_3798 * x_3799) + x_3801);
            let x_3804 : vec2<f32> = u_xlat39;
            let x_3806 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3804.x, x_3804.y, x_3806);
            let x_3813 : vec3<f32> = txVec53;
            let x_3815 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3813.xy, x_3813.z);
            u_xlat88 = x_3815;
            let x_3817 : f32 = u_xlat25.z;
            let x_3818 : f32 = u_xlat88;
            let x_3820 : f32 = u_xlat86;
            u_xlat86 = ((x_3817 * x_3818) + x_3820);
            let x_3823 : vec2<f32> = u_xlat22;
            let x_3825 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3823.x, x_3823.y, x_3825);
            let x_3832 : vec3<f32> = txVec54;
            let x_3834 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3832.xy, x_3832.z);
            u_xlat88 = x_3834;
            let x_3836 : f32 = u_xlat25.w;
            let x_3837 : f32 = u_xlat88;
            let x_3839 : f32 = u_xlat86;
            u_xlat86 = ((x_3836 * x_3837) + x_3839);
            let x_3842 : vec4<f32> = u_xlat16;
            let x_3843 : vec2<f32> = vec2<f32>(x_3842.x, x_3842.y);
            let x_3845 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3843.x, x_3843.y, x_3845);
            let x_3852 : vec3<f32> = txVec55;
            let x_3854 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3852.xy, x_3852.z);
            u_xlat88 = x_3854;
            let x_3856 : f32 = u_xlat12.x;
            let x_3857 : f32 = u_xlat88;
            let x_3859 : f32 = u_xlat86;
            u_xlat86 = ((x_3856 * x_3857) + x_3859);
            let x_3862 : vec4<f32> = u_xlat16;
            let x_3863 : vec2<f32> = vec2<f32>(x_3862.z, x_3862.w);
            let x_3865 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3863.x, x_3863.y, x_3865);
            let x_3872 : vec3<f32> = txVec56;
            let x_3874 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3872.xy, x_3872.z);
            u_xlat88 = x_3874;
            let x_3876 : f32 = u_xlat12.y;
            let x_3877 : f32 = u_xlat88;
            let x_3879 : f32 = u_xlat86;
            u_xlat86 = ((x_3876 * x_3877) + x_3879);
            let x_3882 : vec2<f32> = u_xlat67;
            let x_3884 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3882.x, x_3882.y, x_3884);
            let x_3891 : vec3<f32> = txVec57;
            let x_3893 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3891.xy, x_3891.z);
            u_xlat88 = x_3893;
            let x_3895 : f32 = u_xlat12.z;
            let x_3896 : f32 = u_xlat88;
            let x_3898 : f32 = u_xlat86;
            u_xlat86 = ((x_3895 * x_3896) + x_3898);
            let x_3901 : vec2<f32> = u_xlat59;
            let x_3903 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3901.x, x_3901.y, x_3903);
            let x_3910 : vec3<f32> = txVec58;
            let x_3912 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3910.xy, x_3910.z);
            u_xlat59.x = x_3912;
            let x_3915 : f32 = u_xlat12.w;
            let x_3917 : f32 = u_xlat59.x;
            let x_3919 : f32 = u_xlat86;
            u_xlat84 = ((x_3915 * x_3917) + x_3919);
          }
        }
      } else {
        let x_3923 : vec4<f32> = u_xlat11;
        let x_3924 : vec2<f32> = vec2<f32>(x_3923.x, x_3923.y);
        let x_3926 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3924.x, x_3924.y, x_3926);
        let x_3933 : vec3<f32> = txVec59;
        let x_3935 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3933.xy, x_3933.z);
        u_xlat84 = x_3935;
      }
      let x_3936 : i32 = u_xlati29;
      let x_3938 : f32 = x_508.x_AdditionalShadowParams[x_3936].x;
      u_xlat59.x = (1.0f + -(x_3938));
      let x_3942 : f32 = u_xlat84;
      let x_3943 : i32 = u_xlati29;
      let x_3945 : f32 = x_508.x_AdditionalShadowParams[x_3943].x;
      let x_3948 : f32 = u_xlat59.x;
      u_xlat84 = ((x_3942 * x_3945) + x_3948);
      let x_3951 : f32 = u_xlat11.z;
      u_xlatb59 = (0.0f >= x_3951);
      let x_3955 : f32 = u_xlat11.z;
      u_xlatb85 = (x_3955 >= 1.0f);
      let x_3957 : bool = u_xlatb85;
      let x_3958 : bool = u_xlatb59;
      u_xlatb59 = (x_3957 | x_3958);
      let x_3960 : bool = u_xlatb59;
      let x_3961 : f32 = u_xlat84;
      u_xlat84 = select(x_3961, 1.0f, x_3960);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3964 : f32 = u_xlat84;
    u_xlat59.x = (-(x_3964) + 1.0f);
    let x_3968 : f32 = u_xlat79;
    let x_3970 : f32 = u_xlat59.x;
    let x_3972 : f32 = u_xlat84;
    u_xlat84 = ((x_3968 * x_3970) + x_3972);
    let x_3975 : i32 = u_xlati29;
    u_xlati59 = (1i << bitcast<u32>((x_3975 & 31i)));
    let x_3979 : i32 = u_xlati59;
    let x_3982 : f32 = x_2107.x_AdditionalLightsCookieEnableBits;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_3979) & bitcast<u32>(x_3982)));
    let x_3986 : i32 = u_xlati59;
    if ((x_3986 != 0i)) {
      let x_3990 : i32 = u_xlati29;
      let x_3992 : f32 = x_2107.x_AdditionalLightsLightTypes[x_3990].el;
      u_xlati59 = i32(x_3992);
      let x_3995 : i32 = u_xlati59;
      u_xlati85 = select(1i, 0i, (x_3995 != 0i));
      let x_3999 : i32 = u_xlati29;
      u_xlati86 = (x_3999 << bitcast<u32>(2i));
      let x_4001 : i32 = u_xlati85;
      if ((x_4001 != 0i)) {
        let x_4005 : vec3<f32> = vs_INTERP7;
        let x_4007 : i32 = u_xlati86;
        let x_4010 : i32 = u_xlati86;
        let x_4014 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[((x_4007 + 1i) / 4i)][((x_4010 + 1i) % 4i)];
        let x_4016 : vec3<f32> = (vec3<f32>(x_4005.y, x_4005.y, x_4005.y) * vec3<f32>(x_4014.x, x_4014.y, x_4014.w));
        let x_4017 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4016.x, x_4016.y, x_4016.z, x_4017.w);
        let x_4019 : i32 = u_xlati86;
        let x_4021 : i32 = u_xlati86;
        let x_4024 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[(x_4019 / 4i)][(x_4021 % 4i)];
        let x_4026 : vec3<f32> = vs_INTERP7;
        let x_4029 : vec4<f32> = u_xlat11;
        let x_4031 : vec3<f32> = ((vec3<f32>(x_4024.x, x_4024.y, x_4024.w) * vec3<f32>(x_4026.x, x_4026.x, x_4026.x)) + vec3<f32>(x_4029.x, x_4029.y, x_4029.z));
        let x_4032 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4031.x, x_4031.y, x_4031.z, x_4032.w);
        let x_4034 : i32 = u_xlati86;
        let x_4037 : i32 = u_xlati86;
        let x_4041 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[((x_4034 + 2i) / 4i)][((x_4037 + 2i) % 4i)];
        let x_4043 : vec3<f32> = vs_INTERP7;
        let x_4046 : vec4<f32> = u_xlat11;
        let x_4048 : vec3<f32> = ((vec3<f32>(x_4041.x, x_4041.y, x_4041.w) * vec3<f32>(x_4043.z, x_4043.z, x_4043.z)) + vec3<f32>(x_4046.x, x_4046.y, x_4046.z));
        let x_4049 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4048.x, x_4048.y, x_4048.z, x_4049.w);
        let x_4051 : vec4<f32> = u_xlat11;
        let x_4053 : i32 = u_xlati86;
        let x_4056 : i32 = u_xlati86;
        let x_4060 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[((x_4053 + 3i) / 4i)][((x_4056 + 3i) % 4i)];
        let x_4062 : vec3<f32> = (vec3<f32>(x_4051.x, x_4051.y, x_4051.z) + vec3<f32>(x_4060.x, x_4060.y, x_4060.w));
        let x_4063 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4062.x, x_4062.y, x_4062.z, x_4063.w);
        let x_4065 : vec4<f32> = u_xlat11;
        let x_4067 : vec4<f32> = u_xlat11;
        let x_4069 : vec2<f32> = (vec2<f32>(x_4065.x, x_4065.y) / vec2<f32>(x_4067.z, x_4067.z));
        let x_4070 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4069.x, x_4069.y, x_4070.z, x_4070.w);
        let x_4072 : vec4<f32> = u_xlat11;
        let x_4075 : vec2<f32> = ((vec2<f32>(x_4072.x, x_4072.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_4076 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4075.x, x_4075.y, x_4076.z, x_4076.w);
        let x_4078 : vec4<f32> = u_xlat11;
        let x_4082 : vec2<f32> = clamp(vec2<f32>(x_4078.x, x_4078.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4083 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4082.x, x_4082.y, x_4083.z, x_4083.w);
        let x_4085 : i32 = u_xlati29;
        let x_4087 : vec4<f32> = x_2107.x_AdditionalLightsCookieAtlasUVRects[x_4085];
        let x_4089 : vec4<f32> = u_xlat11;
        let x_4092 : i32 = u_xlati29;
        let x_4094 : vec4<f32> = x_2107.x_AdditionalLightsCookieAtlasUVRects[x_4092];
        let x_4096 : vec2<f32> = ((vec2<f32>(x_4087.x, x_4087.y) * vec2<f32>(x_4089.x, x_4089.y)) + vec2<f32>(x_4094.z, x_4094.w));
        let x_4097 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4096.x, x_4096.y, x_4097.z, x_4097.w);
      } else {
        let x_4100 : i32 = u_xlati59;
        u_xlatb59 = (x_4100 == 1i);
        let x_4102 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_4102);
        let x_4104 : i32 = u_xlati59;
        if ((x_4104 != 0i)) {
          let x_4108 : vec3<f32> = vs_INTERP7;
          let x_4110 : i32 = u_xlati86;
          let x_4113 : i32 = u_xlati86;
          let x_4117 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[((x_4110 + 1i) / 4i)][((x_4113 + 1i) % 4i)];
          u_xlat59 = (vec2<f32>(x_4108.y, x_4108.y) * vec2<f32>(x_4117.x, x_4117.y));
          let x_4120 : i32 = u_xlati86;
          let x_4122 : i32 = u_xlati86;
          let x_4125 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[(x_4120 / 4i)][(x_4122 % 4i)];
          let x_4127 : vec3<f32> = vs_INTERP7;
          let x_4130 : vec2<f32> = u_xlat59;
          u_xlat59 = ((vec2<f32>(x_4125.x, x_4125.y) * vec2<f32>(x_4127.x, x_4127.x)) + x_4130);
          let x_4132 : i32 = u_xlati86;
          let x_4135 : i32 = u_xlati86;
          let x_4139 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[((x_4132 + 2i) / 4i)][((x_4135 + 2i) % 4i)];
          let x_4141 : vec3<f32> = vs_INTERP7;
          let x_4144 : vec2<f32> = u_xlat59;
          u_xlat59 = ((vec2<f32>(x_4139.x, x_4139.y) * vec2<f32>(x_4141.z, x_4141.z)) + x_4144);
          let x_4146 : vec2<f32> = u_xlat59;
          let x_4147 : i32 = u_xlati86;
          let x_4150 : i32 = u_xlati86;
          let x_4154 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[((x_4147 + 3i) / 4i)][((x_4150 + 3i) % 4i)];
          u_xlat59 = (x_4146 + vec2<f32>(x_4154.x, x_4154.y));
          let x_4157 : vec2<f32> = u_xlat59;
          u_xlat59 = ((x_4157 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4160 : vec2<f32> = u_xlat59;
          u_xlat59 = fract(x_4160);
          let x_4162 : i32 = u_xlati29;
          let x_4164 : vec4<f32> = x_2107.x_AdditionalLightsCookieAtlasUVRects[x_4162];
          let x_4166 : vec2<f32> = u_xlat59;
          let x_4168 : i32 = u_xlati29;
          let x_4170 : vec4<f32> = x_2107.x_AdditionalLightsCookieAtlasUVRects[x_4168];
          let x_4172 : vec2<f32> = ((vec2<f32>(x_4164.x, x_4164.y) * x_4166) + vec2<f32>(x_4170.z, x_4170.w));
          let x_4173 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4172.x, x_4172.y, x_4173.z, x_4173.w);
        } else {
          let x_4176 : vec3<f32> = vs_INTERP7;
          let x_4178 : i32 = u_xlati86;
          let x_4181 : i32 = u_xlati86;
          let x_4185 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[((x_4178 + 1i) / 4i)][((x_4181 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4176.y, x_4176.y, x_4176.y, x_4176.y) * x_4185);
          let x_4187 : i32 = u_xlati86;
          let x_4189 : i32 = u_xlati86;
          let x_4192 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[(x_4187 / 4i)][(x_4189 % 4i)];
          let x_4193 : vec3<f32> = vs_INTERP7;
          let x_4196 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4192 * vec4<f32>(x_4193.x, x_4193.x, x_4193.x, x_4193.x)) + x_4196);
          let x_4198 : i32 = u_xlati86;
          let x_4201 : i32 = u_xlati86;
          let x_4205 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[((x_4198 + 2i) / 4i)][((x_4201 + 2i) % 4i)];
          let x_4206 : vec3<f32> = vs_INTERP7;
          let x_4209 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4205 * vec4<f32>(x_4206.z, x_4206.z, x_4206.z, x_4206.z)) + x_4209);
          let x_4211 : vec4<f32> = u_xlat12;
          let x_4212 : i32 = u_xlati86;
          let x_4215 : i32 = u_xlati86;
          let x_4219 : vec4<f32> = x_2107.x_AdditionalLightsWorldToLights[((x_4212 + 3i) / 4i)][((x_4215 + 3i) % 4i)];
          u_xlat12 = (x_4211 + x_4219);
          let x_4221 : vec4<f32> = u_xlat12;
          let x_4223 : vec4<f32> = u_xlat12;
          let x_4225 : vec3<f32> = (vec3<f32>(x_4221.x, x_4221.y, x_4221.z) / vec3<f32>(x_4223.w, x_4223.w, x_4223.w));
          let x_4226 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4225.x, x_4225.y, x_4225.z, x_4226.w);
          let x_4228 : vec4<f32> = u_xlat12;
          let x_4230 : vec4<f32> = u_xlat12;
          u_xlat59.x = dot(vec3<f32>(x_4228.x, x_4228.y, x_4228.z), vec3<f32>(x_4230.x, x_4230.y, x_4230.z));
          let x_4235 : f32 = u_xlat59.x;
          u_xlat59.x = inverseSqrt(x_4235);
          let x_4238 : vec2<f32> = u_xlat59;
          let x_4240 : vec4<f32> = u_xlat12;
          let x_4242 : vec3<f32> = (vec3<f32>(x_4238.x, x_4238.x, x_4238.x) * vec3<f32>(x_4240.x, x_4240.y, x_4240.z));
          let x_4243 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4242.x, x_4242.y, x_4242.z, x_4243.w);
          let x_4245 : vec4<f32> = u_xlat12;
          u_xlat59.x = dot(abs(vec3<f32>(x_4245.x, x_4245.y, x_4245.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4251 : f32 = u_xlat59.x;
          u_xlat59.x = max(x_4251, 0.00000099999999747524f);
          let x_4256 : f32 = u_xlat59.x;
          u_xlat59.x = (1.0f / x_4256);
          let x_4259 : vec2<f32> = u_xlat59;
          let x_4261 : vec4<f32> = u_xlat12;
          let x_4263 : vec3<f32> = (vec3<f32>(x_4259.x, x_4259.x, x_4259.x) * vec3<f32>(x_4261.z, x_4261.x, x_4261.y));
          let x_4264 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4263.x, x_4263.y, x_4263.z, x_4264.w);
          let x_4267 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4267);
          let x_4271 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4271, 0.0f, 1.0f);
          let x_4275 : vec4<f32> = u_xlat13;
          let x_4277 : vec4<bool> = (vec4<f32>(x_4275.y, x_4275.z, x_4275.y, x_4275.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4277.x, x_4277.y);
          let x_4281 : bool = u_xlatb63.x;
          if (x_4281) {
            let x_4286 : f32 = u_xlat13.x;
            x_4282 = x_4286;
          } else {
            let x_4289 : f32 = u_xlat13.x;
            x_4282 = -(x_4289);
          }
          let x_4291 : f32 = x_4282;
          u_xlat63.x = x_4291;
          let x_4294 : bool = u_xlatb63.y;
          if (x_4294) {
            let x_4299 : f32 = u_xlat13.x;
            x_4295 = x_4299;
          } else {
            let x_4302 : f32 = u_xlat13.x;
            x_4295 = -(x_4302);
          }
          let x_4304 : f32 = x_4295;
          u_xlat63.y = x_4304;
          let x_4306 : vec4<f32> = u_xlat12;
          let x_4308 : vec2<f32> = u_xlat59;
          let x_4311 : vec2<f32> = u_xlat63;
          u_xlat59 = ((vec2<f32>(x_4306.x, x_4306.y) * vec2<f32>(x_4308.x, x_4308.x)) + x_4311);
          let x_4313 : vec2<f32> = u_xlat59;
          u_xlat59 = ((x_4313 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4316 : vec2<f32> = u_xlat59;
          u_xlat59 = clamp(x_4316, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4320 : i32 = u_xlati29;
          let x_4322 : vec4<f32> = x_2107.x_AdditionalLightsCookieAtlasUVRects[x_4320];
          let x_4324 : vec2<f32> = u_xlat59;
          let x_4326 : i32 = u_xlati29;
          let x_4328 : vec4<f32> = x_2107.x_AdditionalLightsCookieAtlasUVRects[x_4326];
          let x_4330 : vec2<f32> = ((vec2<f32>(x_4322.x, x_4322.y) * x_4324) + vec2<f32>(x_4328.z, x_4328.w));
          let x_4331 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4330.x, x_4330.y, x_4331.z, x_4331.w);
        }
      }
      let x_4338 : vec4<f32> = u_xlat11;
      let x_4340 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4338.x, x_4338.y), 0.0f);
      u_xlat11 = x_4340;
      let x_4342 : bool = u_xlatb7.y;
      if (x_4342) {
        let x_4347 : f32 = u_xlat11.w;
        x_4343 = x_4347;
      } else {
        let x_4350 : f32 = u_xlat11.x;
        x_4343 = x_4350;
      }
      let x_4351 : f32 = x_4343;
      u_xlat59.x = x_4351;
      let x_4354 : bool = u_xlatb7.x;
      if (x_4354) {
        let x_4358 : vec4<f32> = u_xlat11;
        x_4355 = vec3<f32>(x_4358.x, x_4358.y, x_4358.z);
      } else {
        let x_4361 : vec2<f32> = u_xlat59;
        x_4355 = vec3<f32>(x_4361.x, x_4361.x, x_4361.x);
      }
      let x_4363 : vec3<f32> = x_4355;
      let x_4364 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4363.x, x_4363.y, x_4363.z, x_4364.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4370 : vec4<f32> = u_xlat11;
    let x_4372 : i32 = u_xlati29;
    let x_4374 : vec4<f32> = x_2551.x_AdditionalLightsColor[x_4372];
    let x_4376 : vec3<f32> = (vec3<f32>(x_4370.x, x_4370.y, x_4370.z) * vec3<f32>(x_4374.x, x_4374.y, x_4374.z));
    let x_4377 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4376.x, x_4376.y, x_4376.z, x_4377.w);
    let x_4379 : f32 = u_xlat82;
    let x_4380 : f32 = u_xlat84;
    u_xlat29.x = (x_4379 * x_4380);
    let x_4383 : vec4<f32> = u_xlat1;
    let x_4385 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4383.x, x_4383.y, x_4383.z), vec3<f32>(x_4385.x, x_4385.y, x_4385.z));
    let x_4388 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4388, 0.0f, 1.0f);
    let x_4391 : f32 = u_xlat29.x;
    let x_4392 : f32 = u_xlat82;
    u_xlat29.x = (x_4391 * x_4392);
    let x_4395 : vec3<f32> = u_xlat29;
    let x_4397 : vec4<f32> = u_xlat11;
    let x_4399 : vec3<f32> = (vec3<f32>(x_4395.x, x_4395.x, x_4395.x) * vec3<f32>(x_4397.x, x_4397.y, x_4397.z));
    let x_4400 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4399.x, x_4399.y, x_4399.z, x_4400.w);
    let x_4402 : vec3<f32> = u_xlat35;
    let x_4403 : f32 = u_xlat83;
    let x_4406 : vec3<f32> = u_xlat4;
    u_xlat35 = ((x_4402 * vec3<f32>(x_4403, x_4403, x_4403)) + x_4406);
    let x_4408 : vec3<f32> = u_xlat35;
    let x_4409 : vec3<f32> = u_xlat35;
    u_xlat29.x = dot(x_4408, x_4409);
    let x_4413 : f32 = u_xlat29.x;
    u_xlat29.x = max(x_4413, 1.17549435e-38f);
    let x_4417 : f32 = u_xlat29.x;
    u_xlat29.x = inverseSqrt(x_4417);
    let x_4420 : vec3<f32> = u_xlat29;
    let x_4422 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_4420.x, x_4420.x, x_4420.x) * x_4422);
    let x_4424 : vec4<f32> = u_xlat1;
    let x_4426 : vec3<f32> = u_xlat35;
    u_xlat29.x = dot(vec3<f32>(x_4424.x, x_4424.y, x_4424.z), x_4426);
    let x_4430 : f32 = u_xlat29.x;
    u_xlat29.x = clamp(x_4430, 0.0f, 1.0f);
    let x_4433 : vec4<f32> = u_xlat10;
    let x_4435 : vec3<f32> = u_xlat35;
    u_xlat82 = dot(vec3<f32>(x_4433.x, x_4433.y, x_4433.z), x_4435);
    let x_4437 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4437, 0.0f, 1.0f);
    let x_4440 : f32 = u_xlat29.x;
    let x_4442 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4440 * x_4442);
    let x_4446 : f32 = u_xlat29.x;
    let x_4448 : f32 = u_xlat9.x;
    u_xlat29.x = ((x_4446 * x_4448) + 1.00001001358032226562f);
    let x_4452 : f32 = u_xlat82;
    let x_4453 : f32 = u_xlat82;
    u_xlat82 = (x_4452 * x_4453);
    let x_4456 : f32 = u_xlat29.x;
    let x_4458 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4456 * x_4458);
    let x_4461 : f32 = u_xlat82;
    u_xlat82 = max(x_4461, 0.10000000149011611938f);
    let x_4464 : f32 = u_xlat29.x;
    let x_4465 : f32 = u_xlat82;
    u_xlat29.x = (x_4464 * x_4465);
    let x_4468 : f32 = u_xlat80;
    let x_4470 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4468 * x_4470);
    let x_4473 : f32 = u_xlat28;
    let x_4475 : f32 = u_xlat29.x;
    u_xlat29.x = (x_4473 / x_4475);
    let x_4478 : vec4<f32> = u_xlat0;
    let x_4480 : vec3<f32> = u_xlat29;
    let x_4483 : vec3<f32> = u_xlat6;
    u_xlat35 = ((vec3<f32>(x_4478.x, x_4478.y, x_4478.z) * vec3<f32>(x_4480.x, x_4480.x, x_4480.x)) + x_4483);
    let x_4485 : vec3<f32> = u_xlat35;
    let x_4486 : vec4<f32> = u_xlat11;
    let x_4489 : vec4<f32> = u_xlat8;
    let x_4491 : vec3<f32> = ((x_4485 * vec3<f32>(x_4486.x, x_4486.y, x_4486.z)) + vec3<f32>(x_4489.x, x_4489.y, x_4489.z));
    let x_4492 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4491.x, x_4491.y, x_4491.z, x_4492.w);

    continuing {
      let x_4494 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4494 + bitcast<u32>(1i));
    }
  }
  let x_4496 : vec4<f32> = u_xlat5;
  let x_4498 : f32 = u_xlat54;
  let x_4501 : vec4<f32> = u_xlat3;
  let x_4503 : vec3<f32> = ((vec3<f32>(x_4496.x, x_4496.y, x_4496.z) * vec3<f32>(x_4498, x_4498, x_4498)) + vec3<f32>(x_4501.x, x_4501.z, x_4501.w));
  let x_4504 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4503.x, x_4503.y, x_4503.z, x_4504.w);
  let x_4508 : vec4<f32> = u_xlat8;
  let x_4510 : vec4<f32> = u_xlat0;
  let x_4512 : vec3<f32> = (vec3<f32>(x_4508.x, x_4508.y, x_4508.z) + vec3<f32>(x_4510.x, x_4510.y, x_4510.z));
  let x_4513 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4512.x, x_4512.y, x_4512.z, x_4513.w);
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



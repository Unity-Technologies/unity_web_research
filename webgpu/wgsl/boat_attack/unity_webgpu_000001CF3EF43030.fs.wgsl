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

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat80 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb81 : bool;

@group(1) @binding(3) var<uniform> x_638 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat81 : f32;

var<private> u_xlatb82 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlat83 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_1930 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2372 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb59 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat87 : f32;

var<private> u_xlat70 : vec2<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat39 : vec2<f32>;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlatb85 : bool;

var<private> u_xlati59 : i32;

var<private> u_xlati85 : i32;

var<private> u_xlati87 : i32;

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
  var x_2012 : f32;
  var x_2023 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2509 : f32;
  var x_2519 : f32;
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
  var x_4112 : f32;
  var x_4125 : f32;
  var x_4173 : f32;
  var x_4185 : vec3<f32>;
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
  let x_507 : vec2<f32> = vs_INTERP0;
  let x_509 : f32 = x_29.x_GlobalMipBias.x;
  let x_510 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_507, x_509);
  u_xlat3 = x_510;
  let x_516 : vec2<f32> = vs_INTERP0;
  let x_518 : f32 = x_29.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_516, x_518);
  u_xlat5 = vec3<f32>(x_519.x, x_519.y, x_519.z);
  let x_521 : vec4<f32> = u_xlat3;
  let x_525 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat1;
  let x_530 : vec4<f32> = u_xlat3;
  u_xlat78 = dot(vec3<f32>(x_528.x, x_528.y, x_528.z), vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : f32 = u_xlat78;
  u_xlat78 = (x_533 + 0.5f);
  let x_536 : f32 = u_xlat78;
  let x_538 : vec3<f32> = u_xlat5;
  let x_539 : vec3<f32> = (vec3<f32>(x_536, x_536, x_536) * x_538);
  let x_540 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_543 : f32 = u_xlat3.w;
  u_xlat78 = max(x_543, 0.00009999999747378752f);
  let x_546 : vec4<f32> = u_xlat3;
  let x_548 : f32 = u_xlat78;
  let x_550 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) / vec3<f32>(x_548, x_548, x_548));
  let x_551 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat2;
  let x_554 : vec2<f32> = vec2<f32>(x_553.x, x_553.y);
  let x_555 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
  let x_557 : vec4<f32> = u_xlat2;
  let x_561 : vec2<f32> = clamp(vec2<f32>(x_557.x, x_557.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
  let x_565 : f32 = u_xlat2.x;
  u_xlat78 = ((-(x_565) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_570 : f32 = u_xlat78;
  let x_573 : f32 = u_xlat2.y;
  u_xlat79 = (-(x_570) + x_573);
  let x_575 : f32 = u_xlat78;
  let x_577 : vec4<f32> = u_xlat0;
  u_xlat5 = (vec3<f32>(x_575, x_575, x_575) * vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat0;
  let x_584 : vec3<f32> = (vec3<f32>(x_580.x, x_580.y, x_580.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_585 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat2;
  let x_589 : vec4<f32> = u_xlat0;
  let x_594 : vec3<f32> = ((vec3<f32>(x_587.x, x_587.x, x_587.x) * vec3<f32>(x_589.x, x_589.y, x_589.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_595 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_598 : f32 = u_xlat2.y;
  u_xlat78 = (-(x_598) + 1.0f);
  let x_601 : f32 = u_xlat78;
  let x_602 : f32 = u_xlat78;
  u_xlat2.x = (x_601 * x_602);
  let x_606 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_606, 0.0078125f);
  let x_612 : f32 = u_xlat2.x;
  let x_614 : f32 = u_xlat2.x;
  u_xlat28 = (x_612 * x_614);
  let x_616 : f32 = u_xlat79;
  u_xlat79 = (x_616 + 1.0f);
  let x_618 : f32 = u_xlat79;
  u_xlat79 = min(x_618, 1.0f);
  let x_622 : f32 = u_xlat2.x;
  u_xlat80 = ((x_622 * 4.0f) + 2.0f);
  let x_628 : f32 = u_xlat2.z;
  u_xlat54 = min(x_628, 1.0f);
  let x_641 : f32 = x_638.x_MainLightShadowParams.y;
  u_xlatb81 = (0.0f < x_641);
  let x_643 : bool = u_xlatb81;
  if (x_643) {
    let x_647 : f32 = x_638.x_MainLightShadowParams.y;
    u_xlatb81 = (x_647 == 1.0f);
    let x_649 : bool = u_xlatb81;
    if (x_649) {
      let x_654 : vec4<f32> = vs_INTERP3;
      let x_658 : vec4<f32> = x_638.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_654.x, x_654.y, x_654.x, x_654.y) + x_658);
      let x_662 : vec4<f32> = u_xlat6;
      let x_663 : vec2<f32> = vec2<f32>(x_662.x, x_662.y);
      let x_665 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_663.x, x_663.y, x_665);
      let x_678 : vec3<f32> = txVec0;
      let x_680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_678.xy, x_678.z);
      u_xlat7.x = x_680;
      let x_683 : vec4<f32> = u_xlat6;
      let x_684 : vec2<f32> = vec2<f32>(x_683.z, x_683.w);
      let x_686 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_684.x, x_684.y, x_686);
      let x_693 : vec3<f32> = txVec1;
      let x_695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_693.xy, x_693.z);
      u_xlat7.y = x_695;
      let x_697 : vec4<f32> = vs_INTERP3;
      let x_701 : vec4<f32> = x_638.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_697.x, x_697.y, x_697.x, x_697.y) + x_701);
      let x_704 : vec4<f32> = u_xlat6;
      let x_705 : vec2<f32> = vec2<f32>(x_704.x, x_704.y);
      let x_707 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_705.x, x_705.y, x_707);
      let x_714 : vec3<f32> = txVec2;
      let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_714.xy, x_714.z);
      u_xlat7.z = x_716;
      let x_719 : vec4<f32> = u_xlat6;
      let x_720 : vec2<f32> = vec2<f32>(x_719.z, x_719.w);
      let x_722 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_720.x, x_720.y, x_722);
      let x_729 : vec3<f32> = txVec3;
      let x_731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_729.xy, x_729.z);
      u_xlat7.w = x_731;
      let x_734 : vec4<f32> = u_xlat7;
      u_xlat81 = dot(x_734, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_741 : f32 = x_638.x_MainLightShadowParams.y;
      u_xlatb82 = (x_741 == 2.0f);
      let x_743 : bool = u_xlatb82;
      if (x_743) {
        let x_746 : vec4<f32> = vs_INTERP3;
        let x_750 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_754 : vec2<f32> = ((vec2<f32>(x_746.x, x_746.y) * vec2<f32>(x_750.z, x_750.w)) + vec2<f32>(0.5f, 0.5f));
        let x_755 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_757 : vec4<f32> = u_xlat6;
        let x_759 : vec2<f32> = floor(vec2<f32>(x_757.x, x_757.y));
        let x_760 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
        let x_763 : vec4<f32> = vs_INTERP3;
        let x_766 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_769 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_763.x, x_763.y) * vec2<f32>(x_766.z, x_766.w)) + -(vec2<f32>(x_769.x, x_769.y)));
        let x_773 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_773.x, x_773.x, x_773.y, x_773.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_778 : vec4<f32> = u_xlat7;
        let x_780 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_778.x, x_778.x, x_778.z, x_778.z) * vec4<f32>(x_780.x, x_780.x, x_780.z, x_780.z));
        let x_783 : vec4<f32> = u_xlat8;
        let x_787 : vec2<f32> = (vec2<f32>(x_783.y, x_783.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_788 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_787.x, x_788.y, x_787.y, x_788.w);
        let x_790 : vec4<f32> = u_xlat8;
        let x_793 : vec2<f32> = u_xlat58;
        let x_795 : vec2<f32> = ((vec2<f32>(x_790.x, x_790.z) * vec2<f32>(0.5f, 0.5f)) + -(x_793));
        let x_796 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
        let x_799 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_799) + vec2<f32>(1.0f, 1.0f));
        let x_804 : vec2<f32> = u_xlat58;
        let x_806 : vec2<f32> = min(x_804, vec2<f32>(0.0f, 0.0f));
        let x_807 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat9;
        let x_812 : vec4<f32> = u_xlat9;
        let x_815 : vec2<f32> = u_xlat60;
        let x_816 : vec2<f32> = ((-(vec2<f32>(x_809.x, x_809.y)) * vec2<f32>(x_812.x, x_812.y)) + x_815);
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_816.x, x_816.y, x_817.z, x_817.w);
        let x_819 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_819, vec2<f32>(0.0f, 0.0f));
        let x_821 : vec2<f32> = u_xlat58;
        let x_823 : vec2<f32> = u_xlat58;
        let x_825 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_821) * x_823) + vec2<f32>(x_825.y, x_825.w));
        let x_828 : vec4<f32> = u_xlat9;
        let x_830 : vec2<f32> = (vec2<f32>(x_828.x, x_828.y) + vec2<f32>(1.0f, 1.0f));
        let x_831 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
        let x_833 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_833 + vec2<f32>(1.0f, 1.0f));
        let x_836 : vec4<f32> = u_xlat8;
        let x_840 : vec2<f32> = (vec2<f32>(x_836.x, x_836.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_841 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
        let x_843 : vec2<f32> = u_xlat60;
        let x_844 : vec2<f32> = (x_843 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_845 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_844.x, x_844.y, x_845.z, x_845.w);
        let x_847 : vec4<f32> = u_xlat9;
        let x_849 : vec2<f32> = (vec2<f32>(x_847.x, x_847.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_850 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_849.x, x_849.y, x_850.z, x_850.w);
        let x_853 : vec2<f32> = u_xlat58;
        let x_854 : vec2<f32> = (x_853 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_855 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_857.y, x_857.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_861 : f32 = u_xlat9.x;
        u_xlat10.z = x_861;
        let x_864 : f32 = u_xlat58.x;
        u_xlat10.w = x_864;
        let x_867 : f32 = u_xlat11.x;
        u_xlat8.z = x_867;
        let x_870 : f32 = u_xlat7.x;
        u_xlat8.w = x_870;
        let x_873 : vec4<f32> = u_xlat8;
        let x_875 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_873.z, x_873.w, x_873.x, x_873.z) + vec4<f32>(x_875.z, x_875.w, x_875.x, x_875.z));
        let x_879 : f32 = u_xlat10.y;
        u_xlat9.z = x_879;
        let x_882 : f32 = u_xlat58.y;
        u_xlat9.w = x_882;
        let x_885 : f32 = u_xlat8.y;
        u_xlat11.z = x_885;
        let x_888 : f32 = u_xlat7.z;
        u_xlat11.w = x_888;
        let x_890 : vec4<f32> = u_xlat9;
        let x_892 : vec4<f32> = u_xlat11;
        let x_894 : vec3<f32> = (vec3<f32>(x_890.z, x_890.y, x_890.w) + vec3<f32>(x_892.z, x_892.y, x_892.w));
        let x_895 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
        let x_897 : vec4<f32> = u_xlat8;
        let x_899 : vec4<f32> = u_xlat12;
        let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.z, x_897.w) / vec3<f32>(x_899.z, x_899.w, x_899.y));
        let x_902 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
        let x_904 : vec4<f32> = u_xlat8;
        let x_909 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_910 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
        let x_912 : vec4<f32> = u_xlat11;
        let x_914 : vec4<f32> = u_xlat7;
        let x_916 : vec3<f32> = (vec3<f32>(x_912.z, x_912.y, x_912.w) / vec3<f32>(x_914.x, x_914.y, x_914.z));
        let x_917 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat9;
        let x_921 : vec3<f32> = (vec3<f32>(x_919.x, x_919.y, x_919.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_922 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat8;
        let x_927 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_929 : vec3<f32> = (vec3<f32>(x_924.y, x_924.x, x_924.z) * vec3<f32>(x_927.x, x_927.x, x_927.x));
        let x_930 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
        let x_932 : vec4<f32> = u_xlat9;
        let x_935 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_937 : vec3<f32> = (vec3<f32>(x_932.x, x_932.y, x_932.z) * vec3<f32>(x_935.y, x_935.y, x_935.y));
        let x_938 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
        let x_941 : f32 = u_xlat9.x;
        u_xlat8.w = x_941;
        let x_943 : vec4<f32> = u_xlat6;
        let x_946 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_949 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_943.x, x_943.y, x_943.x, x_943.y) * vec4<f32>(x_946.x, x_946.y, x_946.x, x_946.y)) + vec4<f32>(x_949.y, x_949.w, x_949.x, x_949.w));
        let x_952 : vec4<f32> = u_xlat6;
        let x_955 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_958 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_952.x, x_952.y) * vec2<f32>(x_955.x, x_955.y)) + vec2<f32>(x_958.z, x_958.w));
        let x_962 : f32 = u_xlat8.y;
        u_xlat9.w = x_962;
        let x_964 : vec4<f32> = u_xlat9;
        let x_965 : vec2<f32> = vec2<f32>(x_964.y, x_964.z);
        let x_966 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_966.x, x_965.x, x_966.z, x_965.y);
        let x_968 : vec4<f32> = u_xlat6;
        let x_971 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_974 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_968.x, x_968.y, x_968.x, x_968.y) * vec4<f32>(x_971.x, x_971.y, x_971.x, x_971.y)) + vec4<f32>(x_974.x, x_974.y, x_974.z, x_974.y));
        let x_977 : vec4<f32> = u_xlat6;
        let x_980 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_983 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_977.x, x_977.y, x_977.x, x_977.y) * vec4<f32>(x_980.x, x_980.y, x_980.x, x_980.y)) + vec4<f32>(x_983.w, x_983.y, x_983.w, x_983.z));
        let x_986 : vec4<f32> = u_xlat6;
        let x_989 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_992 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_986.x, x_986.y, x_986.x, x_986.y) * vec4<f32>(x_989.x, x_989.y, x_989.x, x_989.y)) + vec4<f32>(x_992.x, x_992.w, x_992.z, x_992.w));
        let x_996 : vec4<f32> = u_xlat7;
        let x_998 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_996.x, x_996.x, x_996.x, x_996.y) * vec4<f32>(x_998.z, x_998.w, x_998.y, x_998.z));
        let x_1002 : vec4<f32> = u_xlat7;
        let x_1004 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1002.y, x_1002.y, x_1002.z, x_1002.z) * x_1004);
        let x_1008 : f32 = u_xlat7.z;
        let x_1010 : f32 = u_xlat12.y;
        u_xlat82 = (x_1008 * x_1010);
        let x_1013 : vec4<f32> = u_xlat10;
        let x_1014 : vec2<f32> = vec2<f32>(x_1013.x, x_1013.y);
        let x_1016 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
        let x_1024 : vec3<f32> = txVec4;
        let x_1026 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1024.xy, x_1024.z);
        u_xlat83 = x_1026;
        let x_1028 : vec4<f32> = u_xlat10;
        let x_1029 : vec2<f32> = vec2<f32>(x_1028.z, x_1028.w);
        let x_1031 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_1029.x, x_1029.y, x_1031);
        let x_1038 : vec3<f32> = txVec5;
        let x_1040 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1038.xy, x_1038.z);
        u_xlat6.x = x_1040;
        let x_1043 : f32 = u_xlat6.x;
        let x_1045 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1043 * x_1045);
        let x_1049 : f32 = u_xlat13.x;
        let x_1050 : f32 = u_xlat83;
        let x_1053 : f32 = u_xlat6.x;
        u_xlat83 = ((x_1049 * x_1050) + x_1053);
        let x_1056 : vec2<f32> = u_xlat58;
        let x_1058 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1056.x, x_1056.y, x_1058);
        let x_1065 : vec3<f32> = txVec6;
        let x_1067 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1065.xy, x_1065.z);
        u_xlat6.x = x_1067;
        let x_1070 : f32 = u_xlat13.z;
        let x_1072 : f32 = u_xlat6.x;
        let x_1074 : f32 = u_xlat83;
        u_xlat83 = ((x_1070 * x_1072) + x_1074);
        let x_1077 : vec4<f32> = u_xlat9;
        let x_1078 : vec2<f32> = vec2<f32>(x_1077.x, x_1077.y);
        let x_1080 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1078.x, x_1078.y, x_1080);
        let x_1087 : vec3<f32> = txVec7;
        let x_1089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1087.xy, x_1087.z);
        u_xlat6.x = x_1089;
        let x_1092 : f32 = u_xlat13.w;
        let x_1094 : f32 = u_xlat6.x;
        let x_1096 : f32 = u_xlat83;
        u_xlat83 = ((x_1092 * x_1094) + x_1096);
        let x_1099 : vec4<f32> = u_xlat11;
        let x_1100 : vec2<f32> = vec2<f32>(x_1099.x, x_1099.y);
        let x_1102 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1100.x, x_1100.y, x_1102);
        let x_1109 : vec3<f32> = txVec8;
        let x_1111 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1109.xy, x_1109.z);
        u_xlat6.x = x_1111;
        let x_1114 : f32 = u_xlat14.x;
        let x_1116 : f32 = u_xlat6.x;
        let x_1118 : f32 = u_xlat83;
        u_xlat83 = ((x_1114 * x_1116) + x_1118);
        let x_1121 : vec4<f32> = u_xlat11;
        let x_1122 : vec2<f32> = vec2<f32>(x_1121.z, x_1121.w);
        let x_1124 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1122.x, x_1122.y, x_1124);
        let x_1131 : vec3<f32> = txVec9;
        let x_1133 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1131.xy, x_1131.z);
        u_xlat6.x = x_1133;
        let x_1136 : f32 = u_xlat14.y;
        let x_1138 : f32 = u_xlat6.x;
        let x_1140 : f32 = u_xlat83;
        u_xlat83 = ((x_1136 * x_1138) + x_1140);
        let x_1143 : vec4<f32> = u_xlat9;
        let x_1144 : vec2<f32> = vec2<f32>(x_1143.z, x_1143.w);
        let x_1146 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1144.x, x_1144.y, x_1146);
        let x_1153 : vec3<f32> = txVec10;
        let x_1155 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1153.xy, x_1153.z);
        u_xlat6.x = x_1155;
        let x_1158 : f32 = u_xlat14.z;
        let x_1160 : f32 = u_xlat6.x;
        let x_1162 : f32 = u_xlat83;
        u_xlat83 = ((x_1158 * x_1160) + x_1162);
        let x_1165 : vec4<f32> = u_xlat8;
        let x_1166 : vec2<f32> = vec2<f32>(x_1165.x, x_1165.y);
        let x_1168 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1166.x, x_1166.y, x_1168);
        let x_1175 : vec3<f32> = txVec11;
        let x_1177 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1175.xy, x_1175.z);
        u_xlat6.x = x_1177;
        let x_1180 : f32 = u_xlat14.w;
        let x_1182 : f32 = u_xlat6.x;
        let x_1184 : f32 = u_xlat83;
        u_xlat83 = ((x_1180 * x_1182) + x_1184);
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1188 : vec2<f32> = vec2<f32>(x_1187.z, x_1187.w);
        let x_1190 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1188.x, x_1188.y, x_1190);
        let x_1197 : vec3<f32> = txVec12;
        let x_1199 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1197.xy, x_1197.z);
        u_xlat6.x = x_1199;
        let x_1201 : f32 = u_xlat82;
        let x_1203 : f32 = u_xlat6.x;
        let x_1205 : f32 = u_xlat83;
        u_xlat81 = ((x_1201 * x_1203) + x_1205);
      } else {
        let x_1208 : vec4<f32> = vs_INTERP3;
        let x_1211 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1214 : vec2<f32> = ((vec2<f32>(x_1208.x, x_1208.y) * vec2<f32>(x_1211.z, x_1211.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1215 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1214.x, x_1214.y, x_1215.z, x_1215.w);
        let x_1217 : vec4<f32> = u_xlat6;
        let x_1219 : vec2<f32> = floor(vec2<f32>(x_1217.x, x_1217.y));
        let x_1220 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1219.x, x_1219.y, x_1220.z, x_1220.w);
        let x_1222 : vec4<f32> = vs_INTERP3;
        let x_1225 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1228 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(x_1225.z, x_1225.w)) + -(vec2<f32>(x_1228.x, x_1228.y)));
        let x_1232 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1232.x, x_1232.x, x_1232.y, x_1232.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1235 : vec4<f32> = u_xlat7;
        let x_1237 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1235.x, x_1235.x, x_1235.z, x_1235.z) * vec4<f32>(x_1237.x, x_1237.x, x_1237.z, x_1237.z));
        let x_1240 : vec4<f32> = u_xlat8;
        let x_1244 : vec2<f32> = (vec2<f32>(x_1240.y, x_1240.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1245 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1245.x, x_1244.x, x_1245.z, x_1244.y);
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1250 : vec2<f32> = u_xlat58;
        let x_1252 : vec2<f32> = ((vec2<f32>(x_1247.x, x_1247.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1250));
        let x_1253 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1252.x, x_1253.y, x_1252.y, x_1253.w);
        let x_1255 : vec2<f32> = u_xlat58;
        let x_1257 : vec2<f32> = (-(x_1255) + vec2<f32>(1.0f, 1.0f));
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1257.x, x_1257.y, x_1258.z, x_1258.w);
        let x_1260 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1260, vec2<f32>(0.0f, 0.0f));
        let x_1262 : vec2<f32> = u_xlat60;
        let x_1264 : vec2<f32> = u_xlat60;
        let x_1266 : vec4<f32> = u_xlat8;
        let x_1268 : vec2<f32> = ((-(x_1262) * x_1264) + vec2<f32>(x_1266.x, x_1266.y));
        let x_1269 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1268.x, x_1268.y, x_1269.z, x_1269.w);
        let x_1271 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1271, vec2<f32>(0.0f, 0.0f));
        let x_1274 : vec2<f32> = u_xlat60;
        let x_1276 : vec2<f32> = u_xlat60;
        let x_1278 : vec4<f32> = u_xlat7;
        let x_1280 : vec2<f32> = ((-(x_1274) * x_1276) + vec2<f32>(x_1278.y, x_1278.w));
        let x_1281 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1280.x, x_1281.y, x_1280.y);
        let x_1283 : vec4<f32> = u_xlat8;
        let x_1285 : vec2<f32> = (vec2<f32>(x_1283.x, x_1283.y) + vec2<f32>(2.0f, 2.0f));
        let x_1286 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1285.x, x_1285.y, x_1286.z, x_1286.w);
        let x_1288 : vec3<f32> = u_xlat33;
        let x_1290 : vec2<f32> = (vec2<f32>(x_1288.x, x_1288.z) + vec2<f32>(2.0f, 2.0f));
        let x_1291 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1291.x, x_1290.x, x_1291.z, x_1290.y);
        let x_1294 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1294 * 0.08163200318813323975f);
        let x_1298 : vec4<f32> = u_xlat7;
        let x_1301 : vec3<f32> = (vec3<f32>(x_1298.z, x_1298.x, x_1298.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1302 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1302.w);
        let x_1304 : vec4<f32> = u_xlat8;
        let x_1307 : vec2<f32> = (vec2<f32>(x_1304.x, x_1304.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1308 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1311 : f32 = u_xlat11.y;
        u_xlat10.x = x_1311;
        let x_1313 : vec2<f32> = u_xlat58;
        let x_1320 : vec2<f32> = ((vec2<f32>(x_1313.x, x_1313.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1321 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1321.x, x_1320.x, x_1321.z, x_1320.y);
        let x_1323 : vec2<f32> = u_xlat58;
        let x_1327 : vec2<f32> = ((vec2<f32>(x_1323.x, x_1323.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1328 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1327.x, x_1328.y, x_1327.y, x_1328.w);
        let x_1331 : f32 = u_xlat7.x;
        u_xlat8.y = x_1331;
        let x_1334 : f32 = u_xlat9.y;
        u_xlat8.w = x_1334;
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1337 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1336 + x_1337);
        let x_1339 : vec2<f32> = u_xlat58;
        let x_1342 : vec2<f32> = ((vec2<f32>(x_1339.y, x_1339.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1343 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1343.x, x_1342.x, x_1343.z, x_1342.y);
        let x_1345 : vec2<f32> = u_xlat58;
        let x_1348 : vec2<f32> = ((vec2<f32>(x_1345.y, x_1345.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1349 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1348.x, x_1349.y, x_1348.y, x_1349.w);
        let x_1352 : f32 = u_xlat7.y;
        u_xlat9.y = x_1352;
        let x_1354 : vec4<f32> = u_xlat9;
        let x_1355 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1354 + x_1355);
        let x_1357 : vec4<f32> = u_xlat8;
        let x_1358 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1357 / x_1358);
        let x_1360 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1360 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1366 : vec4<f32> = u_xlat9;
        let x_1367 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1366 / x_1367);
        let x_1369 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1369 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1374 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1371.w, x_1371.x, x_1371.y, x_1371.z) * vec4<f32>(x_1374.x, x_1374.x, x_1374.x, x_1374.x));
        let x_1377 : vec4<f32> = u_xlat9;
        let x_1380 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1377.x, x_1377.w, x_1377.y, x_1377.z) * vec4<f32>(x_1380.y, x_1380.y, x_1380.y, x_1380.y));
        let x_1383 : vec4<f32> = u_xlat8;
        let x_1384 : vec3<f32> = vec3<f32>(x_1383.y, x_1383.z, x_1383.w);
        let x_1385 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1384.x, x_1385.y, x_1384.y, x_1384.z);
        let x_1388 : f32 = u_xlat9.x;
        u_xlat11.y = x_1388;
        let x_1390 : vec4<f32> = u_xlat6;
        let x_1393 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1396 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1390.x, x_1390.y, x_1390.x, x_1390.y) * vec4<f32>(x_1393.x, x_1393.y, x_1393.x, x_1393.y)) + vec4<f32>(x_1396.x, x_1396.y, x_1396.z, x_1396.y));
        let x_1399 : vec4<f32> = u_xlat6;
        let x_1402 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1405 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1399.x, x_1399.y) * vec2<f32>(x_1402.x, x_1402.y)) + vec2<f32>(x_1405.w, x_1405.y));
        let x_1409 : f32 = u_xlat11.y;
        u_xlat8.y = x_1409;
        let x_1412 : f32 = u_xlat9.z;
        u_xlat11.y = x_1412;
        let x_1414 : vec4<f32> = u_xlat6;
        let x_1417 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1420 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1414.x, x_1414.y, x_1414.x, x_1414.y) * vec4<f32>(x_1417.x, x_1417.y, x_1417.x, x_1417.y)) + vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1420.y));
        let x_1423 : vec4<f32> = u_xlat6;
        let x_1426 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1429 : vec4<f32> = u_xlat11;
        let x_1431 : vec2<f32> = ((vec2<f32>(x_1423.x, x_1423.y) * vec2<f32>(x_1426.x, x_1426.y)) + vec2<f32>(x_1429.w, x_1429.y));
        let x_1432 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1431.x, x_1431.y, x_1432.z, x_1432.w);
        let x_1435 : f32 = u_xlat11.y;
        u_xlat8.z = x_1435;
        let x_1438 : vec4<f32> = u_xlat6;
        let x_1441 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1444 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1438.x, x_1438.y, x_1438.x, x_1438.y) * vec4<f32>(x_1441.x, x_1441.y, x_1441.x, x_1441.y)) + vec4<f32>(x_1444.x, x_1444.y, x_1444.x, x_1444.z));
        let x_1448 : f32 = u_xlat9.w;
        u_xlat11.y = x_1448;
        let x_1451 : vec4<f32> = u_xlat6;
        let x_1454 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1457 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1451.x, x_1451.y, x_1451.x, x_1451.y) * vec4<f32>(x_1454.x, x_1454.y, x_1454.x, x_1454.y)) + vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1457.y));
        let x_1461 : vec4<f32> = u_xlat6;
        let x_1464 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1467 : vec4<f32> = u_xlat11;
        let x_1469 : vec2<f32> = ((vec2<f32>(x_1461.x, x_1461.y) * vec2<f32>(x_1464.x, x_1464.y)) + vec2<f32>(x_1467.w, x_1467.y));
        let x_1470 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1469.x, x_1469.y, x_1470.z);
        let x_1473 : f32 = u_xlat11.y;
        u_xlat8.w = x_1473;
        let x_1476 : vec4<f32> = u_xlat6;
        let x_1479 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1482 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1476.x, x_1476.y) * vec2<f32>(x_1479.x, x_1479.y)) + vec2<f32>(x_1482.x, x_1482.w));
        let x_1485 : vec4<f32> = u_xlat11;
        let x_1486 : vec3<f32> = vec3<f32>(x_1485.x, x_1485.z, x_1485.w);
        let x_1487 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1486.x, x_1487.y, x_1486.y, x_1486.z);
        let x_1489 : vec4<f32> = u_xlat6;
        let x_1492 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1495 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1489.x, x_1489.y, x_1489.x, x_1489.y) * vec4<f32>(x_1492.x, x_1492.y, x_1492.x, x_1492.y)) + vec4<f32>(x_1495.x, x_1495.y, x_1495.z, x_1495.y));
        let x_1499 : vec4<f32> = u_xlat6;
        let x_1502 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1505 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1499.x, x_1499.y) * vec2<f32>(x_1502.x, x_1502.y)) + vec2<f32>(x_1505.w, x_1505.y));
        let x_1509 : f32 = u_xlat8.x;
        u_xlat9.x = x_1509;
        let x_1511 : vec4<f32> = u_xlat6;
        let x_1514 : vec4<f32> = x_638.x_MainLightShadowmapSize;
        let x_1517 : vec4<f32> = u_xlat9;
        let x_1519 : vec2<f32> = ((vec2<f32>(x_1511.x, x_1511.y) * vec2<f32>(x_1514.x, x_1514.y)) + vec2<f32>(x_1517.x, x_1517.y));
        let x_1520 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1519.x, x_1519.y, x_1520.z, x_1520.w);
        let x_1523 : vec4<f32> = u_xlat7;
        let x_1525 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1523.x, x_1523.x, x_1523.x, x_1523.x) * x_1525);
        let x_1528 : vec4<f32> = u_xlat7;
        let x_1530 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1528.y, x_1528.y, x_1528.y, x_1528.y) * x_1530);
        let x_1533 : vec4<f32> = u_xlat7;
        let x_1535 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1533.z, x_1533.z, x_1533.z, x_1533.z) * x_1535);
        let x_1537 : vec4<f32> = u_xlat7;
        let x_1539 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1537.w, x_1537.w, x_1537.w, x_1537.w) * x_1539);
        let x_1542 : vec4<f32> = u_xlat12;
        let x_1543 : vec2<f32> = vec2<f32>(x_1542.x, x_1542.y);
        let x_1545 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1543.x, x_1543.y, x_1545);
        let x_1552 : vec3<f32> = txVec13;
        let x_1554 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1552.xy, x_1552.z);
        u_xlat82 = x_1554;
        let x_1556 : vec4<f32> = u_xlat12;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.z, x_1556.w);
        let x_1559 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec14;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1566.xy, x_1566.z);
        u_xlat83 = x_1568;
        let x_1569 : f32 = u_xlat83;
        let x_1571 : f32 = u_xlat17.y;
        u_xlat83 = (x_1569 * x_1571);
        let x_1574 : f32 = u_xlat17.x;
        let x_1575 : f32 = u_xlat82;
        let x_1577 : f32 = u_xlat83;
        u_xlat82 = ((x_1574 * x_1575) + x_1577);
        let x_1580 : vec2<f32> = u_xlat58;
        let x_1582 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1580.x, x_1580.y, x_1582);
        let x_1589 : vec3<f32> = txVec15;
        let x_1591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1589.xy, x_1589.z);
        u_xlat83 = x_1591;
        let x_1593 : f32 = u_xlat17.z;
        let x_1594 : f32 = u_xlat83;
        let x_1596 : f32 = u_xlat82;
        u_xlat82 = ((x_1593 * x_1594) + x_1596);
        let x_1599 : vec4<f32> = u_xlat15;
        let x_1600 : vec2<f32> = vec2<f32>(x_1599.x, x_1599.y);
        let x_1602 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec16;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1609.xy, x_1609.z);
        u_xlat83 = x_1611;
        let x_1613 : f32 = u_xlat17.w;
        let x_1614 : f32 = u_xlat83;
        let x_1616 : f32 = u_xlat82;
        u_xlat82 = ((x_1613 * x_1614) + x_1616);
        let x_1619 : vec4<f32> = u_xlat13;
        let x_1620 : vec2<f32> = vec2<f32>(x_1619.x, x_1619.y);
        let x_1622 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec17;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1629.xy, x_1629.z);
        u_xlat83 = x_1631;
        let x_1633 : f32 = u_xlat18.x;
        let x_1634 : f32 = u_xlat83;
        let x_1636 : f32 = u_xlat82;
        u_xlat82 = ((x_1633 * x_1634) + x_1636);
        let x_1639 : vec4<f32> = u_xlat13;
        let x_1640 : vec2<f32> = vec2<f32>(x_1639.z, x_1639.w);
        let x_1642 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1640.x, x_1640.y, x_1642);
        let x_1649 : vec3<f32> = txVec18;
        let x_1651 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1649.xy, x_1649.z);
        u_xlat83 = x_1651;
        let x_1653 : f32 = u_xlat18.y;
        let x_1654 : f32 = u_xlat83;
        let x_1656 : f32 = u_xlat82;
        u_xlat82 = ((x_1653 * x_1654) + x_1656);
        let x_1659 : vec4<f32> = u_xlat14;
        let x_1660 : vec2<f32> = vec2<f32>(x_1659.x, x_1659.y);
        let x_1662 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1660.x, x_1660.y, x_1662);
        let x_1669 : vec3<f32> = txVec19;
        let x_1671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1669.xy, x_1669.z);
        u_xlat83 = x_1671;
        let x_1673 : f32 = u_xlat18.z;
        let x_1674 : f32 = u_xlat83;
        let x_1676 : f32 = u_xlat82;
        u_xlat82 = ((x_1673 * x_1674) + x_1676);
        let x_1679 : vec4<f32> = u_xlat15;
        let x_1680 : vec2<f32> = vec2<f32>(x_1679.z, x_1679.w);
        let x_1682 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
        let x_1689 : vec3<f32> = txVec20;
        let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1689.xy, x_1689.z);
        u_xlat83 = x_1691;
        let x_1693 : f32 = u_xlat18.w;
        let x_1694 : f32 = u_xlat83;
        let x_1696 : f32 = u_xlat82;
        u_xlat82 = ((x_1693 * x_1694) + x_1696);
        let x_1699 : vec4<f32> = u_xlat16;
        let x_1700 : vec2<f32> = vec2<f32>(x_1699.x, x_1699.y);
        let x_1702 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1700.x, x_1700.y, x_1702);
        let x_1709 : vec3<f32> = txVec21;
        let x_1711 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1709.xy, x_1709.z);
        u_xlat83 = x_1711;
        let x_1713 : f32 = u_xlat19.x;
        let x_1714 : f32 = u_xlat83;
        let x_1716 : f32 = u_xlat82;
        u_xlat82 = ((x_1713 * x_1714) + x_1716);
        let x_1719 : vec4<f32> = u_xlat16;
        let x_1720 : vec2<f32> = vec2<f32>(x_1719.z, x_1719.w);
        let x_1722 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1720.x, x_1720.y, x_1722);
        let x_1729 : vec3<f32> = txVec22;
        let x_1731 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1729.xy, x_1729.z);
        u_xlat83 = x_1731;
        let x_1733 : f32 = u_xlat19.y;
        let x_1734 : f32 = u_xlat83;
        let x_1736 : f32 = u_xlat82;
        u_xlat82 = ((x_1733 * x_1734) + x_1736);
        let x_1739 : vec3<f32> = u_xlat34;
        let x_1740 : vec2<f32> = vec2<f32>(x_1739.x, x_1739.y);
        let x_1742 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1740.x, x_1740.y, x_1742);
        let x_1749 : vec3<f32> = txVec23;
        let x_1751 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1749.xy, x_1749.z);
        u_xlat83 = x_1751;
        let x_1753 : f32 = u_xlat19.z;
        let x_1754 : f32 = u_xlat83;
        let x_1756 : f32 = u_xlat82;
        u_xlat82 = ((x_1753 * x_1754) + x_1756);
        let x_1759 : vec2<f32> = u_xlat66;
        let x_1761 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1759.x, x_1759.y, x_1761);
        let x_1768 : vec3<f32> = txVec24;
        let x_1770 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1768.xy, x_1768.z);
        u_xlat83 = x_1770;
        let x_1772 : f32 = u_xlat19.w;
        let x_1773 : f32 = u_xlat83;
        let x_1775 : f32 = u_xlat82;
        u_xlat82 = ((x_1772 * x_1773) + x_1775);
        let x_1778 : vec4<f32> = u_xlat11;
        let x_1779 : vec2<f32> = vec2<f32>(x_1778.x, x_1778.y);
        let x_1781 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1779.x, x_1779.y, x_1781);
        let x_1788 : vec3<f32> = txVec25;
        let x_1790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1788.xy, x_1788.z);
        u_xlat83 = x_1790;
        let x_1792 : f32 = u_xlat7.x;
        let x_1793 : f32 = u_xlat83;
        let x_1795 : f32 = u_xlat82;
        u_xlat82 = ((x_1792 * x_1793) + x_1795);
        let x_1798 : vec4<f32> = u_xlat11;
        let x_1799 : vec2<f32> = vec2<f32>(x_1798.z, x_1798.w);
        let x_1801 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1799.x, x_1799.y, x_1801);
        let x_1808 : vec3<f32> = txVec26;
        let x_1810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1808.xy, x_1808.z);
        u_xlat83 = x_1810;
        let x_1812 : f32 = u_xlat7.y;
        let x_1813 : f32 = u_xlat83;
        let x_1815 : f32 = u_xlat82;
        u_xlat82 = ((x_1812 * x_1813) + x_1815);
        let x_1818 : vec2<f32> = u_xlat61;
        let x_1820 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1818.x, x_1818.y, x_1820);
        let x_1827 : vec3<f32> = txVec27;
        let x_1829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1827.xy, x_1827.z);
        u_xlat83 = x_1829;
        let x_1831 : f32 = u_xlat7.z;
        let x_1832 : f32 = u_xlat83;
        let x_1834 : f32 = u_xlat82;
        u_xlat82 = ((x_1831 * x_1832) + x_1834);
        let x_1837 : vec4<f32> = u_xlat6;
        let x_1838 : vec2<f32> = vec2<f32>(x_1837.x, x_1837.y);
        let x_1840 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1838.x, x_1838.y, x_1840);
        let x_1847 : vec3<f32> = txVec28;
        let x_1849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1847.xy, x_1847.z);
        u_xlat83 = x_1849;
        let x_1851 : f32 = u_xlat7.w;
        let x_1852 : f32 = u_xlat83;
        let x_1854 : f32 = u_xlat82;
        u_xlat81 = ((x_1851 * x_1852) + x_1854);
      }
    }
  } else {
    let x_1858 : vec4<f32> = vs_INTERP3;
    let x_1859 : vec2<f32> = vec2<f32>(x_1858.x, x_1858.y);
    let x_1861 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1859.x, x_1859.y, x_1861);
    let x_1868 : vec3<f32> = txVec29;
    let x_1870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1868.xy, x_1868.z);
    u_xlat81 = x_1870;
  }
  let x_1872 : f32 = x_638.x_MainLightShadowParams.x;
  u_xlat82 = (-(x_1872) + 1.0f);
  let x_1875 : f32 = u_xlat81;
  let x_1877 : f32 = x_638.x_MainLightShadowParams.x;
  let x_1879 : f32 = u_xlat82;
  u_xlat81 = ((x_1875 * x_1877) + x_1879);
  let x_1882 : f32 = vs_INTERP3.z;
  u_xlatb82 = (0.0f >= x_1882);
  let x_1886 : f32 = vs_INTERP3.z;
  u_xlatb83 = (x_1886 >= 1.0f);
  let x_1888 : bool = u_xlatb82;
  let x_1889 : bool = u_xlatb83;
  u_xlatb82 = (x_1888 | x_1889);
  let x_1891 : bool = u_xlatb82;
  let x_1892 : f32 = u_xlat81;
  u_xlat81 = select(x_1892, 1.0f, x_1891);
  let x_1894 : vec3<f32> = vs_INTERP7;
  let x_1896 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1898 : vec3<f32> = (x_1894 + -(x_1896));
  let x_1899 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1901 : vec4<f32> = u_xlat6;
  let x_1903 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_1901.x, x_1901.y, x_1901.z), vec3<f32>(x_1903.x, x_1903.y, x_1903.z));
  let x_1906 : f32 = u_xlat82;
  let x_1908 : f32 = x_638.x_MainLightShadowParams.z;
  let x_1911 : f32 = x_638.x_MainLightShadowParams.w;
  u_xlat83 = ((x_1906 * x_1908) + x_1911);
  let x_1913 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1913, 0.0f, 1.0f);
  let x_1915 : f32 = u_xlat81;
  u_xlat6.x = (-(x_1915) + 1.0f);
  let x_1919 : f32 = u_xlat83;
  let x_1921 : f32 = u_xlat6.x;
  let x_1923 : f32 = u_xlat81;
  u_xlat81 = ((x_1919 * x_1921) + x_1923);
  let x_1932 : f32 = x_1930.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_1932 == -1.0f));
  let x_1934 : bool = u_xlatb83;
  if (x_1934) {
    let x_1937 : vec3<f32> = vs_INTERP7;
    let x_1940 : vec4<f32> = x_1930.x_MainLightWorldToLight[1i];
    let x_1942 : vec2<f32> = (vec2<f32>(x_1937.y, x_1937.y) * vec2<f32>(x_1940.x, x_1940.y));
    let x_1943 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1942.x, x_1942.y, x_1943.z, x_1943.w);
    let x_1946 : vec4<f32> = x_1930.x_MainLightWorldToLight[0i];
    let x_1948 : vec3<f32> = vs_INTERP7;
    let x_1951 : vec4<f32> = u_xlat6;
    let x_1953 : vec2<f32> = ((vec2<f32>(x_1946.x, x_1946.y) * vec2<f32>(x_1948.x, x_1948.x)) + vec2<f32>(x_1951.x, x_1951.y));
    let x_1954 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1953.x, x_1953.y, x_1954.z, x_1954.w);
    let x_1957 : vec4<f32> = x_1930.x_MainLightWorldToLight[2i];
    let x_1959 : vec3<f32> = vs_INTERP7;
    let x_1962 : vec4<f32> = u_xlat6;
    let x_1964 : vec2<f32> = ((vec2<f32>(x_1957.x, x_1957.y) * vec2<f32>(x_1959.z, x_1959.z)) + vec2<f32>(x_1962.x, x_1962.y));
    let x_1965 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1964.x, x_1964.y, x_1965.z, x_1965.w);
    let x_1967 : vec4<f32> = u_xlat6;
    let x_1970 : vec4<f32> = x_1930.x_MainLightWorldToLight[3i];
    let x_1972 : vec2<f32> = (vec2<f32>(x_1967.x, x_1967.y) + vec2<f32>(x_1970.x, x_1970.y));
    let x_1973 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1972.x, x_1972.y, x_1973.z, x_1973.w);
    let x_1975 : vec4<f32> = u_xlat6;
    let x_1978 : vec2<f32> = ((vec2<f32>(x_1975.x, x_1975.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1979 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1978.x, x_1978.y, x_1979.z, x_1979.w);
    let x_1986 : vec4<f32> = u_xlat6;
    let x_1989 : f32 = x_29.x_GlobalMipBias.x;
    let x_1990 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1986.x, x_1986.y), x_1989);
    u_xlat6 = x_1990;
    let x_1993 : f32 = x_1930.x_MainLightCookieTextureFormat;
    let x_1995 : f32 = x_1930.x_MainLightCookieTextureFormat;
    let x_1997 : f32 = x_1930.x_MainLightCookieTextureFormat;
    let x_1999 : f32 = x_1930.x_MainLightCookieTextureFormat;
    let x_2000 : vec4<f32> = vec4<f32>(x_1993, x_1995, x_1997, x_1999);
    let x_2008 : vec4<bool> = (vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2000.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2008.x, x_2008.y);
    let x_2011 : bool = u_xlatb7.y;
    if (x_2011) {
      let x_2016 : f32 = u_xlat6.w;
      x_2012 = x_2016;
    } else {
      let x_2019 : f32 = u_xlat6.x;
      x_2012 = x_2019;
    }
    let x_2020 : f32 = x_2012;
    u_xlat83 = x_2020;
    let x_2022 : bool = u_xlatb7.x;
    if (x_2022) {
      let x_2026 : vec4<f32> = u_xlat6;
      x_2023 = vec3<f32>(x_2026.x, x_2026.y, x_2026.z);
    } else {
      let x_2029 : f32 = u_xlat83;
      x_2023 = vec3<f32>(x_2029, x_2029, x_2029);
    }
    let x_2031 : vec3<f32> = x_2023;
    let x_2032 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2031.x, x_2031.y, x_2031.z, x_2032.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2038 : vec4<f32> = u_xlat6;
  let x_2041 : vec4<f32> = x_29.x_MainLightColor;
  let x_2043 : vec3<f32> = (vec3<f32>(x_2038.x, x_2038.y, x_2038.z) * vec3<f32>(x_2041.x, x_2041.y, x_2041.z));
  let x_2044 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2043.x, x_2043.y, x_2043.z, x_2044.w);
  let x_2046 : vec3<f32> = u_xlat4;
  let x_2048 : vec4<f32> = u_xlat1;
  u_xlat83 = dot(-(x_2046), vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
  let x_2051 : f32 = u_xlat83;
  let x_2052 : f32 = u_xlat83;
  u_xlat83 = (x_2051 + x_2052);
  let x_2054 : vec4<f32> = u_xlat1;
  let x_2056 : f32 = u_xlat83;
  let x_2060 : vec3<f32> = u_xlat4;
  let x_2062 : vec3<f32> = ((vec3<f32>(x_2054.x, x_2054.y, x_2054.z) * -(vec3<f32>(x_2056, x_2056, x_2056))) + -(x_2060));
  let x_2063 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2062.x, x_2062.y, x_2062.z, x_2063.w);
  let x_2065 : vec4<f32> = u_xlat1;
  let x_2067 : vec3<f32> = u_xlat4;
  u_xlat83 = dot(vec3<f32>(x_2065.x, x_2065.y, x_2065.z), x_2067);
  let x_2069 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2069, 0.0f, 1.0f);
  let x_2071 : f32 = u_xlat83;
  u_xlat83 = (-(x_2071) + 1.0f);
  let x_2074 : f32 = u_xlat83;
  let x_2075 : f32 = u_xlat83;
  u_xlat83 = (x_2074 * x_2075);
  let x_2077 : f32 = u_xlat83;
  let x_2078 : f32 = u_xlat83;
  u_xlat83 = (x_2077 * x_2078);
  let x_2081 : f32 = u_xlat78;
  u_xlat84 = ((-(x_2081) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2087 : f32 = u_xlat78;
  let x_2088 : f32 = u_xlat84;
  u_xlat78 = (x_2087 * x_2088);
  let x_2090 : f32 = u_xlat78;
  u_xlat78 = (x_2090 * 6.0f);
  let x_2100 : vec4<f32> = u_xlat7;
  let x_2102 : f32 = u_xlat78;
  let x_2103 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2100.x, x_2100.y, x_2100.z), x_2102);
  u_xlat7 = x_2103;
  let x_2105 : f32 = u_xlat7.w;
  u_xlat78 = (x_2105 + -1.0f);
  let x_2108 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2109 : f32 = u_xlat78;
  u_xlat78 = ((x_2108 * x_2109) + 1.0f);
  let x_2112 : f32 = u_xlat78;
  u_xlat78 = max(x_2112, 0.0f);
  let x_2114 : f32 = u_xlat78;
  u_xlat78 = log2(x_2114);
  let x_2116 : f32 = u_xlat78;
  let x_2118 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_2116 * x_2118);
  let x_2120 : f32 = u_xlat78;
  u_xlat78 = exp2(x_2120);
  let x_2122 : f32 = u_xlat78;
  let x_2124 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_2122 * x_2124);
  let x_2126 : vec4<f32> = u_xlat7;
  let x_2128 : f32 = u_xlat78;
  let x_2130 : vec3<f32> = (vec3<f32>(x_2126.x, x_2126.y, x_2126.z) * vec3<f32>(x_2128, x_2128, x_2128));
  let x_2131 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2130.x, x_2130.y, x_2130.z, x_2131.w);
  let x_2133 : vec4<f32> = u_xlat2;
  let x_2135 : vec4<f32> = u_xlat2;
  let x_2139 : vec2<f32> = ((vec2<f32>(x_2133.x, x_2133.x) * vec2<f32>(x_2135.x, x_2135.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2140 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2139.x, x_2139.y, x_2140.z, x_2140.w);
  let x_2143 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_2143);
  let x_2145 : vec4<f32> = u_xlat0;
  let x_2148 : f32 = u_xlat79;
  u_xlat34 = (-(vec3<f32>(x_2145.x, x_2145.y, x_2145.z)) + vec3<f32>(x_2148, x_2148, x_2148));
  let x_2151 : f32 = u_xlat83;
  let x_2153 : vec3<f32> = u_xlat34;
  let x_2155 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2151, x_2151, x_2151) * x_2153) + vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
  let x_2158 : f32 = u_xlat78;
  let x_2160 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2158, x_2158, x_2158) * x_2160);
  let x_2162 : vec4<f32> = u_xlat7;
  let x_2164 : vec3<f32> = u_xlat34;
  let x_2165 : vec3<f32> = (vec3<f32>(x_2162.x, x_2162.y, x_2162.z) * x_2164);
  let x_2166 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2165.x, x_2165.y, x_2165.z, x_2166.w);
  let x_2168 : vec4<f32> = u_xlat3;
  let x_2170 : vec3<f32> = u_xlat5;
  let x_2172 : vec4<f32> = u_xlat7;
  let x_2174 : vec3<f32> = ((vec3<f32>(x_2168.x, x_2168.y, x_2168.z) * x_2170) + vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
  let x_2175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
  let x_2177 : f32 = u_xlat81;
  let x_2179 : f32 = x_349.unity_LightData.z;
  u_xlat78 = (x_2177 * x_2179);
  let x_2181 : vec4<f32> = u_xlat1;
  let x_2184 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_2181.x, x_2181.y, x_2181.z), vec3<f32>(x_2184.x, x_2184.y, x_2184.z));
  let x_2187 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2187, 0.0f, 1.0f);
  let x_2189 : f32 = u_xlat78;
  let x_2190 : f32 = u_xlat79;
  u_xlat78 = (x_2189 * x_2190);
  let x_2192 : f32 = u_xlat78;
  let x_2194 : vec4<f32> = u_xlat6;
  let x_2196 : vec3<f32> = (vec3<f32>(x_2192, x_2192, x_2192) * vec3<f32>(x_2194.x, x_2194.y, x_2194.z));
  let x_2197 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2197.w);
  let x_2199 : vec3<f32> = u_xlat4;
  let x_2201 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2203 : vec3<f32> = (x_2199 + vec3<f32>(x_2201.x, x_2201.y, x_2201.z));
  let x_2204 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2203.x, x_2203.y, x_2203.z, x_2204.w);
  let x_2206 : vec4<f32> = u_xlat7;
  let x_2208 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2206.x, x_2206.y, x_2206.z), vec3<f32>(x_2208.x, x_2208.y, x_2208.z));
  let x_2211 : f32 = u_xlat78;
  u_xlat78 = max(x_2211, 1.17549435e-38f);
  let x_2214 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2214);
  let x_2216 : f32 = u_xlat78;
  let x_2218 : vec4<f32> = u_xlat7;
  let x_2220 : vec3<f32> = (vec3<f32>(x_2216, x_2216, x_2216) * vec3<f32>(x_2218.x, x_2218.y, x_2218.z));
  let x_2221 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2220.x, x_2220.y, x_2220.z, x_2221.w);
  let x_2223 : vec4<f32> = u_xlat1;
  let x_2225 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2223.x, x_2223.y, x_2223.z), vec3<f32>(x_2225.x, x_2225.y, x_2225.z));
  let x_2228 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2228, 0.0f, 1.0f);
  let x_2231 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2233 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2231.x, x_2231.y, x_2231.z), vec3<f32>(x_2233.x, x_2233.y, x_2233.z));
  let x_2236 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2236, 0.0f, 1.0f);
  let x_2238 : f32 = u_xlat78;
  let x_2239 : f32 = u_xlat78;
  u_xlat78 = (x_2238 * x_2239);
  let x_2241 : f32 = u_xlat78;
  let x_2243 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2241 * x_2243) + 1.00001001358032226562f);
  let x_2247 : f32 = u_xlat79;
  let x_2248 : f32 = u_xlat79;
  u_xlat79 = (x_2247 * x_2248);
  let x_2250 : f32 = u_xlat78;
  let x_2251 : f32 = u_xlat78;
  u_xlat78 = (x_2250 * x_2251);
  let x_2253 : f32 = u_xlat79;
  u_xlat79 = max(x_2253, 0.10000000149011611938f);
  let x_2256 : f32 = u_xlat78;
  let x_2257 : f32 = u_xlat79;
  u_xlat78 = (x_2256 * x_2257);
  let x_2259 : f32 = u_xlat80;
  let x_2260 : f32 = u_xlat78;
  u_xlat78 = (x_2259 * x_2260);
  let x_2262 : f32 = u_xlat28;
  let x_2263 : f32 = u_xlat78;
  u_xlat78 = (x_2262 / x_2263);
  let x_2265 : vec4<f32> = u_xlat0;
  let x_2267 : f32 = u_xlat78;
  let x_2270 : vec3<f32> = u_xlat5;
  let x_2271 : vec3<f32> = ((vec3<f32>(x_2265.x, x_2265.y, x_2265.z) * vec3<f32>(x_2267, x_2267, x_2267)) + x_2270);
  let x_2272 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2271.x, x_2271.y, x_2271.z, x_2272.w);
  let x_2274 : vec4<f32> = u_xlat6;
  let x_2276 : vec4<f32> = u_xlat7;
  let x_2278 : vec3<f32> = (vec3<f32>(x_2274.x, x_2274.y, x_2274.z) * vec3<f32>(x_2276.x, x_2276.y, x_2276.z));
  let x_2279 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2278.x, x_2278.y, x_2278.z, x_2279.w);
  let x_2282 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2284 : f32 = x_349.unity_LightData.y;
  u_xlat78 = min(x_2282, x_2284);
  let x_2288 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2288));
  let x_2291 : f32 = u_xlat82;
  let x_2294 : f32 = x_638.x_AdditionalShadowFadeParams.x;
  let x_2297 : f32 = x_638.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2291 * x_2294) + x_2297);
  let x_2299 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2299, 0.0f, 1.0f);
  let x_2302 : f32 = x_1930.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2304 : f32 = x_1930.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2306 : f32 = x_1930.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2308 : f32 = x_1930.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2309 : vec4<f32> = vec4<f32>(x_2302, x_2304, x_2306, x_2308);
  let x_2315 : vec4<bool> = (vec4<f32>(x_2309.x, x_2309.y, x_2309.z, x_2309.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2315.x, x_2315.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2327 : u32 = u_xlatu_loop_1;
    let x_2328 : u32 = u_xlatu78;
    if ((x_2327 < x_2328)) {
    } else {
      break;
    }
    let x_2331 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2331 >> 2u);
    let x_2335 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2335 & 3u));
    let x_2338 : u32 = u_xlatu81;
    let x_2341 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2338)];
    let x_2351 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2356 : vec4<u32> = indexable[x_2351];
    u_xlat81 = dot(x_2341, bitcast<vec4<f32>>(x_2356));
    let x_2360 : f32 = u_xlat81;
    u_xlati81 = i32(x_2360);
    let x_2362 : vec3<f32> = vs_INTERP7;
    let x_2373 : i32 = u_xlati81;
    let x_2375 : vec4<f32> = x_2372.x_AdditionalLightsPosition[x_2373];
    let x_2378 : i32 = u_xlati81;
    let x_2380 : vec4<f32> = x_2372.x_AdditionalLightsPosition[x_2378];
    let x_2382 : vec3<f32> = ((-(x_2362) * vec3<f32>(x_2375.w, x_2375.w, x_2375.w)) + vec3<f32>(x_2380.x, x_2380.y, x_2380.z));
    let x_2383 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2382.x, x_2382.y, x_2382.z, x_2383.w);
    let x_2385 : vec4<f32> = u_xlat9;
    let x_2387 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2385.x, x_2385.y, x_2385.z), vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
    let x_2390 : f32 = u_xlat82;
    u_xlat82 = max(x_2390, 0.00006103515625f);
    let x_2393 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2393);
    let x_2395 : f32 = u_xlat83;
    let x_2397 : vec4<f32> = u_xlat9;
    let x_2399 : vec3<f32> = (vec3<f32>(x_2395, x_2395, x_2395) * vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
    let x_2400 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
    let x_2402 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2402);
    let x_2404 : f32 = u_xlat82;
    let x_2405 : i32 = u_xlati81;
    let x_2407 : f32 = x_2372.x_AdditionalLightsAttenuation[x_2405].x;
    u_xlat82 = (x_2404 * x_2407);
    let x_2409 : f32 = u_xlat82;
    let x_2411 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2409) * x_2411) + 1.0f);
    let x_2414 : f32 = u_xlat82;
    u_xlat82 = max(x_2414, 0.0f);
    let x_2416 : f32 = u_xlat82;
    let x_2417 : f32 = u_xlat82;
    u_xlat82 = (x_2416 * x_2417);
    let x_2419 : f32 = u_xlat82;
    let x_2420 : f32 = u_xlat84;
    u_xlat82 = (x_2419 * x_2420);
    let x_2422 : i32 = u_xlati81;
    let x_2424 : vec4<f32> = x_2372.x_AdditionalLightsSpotDir[x_2422];
    let x_2426 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2424.x, x_2424.y, x_2424.z), vec3<f32>(x_2426.x, x_2426.y, x_2426.z));
    let x_2429 : f32 = u_xlat84;
    let x_2430 : i32 = u_xlati81;
    let x_2432 : f32 = x_2372.x_AdditionalLightsAttenuation[x_2430].z;
    let x_2434 : i32 = u_xlati81;
    let x_2436 : f32 = x_2372.x_AdditionalLightsAttenuation[x_2434].w;
    u_xlat84 = ((x_2429 * x_2432) + x_2436);
    let x_2438 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2438, 0.0f, 1.0f);
    let x_2440 : f32 = u_xlat84;
    let x_2441 : f32 = u_xlat84;
    u_xlat84 = (x_2440 * x_2441);
    let x_2443 : f32 = u_xlat82;
    let x_2444 : f32 = u_xlat84;
    u_xlat82 = (x_2443 * x_2444);
    let x_2448 : i32 = u_xlati81;
    let x_2450 : f32 = x_638.x_AdditionalShadowParams[x_2448].w;
    u_xlati84 = i32(x_2450);
    let x_2453 : i32 = u_xlati84;
    u_xlatb59 = (x_2453 >= 0i);
    let x_2455 : bool = u_xlatb59;
    if (x_2455) {
      let x_2459 : i32 = u_xlati81;
      let x_2461 : f32 = x_638.x_AdditionalShadowParams[x_2459].z;
      u_xlatb59 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2461, x_2461, x_2461, x_2461))));
      let x_2465 : bool = u_xlatb59;
      if (x_2465) {
        let x_2470 : vec4<f32> = u_xlat10;
        let x_2473 : vec4<f32> = u_xlat10;
        let x_2476 : vec4<bool> = (abs(vec4<f32>(x_2470.z, x_2470.z, x_2470.y, x_2470.z)) >= abs(vec4<f32>(x_2473.x, x_2473.y, x_2473.x, x_2473.x)));
        let x_2478 : vec3<bool> = vec3<bool>(x_2476.x, x_2476.y, x_2476.z);
        let x_2479 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2478.x, x_2478.y, x_2478.z, x_2479.w);
        let x_2482 : bool = u_xlatb11.y;
        let x_2484 : bool = u_xlatb11.x;
        u_xlatb59 = (x_2482 & x_2484);
        let x_2486 : vec4<f32> = u_xlat10;
        let x_2489 : vec4<bool> = (-(vec4<f32>(x_2486.z, x_2486.y, x_2486.z, x_2486.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2490 : vec3<bool> = vec3<bool>(x_2489.x, x_2489.y, x_2489.w);
        let x_2491 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2490.x, x_2490.y, x_2491.z, x_2490.z);
        let x_2494 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2494);
        let x_2499 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2499);
        let x_2505 : bool = u_xlatb11.w;
        u_xlat85 = select(0.0f, 1.0f, x_2505);
        let x_2508 : bool = u_xlatb11.z;
        if (x_2508) {
          let x_2513 : f32 = u_xlat11.y;
          x_2509 = x_2513;
        } else {
          let x_2515 : f32 = u_xlat85;
          x_2509 = x_2515;
        }
        let x_2516 : f32 = x_2509;
        u_xlat85 = x_2516;
        let x_2518 : bool = u_xlatb59;
        if (x_2518) {
          let x_2523 : f32 = u_xlat11.x;
          x_2519 = x_2523;
        } else {
          let x_2525 : f32 = u_xlat85;
          x_2519 = x_2525;
        }
        let x_2526 : f32 = x_2519;
        u_xlat59.x = x_2526;
        let x_2528 : i32 = u_xlati81;
        let x_2530 : f32 = x_638.x_AdditionalShadowParams[x_2528].w;
        u_xlat85 = trunc(x_2530);
        let x_2533 : f32 = u_xlat59.x;
        let x_2534 : f32 = u_xlat85;
        u_xlat59.x = (x_2533 + x_2534);
        let x_2538 : f32 = u_xlat59.x;
        u_xlati84 = i32(x_2538);
      }
      let x_2540 : i32 = u_xlati84;
      u_xlati84 = (x_2540 << bitcast<u32>(2i));
      let x_2542 : vec3<f32> = vs_INTERP7;
      let x_2545 : i32 = u_xlati84;
      let x_2548 : i32 = u_xlati84;
      let x_2552 : vec4<f32> = x_638.x_AdditionalLightsWorldToShadow[((x_2545 + 1i) / 4i)][((x_2548 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2542.y, x_2542.y, x_2542.y, x_2542.y) * x_2552);
      let x_2554 : i32 = u_xlati84;
      let x_2556 : i32 = u_xlati84;
      let x_2559 : vec4<f32> = x_638.x_AdditionalLightsWorldToShadow[(x_2554 / 4i)][(x_2556 % 4i)];
      let x_2560 : vec3<f32> = vs_INTERP7;
      let x_2563 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2559 * vec4<f32>(x_2560.x, x_2560.x, x_2560.x, x_2560.x)) + x_2563);
      let x_2565 : i32 = u_xlati84;
      let x_2568 : i32 = u_xlati84;
      let x_2572 : vec4<f32> = x_638.x_AdditionalLightsWorldToShadow[((x_2565 + 2i) / 4i)][((x_2568 + 2i) % 4i)];
      let x_2573 : vec3<f32> = vs_INTERP7;
      let x_2576 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2572 * vec4<f32>(x_2573.z, x_2573.z, x_2573.z, x_2573.z)) + x_2576);
      let x_2578 : vec4<f32> = u_xlat11;
      let x_2579 : i32 = u_xlati84;
      let x_2582 : i32 = u_xlati84;
      let x_2586 : vec4<f32> = x_638.x_AdditionalLightsWorldToShadow[((x_2579 + 3i) / 4i)][((x_2582 + 3i) % 4i)];
      u_xlat11 = (x_2578 + x_2586);
      let x_2588 : vec4<f32> = u_xlat11;
      let x_2590 : vec4<f32> = u_xlat11;
      let x_2592 : vec3<f32> = (vec3<f32>(x_2588.x, x_2588.y, x_2588.z) / vec3<f32>(x_2590.w, x_2590.w, x_2590.w));
      let x_2593 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
      let x_2596 : i32 = u_xlati81;
      let x_2598 : f32 = x_638.x_AdditionalShadowParams[x_2596].y;
      u_xlatb84 = (0.0f < x_2598);
      let x_2600 : bool = u_xlatb84;
      if (x_2600) {
        let x_2603 : i32 = u_xlati81;
        let x_2605 : f32 = x_638.x_AdditionalShadowParams[x_2603].y;
        u_xlatb84 = (1.0f == x_2605);
        let x_2607 : bool = u_xlatb84;
        if (x_2607) {
          let x_2610 : vec4<f32> = u_xlat11;
          let x_2614 : vec4<f32> = x_638.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2610.x, x_2610.y, x_2610.x, x_2610.y) + x_2614);
          let x_2617 : vec4<f32> = u_xlat12;
          let x_2618 : vec2<f32> = vec2<f32>(x_2617.x, x_2617.y);
          let x_2620 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2618.x, x_2618.y, x_2620);
          let x_2628 : vec3<f32> = txVec30;
          let x_2630 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2628.xy, x_2628.z);
          u_xlat13.x = x_2630;
          let x_2633 : vec4<f32> = u_xlat12;
          let x_2634 : vec2<f32> = vec2<f32>(x_2633.z, x_2633.w);
          let x_2636 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2634.x, x_2634.y, x_2636);
          let x_2643 : vec3<f32> = txVec31;
          let x_2645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2643.xy, x_2643.z);
          u_xlat13.y = x_2645;
          let x_2647 : vec4<f32> = u_xlat11;
          let x_2651 : vec4<f32> = x_638.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2647.x, x_2647.y, x_2647.x, x_2647.y) + x_2651);
          let x_2654 : vec4<f32> = u_xlat12;
          let x_2655 : vec2<f32> = vec2<f32>(x_2654.x, x_2654.y);
          let x_2657 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2655.x, x_2655.y, x_2657);
          let x_2664 : vec3<f32> = txVec32;
          let x_2666 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2664.xy, x_2664.z);
          u_xlat13.z = x_2666;
          let x_2669 : vec4<f32> = u_xlat12;
          let x_2670 : vec2<f32> = vec2<f32>(x_2669.z, x_2669.w);
          let x_2672 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2670.x, x_2670.y, x_2672);
          let x_2679 : vec3<f32> = txVec33;
          let x_2681 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2679.xy, x_2679.z);
          u_xlat13.w = x_2681;
          let x_2683 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_2683, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2686 : i32 = u_xlati81;
          let x_2688 : f32 = x_638.x_AdditionalShadowParams[x_2686].y;
          u_xlatb59 = (2.0f == x_2688);
          let x_2690 : bool = u_xlatb59;
          if (x_2690) {
            let x_2693 : vec4<f32> = u_xlat11;
            let x_2697 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            u_xlat59 = ((vec2<f32>(x_2693.x, x_2693.y) * vec2<f32>(x_2697.z, x_2697.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2701 : vec2<f32> = u_xlat59;
            u_xlat59 = floor(x_2701);
            let x_2703 : vec4<f32> = u_xlat11;
            let x_2706 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2709 : vec2<f32> = u_xlat59;
            let x_2711 : vec2<f32> = ((vec2<f32>(x_2703.x, x_2703.y) * vec2<f32>(x_2706.z, x_2706.w)) + -(x_2709));
            let x_2712 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2711.x, x_2711.y, x_2712.z, x_2712.w);
            let x_2714 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2714.x, x_2714.x, x_2714.y, x_2714.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2717 : vec4<f32> = u_xlat13;
            let x_2719 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2717.x, x_2717.x, x_2717.z, x_2717.z) * vec4<f32>(x_2719.x, x_2719.x, x_2719.z, x_2719.z));
            let x_2723 : vec4<f32> = u_xlat14;
            u_xlat64 = (vec2<f32>(x_2723.y, x_2723.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2726 : vec4<f32> = u_xlat14;
            let x_2729 : vec4<f32> = u_xlat12;
            let x_2732 : vec2<f32> = ((vec2<f32>(x_2726.x, x_2726.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2729.x, x_2729.y)));
            let x_2733 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2732.x, x_2733.y, x_2732.y, x_2733.w);
            let x_2735 : vec4<f32> = u_xlat12;
            let x_2738 : vec2<f32> = (-(vec2<f32>(x_2735.x, x_2735.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2739 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2738.x, x_2738.y, x_2739.z, x_2739.w);
            let x_2741 : vec4<f32> = u_xlat12;
            u_xlat66 = min(vec2<f32>(x_2741.x, x_2741.y), vec2<f32>(0.0f, 0.0f));
            let x_2744 : vec2<f32> = u_xlat66;
            let x_2746 : vec2<f32> = u_xlat66;
            let x_2748 : vec4<f32> = u_xlat14;
            u_xlat66 = ((-(x_2744) * x_2746) + vec2<f32>(x_2748.x, x_2748.y));
            let x_2751 : vec4<f32> = u_xlat12;
            let x_2753 : vec2<f32> = max(vec2<f32>(x_2751.x, x_2751.y), vec2<f32>(0.0f, 0.0f));
            let x_2754 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2753.x, x_2753.y, x_2754.z, x_2754.w);
            let x_2756 : vec4<f32> = u_xlat12;
            let x_2759 : vec4<f32> = u_xlat12;
            let x_2762 : vec4<f32> = u_xlat13;
            let x_2764 : vec2<f32> = ((-(vec2<f32>(x_2756.x, x_2756.y)) * vec2<f32>(x_2759.x, x_2759.y)) + vec2<f32>(x_2762.y, x_2762.w));
            let x_2765 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2764.x, x_2764.y, x_2765.z, x_2765.w);
            let x_2767 : vec2<f32> = u_xlat66;
            u_xlat66 = (x_2767 + vec2<f32>(1.0f, 1.0f));
            let x_2769 : vec4<f32> = u_xlat12;
            let x_2771 : vec2<f32> = (vec2<f32>(x_2769.x, x_2769.y) + vec2<f32>(1.0f, 1.0f));
            let x_2772 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2771.x, x_2771.y, x_2772.z, x_2772.w);
            let x_2774 : vec4<f32> = u_xlat13;
            let x_2776 : vec2<f32> = (vec2<f32>(x_2774.x, x_2774.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2777 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2776.x, x_2776.y, x_2777.z, x_2777.w);
            let x_2779 : vec4<f32> = u_xlat14;
            let x_2781 : vec2<f32> = (vec2<f32>(x_2779.x, x_2779.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2782 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2781.x, x_2781.y, x_2782.z, x_2782.w);
            let x_2784 : vec2<f32> = u_xlat66;
            let x_2785 : vec2<f32> = (x_2784 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2786 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2785.x, x_2785.y, x_2786.z, x_2786.w);
            let x_2788 : vec4<f32> = u_xlat12;
            let x_2790 : vec2<f32> = (vec2<f32>(x_2788.x, x_2788.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2791 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2790.x, x_2790.y, x_2791.z, x_2791.w);
            let x_2793 : vec4<f32> = u_xlat13;
            let x_2795 : vec2<f32> = (vec2<f32>(x_2793.y, x_2793.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2796 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2795.x, x_2795.y, x_2796.z, x_2796.w);
            let x_2799 : f32 = u_xlat14.x;
            u_xlat15.z = x_2799;
            let x_2802 : f32 = u_xlat12.x;
            u_xlat15.w = x_2802;
            let x_2805 : f32 = u_xlat17.x;
            u_xlat16.z = x_2805;
            let x_2808 : f32 = u_xlat64.x;
            u_xlat16.w = x_2808;
            let x_2810 : vec4<f32> = u_xlat15;
            let x_2812 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_2810.z, x_2810.w, x_2810.x, x_2810.z) + vec4<f32>(x_2812.z, x_2812.w, x_2812.x, x_2812.z));
            let x_2816 : f32 = u_xlat15.y;
            u_xlat14.z = x_2816;
            let x_2819 : f32 = u_xlat12.y;
            u_xlat14.w = x_2819;
            let x_2822 : f32 = u_xlat16.y;
            u_xlat17.z = x_2822;
            let x_2825 : f32 = u_xlat64.y;
            u_xlat17.w = x_2825;
            let x_2827 : vec4<f32> = u_xlat14;
            let x_2829 : vec4<f32> = u_xlat17;
            let x_2831 : vec3<f32> = (vec3<f32>(x_2827.z, x_2827.y, x_2827.w) + vec3<f32>(x_2829.z, x_2829.y, x_2829.w));
            let x_2832 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2831.x, x_2831.y, x_2831.z, x_2832.w);
            let x_2834 : vec4<f32> = u_xlat16;
            let x_2836 : vec4<f32> = u_xlat13;
            let x_2838 : vec3<f32> = (vec3<f32>(x_2834.x, x_2834.z, x_2834.w) / vec3<f32>(x_2836.z, x_2836.w, x_2836.y));
            let x_2839 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2838.x, x_2838.y, x_2838.z, x_2839.w);
            let x_2841 : vec4<f32> = u_xlat14;
            let x_2843 : vec3<f32> = (vec3<f32>(x_2841.x, x_2841.y, x_2841.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2844 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2843.x, x_2843.y, x_2843.z, x_2844.w);
            let x_2846 : vec4<f32> = u_xlat17;
            let x_2848 : vec4<f32> = u_xlat12;
            let x_2850 : vec3<f32> = (vec3<f32>(x_2846.z, x_2846.y, x_2846.w) / vec3<f32>(x_2848.x, x_2848.y, x_2848.z));
            let x_2851 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2850.x, x_2850.y, x_2850.z, x_2851.w);
            let x_2853 : vec4<f32> = u_xlat15;
            let x_2855 : vec3<f32> = (vec3<f32>(x_2853.x, x_2853.y, x_2853.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2856 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2855.x, x_2855.y, x_2855.z, x_2856.w);
            let x_2858 : vec4<f32> = u_xlat14;
            let x_2861 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2863 : vec3<f32> = (vec3<f32>(x_2858.y, x_2858.x, x_2858.z) * vec3<f32>(x_2861.x, x_2861.x, x_2861.x));
            let x_2864 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2863.x, x_2863.y, x_2863.z, x_2864.w);
            let x_2866 : vec4<f32> = u_xlat15;
            let x_2869 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2871 : vec3<f32> = (vec3<f32>(x_2866.x, x_2866.y, x_2866.z) * vec3<f32>(x_2869.y, x_2869.y, x_2869.y));
            let x_2872 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2871.x, x_2871.y, x_2871.z, x_2872.w);
            let x_2875 : f32 = u_xlat15.x;
            u_xlat14.w = x_2875;
            let x_2877 : vec2<f32> = u_xlat59;
            let x_2880 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2883 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2877.x, x_2877.y, x_2877.x, x_2877.y) * vec4<f32>(x_2880.x, x_2880.y, x_2880.x, x_2880.y)) + vec4<f32>(x_2883.y, x_2883.w, x_2883.x, x_2883.w));
            let x_2886 : vec2<f32> = u_xlat59;
            let x_2888 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2891 : vec4<f32> = u_xlat14;
            let x_2893 : vec2<f32> = ((x_2886 * vec2<f32>(x_2888.x, x_2888.y)) + vec2<f32>(x_2891.z, x_2891.w));
            let x_2894 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2893.x, x_2893.y, x_2894.z, x_2894.w);
            let x_2897 : f32 = u_xlat14.y;
            u_xlat15.w = x_2897;
            let x_2899 : vec4<f32> = u_xlat15;
            let x_2900 : vec2<f32> = vec2<f32>(x_2899.y, x_2899.z);
            let x_2901 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2901.x, x_2900.x, x_2901.z, x_2900.y);
            let x_2903 : vec2<f32> = u_xlat59;
            let x_2906 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2909 : vec4<f32> = u_xlat14;
            u_xlat18 = ((vec4<f32>(x_2903.x, x_2903.y, x_2903.x, x_2903.y) * vec4<f32>(x_2906.x, x_2906.y, x_2906.x, x_2906.y)) + vec4<f32>(x_2909.x, x_2909.y, x_2909.z, x_2909.y));
            let x_2912 : vec2<f32> = u_xlat59;
            let x_2915 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2918 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2912.x, x_2912.y, x_2912.x, x_2912.y) * vec4<f32>(x_2915.x, x_2915.y, x_2915.x, x_2915.y)) + vec4<f32>(x_2918.w, x_2918.y, x_2918.w, x_2918.z));
            let x_2921 : vec2<f32> = u_xlat59;
            let x_2924 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_2927 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2921.x, x_2921.y, x_2921.x, x_2921.y) * vec4<f32>(x_2924.x, x_2924.y, x_2924.x, x_2924.y)) + vec4<f32>(x_2927.x, x_2927.w, x_2927.z, x_2927.w));
            let x_2930 : vec4<f32> = u_xlat12;
            let x_2932 : vec4<f32> = u_xlat13;
            u_xlat19 = (vec4<f32>(x_2930.x, x_2930.x, x_2930.x, x_2930.y) * vec4<f32>(x_2932.z, x_2932.w, x_2932.y, x_2932.z));
            let x_2936 : vec4<f32> = u_xlat12;
            let x_2938 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2936.y, x_2936.y, x_2936.z, x_2936.z) * x_2938);
            let x_2941 : f32 = u_xlat12.z;
            let x_2943 : f32 = u_xlat13.y;
            u_xlat59.x = (x_2941 * x_2943);
            let x_2947 : vec4<f32> = u_xlat16;
            let x_2948 : vec2<f32> = vec2<f32>(x_2947.x, x_2947.y);
            let x_2950 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2948.x, x_2948.y, x_2950);
            let x_2957 : vec3<f32> = txVec34;
            let x_2959 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2957.xy, x_2957.z);
            u_xlat85 = x_2959;
            let x_2961 : vec4<f32> = u_xlat16;
            let x_2962 : vec2<f32> = vec2<f32>(x_2961.z, x_2961.w);
            let x_2964 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2962.x, x_2962.y, x_2964);
            let x_2972 : vec3<f32> = txVec35;
            let x_2974 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2972.xy, x_2972.z);
            u_xlat87 = x_2974;
            let x_2975 : f32 = u_xlat87;
            let x_2977 : f32 = u_xlat19.y;
            u_xlat87 = (x_2975 * x_2977);
            let x_2980 : f32 = u_xlat19.x;
            let x_2981 : f32 = u_xlat85;
            let x_2983 : f32 = u_xlat87;
            u_xlat85 = ((x_2980 * x_2981) + x_2983);
            let x_2986 : vec4<f32> = u_xlat17;
            let x_2987 : vec2<f32> = vec2<f32>(x_2986.x, x_2986.y);
            let x_2989 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2987.x, x_2987.y, x_2989);
            let x_2996 : vec3<f32> = txVec36;
            let x_2998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2996.xy, x_2996.z);
            u_xlat87 = x_2998;
            let x_3000 : f32 = u_xlat19.z;
            let x_3001 : f32 = u_xlat87;
            let x_3003 : f32 = u_xlat85;
            u_xlat85 = ((x_3000 * x_3001) + x_3003);
            let x_3006 : vec4<f32> = u_xlat15;
            let x_3007 : vec2<f32> = vec2<f32>(x_3006.x, x_3006.y);
            let x_3009 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
            let x_3016 : vec3<f32> = txVec37;
            let x_3018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
            u_xlat87 = x_3018;
            let x_3020 : f32 = u_xlat19.w;
            let x_3021 : f32 = u_xlat87;
            let x_3023 : f32 = u_xlat85;
            u_xlat85 = ((x_3020 * x_3021) + x_3023);
            let x_3026 : vec4<f32> = u_xlat18;
            let x_3027 : vec2<f32> = vec2<f32>(x_3026.x, x_3026.y);
            let x_3029 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3027.x, x_3027.y, x_3029);
            let x_3036 : vec3<f32> = txVec38;
            let x_3038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
            u_xlat87 = x_3038;
            let x_3040 : f32 = u_xlat20.x;
            let x_3041 : f32 = u_xlat87;
            let x_3043 : f32 = u_xlat85;
            u_xlat85 = ((x_3040 * x_3041) + x_3043);
            let x_3046 : vec4<f32> = u_xlat18;
            let x_3047 : vec2<f32> = vec2<f32>(x_3046.z, x_3046.w);
            let x_3049 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
            let x_3056 : vec3<f32> = txVec39;
            let x_3058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
            u_xlat87 = x_3058;
            let x_3060 : f32 = u_xlat20.y;
            let x_3061 : f32 = u_xlat87;
            let x_3063 : f32 = u_xlat85;
            u_xlat85 = ((x_3060 * x_3061) + x_3063);
            let x_3066 : vec4<f32> = u_xlat15;
            let x_3067 : vec2<f32> = vec2<f32>(x_3066.z, x_3066.w);
            let x_3069 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3067.x, x_3067.y, x_3069);
            let x_3076 : vec3<f32> = txVec40;
            let x_3078 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3076.xy, x_3076.z);
            u_xlat87 = x_3078;
            let x_3080 : f32 = u_xlat20.z;
            let x_3081 : f32 = u_xlat87;
            let x_3083 : f32 = u_xlat85;
            u_xlat85 = ((x_3080 * x_3081) + x_3083);
            let x_3086 : vec4<f32> = u_xlat14;
            let x_3087 : vec2<f32> = vec2<f32>(x_3086.x, x_3086.y);
            let x_3089 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3087.x, x_3087.y, x_3089);
            let x_3096 : vec3<f32> = txVec41;
            let x_3098 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3096.xy, x_3096.z);
            u_xlat87 = x_3098;
            let x_3100 : f32 = u_xlat20.w;
            let x_3101 : f32 = u_xlat87;
            let x_3103 : f32 = u_xlat85;
            u_xlat85 = ((x_3100 * x_3101) + x_3103);
            let x_3106 : vec4<f32> = u_xlat14;
            let x_3107 : vec2<f32> = vec2<f32>(x_3106.z, x_3106.w);
            let x_3109 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3107.x, x_3107.y, x_3109);
            let x_3116 : vec3<f32> = txVec42;
            let x_3118 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3116.xy, x_3116.z);
            u_xlat87 = x_3118;
            let x_3120 : f32 = u_xlat59.x;
            let x_3121 : f32 = u_xlat87;
            let x_3123 : f32 = u_xlat85;
            u_xlat84 = ((x_3120 * x_3121) + x_3123);
          } else {
            let x_3126 : vec4<f32> = u_xlat11;
            let x_3129 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            u_xlat59 = ((vec2<f32>(x_3126.x, x_3126.y) * vec2<f32>(x_3129.z, x_3129.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3133 : vec2<f32> = u_xlat59;
            u_xlat59 = floor(x_3133);
            let x_3135 : vec4<f32> = u_xlat11;
            let x_3138 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3141 : vec2<f32> = u_xlat59;
            let x_3143 : vec2<f32> = ((vec2<f32>(x_3135.x, x_3135.y) * vec2<f32>(x_3138.z, x_3138.w)) + -(x_3141));
            let x_3144 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3143.x, x_3143.y, x_3144.z, x_3144.w);
            let x_3146 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3146.x, x_3146.x, x_3146.y, x_3146.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3149 : vec4<f32> = u_xlat13;
            let x_3151 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3149.x, x_3149.x, x_3149.z, x_3149.z) * vec4<f32>(x_3151.x, x_3151.x, x_3151.z, x_3151.z));
            let x_3154 : vec4<f32> = u_xlat14;
            let x_3156 : vec2<f32> = (vec2<f32>(x_3154.y, x_3154.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3157 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3157.x, x_3156.x, x_3157.z, x_3156.y);
            let x_3159 : vec4<f32> = u_xlat14;
            let x_3162 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3159.x, x_3159.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_3162.x, x_3162.y)));
            let x_3166 : vec4<f32> = u_xlat12;
            let x_3169 : vec2<f32> = (-(vec2<f32>(x_3166.x, x_3166.y)) + vec2<f32>(1.0f, 1.0f));
            let x_3170 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3169.x, x_3170.y, x_3169.y, x_3170.w);
            let x_3172 : vec4<f32> = u_xlat12;
            let x_3174 : vec2<f32> = min(vec2<f32>(x_3172.x, x_3172.y), vec2<f32>(0.0f, 0.0f));
            let x_3175 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3174.x, x_3174.y, x_3175.z, x_3175.w);
            let x_3177 : vec4<f32> = u_xlat14;
            let x_3180 : vec4<f32> = u_xlat14;
            let x_3183 : vec4<f32> = u_xlat13;
            let x_3185 : vec2<f32> = ((-(vec2<f32>(x_3177.x, x_3177.y)) * vec2<f32>(x_3180.x, x_3180.y)) + vec2<f32>(x_3183.x, x_3183.z));
            let x_3186 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3185.x, x_3186.y, x_3185.y, x_3186.w);
            let x_3188 : vec4<f32> = u_xlat12;
            let x_3190 : vec2<f32> = max(vec2<f32>(x_3188.x, x_3188.y), vec2<f32>(0.0f, 0.0f));
            let x_3191 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3190.x, x_3190.y, x_3191.z, x_3191.w);
            let x_3193 : vec4<f32> = u_xlat14;
            let x_3196 : vec4<f32> = u_xlat14;
            let x_3199 : vec4<f32> = u_xlat13;
            let x_3201 : vec2<f32> = ((-(vec2<f32>(x_3193.x, x_3193.y)) * vec2<f32>(x_3196.x, x_3196.y)) + vec2<f32>(x_3199.y, x_3199.w));
            let x_3202 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3202.x, x_3201.x, x_3202.z, x_3201.y);
            let x_3204 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3204 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_3208 : f32 = u_xlat13.y;
            u_xlat14.z = (x_3208 * 0.08163200318813323975f);
            let x_3211 : vec2<f32> = u_xlat64;
            let x_3213 : vec2<f32> = (vec2<f32>(x_3211.y, x_3211.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3214 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3213.x, x_3213.y, x_3214.z, x_3214.w);
            let x_3216 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3216.x, x_3216.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3220 : f32 = u_xlat13.w;
            u_xlat16.z = (x_3220 * 0.08163200318813323975f);
            let x_3224 : f32 = u_xlat16.y;
            u_xlat14.x = x_3224;
            let x_3226 : vec4<f32> = u_xlat12;
            let x_3229 : vec2<f32> = ((vec2<f32>(x_3226.x, x_3226.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3230 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3230.x, x_3229.x, x_3230.z, x_3229.y);
            let x_3232 : vec4<f32> = u_xlat12;
            let x_3235 : vec2<f32> = ((vec2<f32>(x_3232.x, x_3232.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3236 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3235.x, x_3236.y, x_3235.y, x_3236.w);
            let x_3239 : f32 = u_xlat64.x;
            u_xlat13.y = x_3239;
            let x_3242 : f32 = u_xlat15.y;
            u_xlat13.w = x_3242;
            let x_3244 : vec4<f32> = u_xlat13;
            let x_3245 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3244 + x_3245);
            let x_3247 : vec4<f32> = u_xlat12;
            let x_3250 : vec2<f32> = ((vec2<f32>(x_3247.y, x_3247.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3251 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3251.x, x_3250.x, x_3251.z, x_3250.y);
            let x_3253 : vec4<f32> = u_xlat12;
            let x_3256 : vec2<f32> = ((vec2<f32>(x_3253.y, x_3253.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3257 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3256.x, x_3257.y, x_3256.y, x_3257.w);
            let x_3260 : f32 = u_xlat64.y;
            u_xlat15.y = x_3260;
            let x_3262 : vec4<f32> = u_xlat15;
            let x_3263 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3262 + x_3263);
            let x_3265 : vec4<f32> = u_xlat13;
            let x_3266 : vec4<f32> = u_xlat14;
            u_xlat13 = (x_3265 / x_3266);
            let x_3268 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3268 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3270 : vec4<f32> = u_xlat15;
            let x_3271 : vec4<f32> = u_xlat12;
            u_xlat15 = (x_3270 / x_3271);
            let x_3273 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3273 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3275 : vec4<f32> = u_xlat13;
            let x_3278 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3275.w, x_3275.x, x_3275.y, x_3275.z) * vec4<f32>(x_3278.x, x_3278.x, x_3278.x, x_3278.x));
            let x_3281 : vec4<f32> = u_xlat15;
            let x_3284 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3281.x, x_3281.w, x_3281.y, x_3281.z) * vec4<f32>(x_3284.y, x_3284.y, x_3284.y, x_3284.y));
            let x_3287 : vec4<f32> = u_xlat13;
            let x_3288 : vec3<f32> = vec3<f32>(x_3287.y, x_3287.z, x_3287.w);
            let x_3289 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3288.x, x_3289.y, x_3288.y, x_3288.z);
            let x_3292 : f32 = u_xlat15.x;
            u_xlat16.y = x_3292;
            let x_3294 : vec2<f32> = u_xlat59;
            let x_3297 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3300 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3294.x, x_3294.y, x_3294.x, x_3294.y) * vec4<f32>(x_3297.x, x_3297.y, x_3297.x, x_3297.y)) + vec4<f32>(x_3300.x, x_3300.y, x_3300.z, x_3300.y));
            let x_3303 : vec2<f32> = u_xlat59;
            let x_3305 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3308 : vec4<f32> = u_xlat16;
            let x_3310 : vec2<f32> = ((x_3303 * vec2<f32>(x_3305.x, x_3305.y)) + vec2<f32>(x_3308.w, x_3308.y));
            let x_3311 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3310.x, x_3310.y, x_3311.z, x_3311.w);
            let x_3314 : f32 = u_xlat16.y;
            u_xlat13.y = x_3314;
            let x_3317 : f32 = u_xlat15.z;
            u_xlat16.y = x_3317;
            let x_3319 : vec2<f32> = u_xlat59;
            let x_3322 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3325 : vec4<f32> = u_xlat16;
            u_xlat19 = ((vec4<f32>(x_3319.x, x_3319.y, x_3319.x, x_3319.y) * vec4<f32>(x_3322.x, x_3322.y, x_3322.x, x_3322.y)) + vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3325.y));
            let x_3329 : vec2<f32> = u_xlat59;
            let x_3331 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3334 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_3329 * vec2<f32>(x_3331.x, x_3331.y)) + vec2<f32>(x_3334.w, x_3334.y));
            let x_3338 : f32 = u_xlat16.y;
            u_xlat13.z = x_3338;
            let x_3340 : vec2<f32> = u_xlat59;
            let x_3343 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3346 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3340.x, x_3340.y, x_3340.x, x_3340.y) * vec4<f32>(x_3343.x, x_3343.y, x_3343.x, x_3343.y)) + vec4<f32>(x_3346.x, x_3346.y, x_3346.x, x_3346.z));
            let x_3350 : f32 = u_xlat15.w;
            u_xlat16.y = x_3350;
            let x_3353 : vec2<f32> = u_xlat59;
            let x_3356 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3359 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3353.x, x_3353.y, x_3353.x, x_3353.y) * vec4<f32>(x_3356.x, x_3356.y, x_3356.x, x_3356.y)) + vec4<f32>(x_3359.x, x_3359.y, x_3359.z, x_3359.y));
            let x_3363 : vec2<f32> = u_xlat59;
            let x_3365 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3368 : vec4<f32> = u_xlat16;
            u_xlat39 = ((x_3363 * vec2<f32>(x_3365.x, x_3365.y)) + vec2<f32>(x_3368.w, x_3368.y));
            let x_3372 : f32 = u_xlat16.y;
            u_xlat13.w = x_3372;
            let x_3375 : vec2<f32> = u_xlat59;
            let x_3377 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3380 : vec4<f32> = u_xlat13;
            u_xlat22 = ((x_3375 * vec2<f32>(x_3377.x, x_3377.y)) + vec2<f32>(x_3380.x, x_3380.w));
            let x_3383 : vec4<f32> = u_xlat16;
            let x_3384 : vec3<f32> = vec3<f32>(x_3383.x, x_3383.z, x_3383.w);
            let x_3385 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3384.x, x_3385.y, x_3384.y, x_3384.z);
            let x_3387 : vec2<f32> = u_xlat59;
            let x_3390 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3393 : vec4<f32> = u_xlat15;
            u_xlat16 = ((vec4<f32>(x_3387.x, x_3387.y, x_3387.x, x_3387.y) * vec4<f32>(x_3390.x, x_3390.y, x_3390.x, x_3390.y)) + vec4<f32>(x_3393.x, x_3393.y, x_3393.z, x_3393.y));
            let x_3397 : vec2<f32> = u_xlat59;
            let x_3399 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3402 : vec4<f32> = u_xlat15;
            u_xlat67 = ((x_3397 * vec2<f32>(x_3399.x, x_3399.y)) + vec2<f32>(x_3402.w, x_3402.y));
            let x_3406 : f32 = u_xlat13.x;
            u_xlat15.x = x_3406;
            let x_3408 : vec2<f32> = u_xlat59;
            let x_3410 : vec4<f32> = x_638.x_AdditionalShadowmapSize;
            let x_3413 : vec4<f32> = u_xlat15;
            u_xlat59 = ((x_3408 * vec2<f32>(x_3410.x, x_3410.y)) + vec2<f32>(x_3413.x, x_3413.y));
            let x_3417 : vec4<f32> = u_xlat12;
            let x_3419 : vec4<f32> = u_xlat14;
            u_xlat23 = (vec4<f32>(x_3417.x, x_3417.x, x_3417.x, x_3417.x) * x_3419);
            let x_3422 : vec4<f32> = u_xlat12;
            let x_3424 : vec4<f32> = u_xlat14;
            u_xlat24 = (vec4<f32>(x_3422.y, x_3422.y, x_3422.y, x_3422.y) * x_3424);
            let x_3427 : vec4<f32> = u_xlat12;
            let x_3429 : vec4<f32> = u_xlat14;
            u_xlat25 = (vec4<f32>(x_3427.z, x_3427.z, x_3427.z, x_3427.z) * x_3429);
            let x_3431 : vec4<f32> = u_xlat12;
            let x_3433 : vec4<f32> = u_xlat14;
            u_xlat12 = (vec4<f32>(x_3431.w, x_3431.w, x_3431.w, x_3431.w) * x_3433);
            let x_3436 : vec4<f32> = u_xlat17;
            let x_3437 : vec2<f32> = vec2<f32>(x_3436.x, x_3436.y);
            let x_3439 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3437.x, x_3437.y, x_3439);
            let x_3446 : vec3<f32> = txVec43;
            let x_3448 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3446.xy, x_3446.z);
            u_xlat87 = x_3448;
            let x_3450 : vec4<f32> = u_xlat17;
            let x_3451 : vec2<f32> = vec2<f32>(x_3450.z, x_3450.w);
            let x_3453 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3451.x, x_3451.y, x_3453);
            let x_3461 : vec3<f32> = txVec44;
            let x_3463 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3461.xy, x_3461.z);
            u_xlat88 = x_3463;
            let x_3464 : f32 = u_xlat88;
            let x_3466 : f32 = u_xlat23.y;
            u_xlat88 = (x_3464 * x_3466);
            let x_3469 : f32 = u_xlat23.x;
            let x_3470 : f32 = u_xlat87;
            let x_3472 : f32 = u_xlat88;
            u_xlat87 = ((x_3469 * x_3470) + x_3472);
            let x_3475 : vec4<f32> = u_xlat18;
            let x_3476 : vec2<f32> = vec2<f32>(x_3475.x, x_3475.y);
            let x_3478 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3476.x, x_3476.y, x_3478);
            let x_3485 : vec3<f32> = txVec45;
            let x_3487 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3485.xy, x_3485.z);
            u_xlat88 = x_3487;
            let x_3489 : f32 = u_xlat23.z;
            let x_3490 : f32 = u_xlat88;
            let x_3492 : f32 = u_xlat87;
            u_xlat87 = ((x_3489 * x_3490) + x_3492);
            let x_3495 : vec4<f32> = u_xlat20;
            let x_3496 : vec2<f32> = vec2<f32>(x_3495.x, x_3495.y);
            let x_3498 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3496.x, x_3496.y, x_3498);
            let x_3505 : vec3<f32> = txVec46;
            let x_3507 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3505.xy, x_3505.z);
            u_xlat88 = x_3507;
            let x_3509 : f32 = u_xlat23.w;
            let x_3510 : f32 = u_xlat88;
            let x_3512 : f32 = u_xlat87;
            u_xlat87 = ((x_3509 * x_3510) + x_3512);
            let x_3515 : vec4<f32> = u_xlat19;
            let x_3516 : vec2<f32> = vec2<f32>(x_3515.x, x_3515.y);
            let x_3518 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3516.x, x_3516.y, x_3518);
            let x_3525 : vec3<f32> = txVec47;
            let x_3527 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3525.xy, x_3525.z);
            u_xlat88 = x_3527;
            let x_3529 : f32 = u_xlat24.x;
            let x_3530 : f32 = u_xlat88;
            let x_3532 : f32 = u_xlat87;
            u_xlat87 = ((x_3529 * x_3530) + x_3532);
            let x_3535 : vec4<f32> = u_xlat19;
            let x_3536 : vec2<f32> = vec2<f32>(x_3535.z, x_3535.w);
            let x_3538 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3536.x, x_3536.y, x_3538);
            let x_3545 : vec3<f32> = txVec48;
            let x_3547 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3545.xy, x_3545.z);
            u_xlat88 = x_3547;
            let x_3549 : f32 = u_xlat24.y;
            let x_3550 : f32 = u_xlat88;
            let x_3552 : f32 = u_xlat87;
            u_xlat87 = ((x_3549 * x_3550) + x_3552);
            let x_3555 : vec2<f32> = u_xlat70;
            let x_3557 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3555.x, x_3555.y, x_3557);
            let x_3564 : vec3<f32> = txVec49;
            let x_3566 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3564.xy, x_3564.z);
            u_xlat88 = x_3566;
            let x_3568 : f32 = u_xlat24.z;
            let x_3569 : f32 = u_xlat88;
            let x_3571 : f32 = u_xlat87;
            u_xlat87 = ((x_3568 * x_3569) + x_3571);
            let x_3574 : vec4<f32> = u_xlat20;
            let x_3575 : vec2<f32> = vec2<f32>(x_3574.z, x_3574.w);
            let x_3577 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3575.x, x_3575.y, x_3577);
            let x_3584 : vec3<f32> = txVec50;
            let x_3586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3584.xy, x_3584.z);
            u_xlat88 = x_3586;
            let x_3588 : f32 = u_xlat24.w;
            let x_3589 : f32 = u_xlat88;
            let x_3591 : f32 = u_xlat87;
            u_xlat87 = ((x_3588 * x_3589) + x_3591);
            let x_3594 : vec4<f32> = u_xlat21;
            let x_3595 : vec2<f32> = vec2<f32>(x_3594.x, x_3594.y);
            let x_3597 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3595.x, x_3595.y, x_3597);
            let x_3604 : vec3<f32> = txVec51;
            let x_3606 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3604.xy, x_3604.z);
            u_xlat88 = x_3606;
            let x_3608 : f32 = u_xlat25.x;
            let x_3609 : f32 = u_xlat88;
            let x_3611 : f32 = u_xlat87;
            u_xlat87 = ((x_3608 * x_3609) + x_3611);
            let x_3614 : vec4<f32> = u_xlat21;
            let x_3615 : vec2<f32> = vec2<f32>(x_3614.z, x_3614.w);
            let x_3617 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3615.x, x_3615.y, x_3617);
            let x_3624 : vec3<f32> = txVec52;
            let x_3626 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3624.xy, x_3624.z);
            u_xlat88 = x_3626;
            let x_3628 : f32 = u_xlat25.y;
            let x_3629 : f32 = u_xlat88;
            let x_3631 : f32 = u_xlat87;
            u_xlat87 = ((x_3628 * x_3629) + x_3631);
            let x_3634 : vec2<f32> = u_xlat39;
            let x_3636 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3634.x, x_3634.y, x_3636);
            let x_3643 : vec3<f32> = txVec53;
            let x_3645 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3643.xy, x_3643.z);
            u_xlat88 = x_3645;
            let x_3647 : f32 = u_xlat25.z;
            let x_3648 : f32 = u_xlat88;
            let x_3650 : f32 = u_xlat87;
            u_xlat87 = ((x_3647 * x_3648) + x_3650);
            let x_3653 : vec2<f32> = u_xlat22;
            let x_3655 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3653.x, x_3653.y, x_3655);
            let x_3662 : vec3<f32> = txVec54;
            let x_3664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3662.xy, x_3662.z);
            u_xlat88 = x_3664;
            let x_3666 : f32 = u_xlat25.w;
            let x_3667 : f32 = u_xlat88;
            let x_3669 : f32 = u_xlat87;
            u_xlat87 = ((x_3666 * x_3667) + x_3669);
            let x_3672 : vec4<f32> = u_xlat16;
            let x_3673 : vec2<f32> = vec2<f32>(x_3672.x, x_3672.y);
            let x_3675 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3673.x, x_3673.y, x_3675);
            let x_3682 : vec3<f32> = txVec55;
            let x_3684 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3682.xy, x_3682.z);
            u_xlat88 = x_3684;
            let x_3686 : f32 = u_xlat12.x;
            let x_3687 : f32 = u_xlat88;
            let x_3689 : f32 = u_xlat87;
            u_xlat87 = ((x_3686 * x_3687) + x_3689);
            let x_3692 : vec4<f32> = u_xlat16;
            let x_3693 : vec2<f32> = vec2<f32>(x_3692.z, x_3692.w);
            let x_3695 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3693.x, x_3693.y, x_3695);
            let x_3702 : vec3<f32> = txVec56;
            let x_3704 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3702.xy, x_3702.z);
            u_xlat88 = x_3704;
            let x_3706 : f32 = u_xlat12.y;
            let x_3707 : f32 = u_xlat88;
            let x_3709 : f32 = u_xlat87;
            u_xlat87 = ((x_3706 * x_3707) + x_3709);
            let x_3712 : vec2<f32> = u_xlat67;
            let x_3714 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3712.x, x_3712.y, x_3714);
            let x_3721 : vec3<f32> = txVec57;
            let x_3723 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3721.xy, x_3721.z);
            u_xlat88 = x_3723;
            let x_3725 : f32 = u_xlat12.z;
            let x_3726 : f32 = u_xlat88;
            let x_3728 : f32 = u_xlat87;
            u_xlat87 = ((x_3725 * x_3726) + x_3728);
            let x_3731 : vec2<f32> = u_xlat59;
            let x_3733 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3731.x, x_3731.y, x_3733);
            let x_3740 : vec3<f32> = txVec58;
            let x_3742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3740.xy, x_3740.z);
            u_xlat59.x = x_3742;
            let x_3745 : f32 = u_xlat12.w;
            let x_3747 : f32 = u_xlat59.x;
            let x_3749 : f32 = u_xlat87;
            u_xlat84 = ((x_3745 * x_3747) + x_3749);
          }
        }
      } else {
        let x_3753 : vec4<f32> = u_xlat11;
        let x_3754 : vec2<f32> = vec2<f32>(x_3753.x, x_3753.y);
        let x_3756 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3754.x, x_3754.y, x_3756);
        let x_3763 : vec3<f32> = txVec59;
        let x_3765 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3763.xy, x_3763.z);
        u_xlat84 = x_3765;
      }
      let x_3766 : i32 = u_xlati81;
      let x_3768 : f32 = x_638.x_AdditionalShadowParams[x_3766].x;
      u_xlat59.x = (1.0f + -(x_3768));
      let x_3772 : f32 = u_xlat84;
      let x_3773 : i32 = u_xlati81;
      let x_3775 : f32 = x_638.x_AdditionalShadowParams[x_3773].x;
      let x_3778 : f32 = u_xlat59.x;
      u_xlat84 = ((x_3772 * x_3775) + x_3778);
      let x_3781 : f32 = u_xlat11.z;
      u_xlatb59 = (0.0f >= x_3781);
      let x_3785 : f32 = u_xlat11.z;
      u_xlatb85 = (x_3785 >= 1.0f);
      let x_3787 : bool = u_xlatb85;
      let x_3788 : bool = u_xlatb59;
      u_xlatb59 = (x_3787 | x_3788);
      let x_3790 : bool = u_xlatb59;
      let x_3791 : f32 = u_xlat84;
      u_xlat84 = select(x_3791, 1.0f, x_3790);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3794 : f32 = u_xlat84;
    u_xlat59.x = (-(x_3794) + 1.0f);
    let x_3798 : f32 = u_xlat79;
    let x_3800 : f32 = u_xlat59.x;
    let x_3802 : f32 = u_xlat84;
    u_xlat84 = ((x_3798 * x_3800) + x_3802);
    let x_3805 : i32 = u_xlati81;
    u_xlati59 = (1i << bitcast<u32>((x_3805 & 31i)));
    let x_3809 : i32 = u_xlati59;
    let x_3812 : f32 = x_1930.x_AdditionalLightsCookieEnableBits;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_3809) & bitcast<u32>(x_3812)));
    let x_3816 : i32 = u_xlati59;
    if ((x_3816 != 0i)) {
      let x_3820 : i32 = u_xlati81;
      let x_3822 : f32 = x_1930.x_AdditionalLightsLightTypes[x_3820].el;
      u_xlati59 = i32(x_3822);
      let x_3825 : i32 = u_xlati59;
      u_xlati85 = select(1i, 0i, (x_3825 != 0i));
      let x_3829 : i32 = u_xlati81;
      u_xlati87 = (x_3829 << bitcast<u32>(2i));
      let x_3831 : i32 = u_xlati85;
      if ((x_3831 != 0i)) {
        let x_3835 : vec3<f32> = vs_INTERP7;
        let x_3837 : i32 = u_xlati87;
        let x_3840 : i32 = u_xlati87;
        let x_3844 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[((x_3837 + 1i) / 4i)][((x_3840 + 1i) % 4i)];
        let x_3846 : vec3<f32> = (vec3<f32>(x_3835.y, x_3835.y, x_3835.y) * vec3<f32>(x_3844.x, x_3844.y, x_3844.w));
        let x_3847 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3846.x, x_3846.y, x_3846.z, x_3847.w);
        let x_3849 : i32 = u_xlati87;
        let x_3851 : i32 = u_xlati87;
        let x_3854 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[(x_3849 / 4i)][(x_3851 % 4i)];
        let x_3856 : vec3<f32> = vs_INTERP7;
        let x_3859 : vec4<f32> = u_xlat11;
        let x_3861 : vec3<f32> = ((vec3<f32>(x_3854.x, x_3854.y, x_3854.w) * vec3<f32>(x_3856.x, x_3856.x, x_3856.x)) + vec3<f32>(x_3859.x, x_3859.y, x_3859.z));
        let x_3862 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3861.x, x_3861.y, x_3861.z, x_3862.w);
        let x_3864 : i32 = u_xlati87;
        let x_3867 : i32 = u_xlati87;
        let x_3871 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[((x_3864 + 2i) / 4i)][((x_3867 + 2i) % 4i)];
        let x_3873 : vec3<f32> = vs_INTERP7;
        let x_3876 : vec4<f32> = u_xlat11;
        let x_3878 : vec3<f32> = ((vec3<f32>(x_3871.x, x_3871.y, x_3871.w) * vec3<f32>(x_3873.z, x_3873.z, x_3873.z)) + vec3<f32>(x_3876.x, x_3876.y, x_3876.z));
        let x_3879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3878.x, x_3878.y, x_3878.z, x_3879.w);
        let x_3881 : vec4<f32> = u_xlat11;
        let x_3883 : i32 = u_xlati87;
        let x_3886 : i32 = u_xlati87;
        let x_3890 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[((x_3883 + 3i) / 4i)][((x_3886 + 3i) % 4i)];
        let x_3892 : vec3<f32> = (vec3<f32>(x_3881.x, x_3881.y, x_3881.z) + vec3<f32>(x_3890.x, x_3890.y, x_3890.w));
        let x_3893 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3892.x, x_3892.y, x_3892.z, x_3893.w);
        let x_3895 : vec4<f32> = u_xlat11;
        let x_3897 : vec4<f32> = u_xlat11;
        let x_3899 : vec2<f32> = (vec2<f32>(x_3895.x, x_3895.y) / vec2<f32>(x_3897.z, x_3897.z));
        let x_3900 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3899.x, x_3899.y, x_3900.z, x_3900.w);
        let x_3902 : vec4<f32> = u_xlat11;
        let x_3905 : vec2<f32> = ((vec2<f32>(x_3902.x, x_3902.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3906 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3905.x, x_3905.y, x_3906.z, x_3906.w);
        let x_3908 : vec4<f32> = u_xlat11;
        let x_3912 : vec2<f32> = clamp(vec2<f32>(x_3908.x, x_3908.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3913 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3912.x, x_3912.y, x_3913.z, x_3913.w);
        let x_3915 : i32 = u_xlati81;
        let x_3917 : vec4<f32> = x_1930.x_AdditionalLightsCookieAtlasUVRects[x_3915];
        let x_3919 : vec4<f32> = u_xlat11;
        let x_3922 : i32 = u_xlati81;
        let x_3924 : vec4<f32> = x_1930.x_AdditionalLightsCookieAtlasUVRects[x_3922];
        let x_3926 : vec2<f32> = ((vec2<f32>(x_3917.x, x_3917.y) * vec2<f32>(x_3919.x, x_3919.y)) + vec2<f32>(x_3924.z, x_3924.w));
        let x_3927 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3926.x, x_3926.y, x_3927.z, x_3927.w);
      } else {
        let x_3930 : i32 = u_xlati59;
        u_xlatb59 = (x_3930 == 1i);
        let x_3932 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_3932);
        let x_3934 : i32 = u_xlati59;
        if ((x_3934 != 0i)) {
          let x_3938 : vec3<f32> = vs_INTERP7;
          let x_3940 : i32 = u_xlati87;
          let x_3943 : i32 = u_xlati87;
          let x_3947 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[((x_3940 + 1i) / 4i)][((x_3943 + 1i) % 4i)];
          u_xlat59 = (vec2<f32>(x_3938.y, x_3938.y) * vec2<f32>(x_3947.x, x_3947.y));
          let x_3950 : i32 = u_xlati87;
          let x_3952 : i32 = u_xlati87;
          let x_3955 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[(x_3950 / 4i)][(x_3952 % 4i)];
          let x_3957 : vec3<f32> = vs_INTERP7;
          let x_3960 : vec2<f32> = u_xlat59;
          u_xlat59 = ((vec2<f32>(x_3955.x, x_3955.y) * vec2<f32>(x_3957.x, x_3957.x)) + x_3960);
          let x_3962 : i32 = u_xlati87;
          let x_3965 : i32 = u_xlati87;
          let x_3969 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[((x_3962 + 2i) / 4i)][((x_3965 + 2i) % 4i)];
          let x_3971 : vec3<f32> = vs_INTERP7;
          let x_3974 : vec2<f32> = u_xlat59;
          u_xlat59 = ((vec2<f32>(x_3969.x, x_3969.y) * vec2<f32>(x_3971.z, x_3971.z)) + x_3974);
          let x_3976 : vec2<f32> = u_xlat59;
          let x_3977 : i32 = u_xlati87;
          let x_3980 : i32 = u_xlati87;
          let x_3984 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[((x_3977 + 3i) / 4i)][((x_3980 + 3i) % 4i)];
          u_xlat59 = (x_3976 + vec2<f32>(x_3984.x, x_3984.y));
          let x_3987 : vec2<f32> = u_xlat59;
          u_xlat59 = ((x_3987 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3990 : vec2<f32> = u_xlat59;
          u_xlat59 = fract(x_3990);
          let x_3992 : i32 = u_xlati81;
          let x_3994 : vec4<f32> = x_1930.x_AdditionalLightsCookieAtlasUVRects[x_3992];
          let x_3996 : vec2<f32> = u_xlat59;
          let x_3998 : i32 = u_xlati81;
          let x_4000 : vec4<f32> = x_1930.x_AdditionalLightsCookieAtlasUVRects[x_3998];
          let x_4002 : vec2<f32> = ((vec2<f32>(x_3994.x, x_3994.y) * x_3996) + vec2<f32>(x_4000.z, x_4000.w));
          let x_4003 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4002.x, x_4002.y, x_4003.z, x_4003.w);
        } else {
          let x_4006 : vec3<f32> = vs_INTERP7;
          let x_4008 : i32 = u_xlati87;
          let x_4011 : i32 = u_xlati87;
          let x_4015 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[((x_4008 + 1i) / 4i)][((x_4011 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4006.y, x_4006.y, x_4006.y, x_4006.y) * x_4015);
          let x_4017 : i32 = u_xlati87;
          let x_4019 : i32 = u_xlati87;
          let x_4022 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[(x_4017 / 4i)][(x_4019 % 4i)];
          let x_4023 : vec3<f32> = vs_INTERP7;
          let x_4026 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4022 * vec4<f32>(x_4023.x, x_4023.x, x_4023.x, x_4023.x)) + x_4026);
          let x_4028 : i32 = u_xlati87;
          let x_4031 : i32 = u_xlati87;
          let x_4035 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[((x_4028 + 2i) / 4i)][((x_4031 + 2i) % 4i)];
          let x_4036 : vec3<f32> = vs_INTERP7;
          let x_4039 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4035 * vec4<f32>(x_4036.z, x_4036.z, x_4036.z, x_4036.z)) + x_4039);
          let x_4041 : vec4<f32> = u_xlat12;
          let x_4042 : i32 = u_xlati87;
          let x_4045 : i32 = u_xlati87;
          let x_4049 : vec4<f32> = x_1930.x_AdditionalLightsWorldToLights[((x_4042 + 3i) / 4i)][((x_4045 + 3i) % 4i)];
          u_xlat12 = (x_4041 + x_4049);
          let x_4051 : vec4<f32> = u_xlat12;
          let x_4053 : vec4<f32> = u_xlat12;
          let x_4055 : vec3<f32> = (vec3<f32>(x_4051.x, x_4051.y, x_4051.z) / vec3<f32>(x_4053.w, x_4053.w, x_4053.w));
          let x_4056 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4055.x, x_4055.y, x_4055.z, x_4056.w);
          let x_4058 : vec4<f32> = u_xlat12;
          let x_4060 : vec4<f32> = u_xlat12;
          u_xlat59.x = dot(vec3<f32>(x_4058.x, x_4058.y, x_4058.z), vec3<f32>(x_4060.x, x_4060.y, x_4060.z));
          let x_4065 : f32 = u_xlat59.x;
          u_xlat59.x = inverseSqrt(x_4065);
          let x_4068 : vec2<f32> = u_xlat59;
          let x_4070 : vec4<f32> = u_xlat12;
          let x_4072 : vec3<f32> = (vec3<f32>(x_4068.x, x_4068.x, x_4068.x) * vec3<f32>(x_4070.x, x_4070.y, x_4070.z));
          let x_4073 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4072.x, x_4072.y, x_4072.z, x_4073.w);
          let x_4075 : vec4<f32> = u_xlat12;
          u_xlat59.x = dot(abs(vec3<f32>(x_4075.x, x_4075.y, x_4075.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4081 : f32 = u_xlat59.x;
          u_xlat59.x = max(x_4081, 0.00000099999999747524f);
          let x_4086 : f32 = u_xlat59.x;
          u_xlat59.x = (1.0f / x_4086);
          let x_4089 : vec2<f32> = u_xlat59;
          let x_4091 : vec4<f32> = u_xlat12;
          let x_4093 : vec3<f32> = (vec3<f32>(x_4089.x, x_4089.x, x_4089.x) * vec3<f32>(x_4091.z, x_4091.x, x_4091.y));
          let x_4094 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4093.x, x_4093.y, x_4093.z, x_4094.w);
          let x_4097 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4097);
          let x_4101 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4101, 0.0f, 1.0f);
          let x_4105 : vec4<f32> = u_xlat13;
          let x_4107 : vec4<bool> = (vec4<f32>(x_4105.y, x_4105.z, x_4105.y, x_4105.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4107.x, x_4107.y);
          let x_4111 : bool = u_xlatb63.x;
          if (x_4111) {
            let x_4116 : f32 = u_xlat13.x;
            x_4112 = x_4116;
          } else {
            let x_4119 : f32 = u_xlat13.x;
            x_4112 = -(x_4119);
          }
          let x_4121 : f32 = x_4112;
          u_xlat63.x = x_4121;
          let x_4124 : bool = u_xlatb63.y;
          if (x_4124) {
            let x_4129 : f32 = u_xlat13.x;
            x_4125 = x_4129;
          } else {
            let x_4132 : f32 = u_xlat13.x;
            x_4125 = -(x_4132);
          }
          let x_4134 : f32 = x_4125;
          u_xlat63.y = x_4134;
          let x_4136 : vec4<f32> = u_xlat12;
          let x_4138 : vec2<f32> = u_xlat59;
          let x_4141 : vec2<f32> = u_xlat63;
          u_xlat59 = ((vec2<f32>(x_4136.x, x_4136.y) * vec2<f32>(x_4138.x, x_4138.x)) + x_4141);
          let x_4143 : vec2<f32> = u_xlat59;
          u_xlat59 = ((x_4143 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4146 : vec2<f32> = u_xlat59;
          u_xlat59 = clamp(x_4146, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4150 : i32 = u_xlati81;
          let x_4152 : vec4<f32> = x_1930.x_AdditionalLightsCookieAtlasUVRects[x_4150];
          let x_4154 : vec2<f32> = u_xlat59;
          let x_4156 : i32 = u_xlati81;
          let x_4158 : vec4<f32> = x_1930.x_AdditionalLightsCookieAtlasUVRects[x_4156];
          let x_4160 : vec2<f32> = ((vec2<f32>(x_4152.x, x_4152.y) * x_4154) + vec2<f32>(x_4158.z, x_4158.w));
          let x_4161 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4160.x, x_4160.y, x_4161.z, x_4161.w);
        }
      }
      let x_4168 : vec4<f32> = u_xlat11;
      let x_4170 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4168.x, x_4168.y), 0.0f);
      u_xlat11 = x_4170;
      let x_4172 : bool = u_xlatb7.y;
      if (x_4172) {
        let x_4177 : f32 = u_xlat11.w;
        x_4173 = x_4177;
      } else {
        let x_4180 : f32 = u_xlat11.x;
        x_4173 = x_4180;
      }
      let x_4181 : f32 = x_4173;
      u_xlat59.x = x_4181;
      let x_4184 : bool = u_xlatb7.x;
      if (x_4184) {
        let x_4188 : vec4<f32> = u_xlat11;
        x_4185 = vec3<f32>(x_4188.x, x_4188.y, x_4188.z);
      } else {
        let x_4191 : vec2<f32> = u_xlat59;
        x_4185 = vec3<f32>(x_4191.x, x_4191.x, x_4191.x);
      }
      let x_4193 : vec3<f32> = x_4185;
      let x_4194 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4193.x, x_4193.y, x_4193.z, x_4194.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4200 : vec4<f32> = u_xlat11;
    let x_4202 : i32 = u_xlati81;
    let x_4204 : vec4<f32> = x_2372.x_AdditionalLightsColor[x_4202];
    let x_4206 : vec3<f32> = (vec3<f32>(x_4200.x, x_4200.y, x_4200.z) * vec3<f32>(x_4204.x, x_4204.y, x_4204.z));
    let x_4207 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4206.x, x_4206.y, x_4206.z, x_4207.w);
    let x_4209 : f32 = u_xlat82;
    let x_4210 : f32 = u_xlat84;
    u_xlat81 = (x_4209 * x_4210);
    let x_4212 : vec4<f32> = u_xlat1;
    let x_4214 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4212.x, x_4212.y, x_4212.z), vec3<f32>(x_4214.x, x_4214.y, x_4214.z));
    let x_4217 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4217, 0.0f, 1.0f);
    let x_4219 : f32 = u_xlat81;
    let x_4220 : f32 = u_xlat82;
    u_xlat81 = (x_4219 * x_4220);
    let x_4222 : f32 = u_xlat81;
    let x_4224 : vec4<f32> = u_xlat11;
    let x_4226 : vec3<f32> = (vec3<f32>(x_4222, x_4222, x_4222) * vec3<f32>(x_4224.x, x_4224.y, x_4224.z));
    let x_4227 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4226.x, x_4226.y, x_4226.z, x_4227.w);
    let x_4229 : vec4<f32> = u_xlat9;
    let x_4231 : f32 = u_xlat83;
    let x_4234 : vec3<f32> = u_xlat4;
    let x_4235 : vec3<f32> = ((vec3<f32>(x_4229.x, x_4229.y, x_4229.z) * vec3<f32>(x_4231, x_4231, x_4231)) + x_4234);
    let x_4236 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4235.x, x_4235.y, x_4235.z, x_4236.w);
    let x_4238 : vec4<f32> = u_xlat9;
    let x_4240 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4238.x, x_4238.y, x_4238.z), vec3<f32>(x_4240.x, x_4240.y, x_4240.z));
    let x_4243 : f32 = u_xlat81;
    u_xlat81 = max(x_4243, 1.17549435e-38f);
    let x_4245 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4245);
    let x_4247 : f32 = u_xlat81;
    let x_4249 : vec4<f32> = u_xlat9;
    let x_4251 : vec3<f32> = (vec3<f32>(x_4247, x_4247, x_4247) * vec3<f32>(x_4249.x, x_4249.y, x_4249.z));
    let x_4252 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4251.x, x_4251.y, x_4251.z, x_4252.w);
    let x_4254 : vec4<f32> = u_xlat1;
    let x_4256 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4254.x, x_4254.y, x_4254.z), vec3<f32>(x_4256.x, x_4256.y, x_4256.z));
    let x_4259 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4259, 0.0f, 1.0f);
    let x_4261 : vec4<f32> = u_xlat10;
    let x_4263 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4261.x, x_4261.y, x_4261.z), vec3<f32>(x_4263.x, x_4263.y, x_4263.z));
    let x_4266 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4266, 0.0f, 1.0f);
    let x_4268 : f32 = u_xlat81;
    let x_4269 : f32 = u_xlat81;
    u_xlat81 = (x_4268 * x_4269);
    let x_4271 : f32 = u_xlat81;
    let x_4273 : f32 = u_xlat8.x;
    u_xlat81 = ((x_4271 * x_4273) + 1.00001001358032226562f);
    let x_4276 : f32 = u_xlat82;
    let x_4277 : f32 = u_xlat82;
    u_xlat82 = (x_4276 * x_4277);
    let x_4279 : f32 = u_xlat81;
    let x_4280 : f32 = u_xlat81;
    u_xlat81 = (x_4279 * x_4280);
    let x_4282 : f32 = u_xlat82;
    u_xlat82 = max(x_4282, 0.10000000149011611938f);
    let x_4284 : f32 = u_xlat81;
    let x_4285 : f32 = u_xlat82;
    u_xlat81 = (x_4284 * x_4285);
    let x_4287 : f32 = u_xlat80;
    let x_4288 : f32 = u_xlat81;
    u_xlat81 = (x_4287 * x_4288);
    let x_4290 : f32 = u_xlat28;
    let x_4291 : f32 = u_xlat81;
    u_xlat81 = (x_4290 / x_4291);
    let x_4293 : vec4<f32> = u_xlat0;
    let x_4295 : f32 = u_xlat81;
    let x_4298 : vec3<f32> = u_xlat5;
    let x_4299 : vec3<f32> = ((vec3<f32>(x_4293.x, x_4293.y, x_4293.z) * vec3<f32>(x_4295, x_4295, x_4295)) + x_4298);
    let x_4300 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4299.x, x_4299.y, x_4299.z, x_4300.w);
    let x_4302 : vec4<f32> = u_xlat9;
    let x_4304 : vec4<f32> = u_xlat11;
    let x_4307 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4302.x, x_4302.y, x_4302.z) * vec3<f32>(x_4304.x, x_4304.y, x_4304.z)) + x_4307);

    continuing {
      let x_4309 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4309 + bitcast<u32>(1i));
    }
  }
  let x_4311 : vec4<f32> = u_xlat3;
  let x_4313 : f32 = u_xlat54;
  let x_4316 : vec4<f32> = u_xlat6;
  let x_4318 : vec3<f32> = ((vec3<f32>(x_4311.x, x_4311.y, x_4311.z) * vec3<f32>(x_4313, x_4313, x_4313)) + vec3<f32>(x_4316.x, x_4316.y, x_4316.z));
  let x_4319 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4318.x, x_4318.y, x_4318.z, x_4319.w);
  let x_4323 : vec3<f32> = u_xlat34;
  let x_4324 : vec4<f32> = u_xlat0;
  let x_4326 : vec3<f32> = (x_4323 + vec3<f32>(x_4324.x, x_4324.y, x_4324.z));
  let x_4327 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4326.x, x_4326.y, x_4326.z, x_4327.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(4) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



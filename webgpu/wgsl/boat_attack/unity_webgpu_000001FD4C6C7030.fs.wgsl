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

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb81 : bool;

@group(1) @binding(3) var<uniform> x_670 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

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

@group(1) @binding(4) var<uniform> x_1962 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu78 : u32;

var<private> u_xlatu81 : u32;

var<private> u_xlati82 : i32;

var<private> u_xlati81 : i32;

@group(1) @binding(1) var<uniform> x_2406 : AdditionalLights;

var<private> u_xlati84 : i32;

var<private> u_xlatb59 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlatb84 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

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
  var x_2044 : f32;
  var x_2055 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2543 : f32;
  var x_2553 : f32;
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
  var x_4146 : f32;
  var x_4159 : f32;
  var x_4207 : f32;
  var x_4219 : vec3<f32>;
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
  u_xlat1.w = 1.0f;
  let x_504 : vec4<f32> = x_349.unity_SHAr;
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_504, x_505);
  let x_510 : vec4<f32> = x_349.unity_SHAg;
  let x_511 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_510, x_511);
  let x_516 : vec4<f32> = x_349.unity_SHAb;
  let x_517 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_516, x_517);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_521.y, x_521.z, x_521.z, x_521.x) * vec4<f32>(x_523.x, x_523.y, x_523.z, x_523.z));
  let x_529 : vec4<f32> = x_349.unity_SHBr;
  let x_530 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_349.unity_SHBg;
  let x_536 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_535, x_536);
  let x_541 : vec4<f32> = x_349.unity_SHBb;
  let x_542 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_541, x_542);
  let x_546 : f32 = u_xlat1.y;
  let x_548 : f32 = u_xlat1.y;
  u_xlat78 = (x_546 * x_548);
  let x_551 : f32 = u_xlat1.x;
  let x_553 : f32 = u_xlat1.x;
  let x_555 : f32 = u_xlat78;
  u_xlat78 = ((x_551 * x_553) + -(x_555));
  let x_560 : vec4<f32> = x_349.unity_SHC;
  let x_562 : f32 = u_xlat78;
  let x_565 : vec4<f32> = u_xlat6;
  let x_567 : vec3<f32> = ((vec3<f32>(x_560.x, x_560.y, x_560.z) * vec3<f32>(x_562, x_562, x_562)) + vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat3;
  let x_572 : vec4<f32> = u_xlat5;
  let x_574 : vec3<f32> = (vec3<f32>(x_570.x, x_570.y, x_570.z) + vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat3;
  let x_580 : vec3<f32> = max(vec3<f32>(x_577.x, x_577.y, x_577.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat2;
  let x_584 : vec2<f32> = vec2<f32>(x_583.x, x_583.y);
  let x_585 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat2;
  let x_591 : vec2<f32> = clamp(vec2<f32>(x_587.x, x_587.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_592 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
  let x_595 : f32 = u_xlat2.x;
  u_xlat78 = ((-(x_595) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_601 : f32 = u_xlat78;
  let x_604 : f32 = u_xlat2.y;
  u_xlat79 = (-(x_601) + x_604);
  let x_606 : f32 = u_xlat78;
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = (vec3<f32>(x_606, x_606, x_606) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat0;
  let x_617 : vec3<f32> = (vec3<f32>(x_613.x, x_613.y, x_613.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat2;
  let x_622 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.x, x_620.x) * vec3<f32>(x_622.x, x_622.y, x_622.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = u_xlat2.y;
  u_xlat78 = (-(x_631) + 1.0f);
  let x_634 : f32 = u_xlat78;
  let x_635 : f32 = u_xlat78;
  u_xlat2.x = (x_634 * x_635);
  let x_639 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_639, 0.0078125f);
  let x_645 : f32 = u_xlat2.x;
  let x_647 : f32 = u_xlat2.x;
  u_xlat28 = (x_645 * x_647);
  let x_649 : f32 = u_xlat79;
  u_xlat79 = (x_649 + 1.0f);
  let x_651 : f32 = u_xlat79;
  u_xlat79 = min(x_651, 1.0f);
  let x_654 : f32 = u_xlat2.x;
  u_xlat80 = ((x_654 * 4.0f) + 2.0f);
  let x_660 : f32 = u_xlat2.z;
  u_xlat54 = min(x_660, 1.0f);
  let x_673 : f32 = x_670.x_MainLightShadowParams.y;
  u_xlatb81 = (0.0f < x_673);
  let x_675 : bool = u_xlatb81;
  if (x_675) {
    let x_679 : f32 = x_670.x_MainLightShadowParams.y;
    u_xlatb81 = (x_679 == 1.0f);
    let x_681 : bool = u_xlatb81;
    if (x_681) {
      let x_685 : vec4<f32> = vs_INTERP3;
      let x_688 : vec4<f32> = x_670.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_685.x, x_685.y, x_685.x, x_685.y) + x_688);
      let x_692 : vec4<f32> = u_xlat6;
      let x_693 : vec2<f32> = vec2<f32>(x_692.x, x_692.y);
      let x_695 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_693.x, x_693.y, x_695);
      let x_708 : vec3<f32> = txVec0;
      let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_708.xy, x_708.z);
      u_xlat7.x = x_710;
      let x_713 : vec4<f32> = u_xlat6;
      let x_714 : vec2<f32> = vec2<f32>(x_713.z, x_713.w);
      let x_716 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_714.x, x_714.y, x_716);
      let x_723 : vec3<f32> = txVec1;
      let x_725 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_723.xy, x_723.z);
      u_xlat7.y = x_725;
      let x_727 : vec4<f32> = vs_INTERP3;
      let x_731 : vec4<f32> = x_670.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_727.x, x_727.y, x_727.x, x_727.y) + x_731);
      let x_734 : vec4<f32> = u_xlat6;
      let x_735 : vec2<f32> = vec2<f32>(x_734.x, x_734.y);
      let x_737 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_735.x, x_735.y, x_737);
      let x_744 : vec3<f32> = txVec2;
      let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_744.xy, x_744.z);
      u_xlat7.z = x_746;
      let x_749 : vec4<f32> = u_xlat6;
      let x_750 : vec2<f32> = vec2<f32>(x_749.z, x_749.w);
      let x_752 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_750.x, x_750.y, x_752);
      let x_759 : vec3<f32> = txVec3;
      let x_761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_759.xy, x_759.z);
      u_xlat7.w = x_761;
      let x_764 : vec4<f32> = u_xlat7;
      u_xlat81 = dot(x_764, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_771 : f32 = x_670.x_MainLightShadowParams.y;
      u_xlatb82 = (x_771 == 2.0f);
      let x_773 : bool = u_xlatb82;
      if (x_773) {
        let x_776 : vec4<f32> = vs_INTERP3;
        let x_780 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_785 : vec2<f32> = ((vec2<f32>(x_776.x, x_776.y) * vec2<f32>(x_780.z, x_780.w)) + vec2<f32>(0.5f, 0.5f));
        let x_786 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_785.x, x_785.y, x_786.z, x_786.w);
        let x_788 : vec4<f32> = u_xlat6;
        let x_790 : vec2<f32> = floor(vec2<f32>(x_788.x, x_788.y));
        let x_791 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_794 : vec4<f32> = vs_INTERP3;
        let x_797 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_800 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_794.x, x_794.y) * vec2<f32>(x_797.z, x_797.w)) + -(vec2<f32>(x_800.x, x_800.y)));
        let x_804 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_804.x, x_804.x, x_804.y, x_804.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_809 : vec4<f32> = u_xlat7;
        let x_811 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_809.x, x_809.x, x_809.z, x_809.z) * vec4<f32>(x_811.x, x_811.x, x_811.z, x_811.z));
        let x_814 : vec4<f32> = u_xlat8;
        let x_818 : vec2<f32> = (vec2<f32>(x_814.y, x_814.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_819 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_818.x, x_819.y, x_818.y, x_819.w);
        let x_821 : vec4<f32> = u_xlat8;
        let x_824 : vec2<f32> = u_xlat58;
        let x_826 : vec2<f32> = ((vec2<f32>(x_821.x, x_821.z) * vec2<f32>(0.5f, 0.5f)) + -(x_824));
        let x_827 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
        let x_830 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_830) + vec2<f32>(1.0f, 1.0f));
        let x_835 : vec2<f32> = u_xlat58;
        let x_837 : vec2<f32> = min(x_835, vec2<f32>(0.0f, 0.0f));
        let x_838 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_837.x, x_837.y, x_838.z, x_838.w);
        let x_840 : vec4<f32> = u_xlat9;
        let x_843 : vec4<f32> = u_xlat9;
        let x_846 : vec2<f32> = u_xlat60;
        let x_847 : vec2<f32> = ((-(vec2<f32>(x_840.x, x_840.y)) * vec2<f32>(x_843.x, x_843.y)) + x_846);
        let x_848 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_847.x, x_847.y, x_848.z, x_848.w);
        let x_850 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_850, vec2<f32>(0.0f, 0.0f));
        let x_852 : vec2<f32> = u_xlat58;
        let x_854 : vec2<f32> = u_xlat58;
        let x_856 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_852) * x_854) + vec2<f32>(x_856.y, x_856.w));
        let x_859 : vec4<f32> = u_xlat9;
        let x_861 : vec2<f32> = (vec2<f32>(x_859.x, x_859.y) + vec2<f32>(1.0f, 1.0f));
        let x_862 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_861.x, x_861.y, x_862.z, x_862.w);
        let x_864 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_864 + vec2<f32>(1.0f, 1.0f));
        let x_867 : vec4<f32> = u_xlat8;
        let x_871 : vec2<f32> = (vec2<f32>(x_867.x, x_867.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_872 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_871.x, x_871.y, x_872.z, x_872.w);
        let x_874 : vec2<f32> = u_xlat60;
        let x_875 : vec2<f32> = (x_874 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_876 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec4<f32> = u_xlat9;
        let x_880 : vec2<f32> = (vec2<f32>(x_878.x, x_878.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_881 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        let x_884 : vec2<f32> = u_xlat58;
        let x_885 : vec2<f32> = (x_884 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_886 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_888 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_888.y, x_888.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_892 : f32 = u_xlat9.x;
        u_xlat10.z = x_892;
        let x_895 : f32 = u_xlat58.x;
        u_xlat10.w = x_895;
        let x_898 : f32 = u_xlat11.x;
        u_xlat8.z = x_898;
        let x_901 : f32 = u_xlat7.x;
        u_xlat8.w = x_901;
        let x_904 : vec4<f32> = u_xlat8;
        let x_906 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_904.z, x_904.w, x_904.x, x_904.z) + vec4<f32>(x_906.z, x_906.w, x_906.x, x_906.z));
        let x_910 : f32 = u_xlat10.y;
        u_xlat9.z = x_910;
        let x_913 : f32 = u_xlat58.y;
        u_xlat9.w = x_913;
        let x_916 : f32 = u_xlat8.y;
        u_xlat11.z = x_916;
        let x_919 : f32 = u_xlat7.z;
        u_xlat11.w = x_919;
        let x_921 : vec4<f32> = u_xlat9;
        let x_923 : vec4<f32> = u_xlat11;
        let x_925 : vec3<f32> = (vec3<f32>(x_921.z, x_921.y, x_921.w) + vec3<f32>(x_923.z, x_923.y, x_923.w));
        let x_926 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
        let x_928 : vec4<f32> = u_xlat8;
        let x_930 : vec4<f32> = u_xlat12;
        let x_932 : vec3<f32> = (vec3<f32>(x_928.x, x_928.z, x_928.w) / vec3<f32>(x_930.z, x_930.w, x_930.y));
        let x_933 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
        let x_935 : vec4<f32> = u_xlat8;
        let x_941 : vec3<f32> = (vec3<f32>(x_935.x, x_935.y, x_935.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_942 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
        let x_944 : vec4<f32> = u_xlat11;
        let x_946 : vec4<f32> = u_xlat7;
        let x_948 : vec3<f32> = (vec3<f32>(x_944.z, x_944.y, x_944.w) / vec3<f32>(x_946.x, x_946.y, x_946.z));
        let x_949 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
        let x_951 : vec4<f32> = u_xlat9;
        let x_953 : vec3<f32> = (vec3<f32>(x_951.x, x_951.y, x_951.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_954 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
        let x_956 : vec4<f32> = u_xlat8;
        let x_959 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_961 : vec3<f32> = (vec3<f32>(x_956.y, x_956.x, x_956.z) * vec3<f32>(x_959.x, x_959.x, x_959.x));
        let x_962 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
        let x_964 : vec4<f32> = u_xlat9;
        let x_967 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_969 : vec3<f32> = (vec3<f32>(x_964.x, x_964.y, x_964.z) * vec3<f32>(x_967.y, x_967.y, x_967.y));
        let x_970 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
        let x_973 : f32 = u_xlat9.x;
        u_xlat8.w = x_973;
        let x_975 : vec4<f32> = u_xlat6;
        let x_978 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_975.x, x_975.y, x_975.x, x_975.y) * vec4<f32>(x_978.x, x_978.y, x_978.x, x_978.y)) + vec4<f32>(x_981.y, x_981.w, x_981.x, x_981.w));
        let x_984 : vec4<f32> = u_xlat6;
        let x_987 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_987.x, x_987.y)) + vec2<f32>(x_990.z, x_990.w));
        let x_994 : f32 = u_xlat8.y;
        u_xlat9.w = x_994;
        let x_996 : vec4<f32> = u_xlat9;
        let x_997 : vec2<f32> = vec2<f32>(x_996.y, x_996.z);
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_997.x, x_998.z, x_997.y);
        let x_1000 : vec4<f32> = u_xlat6;
        let x_1003 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1006 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1000.x, x_1000.y, x_1000.x, x_1000.y) * vec4<f32>(x_1003.x, x_1003.y, x_1003.x, x_1003.y)) + vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1006.y));
        let x_1009 : vec4<f32> = u_xlat6;
        let x_1012 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1015 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1009.x, x_1009.y, x_1009.x, x_1009.y) * vec4<f32>(x_1012.x, x_1012.y, x_1012.x, x_1012.y)) + vec4<f32>(x_1015.w, x_1015.y, x_1015.w, x_1015.z));
        let x_1018 : vec4<f32> = u_xlat6;
        let x_1021 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1024 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y) * vec4<f32>(x_1021.x, x_1021.y, x_1021.x, x_1021.y)) + vec4<f32>(x_1024.x, x_1024.w, x_1024.z, x_1024.w));
        let x_1028 : vec4<f32> = u_xlat7;
        let x_1030 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1028.x, x_1028.x, x_1028.x, x_1028.y) * vec4<f32>(x_1030.z, x_1030.w, x_1030.y, x_1030.z));
        let x_1034 : vec4<f32> = u_xlat7;
        let x_1036 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1034.y, x_1034.y, x_1034.z, x_1034.z) * x_1036);
        let x_1040 : f32 = u_xlat7.z;
        let x_1042 : f32 = u_xlat12.y;
        u_xlat82 = (x_1040 * x_1042);
        let x_1045 : vec4<f32> = u_xlat10;
        let x_1046 : vec2<f32> = vec2<f32>(x_1045.x, x_1045.y);
        let x_1048 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_1046.x, x_1046.y, x_1048);
        let x_1056 : vec3<f32> = txVec4;
        let x_1058 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1056.xy, x_1056.z);
        u_xlat83 = x_1058;
        let x_1060 : vec4<f32> = u_xlat10;
        let x_1061 : vec2<f32> = vec2<f32>(x_1060.z, x_1060.w);
        let x_1063 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_1061.x, x_1061.y, x_1063);
        let x_1070 : vec3<f32> = txVec5;
        let x_1072 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1070.xy, x_1070.z);
        u_xlat6.x = x_1072;
        let x_1075 : f32 = u_xlat6.x;
        let x_1077 : f32 = u_xlat13.y;
        u_xlat6.x = (x_1075 * x_1077);
        let x_1081 : f32 = u_xlat13.x;
        let x_1082 : f32 = u_xlat83;
        let x_1085 : f32 = u_xlat6.x;
        u_xlat83 = ((x_1081 * x_1082) + x_1085);
        let x_1088 : vec2<f32> = u_xlat58;
        let x_1090 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1088.x, x_1088.y, x_1090);
        let x_1097 : vec3<f32> = txVec6;
        let x_1099 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1097.xy, x_1097.z);
        u_xlat6.x = x_1099;
        let x_1102 : f32 = u_xlat13.z;
        let x_1104 : f32 = u_xlat6.x;
        let x_1106 : f32 = u_xlat83;
        u_xlat83 = ((x_1102 * x_1104) + x_1106);
        let x_1109 : vec4<f32> = u_xlat9;
        let x_1110 : vec2<f32> = vec2<f32>(x_1109.x, x_1109.y);
        let x_1112 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1110.x, x_1110.y, x_1112);
        let x_1119 : vec3<f32> = txVec7;
        let x_1121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1119.xy, x_1119.z);
        u_xlat6.x = x_1121;
        let x_1124 : f32 = u_xlat13.w;
        let x_1126 : f32 = u_xlat6.x;
        let x_1128 : f32 = u_xlat83;
        u_xlat83 = ((x_1124 * x_1126) + x_1128);
        let x_1131 : vec4<f32> = u_xlat11;
        let x_1132 : vec2<f32> = vec2<f32>(x_1131.x, x_1131.y);
        let x_1134 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1132.x, x_1132.y, x_1134);
        let x_1141 : vec3<f32> = txVec8;
        let x_1143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1141.xy, x_1141.z);
        u_xlat6.x = x_1143;
        let x_1146 : f32 = u_xlat14.x;
        let x_1148 : f32 = u_xlat6.x;
        let x_1150 : f32 = u_xlat83;
        u_xlat83 = ((x_1146 * x_1148) + x_1150);
        let x_1153 : vec4<f32> = u_xlat11;
        let x_1154 : vec2<f32> = vec2<f32>(x_1153.z, x_1153.w);
        let x_1156 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1154.x, x_1154.y, x_1156);
        let x_1163 : vec3<f32> = txVec9;
        let x_1165 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1163.xy, x_1163.z);
        u_xlat6.x = x_1165;
        let x_1168 : f32 = u_xlat14.y;
        let x_1170 : f32 = u_xlat6.x;
        let x_1172 : f32 = u_xlat83;
        u_xlat83 = ((x_1168 * x_1170) + x_1172);
        let x_1175 : vec4<f32> = u_xlat9;
        let x_1176 : vec2<f32> = vec2<f32>(x_1175.z, x_1175.w);
        let x_1178 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1176.x, x_1176.y, x_1178);
        let x_1185 : vec3<f32> = txVec10;
        let x_1187 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1185.xy, x_1185.z);
        u_xlat6.x = x_1187;
        let x_1190 : f32 = u_xlat14.z;
        let x_1192 : f32 = u_xlat6.x;
        let x_1194 : f32 = u_xlat83;
        u_xlat83 = ((x_1190 * x_1192) + x_1194);
        let x_1197 : vec4<f32> = u_xlat8;
        let x_1198 : vec2<f32> = vec2<f32>(x_1197.x, x_1197.y);
        let x_1200 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1198.x, x_1198.y, x_1200);
        let x_1207 : vec3<f32> = txVec11;
        let x_1209 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1207.xy, x_1207.z);
        u_xlat6.x = x_1209;
        let x_1212 : f32 = u_xlat14.w;
        let x_1214 : f32 = u_xlat6.x;
        let x_1216 : f32 = u_xlat83;
        u_xlat83 = ((x_1212 * x_1214) + x_1216);
        let x_1219 : vec4<f32> = u_xlat8;
        let x_1220 : vec2<f32> = vec2<f32>(x_1219.z, x_1219.w);
        let x_1222 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1220.x, x_1220.y, x_1222);
        let x_1229 : vec3<f32> = txVec12;
        let x_1231 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1229.xy, x_1229.z);
        u_xlat6.x = x_1231;
        let x_1233 : f32 = u_xlat82;
        let x_1235 : f32 = u_xlat6.x;
        let x_1237 : f32 = u_xlat83;
        u_xlat81 = ((x_1233 * x_1235) + x_1237);
      } else {
        let x_1240 : vec4<f32> = vs_INTERP3;
        let x_1243 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1246 : vec2<f32> = ((vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(x_1243.z, x_1243.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1247 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1246.x, x_1246.y, x_1247.z, x_1247.w);
        let x_1249 : vec4<f32> = u_xlat6;
        let x_1251 : vec2<f32> = floor(vec2<f32>(x_1249.x, x_1249.y));
        let x_1252 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1251.x, x_1251.y, x_1252.z, x_1252.w);
        let x_1254 : vec4<f32> = vs_INTERP3;
        let x_1257 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.z, x_1257.w)) + -(vec2<f32>(x_1260.x, x_1260.y)));
        let x_1264 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1264.x, x_1264.x, x_1264.y, x_1264.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1267 : vec4<f32> = u_xlat7;
        let x_1269 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1267.x, x_1267.x, x_1267.z, x_1267.z) * vec4<f32>(x_1269.x, x_1269.x, x_1269.z, x_1269.z));
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1276 : vec2<f32> = (vec2<f32>(x_1272.y, x_1272.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1277.x, x_1276.x, x_1277.z, x_1276.y);
        let x_1279 : vec4<f32> = u_xlat8;
        let x_1282 : vec2<f32> = u_xlat58;
        let x_1284 : vec2<f32> = ((vec2<f32>(x_1279.x, x_1279.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1282));
        let x_1285 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1284.x, x_1285.y, x_1284.y, x_1285.w);
        let x_1287 : vec2<f32> = u_xlat58;
        let x_1289 : vec2<f32> = (-(x_1287) + vec2<f32>(1.0f, 1.0f));
        let x_1290 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1292 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1292, vec2<f32>(0.0f, 0.0f));
        let x_1294 : vec2<f32> = u_xlat60;
        let x_1296 : vec2<f32> = u_xlat60;
        let x_1298 : vec4<f32> = u_xlat8;
        let x_1300 : vec2<f32> = ((-(x_1294) * x_1296) + vec2<f32>(x_1298.x, x_1298.y));
        let x_1301 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
        let x_1303 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1303, vec2<f32>(0.0f, 0.0f));
        let x_1306 : vec2<f32> = u_xlat60;
        let x_1308 : vec2<f32> = u_xlat60;
        let x_1310 : vec4<f32> = u_xlat7;
        let x_1312 : vec2<f32> = ((-(x_1306) * x_1308) + vec2<f32>(x_1310.y, x_1310.w));
        let x_1313 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1312.x, x_1313.y, x_1312.y);
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1317 : vec2<f32> = (vec2<f32>(x_1315.x, x_1315.y) + vec2<f32>(2.0f, 2.0f));
        let x_1318 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
        let x_1320 : vec3<f32> = u_xlat33;
        let x_1322 : vec2<f32> = (vec2<f32>(x_1320.x, x_1320.z) + vec2<f32>(2.0f, 2.0f));
        let x_1323 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1323.x, x_1322.x, x_1323.z, x_1322.y);
        let x_1326 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1326 * 0.08163200318813323975f);
        let x_1330 : vec4<f32> = u_xlat7;
        let x_1333 : vec3<f32> = (vec3<f32>(x_1330.z, x_1330.x, x_1330.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1334 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1334.w);
        let x_1336 : vec4<f32> = u_xlat8;
        let x_1339 : vec2<f32> = (vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1340 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
        let x_1343 : f32 = u_xlat11.y;
        u_xlat10.x = x_1343;
        let x_1345 : vec2<f32> = u_xlat58;
        let x_1352 : vec2<f32> = ((vec2<f32>(x_1345.x, x_1345.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1353 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1353.x, x_1352.x, x_1353.z, x_1352.y);
        let x_1355 : vec2<f32> = u_xlat58;
        let x_1359 : vec2<f32> = ((vec2<f32>(x_1355.x, x_1355.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1360 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1359.x, x_1360.y, x_1359.y, x_1360.w);
        let x_1363 : f32 = u_xlat7.x;
        u_xlat8.y = x_1363;
        let x_1366 : f32 = u_xlat9.y;
        u_xlat8.w = x_1366;
        let x_1368 : vec4<f32> = u_xlat8;
        let x_1369 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1368 + x_1369);
        let x_1371 : vec2<f32> = u_xlat58;
        let x_1374 : vec2<f32> = ((vec2<f32>(x_1371.y, x_1371.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1375 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1375.x, x_1374.x, x_1375.z, x_1374.y);
        let x_1377 : vec2<f32> = u_xlat58;
        let x_1380 : vec2<f32> = ((vec2<f32>(x_1377.y, x_1377.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1381 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1380.x, x_1381.y, x_1380.y, x_1381.w);
        let x_1384 : f32 = u_xlat7.y;
        u_xlat9.y = x_1384;
        let x_1386 : vec4<f32> = u_xlat9;
        let x_1387 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1386 + x_1387);
        let x_1389 : vec4<f32> = u_xlat8;
        let x_1390 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1389 / x_1390);
        let x_1392 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1392 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1398 : vec4<f32> = u_xlat9;
        let x_1399 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1398 / x_1399);
        let x_1401 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1401 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1403 : vec4<f32> = u_xlat8;
        let x_1406 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1403.w, x_1403.x, x_1403.y, x_1403.z) * vec4<f32>(x_1406.x, x_1406.x, x_1406.x, x_1406.x));
        let x_1409 : vec4<f32> = u_xlat9;
        let x_1412 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1409.x, x_1409.w, x_1409.y, x_1409.z) * vec4<f32>(x_1412.y, x_1412.y, x_1412.y, x_1412.y));
        let x_1415 : vec4<f32> = u_xlat8;
        let x_1416 : vec3<f32> = vec3<f32>(x_1415.y, x_1415.z, x_1415.w);
        let x_1417 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1416.x, x_1417.y, x_1416.y, x_1416.z);
        let x_1420 : f32 = u_xlat9.x;
        u_xlat11.y = x_1420;
        let x_1422 : vec4<f32> = u_xlat6;
        let x_1425 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1428 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1422.x, x_1422.y, x_1422.x, x_1422.y) * vec4<f32>(x_1425.x, x_1425.y, x_1425.x, x_1425.y)) + vec4<f32>(x_1428.x, x_1428.y, x_1428.z, x_1428.y));
        let x_1431 : vec4<f32> = u_xlat6;
        let x_1434 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1437 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1431.x, x_1431.y) * vec2<f32>(x_1434.x, x_1434.y)) + vec2<f32>(x_1437.w, x_1437.y));
        let x_1441 : f32 = u_xlat11.y;
        u_xlat8.y = x_1441;
        let x_1444 : f32 = u_xlat9.z;
        u_xlat11.y = x_1444;
        let x_1446 : vec4<f32> = u_xlat6;
        let x_1449 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1452 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1446.x, x_1446.y, x_1446.x, x_1446.y) * vec4<f32>(x_1449.x, x_1449.y, x_1449.x, x_1449.y)) + vec4<f32>(x_1452.x, x_1452.y, x_1452.z, x_1452.y));
        let x_1455 : vec4<f32> = u_xlat6;
        let x_1458 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1461 : vec4<f32> = u_xlat11;
        let x_1463 : vec2<f32> = ((vec2<f32>(x_1455.x, x_1455.y) * vec2<f32>(x_1458.x, x_1458.y)) + vec2<f32>(x_1461.w, x_1461.y));
        let x_1464 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1463.x, x_1463.y, x_1464.z, x_1464.w);
        let x_1467 : f32 = u_xlat11.y;
        u_xlat8.z = x_1467;
        let x_1470 : vec4<f32> = u_xlat6;
        let x_1473 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1470.x, x_1470.y, x_1470.x, x_1470.y) * vec4<f32>(x_1473.x, x_1473.y, x_1473.x, x_1473.y)) + vec4<f32>(x_1476.x, x_1476.y, x_1476.x, x_1476.z));
        let x_1480 : f32 = u_xlat9.w;
        u_xlat11.y = x_1480;
        let x_1483 : vec4<f32> = u_xlat6;
        let x_1486 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1489 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1483.x, x_1483.y, x_1483.x, x_1483.y) * vec4<f32>(x_1486.x, x_1486.y, x_1486.x, x_1486.y)) + vec4<f32>(x_1489.x, x_1489.y, x_1489.z, x_1489.y));
        let x_1493 : vec4<f32> = u_xlat6;
        let x_1496 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1499 : vec4<f32> = u_xlat11;
        let x_1501 : vec2<f32> = ((vec2<f32>(x_1493.x, x_1493.y) * vec2<f32>(x_1496.x, x_1496.y)) + vec2<f32>(x_1499.w, x_1499.y));
        let x_1502 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1501.x, x_1501.y, x_1502.z);
        let x_1505 : f32 = u_xlat11.y;
        u_xlat8.w = x_1505;
        let x_1508 : vec4<f32> = u_xlat6;
        let x_1511 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1514 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1508.x, x_1508.y) * vec2<f32>(x_1511.x, x_1511.y)) + vec2<f32>(x_1514.x, x_1514.w));
        let x_1517 : vec4<f32> = u_xlat11;
        let x_1518 : vec3<f32> = vec3<f32>(x_1517.x, x_1517.z, x_1517.w);
        let x_1519 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1518.x, x_1519.y, x_1518.y, x_1518.z);
        let x_1521 : vec4<f32> = u_xlat6;
        let x_1524 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1527 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1521.x, x_1521.y, x_1521.x, x_1521.y) * vec4<f32>(x_1524.x, x_1524.y, x_1524.x, x_1524.y)) + vec4<f32>(x_1527.x, x_1527.y, x_1527.z, x_1527.y));
        let x_1531 : vec4<f32> = u_xlat6;
        let x_1534 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1537 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1531.x, x_1531.y) * vec2<f32>(x_1534.x, x_1534.y)) + vec2<f32>(x_1537.w, x_1537.y));
        let x_1541 : f32 = u_xlat8.x;
        u_xlat9.x = x_1541;
        let x_1543 : vec4<f32> = u_xlat6;
        let x_1546 : vec4<f32> = x_670.x_MainLightShadowmapSize;
        let x_1549 : vec4<f32> = u_xlat9;
        let x_1551 : vec2<f32> = ((vec2<f32>(x_1543.x, x_1543.y) * vec2<f32>(x_1546.x, x_1546.y)) + vec2<f32>(x_1549.x, x_1549.y));
        let x_1552 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1551.x, x_1551.y, x_1552.z, x_1552.w);
        let x_1555 : vec4<f32> = u_xlat7;
        let x_1557 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1555.x, x_1555.x, x_1555.x, x_1555.x) * x_1557);
        let x_1560 : vec4<f32> = u_xlat7;
        let x_1562 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1560.y, x_1560.y, x_1560.y, x_1560.y) * x_1562);
        let x_1565 : vec4<f32> = u_xlat7;
        let x_1567 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1565.z, x_1565.z, x_1565.z, x_1565.z) * x_1567);
        let x_1569 : vec4<f32> = u_xlat7;
        let x_1571 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1569.w, x_1569.w, x_1569.w, x_1569.w) * x_1571);
        let x_1574 : vec4<f32> = u_xlat12;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.x, x_1574.y);
        let x_1577 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec13;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat82 = x_1586;
        let x_1588 : vec4<f32> = u_xlat12;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec14;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1598.xy, x_1598.z);
        u_xlat83 = x_1600;
        let x_1601 : f32 = u_xlat83;
        let x_1603 : f32 = u_xlat17.y;
        u_xlat83 = (x_1601 * x_1603);
        let x_1606 : f32 = u_xlat17.x;
        let x_1607 : f32 = u_xlat82;
        let x_1609 : f32 = u_xlat83;
        u_xlat82 = ((x_1606 * x_1607) + x_1609);
        let x_1612 : vec2<f32> = u_xlat58;
        let x_1614 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec15;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1621.xy, x_1621.z);
        u_xlat83 = x_1623;
        let x_1625 : f32 = u_xlat17.z;
        let x_1626 : f32 = u_xlat83;
        let x_1628 : f32 = u_xlat82;
        u_xlat82 = ((x_1625 * x_1626) + x_1628);
        let x_1631 : vec4<f32> = u_xlat15;
        let x_1632 : vec2<f32> = vec2<f32>(x_1631.x, x_1631.y);
        let x_1634 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1632.x, x_1632.y, x_1634);
        let x_1641 : vec3<f32> = txVec16;
        let x_1643 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1641.xy, x_1641.z);
        u_xlat83 = x_1643;
        let x_1645 : f32 = u_xlat17.w;
        let x_1646 : f32 = u_xlat83;
        let x_1648 : f32 = u_xlat82;
        u_xlat82 = ((x_1645 * x_1646) + x_1648);
        let x_1651 : vec4<f32> = u_xlat13;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.x, x_1651.y);
        let x_1654 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec17;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1661.xy, x_1661.z);
        u_xlat83 = x_1663;
        let x_1665 : f32 = u_xlat18.x;
        let x_1666 : f32 = u_xlat83;
        let x_1668 : f32 = u_xlat82;
        u_xlat82 = ((x_1665 * x_1666) + x_1668);
        let x_1671 : vec4<f32> = u_xlat13;
        let x_1672 : vec2<f32> = vec2<f32>(x_1671.z, x_1671.w);
        let x_1674 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1672.x, x_1672.y, x_1674);
        let x_1681 : vec3<f32> = txVec18;
        let x_1683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1681.xy, x_1681.z);
        u_xlat83 = x_1683;
        let x_1685 : f32 = u_xlat18.y;
        let x_1686 : f32 = u_xlat83;
        let x_1688 : f32 = u_xlat82;
        u_xlat82 = ((x_1685 * x_1686) + x_1688);
        let x_1691 : vec4<f32> = u_xlat14;
        let x_1692 : vec2<f32> = vec2<f32>(x_1691.x, x_1691.y);
        let x_1694 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1692.x, x_1692.y, x_1694);
        let x_1701 : vec3<f32> = txVec19;
        let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1701.xy, x_1701.z);
        u_xlat83 = x_1703;
        let x_1705 : f32 = u_xlat18.z;
        let x_1706 : f32 = u_xlat83;
        let x_1708 : f32 = u_xlat82;
        u_xlat82 = ((x_1705 * x_1706) + x_1708);
        let x_1711 : vec4<f32> = u_xlat15;
        let x_1712 : vec2<f32> = vec2<f32>(x_1711.z, x_1711.w);
        let x_1714 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1712.x, x_1712.y, x_1714);
        let x_1721 : vec3<f32> = txVec20;
        let x_1723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1721.xy, x_1721.z);
        u_xlat83 = x_1723;
        let x_1725 : f32 = u_xlat18.w;
        let x_1726 : f32 = u_xlat83;
        let x_1728 : f32 = u_xlat82;
        u_xlat82 = ((x_1725 * x_1726) + x_1728);
        let x_1731 : vec4<f32> = u_xlat16;
        let x_1732 : vec2<f32> = vec2<f32>(x_1731.x, x_1731.y);
        let x_1734 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1732.x, x_1732.y, x_1734);
        let x_1741 : vec3<f32> = txVec21;
        let x_1743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1741.xy, x_1741.z);
        u_xlat83 = x_1743;
        let x_1745 : f32 = u_xlat19.x;
        let x_1746 : f32 = u_xlat83;
        let x_1748 : f32 = u_xlat82;
        u_xlat82 = ((x_1745 * x_1746) + x_1748);
        let x_1751 : vec4<f32> = u_xlat16;
        let x_1752 : vec2<f32> = vec2<f32>(x_1751.z, x_1751.w);
        let x_1754 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1752.x, x_1752.y, x_1754);
        let x_1761 : vec3<f32> = txVec22;
        let x_1763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1761.xy, x_1761.z);
        u_xlat83 = x_1763;
        let x_1765 : f32 = u_xlat19.y;
        let x_1766 : f32 = u_xlat83;
        let x_1768 : f32 = u_xlat82;
        u_xlat82 = ((x_1765 * x_1766) + x_1768);
        let x_1771 : vec3<f32> = u_xlat34;
        let x_1772 : vec2<f32> = vec2<f32>(x_1771.x, x_1771.y);
        let x_1774 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1772.x, x_1772.y, x_1774);
        let x_1781 : vec3<f32> = txVec23;
        let x_1783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1781.xy, x_1781.z);
        u_xlat83 = x_1783;
        let x_1785 : f32 = u_xlat19.z;
        let x_1786 : f32 = u_xlat83;
        let x_1788 : f32 = u_xlat82;
        u_xlat82 = ((x_1785 * x_1786) + x_1788);
        let x_1791 : vec2<f32> = u_xlat66;
        let x_1793 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1791.x, x_1791.y, x_1793);
        let x_1800 : vec3<f32> = txVec24;
        let x_1802 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1800.xy, x_1800.z);
        u_xlat83 = x_1802;
        let x_1804 : f32 = u_xlat19.w;
        let x_1805 : f32 = u_xlat83;
        let x_1807 : f32 = u_xlat82;
        u_xlat82 = ((x_1804 * x_1805) + x_1807);
        let x_1810 : vec4<f32> = u_xlat11;
        let x_1811 : vec2<f32> = vec2<f32>(x_1810.x, x_1810.y);
        let x_1813 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1811.x, x_1811.y, x_1813);
        let x_1820 : vec3<f32> = txVec25;
        let x_1822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1820.xy, x_1820.z);
        u_xlat83 = x_1822;
        let x_1824 : f32 = u_xlat7.x;
        let x_1825 : f32 = u_xlat83;
        let x_1827 : f32 = u_xlat82;
        u_xlat82 = ((x_1824 * x_1825) + x_1827);
        let x_1830 : vec4<f32> = u_xlat11;
        let x_1831 : vec2<f32> = vec2<f32>(x_1830.z, x_1830.w);
        let x_1833 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1831.x, x_1831.y, x_1833);
        let x_1840 : vec3<f32> = txVec26;
        let x_1842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1840.xy, x_1840.z);
        u_xlat83 = x_1842;
        let x_1844 : f32 = u_xlat7.y;
        let x_1845 : f32 = u_xlat83;
        let x_1847 : f32 = u_xlat82;
        u_xlat82 = ((x_1844 * x_1845) + x_1847);
        let x_1850 : vec2<f32> = u_xlat61;
        let x_1852 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1850.x, x_1850.y, x_1852);
        let x_1859 : vec3<f32> = txVec27;
        let x_1861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1859.xy, x_1859.z);
        u_xlat83 = x_1861;
        let x_1863 : f32 = u_xlat7.z;
        let x_1864 : f32 = u_xlat83;
        let x_1866 : f32 = u_xlat82;
        u_xlat82 = ((x_1863 * x_1864) + x_1866);
        let x_1869 : vec4<f32> = u_xlat6;
        let x_1870 : vec2<f32> = vec2<f32>(x_1869.x, x_1869.y);
        let x_1872 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1870.x, x_1870.y, x_1872);
        let x_1879 : vec3<f32> = txVec28;
        let x_1881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1879.xy, x_1879.z);
        u_xlat83 = x_1881;
        let x_1883 : f32 = u_xlat7.w;
        let x_1884 : f32 = u_xlat83;
        let x_1886 : f32 = u_xlat82;
        u_xlat81 = ((x_1883 * x_1884) + x_1886);
      }
    }
  } else {
    let x_1890 : vec4<f32> = vs_INTERP3;
    let x_1891 : vec2<f32> = vec2<f32>(x_1890.x, x_1890.y);
    let x_1893 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1891.x, x_1891.y, x_1893);
    let x_1900 : vec3<f32> = txVec29;
    let x_1902 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1900.xy, x_1900.z);
    u_xlat81 = x_1902;
  }
  let x_1904 : f32 = x_670.x_MainLightShadowParams.x;
  u_xlat82 = (-(x_1904) + 1.0f);
  let x_1907 : f32 = u_xlat81;
  let x_1909 : f32 = x_670.x_MainLightShadowParams.x;
  let x_1911 : f32 = u_xlat82;
  u_xlat81 = ((x_1907 * x_1909) + x_1911);
  let x_1914 : f32 = vs_INTERP3.z;
  u_xlatb82 = (0.0f >= x_1914);
  let x_1918 : f32 = vs_INTERP3.z;
  u_xlatb83 = (x_1918 >= 1.0f);
  let x_1920 : bool = u_xlatb82;
  let x_1921 : bool = u_xlatb83;
  u_xlatb82 = (x_1920 | x_1921);
  let x_1923 : bool = u_xlatb82;
  let x_1924 : f32 = u_xlat81;
  u_xlat81 = select(x_1924, 1.0f, x_1923);
  let x_1926 : vec3<f32> = vs_INTERP7;
  let x_1928 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1930 : vec3<f32> = (x_1926 + -(x_1928));
  let x_1931 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1931.w);
  let x_1933 : vec4<f32> = u_xlat6;
  let x_1935 : vec4<f32> = u_xlat6;
  u_xlat82 = dot(vec3<f32>(x_1933.x, x_1933.y, x_1933.z), vec3<f32>(x_1935.x, x_1935.y, x_1935.z));
  let x_1938 : f32 = u_xlat82;
  let x_1940 : f32 = x_670.x_MainLightShadowParams.z;
  let x_1943 : f32 = x_670.x_MainLightShadowParams.w;
  u_xlat83 = ((x_1938 * x_1940) + x_1943);
  let x_1945 : f32 = u_xlat83;
  u_xlat83 = clamp(x_1945, 0.0f, 1.0f);
  let x_1947 : f32 = u_xlat81;
  u_xlat6.x = (-(x_1947) + 1.0f);
  let x_1951 : f32 = u_xlat83;
  let x_1953 : f32 = u_xlat6.x;
  let x_1955 : f32 = u_xlat81;
  u_xlat81 = ((x_1951 * x_1953) + x_1955);
  let x_1964 : f32 = x_1962.x_MainLightCookieTextureFormat;
  u_xlatb83 = !((x_1964 == -1.0f));
  let x_1966 : bool = u_xlatb83;
  if (x_1966) {
    let x_1969 : vec3<f32> = vs_INTERP7;
    let x_1972 : vec4<f32> = x_1962.x_MainLightWorldToLight[1i];
    let x_1974 : vec2<f32> = (vec2<f32>(x_1969.y, x_1969.y) * vec2<f32>(x_1972.x, x_1972.y));
    let x_1975 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1974.x, x_1974.y, x_1975.z, x_1975.w);
    let x_1978 : vec4<f32> = x_1962.x_MainLightWorldToLight[0i];
    let x_1980 : vec3<f32> = vs_INTERP7;
    let x_1983 : vec4<f32> = u_xlat6;
    let x_1985 : vec2<f32> = ((vec2<f32>(x_1978.x, x_1978.y) * vec2<f32>(x_1980.x, x_1980.x)) + vec2<f32>(x_1983.x, x_1983.y));
    let x_1986 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1985.x, x_1985.y, x_1986.z, x_1986.w);
    let x_1989 : vec4<f32> = x_1962.x_MainLightWorldToLight[2i];
    let x_1991 : vec3<f32> = vs_INTERP7;
    let x_1994 : vec4<f32> = u_xlat6;
    let x_1996 : vec2<f32> = ((vec2<f32>(x_1989.x, x_1989.y) * vec2<f32>(x_1991.z, x_1991.z)) + vec2<f32>(x_1994.x, x_1994.y));
    let x_1997 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1996.x, x_1996.y, x_1997.z, x_1997.w);
    let x_1999 : vec4<f32> = u_xlat6;
    let x_2002 : vec4<f32> = x_1962.x_MainLightWorldToLight[3i];
    let x_2004 : vec2<f32> = (vec2<f32>(x_1999.x, x_1999.y) + vec2<f32>(x_2002.x, x_2002.y));
    let x_2005 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2004.x, x_2004.y, x_2005.z, x_2005.w);
    let x_2007 : vec4<f32> = u_xlat6;
    let x_2010 : vec2<f32> = ((vec2<f32>(x_2007.x, x_2007.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2011 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2010.x, x_2010.y, x_2011.z, x_2011.w);
    let x_2018 : vec4<f32> = u_xlat6;
    let x_2021 : f32 = x_29.x_GlobalMipBias.x;
    let x_2022 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2018.x, x_2018.y), x_2021);
    u_xlat6 = x_2022;
    let x_2025 : f32 = x_1962.x_MainLightCookieTextureFormat;
    let x_2027 : f32 = x_1962.x_MainLightCookieTextureFormat;
    let x_2029 : f32 = x_1962.x_MainLightCookieTextureFormat;
    let x_2031 : f32 = x_1962.x_MainLightCookieTextureFormat;
    let x_2032 : vec4<f32> = vec4<f32>(x_2025, x_2027, x_2029, x_2031);
    let x_2040 : vec4<bool> = (vec4<f32>(x_2032.x, x_2032.y, x_2032.z, x_2032.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2040.x, x_2040.y);
    let x_2043 : bool = u_xlatb7.y;
    if (x_2043) {
      let x_2048 : f32 = u_xlat6.w;
      x_2044 = x_2048;
    } else {
      let x_2051 : f32 = u_xlat6.x;
      x_2044 = x_2051;
    }
    let x_2052 : f32 = x_2044;
    u_xlat83 = x_2052;
    let x_2054 : bool = u_xlatb7.x;
    if (x_2054) {
      let x_2058 : vec4<f32> = u_xlat6;
      x_2055 = vec3<f32>(x_2058.x, x_2058.y, x_2058.z);
    } else {
      let x_2061 : f32 = u_xlat83;
      x_2055 = vec3<f32>(x_2061, x_2061, x_2061);
    }
    let x_2063 : vec3<f32> = x_2055;
    let x_2064 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2070 : vec4<f32> = u_xlat6;
  let x_2073 : vec4<f32> = x_29.x_MainLightColor;
  let x_2075 : vec3<f32> = (vec3<f32>(x_2070.x, x_2070.y, x_2070.z) * vec3<f32>(x_2073.x, x_2073.y, x_2073.z));
  let x_2076 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2075.x, x_2075.y, x_2075.z, x_2076.w);
  let x_2078 : vec3<f32> = u_xlat4;
  let x_2080 : vec4<f32> = u_xlat1;
  u_xlat83 = dot(-(x_2078), vec3<f32>(x_2080.x, x_2080.y, x_2080.z));
  let x_2083 : f32 = u_xlat83;
  let x_2084 : f32 = u_xlat83;
  u_xlat83 = (x_2083 + x_2084);
  let x_2086 : vec4<f32> = u_xlat1;
  let x_2088 : f32 = u_xlat83;
  let x_2092 : vec3<f32> = u_xlat4;
  let x_2094 : vec3<f32> = ((vec3<f32>(x_2086.x, x_2086.y, x_2086.z) * -(vec3<f32>(x_2088, x_2088, x_2088))) + -(x_2092));
  let x_2095 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
  let x_2097 : vec4<f32> = u_xlat1;
  let x_2099 : vec3<f32> = u_xlat4;
  u_xlat83 = dot(vec3<f32>(x_2097.x, x_2097.y, x_2097.z), x_2099);
  let x_2101 : f32 = u_xlat83;
  u_xlat83 = clamp(x_2101, 0.0f, 1.0f);
  let x_2103 : f32 = u_xlat83;
  u_xlat83 = (-(x_2103) + 1.0f);
  let x_2106 : f32 = u_xlat83;
  let x_2107 : f32 = u_xlat83;
  u_xlat83 = (x_2106 * x_2107);
  let x_2109 : f32 = u_xlat83;
  let x_2110 : f32 = u_xlat83;
  u_xlat83 = (x_2109 * x_2110);
  let x_2113 : f32 = u_xlat78;
  u_xlat84 = ((-(x_2113) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2119 : f32 = u_xlat78;
  let x_2120 : f32 = u_xlat84;
  u_xlat78 = (x_2119 * x_2120);
  let x_2122 : f32 = u_xlat78;
  u_xlat78 = (x_2122 * 6.0f);
  let x_2132 : vec4<f32> = u_xlat7;
  let x_2134 : f32 = u_xlat78;
  let x_2135 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2132.x, x_2132.y, x_2132.z), x_2134);
  u_xlat7 = x_2135;
  let x_2137 : f32 = u_xlat7.w;
  u_xlat78 = (x_2137 + -1.0f);
  let x_2140 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2141 : f32 = u_xlat78;
  u_xlat78 = ((x_2140 * x_2141) + 1.0f);
  let x_2144 : f32 = u_xlat78;
  u_xlat78 = max(x_2144, 0.0f);
  let x_2146 : f32 = u_xlat78;
  u_xlat78 = log2(x_2146);
  let x_2148 : f32 = u_xlat78;
  let x_2150 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat78 = (x_2148 * x_2150);
  let x_2152 : f32 = u_xlat78;
  u_xlat78 = exp2(x_2152);
  let x_2154 : f32 = u_xlat78;
  let x_2156 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat78 = (x_2154 * x_2156);
  let x_2158 : vec4<f32> = u_xlat7;
  let x_2160 : f32 = u_xlat78;
  let x_2162 : vec3<f32> = (vec3<f32>(x_2158.x, x_2158.y, x_2158.z) * vec3<f32>(x_2160, x_2160, x_2160));
  let x_2163 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
  let x_2165 : vec4<f32> = u_xlat2;
  let x_2167 : vec4<f32> = u_xlat2;
  let x_2171 : vec2<f32> = ((vec2<f32>(x_2165.x, x_2165.x) * vec2<f32>(x_2167.x, x_2167.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2172 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2171.x, x_2171.y, x_2172.z, x_2172.w);
  let x_2175 : f32 = u_xlat8.y;
  u_xlat78 = (1.0f / x_2175);
  let x_2177 : vec4<f32> = u_xlat0;
  let x_2180 : f32 = u_xlat79;
  u_xlat34 = (-(vec3<f32>(x_2177.x, x_2177.y, x_2177.z)) + vec3<f32>(x_2180, x_2180, x_2180));
  let x_2183 : f32 = u_xlat83;
  let x_2185 : vec3<f32> = u_xlat34;
  let x_2187 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2183, x_2183, x_2183) * x_2185) + vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
  let x_2190 : f32 = u_xlat78;
  let x_2192 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2190, x_2190, x_2190) * x_2192);
  let x_2194 : vec4<f32> = u_xlat7;
  let x_2196 : vec3<f32> = u_xlat34;
  let x_2197 : vec3<f32> = (vec3<f32>(x_2194.x, x_2194.y, x_2194.z) * x_2196);
  let x_2198 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2197.x, x_2197.y, x_2197.z, x_2198.w);
  let x_2200 : vec4<f32> = u_xlat3;
  let x_2202 : vec4<f32> = u_xlat5;
  let x_2205 : vec4<f32> = u_xlat7;
  let x_2207 : vec3<f32> = ((vec3<f32>(x_2200.x, x_2200.y, x_2200.z) * vec3<f32>(x_2202.x, x_2202.y, x_2202.z)) + vec3<f32>(x_2205.x, x_2205.y, x_2205.z));
  let x_2208 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2207.x, x_2207.y, x_2207.z, x_2208.w);
  let x_2210 : f32 = u_xlat81;
  let x_2212 : f32 = x_349.unity_LightData.z;
  u_xlat78 = (x_2210 * x_2212);
  let x_2214 : vec4<f32> = u_xlat1;
  let x_2217 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_2214.x, x_2214.y, x_2214.z), vec3<f32>(x_2217.x, x_2217.y, x_2217.z));
  let x_2220 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2220, 0.0f, 1.0f);
  let x_2222 : f32 = u_xlat78;
  let x_2223 : f32 = u_xlat79;
  u_xlat78 = (x_2222 * x_2223);
  let x_2225 : f32 = u_xlat78;
  let x_2227 : vec4<f32> = u_xlat6;
  let x_2229 : vec3<f32> = (vec3<f32>(x_2225, x_2225, x_2225) * vec3<f32>(x_2227.x, x_2227.y, x_2227.z));
  let x_2230 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
  let x_2232 : vec3<f32> = u_xlat4;
  let x_2234 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2236 : vec3<f32> = (x_2232 + vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
  let x_2237 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2236.x, x_2236.y, x_2236.z, x_2237.w);
  let x_2239 : vec4<f32> = u_xlat7;
  let x_2241 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2239.x, x_2239.y, x_2239.z), vec3<f32>(x_2241.x, x_2241.y, x_2241.z));
  let x_2244 : f32 = u_xlat78;
  u_xlat78 = max(x_2244, 1.17549435e-38f);
  let x_2247 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_2247);
  let x_2249 : f32 = u_xlat78;
  let x_2251 : vec4<f32> = u_xlat7;
  let x_2253 : vec3<f32> = (vec3<f32>(x_2249, x_2249, x_2249) * vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
  let x_2254 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
  let x_2256 : vec4<f32> = u_xlat1;
  let x_2258 : vec4<f32> = u_xlat7;
  u_xlat78 = dot(vec3<f32>(x_2256.x, x_2256.y, x_2256.z), vec3<f32>(x_2258.x, x_2258.y, x_2258.z));
  let x_2261 : f32 = u_xlat78;
  u_xlat78 = clamp(x_2261, 0.0f, 1.0f);
  let x_2264 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2266 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2264.x, x_2264.y, x_2264.z), vec3<f32>(x_2266.x, x_2266.y, x_2266.z));
  let x_2269 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2269, 0.0f, 1.0f);
  let x_2271 : f32 = u_xlat78;
  let x_2272 : f32 = u_xlat78;
  u_xlat78 = (x_2271 * x_2272);
  let x_2274 : f32 = u_xlat78;
  let x_2276 : f32 = u_xlat8.x;
  u_xlat78 = ((x_2274 * x_2276) + 1.00001001358032226562f);
  let x_2280 : f32 = u_xlat79;
  let x_2281 : f32 = u_xlat79;
  u_xlat79 = (x_2280 * x_2281);
  let x_2283 : f32 = u_xlat78;
  let x_2284 : f32 = u_xlat78;
  u_xlat78 = (x_2283 * x_2284);
  let x_2286 : f32 = u_xlat79;
  u_xlat79 = max(x_2286, 0.10000000149011611938f);
  let x_2289 : f32 = u_xlat78;
  let x_2290 : f32 = u_xlat79;
  u_xlat78 = (x_2289 * x_2290);
  let x_2292 : f32 = u_xlat80;
  let x_2293 : f32 = u_xlat78;
  u_xlat78 = (x_2292 * x_2293);
  let x_2295 : f32 = u_xlat28;
  let x_2296 : f32 = u_xlat78;
  u_xlat78 = (x_2295 / x_2296);
  let x_2298 : vec4<f32> = u_xlat0;
  let x_2300 : f32 = u_xlat78;
  let x_2303 : vec4<f32> = u_xlat5;
  let x_2305 : vec3<f32> = ((vec3<f32>(x_2298.x, x_2298.y, x_2298.z) * vec3<f32>(x_2300, x_2300, x_2300)) + vec3<f32>(x_2303.x, x_2303.y, x_2303.z));
  let x_2306 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2305.x, x_2305.y, x_2305.z, x_2306.w);
  let x_2308 : vec4<f32> = u_xlat6;
  let x_2310 : vec4<f32> = u_xlat7;
  let x_2312 : vec3<f32> = (vec3<f32>(x_2308.x, x_2308.y, x_2308.z) * vec3<f32>(x_2310.x, x_2310.y, x_2310.z));
  let x_2313 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2312.x, x_2312.y, x_2312.z, x_2313.w);
  let x_2316 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2318 : f32 = x_349.unity_LightData.y;
  u_xlat78 = min(x_2316, x_2318);
  let x_2322 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_2322));
  let x_2325 : f32 = u_xlat82;
  let x_2328 : f32 = x_670.x_AdditionalShadowFadeParams.x;
  let x_2331 : f32 = x_670.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2325 * x_2328) + x_2331);
  let x_2333 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2333, 0.0f, 1.0f);
  let x_2336 : f32 = x_1962.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2338 : f32 = x_1962.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2340 : f32 = x_1962.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2342 : f32 = x_1962.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2343 : vec4<f32> = vec4<f32>(x_2336, x_2338, x_2340, x_2342);
  let x_2349 : vec4<bool> = (vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2343.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2349.x, x_2349.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2361 : u32 = u_xlatu_loop_1;
    let x_2362 : u32 = u_xlatu78;
    if ((x_2361 < x_2362)) {
    } else {
      break;
    }
    let x_2365 : u32 = u_xlatu_loop_1;
    u_xlatu81 = (x_2365 >> 2u);
    let x_2369 : u32 = u_xlatu_loop_1;
    u_xlati82 = bitcast<i32>((x_2369 & 3u));
    let x_2372 : u32 = u_xlatu81;
    let x_2375 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2372)];
    let x_2385 : i32 = u_xlati82;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2390 : vec4<u32> = indexable[x_2385];
    u_xlat81 = dot(x_2375, bitcast<vec4<f32>>(x_2390));
    let x_2394 : f32 = u_xlat81;
    u_xlati81 = i32(x_2394);
    let x_2396 : vec3<f32> = vs_INTERP7;
    let x_2407 : i32 = u_xlati81;
    let x_2409 : vec4<f32> = x_2406.x_AdditionalLightsPosition[x_2407];
    let x_2412 : i32 = u_xlati81;
    let x_2414 : vec4<f32> = x_2406.x_AdditionalLightsPosition[x_2412];
    let x_2416 : vec3<f32> = ((-(x_2396) * vec3<f32>(x_2409.w, x_2409.w, x_2409.w)) + vec3<f32>(x_2414.x, x_2414.y, x_2414.z));
    let x_2417 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
    let x_2419 : vec4<f32> = u_xlat9;
    let x_2421 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_2419.x, x_2419.y, x_2419.z), vec3<f32>(x_2421.x, x_2421.y, x_2421.z));
    let x_2424 : f32 = u_xlat82;
    u_xlat82 = max(x_2424, 0.00006103515625f);
    let x_2427 : f32 = u_xlat82;
    u_xlat83 = inverseSqrt(x_2427);
    let x_2429 : f32 = u_xlat83;
    let x_2431 : vec4<f32> = u_xlat9;
    let x_2433 : vec3<f32> = (vec3<f32>(x_2429, x_2429, x_2429) * vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
    let x_2434 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
    let x_2436 : f32 = u_xlat82;
    u_xlat84 = (1.0f / x_2436);
    let x_2438 : f32 = u_xlat82;
    let x_2439 : i32 = u_xlati81;
    let x_2441 : f32 = x_2406.x_AdditionalLightsAttenuation[x_2439].x;
    u_xlat82 = (x_2438 * x_2441);
    let x_2443 : f32 = u_xlat82;
    let x_2445 : f32 = u_xlat82;
    u_xlat82 = ((-(x_2443) * x_2445) + 1.0f);
    let x_2448 : f32 = u_xlat82;
    u_xlat82 = max(x_2448, 0.0f);
    let x_2450 : f32 = u_xlat82;
    let x_2451 : f32 = u_xlat82;
    u_xlat82 = (x_2450 * x_2451);
    let x_2453 : f32 = u_xlat82;
    let x_2454 : f32 = u_xlat84;
    u_xlat82 = (x_2453 * x_2454);
    let x_2456 : i32 = u_xlati81;
    let x_2458 : vec4<f32> = x_2406.x_AdditionalLightsSpotDir[x_2456];
    let x_2460 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(vec3<f32>(x_2458.x, x_2458.y, x_2458.z), vec3<f32>(x_2460.x, x_2460.y, x_2460.z));
    let x_2463 : f32 = u_xlat84;
    let x_2464 : i32 = u_xlati81;
    let x_2466 : f32 = x_2406.x_AdditionalLightsAttenuation[x_2464].z;
    let x_2468 : i32 = u_xlati81;
    let x_2470 : f32 = x_2406.x_AdditionalLightsAttenuation[x_2468].w;
    u_xlat84 = ((x_2463 * x_2466) + x_2470);
    let x_2472 : f32 = u_xlat84;
    u_xlat84 = clamp(x_2472, 0.0f, 1.0f);
    let x_2474 : f32 = u_xlat84;
    let x_2475 : f32 = u_xlat84;
    u_xlat84 = (x_2474 * x_2475);
    let x_2477 : f32 = u_xlat82;
    let x_2478 : f32 = u_xlat84;
    u_xlat82 = (x_2477 * x_2478);
    let x_2482 : i32 = u_xlati81;
    let x_2484 : f32 = x_670.x_AdditionalShadowParams[x_2482].w;
    u_xlati84 = i32(x_2484);
    let x_2487 : i32 = u_xlati84;
    u_xlatb59 = (x_2487 >= 0i);
    let x_2489 : bool = u_xlatb59;
    if (x_2489) {
      let x_2493 : i32 = u_xlati81;
      let x_2495 : f32 = x_670.x_AdditionalShadowParams[x_2493].z;
      u_xlatb59 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2495, x_2495, x_2495, x_2495))));
      let x_2499 : bool = u_xlatb59;
      if (x_2499) {
        let x_2504 : vec4<f32> = u_xlat10;
        let x_2507 : vec4<f32> = u_xlat10;
        let x_2510 : vec4<bool> = (abs(vec4<f32>(x_2504.z, x_2504.z, x_2504.y, x_2504.z)) >= abs(vec4<f32>(x_2507.x, x_2507.y, x_2507.x, x_2507.x)));
        let x_2512 : vec3<bool> = vec3<bool>(x_2510.x, x_2510.y, x_2510.z);
        let x_2513 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2512.x, x_2512.y, x_2512.z, x_2513.w);
        let x_2516 : bool = u_xlatb11.y;
        let x_2518 : bool = u_xlatb11.x;
        u_xlatb59 = (x_2516 & x_2518);
        let x_2520 : vec4<f32> = u_xlat10;
        let x_2523 : vec4<bool> = (-(vec4<f32>(x_2520.z, x_2520.y, x_2520.z, x_2520.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2524 : vec3<bool> = vec3<bool>(x_2523.x, x_2523.y, x_2523.w);
        let x_2525 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2524.x, x_2524.y, x_2525.z, x_2524.z);
        let x_2528 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2528);
        let x_2533 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2533);
        let x_2539 : bool = u_xlatb11.w;
        u_xlat85 = select(0.0f, 1.0f, x_2539);
        let x_2542 : bool = u_xlatb11.z;
        if (x_2542) {
          let x_2547 : f32 = u_xlat11.y;
          x_2543 = x_2547;
        } else {
          let x_2549 : f32 = u_xlat85;
          x_2543 = x_2549;
        }
        let x_2550 : f32 = x_2543;
        u_xlat85 = x_2550;
        let x_2552 : bool = u_xlatb59;
        if (x_2552) {
          let x_2557 : f32 = u_xlat11.x;
          x_2553 = x_2557;
        } else {
          let x_2559 : f32 = u_xlat85;
          x_2553 = x_2559;
        }
        let x_2560 : f32 = x_2553;
        u_xlat59.x = x_2560;
        let x_2562 : i32 = u_xlati81;
        let x_2564 : f32 = x_670.x_AdditionalShadowParams[x_2562].w;
        u_xlat85 = trunc(x_2564);
        let x_2567 : f32 = u_xlat59.x;
        let x_2568 : f32 = u_xlat85;
        u_xlat59.x = (x_2567 + x_2568);
        let x_2572 : f32 = u_xlat59.x;
        u_xlati84 = i32(x_2572);
      }
      let x_2574 : i32 = u_xlati84;
      u_xlati84 = (x_2574 << bitcast<u32>(2i));
      let x_2576 : vec3<f32> = vs_INTERP7;
      let x_2579 : i32 = u_xlati84;
      let x_2582 : i32 = u_xlati84;
      let x_2586 : vec4<f32> = x_670.x_AdditionalLightsWorldToShadow[((x_2579 + 1i) / 4i)][((x_2582 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2576.y, x_2576.y, x_2576.y, x_2576.y) * x_2586);
      let x_2588 : i32 = u_xlati84;
      let x_2590 : i32 = u_xlati84;
      let x_2593 : vec4<f32> = x_670.x_AdditionalLightsWorldToShadow[(x_2588 / 4i)][(x_2590 % 4i)];
      let x_2594 : vec3<f32> = vs_INTERP7;
      let x_2597 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2593 * vec4<f32>(x_2594.x, x_2594.x, x_2594.x, x_2594.x)) + x_2597);
      let x_2599 : i32 = u_xlati84;
      let x_2602 : i32 = u_xlati84;
      let x_2606 : vec4<f32> = x_670.x_AdditionalLightsWorldToShadow[((x_2599 + 2i) / 4i)][((x_2602 + 2i) % 4i)];
      let x_2607 : vec3<f32> = vs_INTERP7;
      let x_2610 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2606 * vec4<f32>(x_2607.z, x_2607.z, x_2607.z, x_2607.z)) + x_2610);
      let x_2612 : vec4<f32> = u_xlat11;
      let x_2613 : i32 = u_xlati84;
      let x_2616 : i32 = u_xlati84;
      let x_2620 : vec4<f32> = x_670.x_AdditionalLightsWorldToShadow[((x_2613 + 3i) / 4i)][((x_2616 + 3i) % 4i)];
      u_xlat11 = (x_2612 + x_2620);
      let x_2622 : vec4<f32> = u_xlat11;
      let x_2624 : vec4<f32> = u_xlat11;
      let x_2626 : vec3<f32> = (vec3<f32>(x_2622.x, x_2622.y, x_2622.z) / vec3<f32>(x_2624.w, x_2624.w, x_2624.w));
      let x_2627 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2626.x, x_2626.y, x_2626.z, x_2627.w);
      let x_2630 : i32 = u_xlati81;
      let x_2632 : f32 = x_670.x_AdditionalShadowParams[x_2630].y;
      u_xlatb84 = (0.0f < x_2632);
      let x_2634 : bool = u_xlatb84;
      if (x_2634) {
        let x_2637 : i32 = u_xlati81;
        let x_2639 : f32 = x_670.x_AdditionalShadowParams[x_2637].y;
        u_xlatb84 = (1.0f == x_2639);
        let x_2641 : bool = u_xlatb84;
        if (x_2641) {
          let x_2644 : vec4<f32> = u_xlat11;
          let x_2648 : vec4<f32> = x_670.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2644.x, x_2644.y, x_2644.x, x_2644.y) + x_2648);
          let x_2651 : vec4<f32> = u_xlat12;
          let x_2652 : vec2<f32> = vec2<f32>(x_2651.x, x_2651.y);
          let x_2654 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2652.x, x_2652.y, x_2654);
          let x_2662 : vec3<f32> = txVec30;
          let x_2664 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2662.xy, x_2662.z);
          u_xlat13.x = x_2664;
          let x_2667 : vec4<f32> = u_xlat12;
          let x_2668 : vec2<f32> = vec2<f32>(x_2667.z, x_2667.w);
          let x_2670 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2668.x, x_2668.y, x_2670);
          let x_2677 : vec3<f32> = txVec31;
          let x_2679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2677.xy, x_2677.z);
          u_xlat13.y = x_2679;
          let x_2681 : vec4<f32> = u_xlat11;
          let x_2685 : vec4<f32> = x_670.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2681.x, x_2681.y, x_2681.x, x_2681.y) + x_2685);
          let x_2688 : vec4<f32> = u_xlat12;
          let x_2689 : vec2<f32> = vec2<f32>(x_2688.x, x_2688.y);
          let x_2691 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2689.x, x_2689.y, x_2691);
          let x_2698 : vec3<f32> = txVec32;
          let x_2700 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2698.xy, x_2698.z);
          u_xlat13.z = x_2700;
          let x_2703 : vec4<f32> = u_xlat12;
          let x_2704 : vec2<f32> = vec2<f32>(x_2703.z, x_2703.w);
          let x_2706 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2704.x, x_2704.y, x_2706);
          let x_2713 : vec3<f32> = txVec33;
          let x_2715 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2713.xy, x_2713.z);
          u_xlat13.w = x_2715;
          let x_2717 : vec4<f32> = u_xlat13;
          u_xlat84 = dot(x_2717, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2720 : i32 = u_xlati81;
          let x_2722 : f32 = x_670.x_AdditionalShadowParams[x_2720].y;
          u_xlatb59 = (2.0f == x_2722);
          let x_2724 : bool = u_xlatb59;
          if (x_2724) {
            let x_2727 : vec4<f32> = u_xlat11;
            let x_2731 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            u_xlat59 = ((vec2<f32>(x_2727.x, x_2727.y) * vec2<f32>(x_2731.z, x_2731.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2735 : vec2<f32> = u_xlat59;
            u_xlat59 = floor(x_2735);
            let x_2737 : vec4<f32> = u_xlat11;
            let x_2740 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2743 : vec2<f32> = u_xlat59;
            let x_2745 : vec2<f32> = ((vec2<f32>(x_2737.x, x_2737.y) * vec2<f32>(x_2740.z, x_2740.w)) + -(x_2743));
            let x_2746 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2745.x, x_2745.y, x_2746.z, x_2746.w);
            let x_2748 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2748.x, x_2748.x, x_2748.y, x_2748.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2751 : vec4<f32> = u_xlat13;
            let x_2753 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2751.x, x_2751.x, x_2751.z, x_2751.z) * vec4<f32>(x_2753.x, x_2753.x, x_2753.z, x_2753.z));
            let x_2757 : vec4<f32> = u_xlat14;
            u_xlat64 = (vec2<f32>(x_2757.y, x_2757.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2760 : vec4<f32> = u_xlat14;
            let x_2763 : vec4<f32> = u_xlat12;
            let x_2766 : vec2<f32> = ((vec2<f32>(x_2760.x, x_2760.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_2763.x, x_2763.y)));
            let x_2767 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2766.x, x_2767.y, x_2766.y, x_2767.w);
            let x_2769 : vec4<f32> = u_xlat12;
            let x_2772 : vec2<f32> = (-(vec2<f32>(x_2769.x, x_2769.y)) + vec2<f32>(1.0f, 1.0f));
            let x_2773 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2772.x, x_2772.y, x_2773.z, x_2773.w);
            let x_2775 : vec4<f32> = u_xlat12;
            u_xlat66 = min(vec2<f32>(x_2775.x, x_2775.y), vec2<f32>(0.0f, 0.0f));
            let x_2778 : vec2<f32> = u_xlat66;
            let x_2780 : vec2<f32> = u_xlat66;
            let x_2782 : vec4<f32> = u_xlat14;
            u_xlat66 = ((-(x_2778) * x_2780) + vec2<f32>(x_2782.x, x_2782.y));
            let x_2785 : vec4<f32> = u_xlat12;
            let x_2787 : vec2<f32> = max(vec2<f32>(x_2785.x, x_2785.y), vec2<f32>(0.0f, 0.0f));
            let x_2788 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2787.x, x_2787.y, x_2788.z, x_2788.w);
            let x_2790 : vec4<f32> = u_xlat12;
            let x_2793 : vec4<f32> = u_xlat12;
            let x_2796 : vec4<f32> = u_xlat13;
            let x_2798 : vec2<f32> = ((-(vec2<f32>(x_2790.x, x_2790.y)) * vec2<f32>(x_2793.x, x_2793.y)) + vec2<f32>(x_2796.y, x_2796.w));
            let x_2799 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2798.x, x_2798.y, x_2799.z, x_2799.w);
            let x_2801 : vec2<f32> = u_xlat66;
            u_xlat66 = (x_2801 + vec2<f32>(1.0f, 1.0f));
            let x_2803 : vec4<f32> = u_xlat12;
            let x_2805 : vec2<f32> = (vec2<f32>(x_2803.x, x_2803.y) + vec2<f32>(1.0f, 1.0f));
            let x_2806 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2805.x, x_2805.y, x_2806.z, x_2806.w);
            let x_2808 : vec4<f32> = u_xlat13;
            let x_2810 : vec2<f32> = (vec2<f32>(x_2808.x, x_2808.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2811 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2810.x, x_2810.y, x_2811.z, x_2811.w);
            let x_2813 : vec4<f32> = u_xlat14;
            let x_2815 : vec2<f32> = (vec2<f32>(x_2813.x, x_2813.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2816 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2815.x, x_2815.y, x_2816.z, x_2816.w);
            let x_2818 : vec2<f32> = u_xlat66;
            let x_2819 : vec2<f32> = (x_2818 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2820 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2819.x, x_2819.y, x_2820.z, x_2820.w);
            let x_2822 : vec4<f32> = u_xlat12;
            let x_2824 : vec2<f32> = (vec2<f32>(x_2822.x, x_2822.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2825 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2824.x, x_2824.y, x_2825.z, x_2825.w);
            let x_2827 : vec4<f32> = u_xlat13;
            let x_2829 : vec2<f32> = (vec2<f32>(x_2827.y, x_2827.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2830 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2829.x, x_2829.y, x_2830.z, x_2830.w);
            let x_2833 : f32 = u_xlat14.x;
            u_xlat15.z = x_2833;
            let x_2836 : f32 = u_xlat12.x;
            u_xlat15.w = x_2836;
            let x_2839 : f32 = u_xlat17.x;
            u_xlat16.z = x_2839;
            let x_2842 : f32 = u_xlat64.x;
            u_xlat16.w = x_2842;
            let x_2844 : vec4<f32> = u_xlat15;
            let x_2846 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_2844.z, x_2844.w, x_2844.x, x_2844.z) + vec4<f32>(x_2846.z, x_2846.w, x_2846.x, x_2846.z));
            let x_2850 : f32 = u_xlat15.y;
            u_xlat14.z = x_2850;
            let x_2853 : f32 = u_xlat12.y;
            u_xlat14.w = x_2853;
            let x_2856 : f32 = u_xlat16.y;
            u_xlat17.z = x_2856;
            let x_2859 : f32 = u_xlat64.y;
            u_xlat17.w = x_2859;
            let x_2861 : vec4<f32> = u_xlat14;
            let x_2863 : vec4<f32> = u_xlat17;
            let x_2865 : vec3<f32> = (vec3<f32>(x_2861.z, x_2861.y, x_2861.w) + vec3<f32>(x_2863.z, x_2863.y, x_2863.w));
            let x_2866 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2865.x, x_2865.y, x_2865.z, x_2866.w);
            let x_2868 : vec4<f32> = u_xlat16;
            let x_2870 : vec4<f32> = u_xlat13;
            let x_2872 : vec3<f32> = (vec3<f32>(x_2868.x, x_2868.z, x_2868.w) / vec3<f32>(x_2870.z, x_2870.w, x_2870.y));
            let x_2873 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2872.x, x_2872.y, x_2872.z, x_2873.w);
            let x_2875 : vec4<f32> = u_xlat14;
            let x_2877 : vec3<f32> = (vec3<f32>(x_2875.x, x_2875.y, x_2875.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2878 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2877.x, x_2877.y, x_2877.z, x_2878.w);
            let x_2880 : vec4<f32> = u_xlat17;
            let x_2882 : vec4<f32> = u_xlat12;
            let x_2884 : vec3<f32> = (vec3<f32>(x_2880.z, x_2880.y, x_2880.w) / vec3<f32>(x_2882.x, x_2882.y, x_2882.z));
            let x_2885 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2884.x, x_2884.y, x_2884.z, x_2885.w);
            let x_2887 : vec4<f32> = u_xlat15;
            let x_2889 : vec3<f32> = (vec3<f32>(x_2887.x, x_2887.y, x_2887.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2890 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2889.x, x_2889.y, x_2889.z, x_2890.w);
            let x_2892 : vec4<f32> = u_xlat14;
            let x_2895 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2897 : vec3<f32> = (vec3<f32>(x_2892.y, x_2892.x, x_2892.z) * vec3<f32>(x_2895.x, x_2895.x, x_2895.x));
            let x_2898 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2897.x, x_2897.y, x_2897.z, x_2898.w);
            let x_2900 : vec4<f32> = u_xlat15;
            let x_2903 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2905 : vec3<f32> = (vec3<f32>(x_2900.x, x_2900.y, x_2900.z) * vec3<f32>(x_2903.y, x_2903.y, x_2903.y));
            let x_2906 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2905.x, x_2905.y, x_2905.z, x_2906.w);
            let x_2909 : f32 = u_xlat15.x;
            u_xlat14.w = x_2909;
            let x_2911 : vec2<f32> = u_xlat59;
            let x_2914 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2917 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2911.x, x_2911.y, x_2911.x, x_2911.y) * vec4<f32>(x_2914.x, x_2914.y, x_2914.x, x_2914.y)) + vec4<f32>(x_2917.y, x_2917.w, x_2917.x, x_2917.w));
            let x_2920 : vec2<f32> = u_xlat59;
            let x_2922 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2925 : vec4<f32> = u_xlat14;
            let x_2927 : vec2<f32> = ((x_2920 * vec2<f32>(x_2922.x, x_2922.y)) + vec2<f32>(x_2925.z, x_2925.w));
            let x_2928 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2927.x, x_2927.y, x_2928.z, x_2928.w);
            let x_2931 : f32 = u_xlat14.y;
            u_xlat15.w = x_2931;
            let x_2933 : vec4<f32> = u_xlat15;
            let x_2934 : vec2<f32> = vec2<f32>(x_2933.y, x_2933.z);
            let x_2935 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2935.x, x_2934.x, x_2935.z, x_2934.y);
            let x_2937 : vec2<f32> = u_xlat59;
            let x_2940 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2943 : vec4<f32> = u_xlat14;
            u_xlat18 = ((vec4<f32>(x_2937.x, x_2937.y, x_2937.x, x_2937.y) * vec4<f32>(x_2940.x, x_2940.y, x_2940.x, x_2940.y)) + vec4<f32>(x_2943.x, x_2943.y, x_2943.z, x_2943.y));
            let x_2946 : vec2<f32> = u_xlat59;
            let x_2949 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2952 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2946.x, x_2946.y, x_2946.x, x_2946.y) * vec4<f32>(x_2949.x, x_2949.y, x_2949.x, x_2949.y)) + vec4<f32>(x_2952.w, x_2952.y, x_2952.w, x_2952.z));
            let x_2955 : vec2<f32> = u_xlat59;
            let x_2958 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_2961 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2955.x, x_2955.y, x_2955.x, x_2955.y) * vec4<f32>(x_2958.x, x_2958.y, x_2958.x, x_2958.y)) + vec4<f32>(x_2961.x, x_2961.w, x_2961.z, x_2961.w));
            let x_2964 : vec4<f32> = u_xlat12;
            let x_2966 : vec4<f32> = u_xlat13;
            u_xlat19 = (vec4<f32>(x_2964.x, x_2964.x, x_2964.x, x_2964.y) * vec4<f32>(x_2966.z, x_2966.w, x_2966.y, x_2966.z));
            let x_2970 : vec4<f32> = u_xlat12;
            let x_2972 : vec4<f32> = u_xlat13;
            u_xlat20 = (vec4<f32>(x_2970.y, x_2970.y, x_2970.z, x_2970.z) * x_2972);
            let x_2975 : f32 = u_xlat12.z;
            let x_2977 : f32 = u_xlat13.y;
            u_xlat59.x = (x_2975 * x_2977);
            let x_2981 : vec4<f32> = u_xlat16;
            let x_2982 : vec2<f32> = vec2<f32>(x_2981.x, x_2981.y);
            let x_2984 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2982.x, x_2982.y, x_2984);
            let x_2991 : vec3<f32> = txVec34;
            let x_2993 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2991.xy, x_2991.z);
            u_xlat85 = x_2993;
            let x_2995 : vec4<f32> = u_xlat16;
            let x_2996 : vec2<f32> = vec2<f32>(x_2995.z, x_2995.w);
            let x_2998 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
            let x_3006 : vec3<f32> = txVec35;
            let x_3008 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3006.xy, x_3006.z);
            u_xlat87 = x_3008;
            let x_3009 : f32 = u_xlat87;
            let x_3011 : f32 = u_xlat19.y;
            u_xlat87 = (x_3009 * x_3011);
            let x_3014 : f32 = u_xlat19.x;
            let x_3015 : f32 = u_xlat85;
            let x_3017 : f32 = u_xlat87;
            u_xlat85 = ((x_3014 * x_3015) + x_3017);
            let x_3020 : vec4<f32> = u_xlat17;
            let x_3021 : vec2<f32> = vec2<f32>(x_3020.x, x_3020.y);
            let x_3023 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3021.x, x_3021.y, x_3023);
            let x_3030 : vec3<f32> = txVec36;
            let x_3032 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3030.xy, x_3030.z);
            u_xlat87 = x_3032;
            let x_3034 : f32 = u_xlat19.z;
            let x_3035 : f32 = u_xlat87;
            let x_3037 : f32 = u_xlat85;
            u_xlat85 = ((x_3034 * x_3035) + x_3037);
            let x_3040 : vec4<f32> = u_xlat15;
            let x_3041 : vec2<f32> = vec2<f32>(x_3040.x, x_3040.y);
            let x_3043 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3041.x, x_3041.y, x_3043);
            let x_3050 : vec3<f32> = txVec37;
            let x_3052 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3050.xy, x_3050.z);
            u_xlat87 = x_3052;
            let x_3054 : f32 = u_xlat19.w;
            let x_3055 : f32 = u_xlat87;
            let x_3057 : f32 = u_xlat85;
            u_xlat85 = ((x_3054 * x_3055) + x_3057);
            let x_3060 : vec4<f32> = u_xlat18;
            let x_3061 : vec2<f32> = vec2<f32>(x_3060.x, x_3060.y);
            let x_3063 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3061.x, x_3061.y, x_3063);
            let x_3070 : vec3<f32> = txVec38;
            let x_3072 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3070.xy, x_3070.z);
            u_xlat87 = x_3072;
            let x_3074 : f32 = u_xlat20.x;
            let x_3075 : f32 = u_xlat87;
            let x_3077 : f32 = u_xlat85;
            u_xlat85 = ((x_3074 * x_3075) + x_3077);
            let x_3080 : vec4<f32> = u_xlat18;
            let x_3081 : vec2<f32> = vec2<f32>(x_3080.z, x_3080.w);
            let x_3083 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3081.x, x_3081.y, x_3083);
            let x_3090 : vec3<f32> = txVec39;
            let x_3092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3090.xy, x_3090.z);
            u_xlat87 = x_3092;
            let x_3094 : f32 = u_xlat20.y;
            let x_3095 : f32 = u_xlat87;
            let x_3097 : f32 = u_xlat85;
            u_xlat85 = ((x_3094 * x_3095) + x_3097);
            let x_3100 : vec4<f32> = u_xlat15;
            let x_3101 : vec2<f32> = vec2<f32>(x_3100.z, x_3100.w);
            let x_3103 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3101.x, x_3101.y, x_3103);
            let x_3110 : vec3<f32> = txVec40;
            let x_3112 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3110.xy, x_3110.z);
            u_xlat87 = x_3112;
            let x_3114 : f32 = u_xlat20.z;
            let x_3115 : f32 = u_xlat87;
            let x_3117 : f32 = u_xlat85;
            u_xlat85 = ((x_3114 * x_3115) + x_3117);
            let x_3120 : vec4<f32> = u_xlat14;
            let x_3121 : vec2<f32> = vec2<f32>(x_3120.x, x_3120.y);
            let x_3123 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3121.x, x_3121.y, x_3123);
            let x_3130 : vec3<f32> = txVec41;
            let x_3132 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3130.xy, x_3130.z);
            u_xlat87 = x_3132;
            let x_3134 : f32 = u_xlat20.w;
            let x_3135 : f32 = u_xlat87;
            let x_3137 : f32 = u_xlat85;
            u_xlat85 = ((x_3134 * x_3135) + x_3137);
            let x_3140 : vec4<f32> = u_xlat14;
            let x_3141 : vec2<f32> = vec2<f32>(x_3140.z, x_3140.w);
            let x_3143 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3141.x, x_3141.y, x_3143);
            let x_3150 : vec3<f32> = txVec42;
            let x_3152 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3150.xy, x_3150.z);
            u_xlat87 = x_3152;
            let x_3154 : f32 = u_xlat59.x;
            let x_3155 : f32 = u_xlat87;
            let x_3157 : f32 = u_xlat85;
            u_xlat84 = ((x_3154 * x_3155) + x_3157);
          } else {
            let x_3160 : vec4<f32> = u_xlat11;
            let x_3163 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            u_xlat59 = ((vec2<f32>(x_3160.x, x_3160.y) * vec2<f32>(x_3163.z, x_3163.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3167 : vec2<f32> = u_xlat59;
            u_xlat59 = floor(x_3167);
            let x_3169 : vec4<f32> = u_xlat11;
            let x_3172 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3175 : vec2<f32> = u_xlat59;
            let x_3177 : vec2<f32> = ((vec2<f32>(x_3169.x, x_3169.y) * vec2<f32>(x_3172.z, x_3172.w)) + -(x_3175));
            let x_3178 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3177.x, x_3177.y, x_3178.z, x_3178.w);
            let x_3180 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3180.x, x_3180.x, x_3180.y, x_3180.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3183 : vec4<f32> = u_xlat13;
            let x_3185 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3183.x, x_3183.x, x_3183.z, x_3183.z) * vec4<f32>(x_3185.x, x_3185.x, x_3185.z, x_3185.z));
            let x_3188 : vec4<f32> = u_xlat14;
            let x_3190 : vec2<f32> = (vec2<f32>(x_3188.y, x_3188.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3191 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3191.x, x_3190.x, x_3191.z, x_3190.y);
            let x_3193 : vec4<f32> = u_xlat14;
            let x_3196 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3193.x, x_3193.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_3196.x, x_3196.y)));
            let x_3200 : vec4<f32> = u_xlat12;
            let x_3203 : vec2<f32> = (-(vec2<f32>(x_3200.x, x_3200.y)) + vec2<f32>(1.0f, 1.0f));
            let x_3204 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3203.x, x_3204.y, x_3203.y, x_3204.w);
            let x_3206 : vec4<f32> = u_xlat12;
            let x_3208 : vec2<f32> = min(vec2<f32>(x_3206.x, x_3206.y), vec2<f32>(0.0f, 0.0f));
            let x_3209 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3208.x, x_3208.y, x_3209.z, x_3209.w);
            let x_3211 : vec4<f32> = u_xlat14;
            let x_3214 : vec4<f32> = u_xlat14;
            let x_3217 : vec4<f32> = u_xlat13;
            let x_3219 : vec2<f32> = ((-(vec2<f32>(x_3211.x, x_3211.y)) * vec2<f32>(x_3214.x, x_3214.y)) + vec2<f32>(x_3217.x, x_3217.z));
            let x_3220 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3219.x, x_3220.y, x_3219.y, x_3220.w);
            let x_3222 : vec4<f32> = u_xlat12;
            let x_3224 : vec2<f32> = max(vec2<f32>(x_3222.x, x_3222.y), vec2<f32>(0.0f, 0.0f));
            let x_3225 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3224.x, x_3224.y, x_3225.z, x_3225.w);
            let x_3227 : vec4<f32> = u_xlat14;
            let x_3230 : vec4<f32> = u_xlat14;
            let x_3233 : vec4<f32> = u_xlat13;
            let x_3235 : vec2<f32> = ((-(vec2<f32>(x_3227.x, x_3227.y)) * vec2<f32>(x_3230.x, x_3230.y)) + vec2<f32>(x_3233.y, x_3233.w));
            let x_3236 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3236.x, x_3235.x, x_3236.z, x_3235.y);
            let x_3238 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3238 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
            let x_3242 : f32 = u_xlat13.y;
            u_xlat14.z = (x_3242 * 0.08163200318813323975f);
            let x_3245 : vec2<f32> = u_xlat64;
            let x_3247 : vec2<f32> = (vec2<f32>(x_3245.y, x_3245.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3248 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3247.x, x_3247.y, x_3248.z, x_3248.w);
            let x_3250 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_3250.x, x_3250.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3254 : f32 = u_xlat13.w;
            u_xlat16.z = (x_3254 * 0.08163200318813323975f);
            let x_3258 : f32 = u_xlat16.y;
            u_xlat14.x = x_3258;
            let x_3260 : vec4<f32> = u_xlat12;
            let x_3263 : vec2<f32> = ((vec2<f32>(x_3260.x, x_3260.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3264 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3264.x, x_3263.x, x_3264.z, x_3263.y);
            let x_3266 : vec4<f32> = u_xlat12;
            let x_3269 : vec2<f32> = ((vec2<f32>(x_3266.x, x_3266.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3270 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3269.x, x_3270.y, x_3269.y, x_3270.w);
            let x_3273 : f32 = u_xlat64.x;
            u_xlat13.y = x_3273;
            let x_3276 : f32 = u_xlat15.y;
            u_xlat13.w = x_3276;
            let x_3278 : vec4<f32> = u_xlat13;
            let x_3279 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3278 + x_3279);
            let x_3281 : vec4<f32> = u_xlat12;
            let x_3284 : vec2<f32> = ((vec2<f32>(x_3281.y, x_3281.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3285 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3285.x, x_3284.x, x_3285.z, x_3284.y);
            let x_3287 : vec4<f32> = u_xlat12;
            let x_3290 : vec2<f32> = ((vec2<f32>(x_3287.y, x_3287.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3291 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3290.x, x_3291.y, x_3290.y, x_3291.w);
            let x_3294 : f32 = u_xlat64.y;
            u_xlat15.y = x_3294;
            let x_3296 : vec4<f32> = u_xlat15;
            let x_3297 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3296 + x_3297);
            let x_3299 : vec4<f32> = u_xlat13;
            let x_3300 : vec4<f32> = u_xlat14;
            u_xlat13 = (x_3299 / x_3300);
            let x_3302 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3302 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3304 : vec4<f32> = u_xlat15;
            let x_3305 : vec4<f32> = u_xlat12;
            u_xlat15 = (x_3304 / x_3305);
            let x_3307 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3307 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3309 : vec4<f32> = u_xlat13;
            let x_3312 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3309.w, x_3309.x, x_3309.y, x_3309.z) * vec4<f32>(x_3312.x, x_3312.x, x_3312.x, x_3312.x));
            let x_3315 : vec4<f32> = u_xlat15;
            let x_3318 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3315.x, x_3315.w, x_3315.y, x_3315.z) * vec4<f32>(x_3318.y, x_3318.y, x_3318.y, x_3318.y));
            let x_3321 : vec4<f32> = u_xlat13;
            let x_3322 : vec3<f32> = vec3<f32>(x_3321.y, x_3321.z, x_3321.w);
            let x_3323 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3322.x, x_3323.y, x_3322.y, x_3322.z);
            let x_3326 : f32 = u_xlat15.x;
            u_xlat16.y = x_3326;
            let x_3328 : vec2<f32> = u_xlat59;
            let x_3331 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3334 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3328.x, x_3328.y, x_3328.x, x_3328.y) * vec4<f32>(x_3331.x, x_3331.y, x_3331.x, x_3331.y)) + vec4<f32>(x_3334.x, x_3334.y, x_3334.z, x_3334.y));
            let x_3337 : vec2<f32> = u_xlat59;
            let x_3339 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3342 : vec4<f32> = u_xlat16;
            let x_3344 : vec2<f32> = ((x_3337 * vec2<f32>(x_3339.x, x_3339.y)) + vec2<f32>(x_3342.w, x_3342.y));
            let x_3345 : vec4<f32> = u_xlat18;
            u_xlat18 = vec4<f32>(x_3344.x, x_3344.y, x_3345.z, x_3345.w);
            let x_3348 : f32 = u_xlat16.y;
            u_xlat13.y = x_3348;
            let x_3351 : f32 = u_xlat15.z;
            u_xlat16.y = x_3351;
            let x_3353 : vec2<f32> = u_xlat59;
            let x_3356 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3359 : vec4<f32> = u_xlat16;
            u_xlat19 = ((vec4<f32>(x_3353.x, x_3353.y, x_3353.x, x_3353.y) * vec4<f32>(x_3356.x, x_3356.y, x_3356.x, x_3356.y)) + vec4<f32>(x_3359.x, x_3359.y, x_3359.z, x_3359.y));
            let x_3363 : vec2<f32> = u_xlat59;
            let x_3365 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3368 : vec4<f32> = u_xlat16;
            u_xlat70 = ((x_3363 * vec2<f32>(x_3365.x, x_3365.y)) + vec2<f32>(x_3368.w, x_3368.y));
            let x_3372 : f32 = u_xlat16.y;
            u_xlat13.z = x_3372;
            let x_3374 : vec2<f32> = u_xlat59;
            let x_3377 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3380 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3374.x, x_3374.y, x_3374.x, x_3374.y) * vec4<f32>(x_3377.x, x_3377.y, x_3377.x, x_3377.y)) + vec4<f32>(x_3380.x, x_3380.y, x_3380.x, x_3380.z));
            let x_3384 : f32 = u_xlat15.w;
            u_xlat16.y = x_3384;
            let x_3387 : vec2<f32> = u_xlat59;
            let x_3390 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3393 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3387.x, x_3387.y, x_3387.x, x_3387.y) * vec4<f32>(x_3390.x, x_3390.y, x_3390.x, x_3390.y)) + vec4<f32>(x_3393.x, x_3393.y, x_3393.z, x_3393.y));
            let x_3397 : vec2<f32> = u_xlat59;
            let x_3399 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3402 : vec4<f32> = u_xlat16;
            u_xlat39 = ((x_3397 * vec2<f32>(x_3399.x, x_3399.y)) + vec2<f32>(x_3402.w, x_3402.y));
            let x_3406 : f32 = u_xlat16.y;
            u_xlat13.w = x_3406;
            let x_3409 : vec2<f32> = u_xlat59;
            let x_3411 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3414 : vec4<f32> = u_xlat13;
            u_xlat22 = ((x_3409 * vec2<f32>(x_3411.x, x_3411.y)) + vec2<f32>(x_3414.x, x_3414.w));
            let x_3417 : vec4<f32> = u_xlat16;
            let x_3418 : vec3<f32> = vec3<f32>(x_3417.x, x_3417.z, x_3417.w);
            let x_3419 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3418.x, x_3419.y, x_3418.y, x_3418.z);
            let x_3421 : vec2<f32> = u_xlat59;
            let x_3424 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3427 : vec4<f32> = u_xlat15;
            u_xlat16 = ((vec4<f32>(x_3421.x, x_3421.y, x_3421.x, x_3421.y) * vec4<f32>(x_3424.x, x_3424.y, x_3424.x, x_3424.y)) + vec4<f32>(x_3427.x, x_3427.y, x_3427.z, x_3427.y));
            let x_3431 : vec2<f32> = u_xlat59;
            let x_3433 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3436 : vec4<f32> = u_xlat15;
            u_xlat67 = ((x_3431 * vec2<f32>(x_3433.x, x_3433.y)) + vec2<f32>(x_3436.w, x_3436.y));
            let x_3440 : f32 = u_xlat13.x;
            u_xlat15.x = x_3440;
            let x_3442 : vec2<f32> = u_xlat59;
            let x_3444 : vec4<f32> = x_670.x_AdditionalShadowmapSize;
            let x_3447 : vec4<f32> = u_xlat15;
            u_xlat59 = ((x_3442 * vec2<f32>(x_3444.x, x_3444.y)) + vec2<f32>(x_3447.x, x_3447.y));
            let x_3451 : vec4<f32> = u_xlat12;
            let x_3453 : vec4<f32> = u_xlat14;
            u_xlat23 = (vec4<f32>(x_3451.x, x_3451.x, x_3451.x, x_3451.x) * x_3453);
            let x_3456 : vec4<f32> = u_xlat12;
            let x_3458 : vec4<f32> = u_xlat14;
            u_xlat24 = (vec4<f32>(x_3456.y, x_3456.y, x_3456.y, x_3456.y) * x_3458);
            let x_3461 : vec4<f32> = u_xlat12;
            let x_3463 : vec4<f32> = u_xlat14;
            u_xlat25 = (vec4<f32>(x_3461.z, x_3461.z, x_3461.z, x_3461.z) * x_3463);
            let x_3465 : vec4<f32> = u_xlat12;
            let x_3467 : vec4<f32> = u_xlat14;
            u_xlat12 = (vec4<f32>(x_3465.w, x_3465.w, x_3465.w, x_3465.w) * x_3467);
            let x_3470 : vec4<f32> = u_xlat17;
            let x_3471 : vec2<f32> = vec2<f32>(x_3470.x, x_3470.y);
            let x_3473 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3471.x, x_3471.y, x_3473);
            let x_3480 : vec3<f32> = txVec43;
            let x_3482 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3480.xy, x_3480.z);
            u_xlat87 = x_3482;
            let x_3484 : vec4<f32> = u_xlat17;
            let x_3485 : vec2<f32> = vec2<f32>(x_3484.z, x_3484.w);
            let x_3487 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3485.x, x_3485.y, x_3487);
            let x_3495 : vec3<f32> = txVec44;
            let x_3497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3495.xy, x_3495.z);
            u_xlat88 = x_3497;
            let x_3498 : f32 = u_xlat88;
            let x_3500 : f32 = u_xlat23.y;
            u_xlat88 = (x_3498 * x_3500);
            let x_3503 : f32 = u_xlat23.x;
            let x_3504 : f32 = u_xlat87;
            let x_3506 : f32 = u_xlat88;
            u_xlat87 = ((x_3503 * x_3504) + x_3506);
            let x_3509 : vec4<f32> = u_xlat18;
            let x_3510 : vec2<f32> = vec2<f32>(x_3509.x, x_3509.y);
            let x_3512 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3510.x, x_3510.y, x_3512);
            let x_3519 : vec3<f32> = txVec45;
            let x_3521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3519.xy, x_3519.z);
            u_xlat88 = x_3521;
            let x_3523 : f32 = u_xlat23.z;
            let x_3524 : f32 = u_xlat88;
            let x_3526 : f32 = u_xlat87;
            u_xlat87 = ((x_3523 * x_3524) + x_3526);
            let x_3529 : vec4<f32> = u_xlat20;
            let x_3530 : vec2<f32> = vec2<f32>(x_3529.x, x_3529.y);
            let x_3532 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3530.x, x_3530.y, x_3532);
            let x_3539 : vec3<f32> = txVec46;
            let x_3541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3539.xy, x_3539.z);
            u_xlat88 = x_3541;
            let x_3543 : f32 = u_xlat23.w;
            let x_3544 : f32 = u_xlat88;
            let x_3546 : f32 = u_xlat87;
            u_xlat87 = ((x_3543 * x_3544) + x_3546);
            let x_3549 : vec4<f32> = u_xlat19;
            let x_3550 : vec2<f32> = vec2<f32>(x_3549.x, x_3549.y);
            let x_3552 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3550.x, x_3550.y, x_3552);
            let x_3559 : vec3<f32> = txVec47;
            let x_3561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3559.xy, x_3559.z);
            u_xlat88 = x_3561;
            let x_3563 : f32 = u_xlat24.x;
            let x_3564 : f32 = u_xlat88;
            let x_3566 : f32 = u_xlat87;
            u_xlat87 = ((x_3563 * x_3564) + x_3566);
            let x_3569 : vec4<f32> = u_xlat19;
            let x_3570 : vec2<f32> = vec2<f32>(x_3569.z, x_3569.w);
            let x_3572 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3570.x, x_3570.y, x_3572);
            let x_3579 : vec3<f32> = txVec48;
            let x_3581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3579.xy, x_3579.z);
            u_xlat88 = x_3581;
            let x_3583 : f32 = u_xlat24.y;
            let x_3584 : f32 = u_xlat88;
            let x_3586 : f32 = u_xlat87;
            u_xlat87 = ((x_3583 * x_3584) + x_3586);
            let x_3589 : vec2<f32> = u_xlat70;
            let x_3591 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3589.x, x_3589.y, x_3591);
            let x_3598 : vec3<f32> = txVec49;
            let x_3600 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3598.xy, x_3598.z);
            u_xlat88 = x_3600;
            let x_3602 : f32 = u_xlat24.z;
            let x_3603 : f32 = u_xlat88;
            let x_3605 : f32 = u_xlat87;
            u_xlat87 = ((x_3602 * x_3603) + x_3605);
            let x_3608 : vec4<f32> = u_xlat20;
            let x_3609 : vec2<f32> = vec2<f32>(x_3608.z, x_3608.w);
            let x_3611 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3609.x, x_3609.y, x_3611);
            let x_3618 : vec3<f32> = txVec50;
            let x_3620 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3618.xy, x_3618.z);
            u_xlat88 = x_3620;
            let x_3622 : f32 = u_xlat24.w;
            let x_3623 : f32 = u_xlat88;
            let x_3625 : f32 = u_xlat87;
            u_xlat87 = ((x_3622 * x_3623) + x_3625);
            let x_3628 : vec4<f32> = u_xlat21;
            let x_3629 : vec2<f32> = vec2<f32>(x_3628.x, x_3628.y);
            let x_3631 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3629.x, x_3629.y, x_3631);
            let x_3638 : vec3<f32> = txVec51;
            let x_3640 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3638.xy, x_3638.z);
            u_xlat88 = x_3640;
            let x_3642 : f32 = u_xlat25.x;
            let x_3643 : f32 = u_xlat88;
            let x_3645 : f32 = u_xlat87;
            u_xlat87 = ((x_3642 * x_3643) + x_3645);
            let x_3648 : vec4<f32> = u_xlat21;
            let x_3649 : vec2<f32> = vec2<f32>(x_3648.z, x_3648.w);
            let x_3651 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3649.x, x_3649.y, x_3651);
            let x_3658 : vec3<f32> = txVec52;
            let x_3660 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3658.xy, x_3658.z);
            u_xlat88 = x_3660;
            let x_3662 : f32 = u_xlat25.y;
            let x_3663 : f32 = u_xlat88;
            let x_3665 : f32 = u_xlat87;
            u_xlat87 = ((x_3662 * x_3663) + x_3665);
            let x_3668 : vec2<f32> = u_xlat39;
            let x_3670 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3668.x, x_3668.y, x_3670);
            let x_3677 : vec3<f32> = txVec53;
            let x_3679 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3677.xy, x_3677.z);
            u_xlat88 = x_3679;
            let x_3681 : f32 = u_xlat25.z;
            let x_3682 : f32 = u_xlat88;
            let x_3684 : f32 = u_xlat87;
            u_xlat87 = ((x_3681 * x_3682) + x_3684);
            let x_3687 : vec2<f32> = u_xlat22;
            let x_3689 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3687.x, x_3687.y, x_3689);
            let x_3696 : vec3<f32> = txVec54;
            let x_3698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3696.xy, x_3696.z);
            u_xlat88 = x_3698;
            let x_3700 : f32 = u_xlat25.w;
            let x_3701 : f32 = u_xlat88;
            let x_3703 : f32 = u_xlat87;
            u_xlat87 = ((x_3700 * x_3701) + x_3703);
            let x_3706 : vec4<f32> = u_xlat16;
            let x_3707 : vec2<f32> = vec2<f32>(x_3706.x, x_3706.y);
            let x_3709 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3707.x, x_3707.y, x_3709);
            let x_3716 : vec3<f32> = txVec55;
            let x_3718 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3716.xy, x_3716.z);
            u_xlat88 = x_3718;
            let x_3720 : f32 = u_xlat12.x;
            let x_3721 : f32 = u_xlat88;
            let x_3723 : f32 = u_xlat87;
            u_xlat87 = ((x_3720 * x_3721) + x_3723);
            let x_3726 : vec4<f32> = u_xlat16;
            let x_3727 : vec2<f32> = vec2<f32>(x_3726.z, x_3726.w);
            let x_3729 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3727.x, x_3727.y, x_3729);
            let x_3736 : vec3<f32> = txVec56;
            let x_3738 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3736.xy, x_3736.z);
            u_xlat88 = x_3738;
            let x_3740 : f32 = u_xlat12.y;
            let x_3741 : f32 = u_xlat88;
            let x_3743 : f32 = u_xlat87;
            u_xlat87 = ((x_3740 * x_3741) + x_3743);
            let x_3746 : vec2<f32> = u_xlat67;
            let x_3748 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3746.x, x_3746.y, x_3748);
            let x_3755 : vec3<f32> = txVec57;
            let x_3757 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3755.xy, x_3755.z);
            u_xlat88 = x_3757;
            let x_3759 : f32 = u_xlat12.z;
            let x_3760 : f32 = u_xlat88;
            let x_3762 : f32 = u_xlat87;
            u_xlat87 = ((x_3759 * x_3760) + x_3762);
            let x_3765 : vec2<f32> = u_xlat59;
            let x_3767 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3765.x, x_3765.y, x_3767);
            let x_3774 : vec3<f32> = txVec58;
            let x_3776 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3774.xy, x_3774.z);
            u_xlat59.x = x_3776;
            let x_3779 : f32 = u_xlat12.w;
            let x_3781 : f32 = u_xlat59.x;
            let x_3783 : f32 = u_xlat87;
            u_xlat84 = ((x_3779 * x_3781) + x_3783);
          }
        }
      } else {
        let x_3787 : vec4<f32> = u_xlat11;
        let x_3788 : vec2<f32> = vec2<f32>(x_3787.x, x_3787.y);
        let x_3790 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3788.x, x_3788.y, x_3790);
        let x_3797 : vec3<f32> = txVec59;
        let x_3799 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3797.xy, x_3797.z);
        u_xlat84 = x_3799;
      }
      let x_3800 : i32 = u_xlati81;
      let x_3802 : f32 = x_670.x_AdditionalShadowParams[x_3800].x;
      u_xlat59.x = (1.0f + -(x_3802));
      let x_3806 : f32 = u_xlat84;
      let x_3807 : i32 = u_xlati81;
      let x_3809 : f32 = x_670.x_AdditionalShadowParams[x_3807].x;
      let x_3812 : f32 = u_xlat59.x;
      u_xlat84 = ((x_3806 * x_3809) + x_3812);
      let x_3815 : f32 = u_xlat11.z;
      u_xlatb59 = (0.0f >= x_3815);
      let x_3819 : f32 = u_xlat11.z;
      u_xlatb85 = (x_3819 >= 1.0f);
      let x_3821 : bool = u_xlatb85;
      let x_3822 : bool = u_xlatb59;
      u_xlatb59 = (x_3821 | x_3822);
      let x_3824 : bool = u_xlatb59;
      let x_3825 : f32 = u_xlat84;
      u_xlat84 = select(x_3825, 1.0f, x_3824);
    } else {
      u_xlat84 = 1.0f;
    }
    let x_3828 : f32 = u_xlat84;
    u_xlat59.x = (-(x_3828) + 1.0f);
    let x_3832 : f32 = u_xlat79;
    let x_3834 : f32 = u_xlat59.x;
    let x_3836 : f32 = u_xlat84;
    u_xlat84 = ((x_3832 * x_3834) + x_3836);
    let x_3839 : i32 = u_xlati81;
    u_xlati59 = (1i << bitcast<u32>((x_3839 & 31i)));
    let x_3843 : i32 = u_xlati59;
    let x_3846 : f32 = x_1962.x_AdditionalLightsCookieEnableBits;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_3843) & bitcast<u32>(x_3846)));
    let x_3850 : i32 = u_xlati59;
    if ((x_3850 != 0i)) {
      let x_3854 : i32 = u_xlati81;
      let x_3856 : f32 = x_1962.x_AdditionalLightsLightTypes[x_3854].el;
      u_xlati59 = i32(x_3856);
      let x_3859 : i32 = u_xlati59;
      u_xlati85 = select(1i, 0i, (x_3859 != 0i));
      let x_3863 : i32 = u_xlati81;
      u_xlati87 = (x_3863 << bitcast<u32>(2i));
      let x_3865 : i32 = u_xlati85;
      if ((x_3865 != 0i)) {
        let x_3869 : vec3<f32> = vs_INTERP7;
        let x_3871 : i32 = u_xlati87;
        let x_3874 : i32 = u_xlati87;
        let x_3878 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_3871 + 1i) / 4i)][((x_3874 + 1i) % 4i)];
        let x_3880 : vec3<f32> = (vec3<f32>(x_3869.y, x_3869.y, x_3869.y) * vec3<f32>(x_3878.x, x_3878.y, x_3878.w));
        let x_3881 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3880.x, x_3880.y, x_3880.z, x_3881.w);
        let x_3883 : i32 = u_xlati87;
        let x_3885 : i32 = u_xlati87;
        let x_3888 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[(x_3883 / 4i)][(x_3885 % 4i)];
        let x_3890 : vec3<f32> = vs_INTERP7;
        let x_3893 : vec4<f32> = u_xlat11;
        let x_3895 : vec3<f32> = ((vec3<f32>(x_3888.x, x_3888.y, x_3888.w) * vec3<f32>(x_3890.x, x_3890.x, x_3890.x)) + vec3<f32>(x_3893.x, x_3893.y, x_3893.z));
        let x_3896 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3895.x, x_3895.y, x_3895.z, x_3896.w);
        let x_3898 : i32 = u_xlati87;
        let x_3901 : i32 = u_xlati87;
        let x_3905 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_3898 + 2i) / 4i)][((x_3901 + 2i) % 4i)];
        let x_3907 : vec3<f32> = vs_INTERP7;
        let x_3910 : vec4<f32> = u_xlat11;
        let x_3912 : vec3<f32> = ((vec3<f32>(x_3905.x, x_3905.y, x_3905.w) * vec3<f32>(x_3907.z, x_3907.z, x_3907.z)) + vec3<f32>(x_3910.x, x_3910.y, x_3910.z));
        let x_3913 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3912.x, x_3912.y, x_3912.z, x_3913.w);
        let x_3915 : vec4<f32> = u_xlat11;
        let x_3917 : i32 = u_xlati87;
        let x_3920 : i32 = u_xlati87;
        let x_3924 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_3917 + 3i) / 4i)][((x_3920 + 3i) % 4i)];
        let x_3926 : vec3<f32> = (vec3<f32>(x_3915.x, x_3915.y, x_3915.z) + vec3<f32>(x_3924.x, x_3924.y, x_3924.w));
        let x_3927 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3926.x, x_3926.y, x_3926.z, x_3927.w);
        let x_3929 : vec4<f32> = u_xlat11;
        let x_3931 : vec4<f32> = u_xlat11;
        let x_3933 : vec2<f32> = (vec2<f32>(x_3929.x, x_3929.y) / vec2<f32>(x_3931.z, x_3931.z));
        let x_3934 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3933.x, x_3933.y, x_3934.z, x_3934.w);
        let x_3936 : vec4<f32> = u_xlat11;
        let x_3939 : vec2<f32> = ((vec2<f32>(x_3936.x, x_3936.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3940 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3939.x, x_3939.y, x_3940.z, x_3940.w);
        let x_3942 : vec4<f32> = u_xlat11;
        let x_3946 : vec2<f32> = clamp(vec2<f32>(x_3942.x, x_3942.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3947 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3946.x, x_3946.y, x_3947.z, x_3947.w);
        let x_3949 : i32 = u_xlati81;
        let x_3951 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[x_3949];
        let x_3953 : vec4<f32> = u_xlat11;
        let x_3956 : i32 = u_xlati81;
        let x_3958 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[x_3956];
        let x_3960 : vec2<f32> = ((vec2<f32>(x_3951.x, x_3951.y) * vec2<f32>(x_3953.x, x_3953.y)) + vec2<f32>(x_3958.z, x_3958.w));
        let x_3961 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3960.x, x_3960.y, x_3961.z, x_3961.w);
      } else {
        let x_3964 : i32 = u_xlati59;
        u_xlatb59 = (x_3964 == 1i);
        let x_3966 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_3966);
        let x_3968 : i32 = u_xlati59;
        if ((x_3968 != 0i)) {
          let x_3972 : vec3<f32> = vs_INTERP7;
          let x_3974 : i32 = u_xlati87;
          let x_3977 : i32 = u_xlati87;
          let x_3981 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_3974 + 1i) / 4i)][((x_3977 + 1i) % 4i)];
          u_xlat59 = (vec2<f32>(x_3972.y, x_3972.y) * vec2<f32>(x_3981.x, x_3981.y));
          let x_3984 : i32 = u_xlati87;
          let x_3986 : i32 = u_xlati87;
          let x_3989 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[(x_3984 / 4i)][(x_3986 % 4i)];
          let x_3991 : vec3<f32> = vs_INTERP7;
          let x_3994 : vec2<f32> = u_xlat59;
          u_xlat59 = ((vec2<f32>(x_3989.x, x_3989.y) * vec2<f32>(x_3991.x, x_3991.x)) + x_3994);
          let x_3996 : i32 = u_xlati87;
          let x_3999 : i32 = u_xlati87;
          let x_4003 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_3996 + 2i) / 4i)][((x_3999 + 2i) % 4i)];
          let x_4005 : vec3<f32> = vs_INTERP7;
          let x_4008 : vec2<f32> = u_xlat59;
          u_xlat59 = ((vec2<f32>(x_4003.x, x_4003.y) * vec2<f32>(x_4005.z, x_4005.z)) + x_4008);
          let x_4010 : vec2<f32> = u_xlat59;
          let x_4011 : i32 = u_xlati87;
          let x_4014 : i32 = u_xlati87;
          let x_4018 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_4011 + 3i) / 4i)][((x_4014 + 3i) % 4i)];
          u_xlat59 = (x_4010 + vec2<f32>(x_4018.x, x_4018.y));
          let x_4021 : vec2<f32> = u_xlat59;
          u_xlat59 = ((x_4021 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4024 : vec2<f32> = u_xlat59;
          u_xlat59 = fract(x_4024);
          let x_4026 : i32 = u_xlati81;
          let x_4028 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[x_4026];
          let x_4030 : vec2<f32> = u_xlat59;
          let x_4032 : i32 = u_xlati81;
          let x_4034 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[x_4032];
          let x_4036 : vec2<f32> = ((vec2<f32>(x_4028.x, x_4028.y) * x_4030) + vec2<f32>(x_4034.z, x_4034.w));
          let x_4037 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4036.x, x_4036.y, x_4037.z, x_4037.w);
        } else {
          let x_4040 : vec3<f32> = vs_INTERP7;
          let x_4042 : i32 = u_xlati87;
          let x_4045 : i32 = u_xlati87;
          let x_4049 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_4042 + 1i) / 4i)][((x_4045 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4040.y, x_4040.y, x_4040.y, x_4040.y) * x_4049);
          let x_4051 : i32 = u_xlati87;
          let x_4053 : i32 = u_xlati87;
          let x_4056 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[(x_4051 / 4i)][(x_4053 % 4i)];
          let x_4057 : vec3<f32> = vs_INTERP7;
          let x_4060 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4056 * vec4<f32>(x_4057.x, x_4057.x, x_4057.x, x_4057.x)) + x_4060);
          let x_4062 : i32 = u_xlati87;
          let x_4065 : i32 = u_xlati87;
          let x_4069 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_4062 + 2i) / 4i)][((x_4065 + 2i) % 4i)];
          let x_4070 : vec3<f32> = vs_INTERP7;
          let x_4073 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4069 * vec4<f32>(x_4070.z, x_4070.z, x_4070.z, x_4070.z)) + x_4073);
          let x_4075 : vec4<f32> = u_xlat12;
          let x_4076 : i32 = u_xlati87;
          let x_4079 : i32 = u_xlati87;
          let x_4083 : vec4<f32> = x_1962.x_AdditionalLightsWorldToLights[((x_4076 + 3i) / 4i)][((x_4079 + 3i) % 4i)];
          u_xlat12 = (x_4075 + x_4083);
          let x_4085 : vec4<f32> = u_xlat12;
          let x_4087 : vec4<f32> = u_xlat12;
          let x_4089 : vec3<f32> = (vec3<f32>(x_4085.x, x_4085.y, x_4085.z) / vec3<f32>(x_4087.w, x_4087.w, x_4087.w));
          let x_4090 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4089.x, x_4089.y, x_4089.z, x_4090.w);
          let x_4092 : vec4<f32> = u_xlat12;
          let x_4094 : vec4<f32> = u_xlat12;
          u_xlat59.x = dot(vec3<f32>(x_4092.x, x_4092.y, x_4092.z), vec3<f32>(x_4094.x, x_4094.y, x_4094.z));
          let x_4099 : f32 = u_xlat59.x;
          u_xlat59.x = inverseSqrt(x_4099);
          let x_4102 : vec2<f32> = u_xlat59;
          let x_4104 : vec4<f32> = u_xlat12;
          let x_4106 : vec3<f32> = (vec3<f32>(x_4102.x, x_4102.x, x_4102.x) * vec3<f32>(x_4104.x, x_4104.y, x_4104.z));
          let x_4107 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4106.x, x_4106.y, x_4106.z, x_4107.w);
          let x_4109 : vec4<f32> = u_xlat12;
          u_xlat59.x = dot(abs(vec3<f32>(x_4109.x, x_4109.y, x_4109.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4115 : f32 = u_xlat59.x;
          u_xlat59.x = max(x_4115, 0.00000099999999747524f);
          let x_4120 : f32 = u_xlat59.x;
          u_xlat59.x = (1.0f / x_4120);
          let x_4123 : vec2<f32> = u_xlat59;
          let x_4125 : vec4<f32> = u_xlat12;
          let x_4127 : vec3<f32> = (vec3<f32>(x_4123.x, x_4123.x, x_4123.x) * vec3<f32>(x_4125.z, x_4125.x, x_4125.y));
          let x_4128 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4127.x, x_4127.y, x_4127.z, x_4128.w);
          let x_4131 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4131);
          let x_4135 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4135, 0.0f, 1.0f);
          let x_4139 : vec4<f32> = u_xlat13;
          let x_4141 : vec4<bool> = (vec4<f32>(x_4139.y, x_4139.z, x_4139.y, x_4139.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4141.x, x_4141.y);
          let x_4145 : bool = u_xlatb63.x;
          if (x_4145) {
            let x_4150 : f32 = u_xlat13.x;
            x_4146 = x_4150;
          } else {
            let x_4153 : f32 = u_xlat13.x;
            x_4146 = -(x_4153);
          }
          let x_4155 : f32 = x_4146;
          u_xlat63.x = x_4155;
          let x_4158 : bool = u_xlatb63.y;
          if (x_4158) {
            let x_4163 : f32 = u_xlat13.x;
            x_4159 = x_4163;
          } else {
            let x_4166 : f32 = u_xlat13.x;
            x_4159 = -(x_4166);
          }
          let x_4168 : f32 = x_4159;
          u_xlat63.y = x_4168;
          let x_4170 : vec4<f32> = u_xlat12;
          let x_4172 : vec2<f32> = u_xlat59;
          let x_4175 : vec2<f32> = u_xlat63;
          u_xlat59 = ((vec2<f32>(x_4170.x, x_4170.y) * vec2<f32>(x_4172.x, x_4172.x)) + x_4175);
          let x_4177 : vec2<f32> = u_xlat59;
          u_xlat59 = ((x_4177 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4180 : vec2<f32> = u_xlat59;
          u_xlat59 = clamp(x_4180, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4184 : i32 = u_xlati81;
          let x_4186 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[x_4184];
          let x_4188 : vec2<f32> = u_xlat59;
          let x_4190 : i32 = u_xlati81;
          let x_4192 : vec4<f32> = x_1962.x_AdditionalLightsCookieAtlasUVRects[x_4190];
          let x_4194 : vec2<f32> = ((vec2<f32>(x_4186.x, x_4186.y) * x_4188) + vec2<f32>(x_4192.z, x_4192.w));
          let x_4195 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4194.x, x_4194.y, x_4195.z, x_4195.w);
        }
      }
      let x_4202 : vec4<f32> = u_xlat11;
      let x_4204 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4202.x, x_4202.y), 0.0f);
      u_xlat11 = x_4204;
      let x_4206 : bool = u_xlatb7.y;
      if (x_4206) {
        let x_4211 : f32 = u_xlat11.w;
        x_4207 = x_4211;
      } else {
        let x_4214 : f32 = u_xlat11.x;
        x_4207 = x_4214;
      }
      let x_4215 : f32 = x_4207;
      u_xlat59.x = x_4215;
      let x_4218 : bool = u_xlatb7.x;
      if (x_4218) {
        let x_4222 : vec4<f32> = u_xlat11;
        x_4219 = vec3<f32>(x_4222.x, x_4222.y, x_4222.z);
      } else {
        let x_4225 : vec2<f32> = u_xlat59;
        x_4219 = vec3<f32>(x_4225.x, x_4225.x, x_4225.x);
      }
      let x_4227 : vec3<f32> = x_4219;
      let x_4228 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4227.x, x_4227.y, x_4227.z, x_4228.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4234 : vec4<f32> = u_xlat11;
    let x_4236 : i32 = u_xlati81;
    let x_4238 : vec4<f32> = x_2406.x_AdditionalLightsColor[x_4236];
    let x_4240 : vec3<f32> = (vec3<f32>(x_4234.x, x_4234.y, x_4234.z) * vec3<f32>(x_4238.x, x_4238.y, x_4238.z));
    let x_4241 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4240.x, x_4240.y, x_4240.z, x_4241.w);
    let x_4243 : f32 = u_xlat82;
    let x_4244 : f32 = u_xlat84;
    u_xlat81 = (x_4243 * x_4244);
    let x_4246 : vec4<f32> = u_xlat1;
    let x_4248 : vec4<f32> = u_xlat10;
    u_xlat82 = dot(vec3<f32>(x_4246.x, x_4246.y, x_4246.z), vec3<f32>(x_4248.x, x_4248.y, x_4248.z));
    let x_4251 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4251, 0.0f, 1.0f);
    let x_4253 : f32 = u_xlat81;
    let x_4254 : f32 = u_xlat82;
    u_xlat81 = (x_4253 * x_4254);
    let x_4256 : f32 = u_xlat81;
    let x_4258 : vec4<f32> = u_xlat11;
    let x_4260 : vec3<f32> = (vec3<f32>(x_4256, x_4256, x_4256) * vec3<f32>(x_4258.x, x_4258.y, x_4258.z));
    let x_4261 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4260.x, x_4260.y, x_4260.z, x_4261.w);
    let x_4263 : vec4<f32> = u_xlat9;
    let x_4265 : f32 = u_xlat83;
    let x_4268 : vec3<f32> = u_xlat4;
    let x_4269 : vec3<f32> = ((vec3<f32>(x_4263.x, x_4263.y, x_4263.z) * vec3<f32>(x_4265, x_4265, x_4265)) + x_4268);
    let x_4270 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4269.x, x_4269.y, x_4269.z, x_4270.w);
    let x_4272 : vec4<f32> = u_xlat9;
    let x_4274 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4272.x, x_4272.y, x_4272.z), vec3<f32>(x_4274.x, x_4274.y, x_4274.z));
    let x_4277 : f32 = u_xlat81;
    u_xlat81 = max(x_4277, 1.17549435e-38f);
    let x_4279 : f32 = u_xlat81;
    u_xlat81 = inverseSqrt(x_4279);
    let x_4281 : f32 = u_xlat81;
    let x_4283 : vec4<f32> = u_xlat9;
    let x_4285 : vec3<f32> = (vec3<f32>(x_4281, x_4281, x_4281) * vec3<f32>(x_4283.x, x_4283.y, x_4283.z));
    let x_4286 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4285.x, x_4285.y, x_4285.z, x_4286.w);
    let x_4288 : vec4<f32> = u_xlat1;
    let x_4290 : vec4<f32> = u_xlat9;
    u_xlat81 = dot(vec3<f32>(x_4288.x, x_4288.y, x_4288.z), vec3<f32>(x_4290.x, x_4290.y, x_4290.z));
    let x_4293 : f32 = u_xlat81;
    u_xlat81 = clamp(x_4293, 0.0f, 1.0f);
    let x_4295 : vec4<f32> = u_xlat10;
    let x_4297 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4295.x, x_4295.y, x_4295.z), vec3<f32>(x_4297.x, x_4297.y, x_4297.z));
    let x_4300 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4300, 0.0f, 1.0f);
    let x_4302 : f32 = u_xlat81;
    let x_4303 : f32 = u_xlat81;
    u_xlat81 = (x_4302 * x_4303);
    let x_4305 : f32 = u_xlat81;
    let x_4307 : f32 = u_xlat8.x;
    u_xlat81 = ((x_4305 * x_4307) + 1.00001001358032226562f);
    let x_4310 : f32 = u_xlat82;
    let x_4311 : f32 = u_xlat82;
    u_xlat82 = (x_4310 * x_4311);
    let x_4313 : f32 = u_xlat81;
    let x_4314 : f32 = u_xlat81;
    u_xlat81 = (x_4313 * x_4314);
    let x_4316 : f32 = u_xlat82;
    u_xlat82 = max(x_4316, 0.10000000149011611938f);
    let x_4318 : f32 = u_xlat81;
    let x_4319 : f32 = u_xlat82;
    u_xlat81 = (x_4318 * x_4319);
    let x_4321 : f32 = u_xlat80;
    let x_4322 : f32 = u_xlat81;
    u_xlat81 = (x_4321 * x_4322);
    let x_4324 : f32 = u_xlat28;
    let x_4325 : f32 = u_xlat81;
    u_xlat81 = (x_4324 / x_4325);
    let x_4327 : vec4<f32> = u_xlat0;
    let x_4329 : f32 = u_xlat81;
    let x_4332 : vec4<f32> = u_xlat5;
    let x_4334 : vec3<f32> = ((vec3<f32>(x_4327.x, x_4327.y, x_4327.z) * vec3<f32>(x_4329, x_4329, x_4329)) + vec3<f32>(x_4332.x, x_4332.y, x_4332.z));
    let x_4335 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4334.x, x_4334.y, x_4334.z, x_4335.w);
    let x_4337 : vec4<f32> = u_xlat9;
    let x_4339 : vec4<f32> = u_xlat11;
    let x_4342 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4337.x, x_4337.y, x_4337.z) * vec3<f32>(x_4339.x, x_4339.y, x_4339.z)) + x_4342);

    continuing {
      let x_4344 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4344 + bitcast<u32>(1i));
    }
  }
  let x_4346 : vec4<f32> = u_xlat3;
  let x_4348 : f32 = u_xlat54;
  let x_4351 : vec4<f32> = u_xlat6;
  let x_4353 : vec3<f32> = ((vec3<f32>(x_4346.x, x_4346.y, x_4346.z) * vec3<f32>(x_4348, x_4348, x_4348)) + vec3<f32>(x_4351.x, x_4351.y, x_4351.z));
  let x_4354 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4353.x, x_4353.y, x_4353.z, x_4354.w);
  let x_4358 : vec3<f32> = u_xlat34;
  let x_4359 : vec4<f32> = u_xlat0;
  let x_4361 : vec3<f32> = (x_4358 + vec3<f32>(x_4359.x, x_4359.y, x_4359.z));
  let x_4362 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4361.x, x_4361.y, x_4361.z, x_4362.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}



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

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb82 : bool;

@group(1) @binding(3) var<uniform> x_690 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

@group(1) @binding(4) var<uniform> x_2011 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu79 : u32;

var<private> u_xlatu82 : u32;

var<private> u_xlati83 : i32;

var<private> u_xlati82 : i32;

@group(1) @binding(1) var<uniform> x_2473 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati59 : i32;

var<private> u_xlatb85 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat87 : f32;

var<private> u_xlatb59 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat88 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb87 : bool;

var<private> u_xlati85 : i32;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlatb63 : vec2<bool>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

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
  var x_2094 : f32;
  var x_2105 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2611 : f32;
  var x_2620 : f32;
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
  var x_4196 : f32;
  var x_4209 : f32;
  var x_4257 : f32;
  var x_4268 : vec3<f32>;
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
    let x_484 : vec3<f32> = u_xlat4;
    x_478 = x_484;
  }
  let x_485 : vec3<f32> = x_478;
  let x_486 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_489 : f32 = vs_INTERP7.y;
  let x_491 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat78 = (x_489 * x_491);
  let x_494 : f32 = x_29.unity_MatrixV[0i].z;
  let x_496 : f32 = vs_INTERP7.x;
  let x_498 : f32 = u_xlat78;
  u_xlat78 = ((x_494 * x_496) + x_498);
  let x_501 : f32 = x_29.unity_MatrixV[2i].z;
  let x_503 : f32 = vs_INTERP7.z;
  let x_505 : f32 = u_xlat78;
  u_xlat78 = ((x_501 * x_503) + x_505);
  let x_507 : f32 = u_xlat78;
  let x_509 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat78 = (x_507 + x_509);
  let x_511 : f32 = u_xlat78;
  let x_515 : f32 = x_29.x_ProjectionParams.y;
  u_xlat78 = (-(x_511) + -(x_515));
  let x_518 : f32 = u_xlat78;
  u_xlat78 = max(x_518, 0.0f);
  let x_520 : f32 = u_xlat78;
  let x_523 : f32 = x_29.unity_FogParams.x;
  u_xlat78 = (x_520 * x_523);
  u_xlat1.w = 1.0f;
  let x_529 : vec4<f32> = x_349.unity_SHAr;
  let x_530 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_349.unity_SHAg;
  let x_536 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_535, x_536);
  let x_541 : vec4<f32> = x_349.unity_SHAb;
  let x_542 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_541, x_542);
  let x_546 : vec4<f32> = u_xlat1;
  let x_548 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_546.y, x_546.z, x_546.z, x_546.x) * vec4<f32>(x_548.x, x_548.y, x_548.z, x_548.z));
  let x_554 : vec4<f32> = x_349.unity_SHBr;
  let x_555 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_554, x_555);
  let x_560 : vec4<f32> = x_349.unity_SHBg;
  let x_561 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_560, x_561);
  let x_566 : vec4<f32> = x_349.unity_SHBb;
  let x_567 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_566, x_567);
  let x_572 : f32 = u_xlat1.y;
  let x_574 : f32 = u_xlat1.y;
  u_xlat79 = (x_572 * x_574);
  let x_577 : f32 = u_xlat1.x;
  let x_579 : f32 = u_xlat1.x;
  let x_581 : f32 = u_xlat79;
  u_xlat79 = ((x_577 * x_579) + -(x_581));
  let x_586 : vec4<f32> = x_349.unity_SHC;
  let x_588 : f32 = u_xlat79;
  let x_591 : vec4<f32> = u_xlat6;
  let x_593 : vec3<f32> = ((vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588, x_588, x_588)) + vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec3<f32> = u_xlat4;
  let x_597 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_596 + vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_600, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_603 : vec4<f32> = u_xlat2;
  let x_604 : vec2<f32> = vec2<f32>(x_603.x, x_603.y);
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
  let x_607 : vec4<f32> = u_xlat2;
  let x_611 : vec2<f32> = clamp(vec2<f32>(x_607.x, x_607.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_612 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
  let x_615 : f32 = u_xlat2.x;
  u_xlat79 = ((-(x_615) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_620 : f32 = u_xlat79;
  let x_623 : f32 = u_xlat2.y;
  u_xlat80 = (-(x_620) + x_623);
  let x_625 : vec4<f32> = u_xlat0;
  let x_627 : f32 = u_xlat79;
  let x_629 : vec3<f32> = (vec3<f32>(x_625.x, x_625.y, x_625.z) * vec3<f32>(x_627, x_627, x_627));
  let x_630 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat0;
  let x_636 : vec3<f32> = (vec3<f32>(x_632.x, x_632.y, x_632.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_637 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_639 : vec4<f32> = u_xlat2;
  let x_641 : vec4<f32> = u_xlat0;
  let x_646 : vec3<f32> = ((vec3<f32>(x_639.x, x_639.x, x_639.x) * vec3<f32>(x_641.x, x_641.y, x_641.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_650 : f32 = u_xlat2.y;
  u_xlat79 = (-(x_650) + 1.0f);
  let x_653 : f32 = u_xlat79;
  let x_654 : f32 = u_xlat79;
  u_xlat2.x = (x_653 * x_654);
  let x_658 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_658, 0.0078125f);
  let x_664 : f32 = u_xlat2.x;
  let x_666 : f32 = u_xlat2.x;
  u_xlat28 = (x_664 * x_666);
  let x_668 : f32 = u_xlat80;
  u_xlat80 = (x_668 + 1.0f);
  let x_670 : f32 = u_xlat80;
  u_xlat80 = min(x_670, 1.0f);
  let x_674 : f32 = u_xlat2.x;
  u_xlat81 = ((x_674 * 4.0f) + 2.0f);
  let x_680 : f32 = u_xlat2.z;
  u_xlat54 = min(x_680, 1.0f);
  let x_693 : f32 = x_690.x_MainLightShadowParams.y;
  u_xlatb82 = (0.0f < x_693);
  let x_695 : bool = u_xlatb82;
  if (x_695) {
    let x_699 : f32 = x_690.x_MainLightShadowParams.y;
    u_xlatb82 = (x_699 == 1.0f);
    let x_701 : bool = u_xlatb82;
    if (x_701) {
      let x_705 : vec4<f32> = vs_INTERP3;
      let x_708 : vec4<f32> = x_690.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_705.x, x_705.y, x_705.x, x_705.y) + x_708);
      let x_711 : vec4<f32> = u_xlat6;
      let x_712 : vec2<f32> = vec2<f32>(x_711.x, x_711.y);
      let x_714 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_712.x, x_712.y, x_714);
      let x_727 : vec3<f32> = txVec0;
      let x_729 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_727.xy, x_727.z);
      u_xlat7.x = x_729;
      let x_732 : vec4<f32> = u_xlat6;
      let x_733 : vec2<f32> = vec2<f32>(x_732.z, x_732.w);
      let x_735 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_733.x, x_733.y, x_735);
      let x_742 : vec3<f32> = txVec1;
      let x_744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_742.xy, x_742.z);
      u_xlat7.y = x_744;
      let x_746 : vec4<f32> = vs_INTERP3;
      let x_749 : vec4<f32> = x_690.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_746.x, x_746.y, x_746.x, x_746.y) + x_749);
      let x_752 : vec4<f32> = u_xlat6;
      let x_753 : vec2<f32> = vec2<f32>(x_752.x, x_752.y);
      let x_755 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_753.x, x_753.y, x_755);
      let x_762 : vec3<f32> = txVec2;
      let x_764 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_762.xy, x_762.z);
      u_xlat7.z = x_764;
      let x_767 : vec4<f32> = u_xlat6;
      let x_768 : vec2<f32> = vec2<f32>(x_767.z, x_767.w);
      let x_770 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_768.x, x_768.y, x_770);
      let x_777 : vec3<f32> = txVec3;
      let x_779 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_777.xy, x_777.z);
      u_xlat7.w = x_779;
      let x_782 : vec4<f32> = u_xlat7;
      u_xlat82 = dot(x_782, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_789 : f32 = x_690.x_MainLightShadowParams.y;
      u_xlatb83 = (x_789 == 2.0f);
      let x_791 : bool = u_xlatb83;
      if (x_791) {
        let x_794 : vec4<f32> = vs_INTERP3;
        let x_797 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_802 : vec2<f32> = ((vec2<f32>(x_794.x, x_794.y) * vec2<f32>(x_797.z, x_797.w)) + vec2<f32>(0.5f, 0.5f));
        let x_803 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
        let x_805 : vec4<f32> = u_xlat6;
        let x_807 : vec2<f32> = floor(vec2<f32>(x_805.x, x_805.y));
        let x_808 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
        let x_811 : vec4<f32> = vs_INTERP3;
        let x_814 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_817 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_811.x, x_811.y) * vec2<f32>(x_814.z, x_814.w)) + -(vec2<f32>(x_817.x, x_817.y)));
        let x_821 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_821.x, x_821.x, x_821.y, x_821.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_826 : vec4<f32> = u_xlat7;
        let x_828 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_826.x, x_826.x, x_826.z, x_826.z) * vec4<f32>(x_828.x, x_828.x, x_828.z, x_828.z));
        let x_831 : vec4<f32> = u_xlat8;
        let x_835 : vec2<f32> = (vec2<f32>(x_831.y, x_831.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_836 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_835.x, x_836.y, x_835.y, x_836.w);
        let x_838 : vec4<f32> = u_xlat8;
        let x_841 : vec2<f32> = u_xlat58;
        let x_843 : vec2<f32> = ((vec2<f32>(x_838.x, x_838.z) * vec2<f32>(0.5f, 0.5f)) + -(x_841));
        let x_844 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_843.x, x_843.y, x_844.z, x_844.w);
        let x_847 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_847) + vec2<f32>(1.0f, 1.0f));
        let x_852 : vec2<f32> = u_xlat58;
        let x_854 : vec2<f32> = min(x_852, vec2<f32>(0.0f, 0.0f));
        let x_855 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat9;
        let x_860 : vec4<f32> = u_xlat9;
        let x_863 : vec2<f32> = u_xlat60;
        let x_864 : vec2<f32> = ((-(vec2<f32>(x_857.x, x_857.y)) * vec2<f32>(x_860.x, x_860.y)) + x_863);
        let x_865 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_867, vec2<f32>(0.0f, 0.0f));
        let x_869 : vec2<f32> = u_xlat58;
        let x_871 : vec2<f32> = u_xlat58;
        let x_873 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_869) * x_871) + vec2<f32>(x_873.y, x_873.w));
        let x_876 : vec4<f32> = u_xlat9;
        let x_878 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) + vec2<f32>(1.0f, 1.0f));
        let x_879 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_881 + vec2<f32>(1.0f, 1.0f));
        let x_884 : vec4<f32> = u_xlat8;
        let x_888 : vec2<f32> = (vec2<f32>(x_884.x, x_884.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_889 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_891 : vec2<f32> = u_xlat60;
        let x_892 : vec2<f32> = (x_891 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_893 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec4<f32> = u_xlat9;
        let x_897 : vec2<f32> = (vec2<f32>(x_895.x, x_895.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_901 : vec2<f32> = u_xlat58;
        let x_902 : vec2<f32> = (x_901 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_903 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
        let x_905 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_905.y, x_905.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_909 : f32 = u_xlat9.x;
        u_xlat10.z = x_909;
        let x_912 : f32 = u_xlat58.x;
        u_xlat10.w = x_912;
        let x_915 : f32 = u_xlat11.x;
        u_xlat8.z = x_915;
        let x_918 : f32 = u_xlat7.x;
        u_xlat8.w = x_918;
        let x_921 : vec4<f32> = u_xlat8;
        let x_923 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_921.z, x_921.w, x_921.x, x_921.z) + vec4<f32>(x_923.z, x_923.w, x_923.x, x_923.z));
        let x_927 : f32 = u_xlat10.y;
        u_xlat9.z = x_927;
        let x_930 : f32 = u_xlat58.y;
        u_xlat9.w = x_930;
        let x_933 : f32 = u_xlat8.y;
        u_xlat11.z = x_933;
        let x_936 : f32 = u_xlat7.z;
        u_xlat11.w = x_936;
        let x_938 : vec4<f32> = u_xlat9;
        let x_940 : vec4<f32> = u_xlat11;
        let x_942 : vec3<f32> = (vec3<f32>(x_938.z, x_938.y, x_938.w) + vec3<f32>(x_940.z, x_940.y, x_940.w));
        let x_943 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
        let x_945 : vec4<f32> = u_xlat8;
        let x_947 : vec4<f32> = u_xlat12;
        let x_949 : vec3<f32> = (vec3<f32>(x_945.x, x_945.z, x_945.w) / vec3<f32>(x_947.z, x_947.w, x_947.y));
        let x_950 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat8;
        let x_958 : vec3<f32> = (vec3<f32>(x_952.x, x_952.y, x_952.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_959 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
        let x_961 : vec4<f32> = u_xlat11;
        let x_963 : vec4<f32> = u_xlat7;
        let x_965 : vec3<f32> = (vec3<f32>(x_961.z, x_961.y, x_961.w) / vec3<f32>(x_963.x, x_963.y, x_963.z));
        let x_966 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat9;
        let x_970 : vec3<f32> = (vec3<f32>(x_968.x, x_968.y, x_968.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_971 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
        let x_973 : vec4<f32> = u_xlat8;
        let x_976 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_978 : vec3<f32> = (vec3<f32>(x_973.y, x_973.x, x_973.z) * vec3<f32>(x_976.x, x_976.x, x_976.x));
        let x_979 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
        let x_981 : vec4<f32> = u_xlat9;
        let x_984 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_986 : vec3<f32> = (vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(x_984.y, x_984.y, x_984.y));
        let x_987 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
        let x_990 : f32 = u_xlat9.x;
        u_xlat8.w = x_990;
        let x_992 : vec4<f32> = u_xlat6;
        let x_995 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_998 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_992.x, x_992.y, x_992.x, x_992.y) * vec4<f32>(x_995.x, x_995.y, x_995.x, x_995.y)) + vec4<f32>(x_998.y, x_998.w, x_998.x, x_998.w));
        let x_1001 : vec4<f32> = u_xlat6;
        let x_1004 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1007 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(x_1004.x, x_1004.y)) + vec2<f32>(x_1007.z, x_1007.w));
        let x_1011 : f32 = u_xlat8.y;
        u_xlat9.w = x_1011;
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1014 : vec2<f32> = vec2<f32>(x_1013.y, x_1013.z);
        let x_1015 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1015.x, x_1014.x, x_1015.z, x_1014.y);
        let x_1017 : vec4<f32> = u_xlat6;
        let x_1020 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1023 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1017.x, x_1017.y, x_1017.x, x_1017.y) * vec4<f32>(x_1020.x, x_1020.y, x_1020.x, x_1020.y)) + vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1023.y));
        let x_1026 : vec4<f32> = u_xlat6;
        let x_1029 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.w, x_1032.y, x_1032.w, x_1032.z));
        let x_1035 : vec4<f32> = u_xlat6;
        let x_1038 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_1035.x, x_1035.y, x_1035.x, x_1035.y) * vec4<f32>(x_1038.x, x_1038.y, x_1038.x, x_1038.y)) + vec4<f32>(x_1041.x, x_1041.w, x_1041.z, x_1041.w));
        let x_1045 : vec4<f32> = u_xlat7;
        let x_1047 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_1045.x, x_1045.x, x_1045.x, x_1045.y) * vec4<f32>(x_1047.z, x_1047.w, x_1047.y, x_1047.z));
        let x_1051 : vec4<f32> = u_xlat7;
        let x_1053 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_1051.y, x_1051.y, x_1051.z, x_1051.z) * x_1053);
        let x_1057 : f32 = u_xlat7.z;
        let x_1059 : f32 = u_xlat12.y;
        u_xlat83 = (x_1057 * x_1059);
        let x_1062 : vec4<f32> = u_xlat10;
        let x_1063 : vec2<f32> = vec2<f32>(x_1062.x, x_1062.y);
        let x_1065 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_1063.x, x_1063.y, x_1065);
        let x_1072 : vec3<f32> = txVec4;
        let x_1074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1072.xy, x_1072.z);
        u_xlat6.x = x_1074;
        let x_1077 : vec4<f32> = u_xlat10;
        let x_1078 : vec2<f32> = vec2<f32>(x_1077.z, x_1077.w);
        let x_1080 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_1078.x, x_1078.y, x_1080);
        let x_1088 : vec3<f32> = txVec5;
        let x_1090 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1088.xy, x_1088.z);
        u_xlat32 = x_1090;
        let x_1091 : f32 = u_xlat32;
        let x_1093 : f32 = u_xlat13.y;
        u_xlat32 = (x_1091 * x_1093);
        let x_1096 : f32 = u_xlat13.x;
        let x_1098 : f32 = u_xlat6.x;
        let x_1100 : f32 = u_xlat32;
        u_xlat6.x = ((x_1096 * x_1098) + x_1100);
        let x_1104 : vec2<f32> = u_xlat58;
        let x_1106 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1104.x, x_1104.y, x_1106);
        let x_1113 : vec3<f32> = txVec6;
        let x_1115 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1113.xy, x_1113.z);
        u_xlat32 = x_1115;
        let x_1117 : f32 = u_xlat13.z;
        let x_1118 : f32 = u_xlat32;
        let x_1121 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1117 * x_1118) + x_1121);
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1126 : vec2<f32> = vec2<f32>(x_1125.x, x_1125.y);
        let x_1128 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1126.x, x_1126.y, x_1128);
        let x_1135 : vec3<f32> = txVec7;
        let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1135.xy, x_1135.z);
        u_xlat32 = x_1137;
        let x_1139 : f32 = u_xlat13.w;
        let x_1140 : f32 = u_xlat32;
        let x_1143 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1139 * x_1140) + x_1143);
        let x_1147 : vec4<f32> = u_xlat11;
        let x_1148 : vec2<f32> = vec2<f32>(x_1147.x, x_1147.y);
        let x_1150 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1148.x, x_1148.y, x_1150);
        let x_1157 : vec3<f32> = txVec8;
        let x_1159 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1157.xy, x_1157.z);
        u_xlat32 = x_1159;
        let x_1161 : f32 = u_xlat14.x;
        let x_1162 : f32 = u_xlat32;
        let x_1165 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1161 * x_1162) + x_1165);
        let x_1169 : vec4<f32> = u_xlat11;
        let x_1170 : vec2<f32> = vec2<f32>(x_1169.z, x_1169.w);
        let x_1172 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1170.x, x_1170.y, x_1172);
        let x_1179 : vec3<f32> = txVec9;
        let x_1181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1179.xy, x_1179.z);
        u_xlat32 = x_1181;
        let x_1183 : f32 = u_xlat14.y;
        let x_1184 : f32 = u_xlat32;
        let x_1187 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1183 * x_1184) + x_1187);
        let x_1191 : vec4<f32> = u_xlat9;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.z, x_1191.w);
        let x_1194 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1201 : vec3<f32> = txVec10;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat32 = x_1203;
        let x_1205 : f32 = u_xlat14.z;
        let x_1206 : f32 = u_xlat32;
        let x_1209 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1205 * x_1206) + x_1209);
        let x_1213 : vec4<f32> = u_xlat8;
        let x_1214 : vec2<f32> = vec2<f32>(x_1213.x, x_1213.y);
        let x_1216 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec11;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1223.xy, x_1223.z);
        u_xlat32 = x_1225;
        let x_1227 : f32 = u_xlat14.w;
        let x_1228 : f32 = u_xlat32;
        let x_1231 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1227 * x_1228) + x_1231);
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1236 : vec2<f32> = vec2<f32>(x_1235.z, x_1235.w);
        let x_1238 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
        let x_1245 : vec3<f32> = txVec12;
        let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1245.xy, x_1245.z);
        u_xlat32 = x_1247;
        let x_1248 : f32 = u_xlat83;
        let x_1249 : f32 = u_xlat32;
        let x_1252 : f32 = u_xlat6.x;
        u_xlat82 = ((x_1248 * x_1249) + x_1252);
      } else {
        let x_1255 : vec4<f32> = vs_INTERP3;
        let x_1258 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1261 : vec2<f32> = ((vec2<f32>(x_1255.x, x_1255.y) * vec2<f32>(x_1258.z, x_1258.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1262 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1261.x, x_1261.y, x_1262.z, x_1262.w);
        let x_1264 : vec4<f32> = u_xlat6;
        let x_1266 : vec2<f32> = floor(vec2<f32>(x_1264.x, x_1264.y));
        let x_1267 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1266.x, x_1266.y, x_1267.z, x_1267.w);
        let x_1269 : vec4<f32> = vs_INTERP3;
        let x_1272 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1269.x, x_1269.y) * vec2<f32>(x_1272.z, x_1272.w)) + -(vec2<f32>(x_1275.x, x_1275.y)));
        let x_1279 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1279.x, x_1279.x, x_1279.y, x_1279.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1282 : vec4<f32> = u_xlat7;
        let x_1284 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1282.x, x_1282.x, x_1282.z, x_1282.z) * vec4<f32>(x_1284.x, x_1284.x, x_1284.z, x_1284.z));
        let x_1287 : vec4<f32> = u_xlat8;
        let x_1291 : vec2<f32> = (vec2<f32>(x_1287.y, x_1287.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1292 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1292.x, x_1291.x, x_1292.z, x_1291.y);
        let x_1294 : vec4<f32> = u_xlat8;
        let x_1297 : vec2<f32> = u_xlat58;
        let x_1299 : vec2<f32> = ((vec2<f32>(x_1294.x, x_1294.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1297));
        let x_1300 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1299.x, x_1300.y, x_1299.y, x_1300.w);
        let x_1302 : vec2<f32> = u_xlat58;
        let x_1304 : vec2<f32> = (-(x_1302) + vec2<f32>(1.0f, 1.0f));
        let x_1305 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1304.x, x_1304.y, x_1305.z, x_1305.w);
        let x_1307 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1307, vec2<f32>(0.0f, 0.0f));
        let x_1309 : vec2<f32> = u_xlat60;
        let x_1311 : vec2<f32> = u_xlat60;
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1315 : vec2<f32> = ((-(x_1309) * x_1311) + vec2<f32>(x_1313.x, x_1313.y));
        let x_1316 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1318, vec2<f32>(0.0f, 0.0f));
        let x_1321 : vec2<f32> = u_xlat60;
        let x_1323 : vec2<f32> = u_xlat60;
        let x_1325 : vec4<f32> = u_xlat7;
        let x_1327 : vec2<f32> = ((-(x_1321) * x_1323) + vec2<f32>(x_1325.y, x_1325.w));
        let x_1328 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1327.x, x_1328.y, x_1327.y);
        let x_1330 : vec4<f32> = u_xlat8;
        let x_1332 : vec2<f32> = (vec2<f32>(x_1330.x, x_1330.y) + vec2<f32>(2.0f, 2.0f));
        let x_1333 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1335 : vec3<f32> = u_xlat33;
        let x_1337 : vec2<f32> = (vec2<f32>(x_1335.x, x_1335.z) + vec2<f32>(2.0f, 2.0f));
        let x_1338 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1338.x, x_1337.x, x_1338.z, x_1337.y);
        let x_1341 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1341 * 0.08163200318813323975f);
        let x_1345 : vec4<f32> = u_xlat7;
        let x_1348 : vec3<f32> = (vec3<f32>(x_1345.z, x_1345.x, x_1345.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1349 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
        let x_1351 : vec4<f32> = u_xlat8;
        let x_1354 : vec2<f32> = (vec2<f32>(x_1351.x, x_1351.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1355 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1354.x, x_1354.y, x_1355.z, x_1355.w);
        let x_1358 : f32 = u_xlat11.y;
        u_xlat10.x = x_1358;
        let x_1360 : vec2<f32> = u_xlat58;
        let x_1367 : vec2<f32> = ((vec2<f32>(x_1360.x, x_1360.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1368 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1368.x, x_1367.x, x_1368.z, x_1367.y);
        let x_1370 : vec2<f32> = u_xlat58;
        let x_1374 : vec2<f32> = ((vec2<f32>(x_1370.x, x_1370.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1375 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1374.x, x_1375.y, x_1374.y, x_1375.w);
        let x_1378 : f32 = u_xlat7.x;
        u_xlat8.y = x_1378;
        let x_1381 : f32 = u_xlat9.y;
        u_xlat8.w = x_1381;
        let x_1383 : vec4<f32> = u_xlat8;
        let x_1384 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1383 + x_1384);
        let x_1386 : vec2<f32> = u_xlat58;
        let x_1389 : vec2<f32> = ((vec2<f32>(x_1386.y, x_1386.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1390 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1390.x, x_1389.x, x_1390.z, x_1389.y);
        let x_1392 : vec2<f32> = u_xlat58;
        let x_1395 : vec2<f32> = ((vec2<f32>(x_1392.y, x_1392.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1396 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1395.x, x_1396.y, x_1395.y, x_1396.w);
        let x_1399 : f32 = u_xlat7.y;
        u_xlat9.y = x_1399;
        let x_1401 : vec4<f32> = u_xlat9;
        let x_1402 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1401 + x_1402);
        let x_1404 : vec4<f32> = u_xlat8;
        let x_1405 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1404 / x_1405);
        let x_1407 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1407 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1413 : vec4<f32> = u_xlat9;
        let x_1414 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1413 / x_1414);
        let x_1416 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1416 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1418 : vec4<f32> = u_xlat8;
        let x_1421 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1418.w, x_1418.x, x_1418.y, x_1418.z) * vec4<f32>(x_1421.x, x_1421.x, x_1421.x, x_1421.x));
        let x_1424 : vec4<f32> = u_xlat9;
        let x_1427 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1424.x, x_1424.w, x_1424.y, x_1424.z) * vec4<f32>(x_1427.y, x_1427.y, x_1427.y, x_1427.y));
        let x_1430 : vec4<f32> = u_xlat8;
        let x_1431 : vec3<f32> = vec3<f32>(x_1430.y, x_1430.z, x_1430.w);
        let x_1432 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1431.x, x_1432.y, x_1431.y, x_1431.z);
        let x_1435 : f32 = u_xlat9.x;
        u_xlat11.y = x_1435;
        let x_1437 : vec4<f32> = u_xlat6;
        let x_1440 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1443 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1437.x, x_1437.y, x_1437.x, x_1437.y) * vec4<f32>(x_1440.x, x_1440.y, x_1440.x, x_1440.y)) + vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1443.y));
        let x_1446 : vec4<f32> = u_xlat6;
        let x_1449 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1452 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1446.x, x_1446.y) * vec2<f32>(x_1449.x, x_1449.y)) + vec2<f32>(x_1452.w, x_1452.y));
        let x_1456 : f32 = u_xlat11.y;
        u_xlat8.y = x_1456;
        let x_1459 : f32 = u_xlat9.z;
        u_xlat11.y = x_1459;
        let x_1461 : vec4<f32> = u_xlat6;
        let x_1464 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1467 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1461.x, x_1461.y, x_1461.x, x_1461.y) * vec4<f32>(x_1464.x, x_1464.y, x_1464.x, x_1464.y)) + vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1467.y));
        let x_1470 : vec4<f32> = u_xlat6;
        let x_1473 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1476 : vec4<f32> = u_xlat11;
        let x_1478 : vec2<f32> = ((vec2<f32>(x_1470.x, x_1470.y) * vec2<f32>(x_1473.x, x_1473.y)) + vec2<f32>(x_1476.w, x_1476.y));
        let x_1479 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1478.x, x_1478.y, x_1479.z, x_1479.w);
        let x_1482 : f32 = u_xlat11.y;
        u_xlat8.z = x_1482;
        let x_1485 : vec4<f32> = u_xlat6;
        let x_1488 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1491 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1485.x, x_1485.y, x_1485.x, x_1485.y) * vec4<f32>(x_1488.x, x_1488.y, x_1488.x, x_1488.y)) + vec4<f32>(x_1491.x, x_1491.y, x_1491.x, x_1491.z));
        let x_1495 : f32 = u_xlat9.w;
        u_xlat11.y = x_1495;
        let x_1498 : vec4<f32> = u_xlat6;
        let x_1501 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1504 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1498.x, x_1498.y, x_1498.x, x_1498.y) * vec4<f32>(x_1501.x, x_1501.y, x_1501.x, x_1501.y)) + vec4<f32>(x_1504.x, x_1504.y, x_1504.z, x_1504.y));
        let x_1508 : vec4<f32> = u_xlat6;
        let x_1511 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1514 : vec4<f32> = u_xlat11;
        let x_1516 : vec2<f32> = ((vec2<f32>(x_1508.x, x_1508.y) * vec2<f32>(x_1511.x, x_1511.y)) + vec2<f32>(x_1514.w, x_1514.y));
        let x_1517 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1516.x, x_1516.y, x_1517.z);
        let x_1520 : f32 = u_xlat11.y;
        u_xlat8.w = x_1520;
        let x_1523 : vec4<f32> = u_xlat6;
        let x_1526 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1529 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1523.x, x_1523.y) * vec2<f32>(x_1526.x, x_1526.y)) + vec2<f32>(x_1529.x, x_1529.w));
        let x_1532 : vec4<f32> = u_xlat11;
        let x_1533 : vec3<f32> = vec3<f32>(x_1532.x, x_1532.z, x_1532.w);
        let x_1534 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1533.x, x_1534.y, x_1533.y, x_1533.z);
        let x_1536 : vec4<f32> = u_xlat6;
        let x_1539 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1542 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1536.x, x_1536.y, x_1536.x, x_1536.y) * vec4<f32>(x_1539.x, x_1539.y, x_1539.x, x_1539.y)) + vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1542.y));
        let x_1546 : vec4<f32> = u_xlat6;
        let x_1549 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1552 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1546.x, x_1546.y) * vec2<f32>(x_1549.x, x_1549.y)) + vec2<f32>(x_1552.w, x_1552.y));
        let x_1556 : f32 = u_xlat8.x;
        u_xlat9.x = x_1556;
        let x_1558 : vec4<f32> = u_xlat6;
        let x_1561 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1564 : vec4<f32> = u_xlat9;
        let x_1566 : vec2<f32> = ((vec2<f32>(x_1558.x, x_1558.y) * vec2<f32>(x_1561.x, x_1561.y)) + vec2<f32>(x_1564.x, x_1564.y));
        let x_1567 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1566.x, x_1566.y, x_1567.z, x_1567.w);
        let x_1570 : vec4<f32> = u_xlat7;
        let x_1572 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1570.x, x_1570.x, x_1570.x, x_1570.x) * x_1572);
        let x_1575 : vec4<f32> = u_xlat7;
        let x_1577 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1575.y, x_1575.y, x_1575.y, x_1575.y) * x_1577);
        let x_1580 : vec4<f32> = u_xlat7;
        let x_1582 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1580.z, x_1580.z, x_1580.z, x_1580.z) * x_1582);
        let x_1584 : vec4<f32> = u_xlat7;
        let x_1586 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1584.w, x_1584.w, x_1584.w, x_1584.w) * x_1586);
        let x_1589 : vec4<f32> = u_xlat12;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.x, x_1589.y);
        let x_1592 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec13;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1599.xy, x_1599.z);
        u_xlat83 = x_1601;
        let x_1603 : vec4<f32> = u_xlat12;
        let x_1604 : vec2<f32> = vec2<f32>(x_1603.z, x_1603.w);
        let x_1606 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec14;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1613.xy, x_1613.z);
        u_xlat8.x = x_1615;
        let x_1618 : f32 = u_xlat8.x;
        let x_1620 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1618 * x_1620);
        let x_1624 : f32 = u_xlat17.x;
        let x_1625 : f32 = u_xlat83;
        let x_1628 : f32 = u_xlat8.x;
        u_xlat83 = ((x_1624 * x_1625) + x_1628);
        let x_1631 : vec2<f32> = u_xlat58;
        let x_1633 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1631.x, x_1631.y, x_1633);
        let x_1640 : vec3<f32> = txVec15;
        let x_1642 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1640.xy, x_1640.z);
        u_xlat58.x = x_1642;
        let x_1645 : f32 = u_xlat17.z;
        let x_1647 : f32 = u_xlat58.x;
        let x_1649 : f32 = u_xlat83;
        u_xlat83 = ((x_1645 * x_1647) + x_1649);
        let x_1652 : vec4<f32> = u_xlat15;
        let x_1653 : vec2<f32> = vec2<f32>(x_1652.x, x_1652.y);
        let x_1655 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1653.x, x_1653.y, x_1655);
        let x_1662 : vec3<f32> = txVec16;
        let x_1664 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1662.xy, x_1662.z);
        u_xlat58.x = x_1664;
        let x_1667 : f32 = u_xlat17.w;
        let x_1669 : f32 = u_xlat58.x;
        let x_1671 : f32 = u_xlat83;
        u_xlat83 = ((x_1667 * x_1669) + x_1671);
        let x_1674 : vec4<f32> = u_xlat13;
        let x_1675 : vec2<f32> = vec2<f32>(x_1674.x, x_1674.y);
        let x_1677 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
        let x_1684 : vec3<f32> = txVec17;
        let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1684.xy, x_1684.z);
        u_xlat58.x = x_1686;
        let x_1689 : f32 = u_xlat18.x;
        let x_1691 : f32 = u_xlat58.x;
        let x_1693 : f32 = u_xlat83;
        u_xlat83 = ((x_1689 * x_1691) + x_1693);
        let x_1696 : vec4<f32> = u_xlat13;
        let x_1697 : vec2<f32> = vec2<f32>(x_1696.z, x_1696.w);
        let x_1699 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
        let x_1706 : vec3<f32> = txVec18;
        let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1706.xy, x_1706.z);
        u_xlat58.x = x_1708;
        let x_1711 : f32 = u_xlat18.y;
        let x_1713 : f32 = u_xlat58.x;
        let x_1715 : f32 = u_xlat83;
        u_xlat83 = ((x_1711 * x_1713) + x_1715);
        let x_1718 : vec4<f32> = u_xlat14;
        let x_1719 : vec2<f32> = vec2<f32>(x_1718.x, x_1718.y);
        let x_1721 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec19;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1728.xy, x_1728.z);
        u_xlat58.x = x_1730;
        let x_1733 : f32 = u_xlat18.z;
        let x_1735 : f32 = u_xlat58.x;
        let x_1737 : f32 = u_xlat83;
        u_xlat83 = ((x_1733 * x_1735) + x_1737);
        let x_1740 : vec4<f32> = u_xlat15;
        let x_1741 : vec2<f32> = vec2<f32>(x_1740.z, x_1740.w);
        let x_1743 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec20;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1750.xy, x_1750.z);
        u_xlat58.x = x_1752;
        let x_1755 : f32 = u_xlat18.w;
        let x_1757 : f32 = u_xlat58.x;
        let x_1759 : f32 = u_xlat83;
        u_xlat83 = ((x_1755 * x_1757) + x_1759);
        let x_1762 : vec4<f32> = u_xlat16;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.x, x_1762.y);
        let x_1765 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec21;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1772.xy, x_1772.z);
        u_xlat58.x = x_1774;
        let x_1777 : f32 = u_xlat19.x;
        let x_1779 : f32 = u_xlat58.x;
        let x_1781 : f32 = u_xlat83;
        u_xlat83 = ((x_1777 * x_1779) + x_1781);
        let x_1784 : vec4<f32> = u_xlat16;
        let x_1785 : vec2<f32> = vec2<f32>(x_1784.z, x_1784.w);
        let x_1787 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1785.x, x_1785.y, x_1787);
        let x_1794 : vec3<f32> = txVec22;
        let x_1796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1794.xy, x_1794.z);
        u_xlat58.x = x_1796;
        let x_1799 : f32 = u_xlat19.y;
        let x_1801 : f32 = u_xlat58.x;
        let x_1803 : f32 = u_xlat83;
        u_xlat83 = ((x_1799 * x_1801) + x_1803);
        let x_1806 : vec3<f32> = u_xlat34;
        let x_1807 : vec2<f32> = vec2<f32>(x_1806.x, x_1806.y);
        let x_1809 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1807.x, x_1807.y, x_1809);
        let x_1816 : vec3<f32> = txVec23;
        let x_1818 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1816.xy, x_1816.z);
        u_xlat58.x = x_1818;
        let x_1821 : f32 = u_xlat19.z;
        let x_1823 : f32 = u_xlat58.x;
        let x_1825 : f32 = u_xlat83;
        u_xlat83 = ((x_1821 * x_1823) + x_1825);
        let x_1828 : vec2<f32> = u_xlat66;
        let x_1830 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1828.x, x_1828.y, x_1830);
        let x_1837 : vec3<f32> = txVec24;
        let x_1839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1837.xy, x_1837.z);
        u_xlat58.x = x_1839;
        let x_1842 : f32 = u_xlat19.w;
        let x_1844 : f32 = u_xlat58.x;
        let x_1846 : f32 = u_xlat83;
        u_xlat83 = ((x_1842 * x_1844) + x_1846);
        let x_1849 : vec4<f32> = u_xlat11;
        let x_1850 : vec2<f32> = vec2<f32>(x_1849.x, x_1849.y);
        let x_1852 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1850.x, x_1850.y, x_1852);
        let x_1859 : vec3<f32> = txVec25;
        let x_1861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1859.xy, x_1859.z);
        u_xlat58.x = x_1861;
        let x_1864 : f32 = u_xlat7.x;
        let x_1866 : f32 = u_xlat58.x;
        let x_1868 : f32 = u_xlat83;
        u_xlat83 = ((x_1864 * x_1866) + x_1868);
        let x_1871 : vec4<f32> = u_xlat11;
        let x_1872 : vec2<f32> = vec2<f32>(x_1871.z, x_1871.w);
        let x_1874 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1872.x, x_1872.y, x_1874);
        let x_1881 : vec3<f32> = txVec26;
        let x_1883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1881.xy, x_1881.z);
        u_xlat58.x = x_1883;
        let x_1886 : f32 = u_xlat7.y;
        let x_1888 : f32 = u_xlat58.x;
        let x_1890 : f32 = u_xlat83;
        u_xlat83 = ((x_1886 * x_1888) + x_1890);
        let x_1893 : vec2<f32> = u_xlat61;
        let x_1895 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1893.x, x_1893.y, x_1895);
        let x_1902 : vec3<f32> = txVec27;
        let x_1904 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1902.xy, x_1902.z);
        u_xlat58.x = x_1904;
        let x_1907 : f32 = u_xlat7.z;
        let x_1909 : f32 = u_xlat58.x;
        let x_1911 : f32 = u_xlat83;
        u_xlat83 = ((x_1907 * x_1909) + x_1911);
        let x_1914 : vec4<f32> = u_xlat6;
        let x_1915 : vec2<f32> = vec2<f32>(x_1914.x, x_1914.y);
        let x_1917 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1915.x, x_1915.y, x_1917);
        let x_1924 : vec3<f32> = txVec28;
        let x_1926 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1924.xy, x_1924.z);
        u_xlat6.x = x_1926;
        let x_1929 : f32 = u_xlat7.w;
        let x_1931 : f32 = u_xlat6.x;
        let x_1933 : f32 = u_xlat83;
        u_xlat82 = ((x_1929 * x_1931) + x_1933);
      }
    }
  } else {
    let x_1937 : vec4<f32> = vs_INTERP3;
    let x_1938 : vec2<f32> = vec2<f32>(x_1937.x, x_1937.y);
    let x_1940 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1938.x, x_1938.y, x_1940);
    let x_1947 : vec3<f32> = txVec29;
    let x_1949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1947.xy, x_1947.z);
    u_xlat82 = x_1949;
  }
  let x_1951 : f32 = x_690.x_MainLightShadowParams.x;
  u_xlat83 = (-(x_1951) + 1.0f);
  let x_1954 : f32 = u_xlat82;
  let x_1956 : f32 = x_690.x_MainLightShadowParams.x;
  let x_1958 : f32 = u_xlat83;
  u_xlat82 = ((x_1954 * x_1956) + x_1958);
  let x_1961 : f32 = vs_INTERP3.z;
  u_xlatb83 = (0.0f >= x_1961);
  let x_1965 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_1965 >= 1.0f);
  let x_1967 : bool = u_xlatb83;
  let x_1968 : bool = u_xlatb6;
  u_xlatb83 = (x_1967 | x_1968);
  let x_1970 : bool = u_xlatb83;
  let x_1971 : f32 = u_xlat82;
  u_xlat82 = select(x_1971, 1.0f, x_1970);
  let x_1973 : vec3<f32> = vs_INTERP7;
  let x_1975 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1977 : vec3<f32> = (x_1973 + -(x_1975));
  let x_1978 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
  let x_1980 : vec4<f32> = u_xlat6;
  let x_1982 : vec4<f32> = u_xlat6;
  u_xlat83 = dot(vec3<f32>(x_1980.x, x_1980.y, x_1980.z), vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
  let x_1985 : f32 = u_xlat83;
  let x_1987 : f32 = x_690.x_MainLightShadowParams.z;
  let x_1990 : f32 = x_690.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1985 * x_1987) + x_1990);
  let x_1994 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1994, 0.0f, 1.0f);
  let x_1997 : f32 = u_xlat82;
  u_xlat32 = (-(x_1997) + 1.0f);
  let x_2001 : f32 = u_xlat6.x;
  let x_2002 : f32 = u_xlat32;
  let x_2004 : f32 = u_xlat82;
  u_xlat82 = ((x_2001 * x_2002) + x_2004);
  let x_2013 : f32 = x_2011.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_2013 == -1.0f));
  let x_2015 : bool = u_xlatb6;
  if (x_2015) {
    let x_2018 : vec3<f32> = vs_INTERP7;
    let x_2021 : vec4<f32> = x_2011.x_MainLightWorldToLight[1i];
    let x_2023 : vec2<f32> = (vec2<f32>(x_2018.y, x_2018.y) * vec2<f32>(x_2021.x, x_2021.y));
    let x_2024 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2023.x, x_2023.y, x_2024.z, x_2024.w);
    let x_2027 : vec4<f32> = x_2011.x_MainLightWorldToLight[0i];
    let x_2029 : vec3<f32> = vs_INTERP7;
    let x_2032 : vec4<f32> = u_xlat6;
    let x_2034 : vec2<f32> = ((vec2<f32>(x_2027.x, x_2027.y) * vec2<f32>(x_2029.x, x_2029.x)) + vec2<f32>(x_2032.x, x_2032.y));
    let x_2035 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2034.x, x_2034.y, x_2035.z, x_2035.w);
    let x_2038 : vec4<f32> = x_2011.x_MainLightWorldToLight[2i];
    let x_2040 : vec3<f32> = vs_INTERP7;
    let x_2043 : vec4<f32> = u_xlat6;
    let x_2045 : vec2<f32> = ((vec2<f32>(x_2038.x, x_2038.y) * vec2<f32>(x_2040.z, x_2040.z)) + vec2<f32>(x_2043.x, x_2043.y));
    let x_2046 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2045.x, x_2045.y, x_2046.z, x_2046.w);
    let x_2048 : vec4<f32> = u_xlat6;
    let x_2051 : vec4<f32> = x_2011.x_MainLightWorldToLight[3i];
    let x_2053 : vec2<f32> = (vec2<f32>(x_2048.x, x_2048.y) + vec2<f32>(x_2051.x, x_2051.y));
    let x_2054 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2053.x, x_2053.y, x_2054.z, x_2054.w);
    let x_2056 : vec4<f32> = u_xlat6;
    let x_2059 : vec2<f32> = ((vec2<f32>(x_2056.x, x_2056.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2060 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2059.x, x_2059.y, x_2060.z, x_2060.w);
    let x_2067 : vec4<f32> = u_xlat6;
    let x_2070 : f32 = x_29.x_GlobalMipBias.x;
    let x_2071 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2067.x, x_2067.y), x_2070);
    u_xlat6 = x_2071;
    let x_2074 : f32 = x_2011.x_MainLightCookieTextureFormat;
    let x_2076 : f32 = x_2011.x_MainLightCookieTextureFormat;
    let x_2078 : f32 = x_2011.x_MainLightCookieTextureFormat;
    let x_2080 : f32 = x_2011.x_MainLightCookieTextureFormat;
    let x_2081 : vec4<f32> = vec4<f32>(x_2074, x_2076, x_2078, x_2080);
    let x_2089 : vec4<bool> = (vec4<f32>(x_2081.x, x_2081.y, x_2081.z, x_2081.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_2089.x, x_2089.y);
    let x_2093 : bool = u_xlatb7.y;
    if (x_2093) {
      let x_2098 : f32 = u_xlat6.w;
      x_2094 = x_2098;
    } else {
      let x_2101 : f32 = u_xlat6.x;
      x_2094 = x_2101;
    }
    let x_2102 : f32 = x_2094;
    u_xlat84 = x_2102;
    let x_2104 : bool = u_xlatb7.x;
    if (x_2104) {
      let x_2108 : vec4<f32> = u_xlat6;
      x_2105 = vec3<f32>(x_2108.x, x_2108.y, x_2108.z);
    } else {
      let x_2111 : f32 = u_xlat84;
      x_2105 = vec3<f32>(x_2111, x_2111, x_2111);
    }
    let x_2113 : vec3<f32> = x_2105;
    let x_2114 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2113.x, x_2113.y, x_2113.z, x_2114.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_2120 : vec4<f32> = u_xlat6;
  let x_2123 : vec4<f32> = x_29.x_MainLightColor;
  let x_2125 : vec3<f32> = (vec3<f32>(x_2120.x, x_2120.y, x_2120.z) * vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
  let x_2126 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2125.x, x_2125.y, x_2125.z, x_2126.w);
  let x_2128 : vec4<f32> = u_xlat3;
  let x_2131 : vec4<f32> = u_xlat1;
  u_xlat84 = dot(-(vec3<f32>(x_2128.x, x_2128.y, x_2128.z)), vec3<f32>(x_2131.x, x_2131.y, x_2131.z));
  let x_2134 : f32 = u_xlat84;
  let x_2135 : f32 = u_xlat84;
  u_xlat84 = (x_2134 + x_2135);
  let x_2137 : vec4<f32> = u_xlat1;
  let x_2139 : f32 = u_xlat84;
  let x_2143 : vec4<f32> = u_xlat3;
  let x_2146 : vec3<f32> = ((vec3<f32>(x_2137.x, x_2137.y, x_2137.z) * -(vec3<f32>(x_2139, x_2139, x_2139))) + -(vec3<f32>(x_2143.x, x_2143.y, x_2143.z)));
  let x_2147 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2146.x, x_2146.y, x_2146.z, x_2147.w);
  let x_2149 : vec4<f32> = u_xlat1;
  let x_2151 : vec4<f32> = u_xlat3;
  u_xlat84 = dot(vec3<f32>(x_2149.x, x_2149.y, x_2149.z), vec3<f32>(x_2151.x, x_2151.y, x_2151.z));
  let x_2154 : f32 = u_xlat84;
  u_xlat84 = clamp(x_2154, 0.0f, 1.0f);
  let x_2156 : f32 = u_xlat84;
  u_xlat84 = (-(x_2156) + 1.0f);
  let x_2159 : f32 = u_xlat84;
  let x_2160 : f32 = u_xlat84;
  u_xlat84 = (x_2159 * x_2160);
  let x_2162 : f32 = u_xlat84;
  let x_2163 : f32 = u_xlat84;
  u_xlat84 = (x_2162 * x_2163);
  let x_2166 : f32 = u_xlat79;
  u_xlat85 = ((-(x_2166) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2172 : f32 = u_xlat79;
  let x_2173 : f32 = u_xlat85;
  u_xlat79 = (x_2172 * x_2173);
  let x_2175 : f32 = u_xlat79;
  u_xlat79 = (x_2175 * 6.0f);
  let x_2185 : vec4<f32> = u_xlat7;
  let x_2187 : f32 = u_xlat79;
  let x_2188 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2185.x, x_2185.y, x_2185.z), x_2187);
  u_xlat7 = x_2188;
  let x_2190 : f32 = u_xlat7.w;
  u_xlat79 = (x_2190 + -1.0f);
  let x_2193 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2194 : f32 = u_xlat79;
  u_xlat79 = ((x_2193 * x_2194) + 1.0f);
  let x_2197 : f32 = u_xlat79;
  u_xlat79 = max(x_2197, 0.0f);
  let x_2199 : f32 = u_xlat79;
  u_xlat79 = log2(x_2199);
  let x_2201 : f32 = u_xlat79;
  let x_2203 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat79 = (x_2201 * x_2203);
  let x_2205 : f32 = u_xlat79;
  u_xlat79 = exp2(x_2205);
  let x_2207 : f32 = u_xlat79;
  let x_2209 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat79 = (x_2207 * x_2209);
  let x_2211 : vec4<f32> = u_xlat7;
  let x_2213 : f32 = u_xlat79;
  let x_2215 : vec3<f32> = (vec3<f32>(x_2211.x, x_2211.y, x_2211.z) * vec3<f32>(x_2213, x_2213, x_2213));
  let x_2216 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2215.x, x_2215.y, x_2215.z, x_2216.w);
  let x_2218 : vec4<f32> = u_xlat2;
  let x_2220 : vec4<f32> = u_xlat2;
  let x_2224 : vec2<f32> = ((vec2<f32>(x_2218.x, x_2218.x) * vec2<f32>(x_2220.x, x_2220.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2225 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2224.x, x_2224.y, x_2225.z, x_2225.w);
  let x_2228 : f32 = u_xlat8.y;
  u_xlat79 = (1.0f / x_2228);
  let x_2230 : vec4<f32> = u_xlat0;
  let x_2233 : f32 = u_xlat80;
  u_xlat34 = (-(vec3<f32>(x_2230.x, x_2230.y, x_2230.z)) + vec3<f32>(x_2233, x_2233, x_2233));
  let x_2236 : f32 = u_xlat84;
  let x_2238 : vec3<f32> = u_xlat34;
  let x_2240 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_2236, x_2236, x_2236) * x_2238) + vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : f32 = u_xlat79;
  let x_2245 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_2243, x_2243, x_2243) * x_2245);
  let x_2247 : vec4<f32> = u_xlat7;
  let x_2249 : vec3<f32> = u_xlat34;
  let x_2250 : vec3<f32> = (vec3<f32>(x_2247.x, x_2247.y, x_2247.z) * x_2249);
  let x_2251 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2250.x, x_2250.y, x_2250.z, x_2251.w);
  let x_2253 : vec3<f32> = u_xlat4;
  let x_2254 : vec4<f32> = u_xlat5;
  let x_2257 : vec4<f32> = u_xlat7;
  u_xlat4 = ((x_2253 * vec3<f32>(x_2254.x, x_2254.y, x_2254.z)) + vec3<f32>(x_2257.x, x_2257.y, x_2257.z));
  let x_2260 : f32 = u_xlat82;
  let x_2262 : f32 = x_349.unity_LightData.z;
  u_xlat79 = (x_2260 * x_2262);
  let x_2264 : vec4<f32> = u_xlat1;
  let x_2267 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2264.x, x_2264.y, x_2264.z), vec3<f32>(x_2267.x, x_2267.y, x_2267.z));
  let x_2272 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2272, 0.0f, 1.0f);
  let x_2275 : f32 = u_xlat79;
  let x_2277 : f32 = u_xlat2.x;
  u_xlat79 = (x_2275 * x_2277);
  let x_2279 : f32 = u_xlat79;
  let x_2281 : vec4<f32> = u_xlat6;
  let x_2283 : vec3<f32> = (vec3<f32>(x_2279, x_2279, x_2279) * vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
  let x_2284 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
  let x_2286 : vec4<f32> = u_xlat3;
  let x_2289 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2291 : vec3<f32> = (vec3<f32>(x_2286.x, x_2286.y, x_2286.z) + vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
  let x_2292 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2291.x, x_2291.y, x_2291.z, x_2292.w);
  let x_2294 : vec4<f32> = u_xlat7;
  let x_2296 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2294.x, x_2294.y, x_2294.z), vec3<f32>(x_2296.x, x_2296.y, x_2296.z));
  let x_2299 : f32 = u_xlat79;
  u_xlat79 = max(x_2299, 1.17549435e-38f);
  let x_2302 : f32 = u_xlat79;
  u_xlat79 = inverseSqrt(x_2302);
  let x_2304 : f32 = u_xlat79;
  let x_2306 : vec4<f32> = u_xlat7;
  let x_2308 : vec3<f32> = (vec3<f32>(x_2304, x_2304, x_2304) * vec3<f32>(x_2306.x, x_2306.y, x_2306.z));
  let x_2309 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2308.x, x_2308.y, x_2308.z, x_2309.w);
  let x_2311 : vec4<f32> = u_xlat1;
  let x_2313 : vec4<f32> = u_xlat7;
  u_xlat79 = dot(vec3<f32>(x_2311.x, x_2311.y, x_2311.z), vec3<f32>(x_2313.x, x_2313.y, x_2313.z));
  let x_2316 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2316, 0.0f, 1.0f);
  let x_2319 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2321 : vec4<f32> = u_xlat7;
  u_xlat2.x = dot(vec3<f32>(x_2319.x, x_2319.y, x_2319.z), vec3<f32>(x_2321.x, x_2321.y, x_2321.z));
  let x_2326 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2326, 0.0f, 1.0f);
  let x_2329 : f32 = u_xlat79;
  let x_2330 : f32 = u_xlat79;
  u_xlat79 = (x_2329 * x_2330);
  let x_2332 : f32 = u_xlat79;
  let x_2334 : f32 = u_xlat8.x;
  u_xlat79 = ((x_2332 * x_2334) + 1.00001001358032226562f);
  let x_2339 : f32 = u_xlat2.x;
  let x_2341 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2339 * x_2341);
  let x_2344 : f32 = u_xlat79;
  let x_2345 : f32 = u_xlat79;
  u_xlat79 = (x_2344 * x_2345);
  let x_2348 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2348, 0.10000000149011611938f);
  let x_2352 : f32 = u_xlat79;
  let x_2354 : f32 = u_xlat2.x;
  u_xlat79 = (x_2352 * x_2354);
  let x_2356 : f32 = u_xlat81;
  let x_2357 : f32 = u_xlat79;
  u_xlat79 = (x_2356 * x_2357);
  let x_2359 : f32 = u_xlat28;
  let x_2360 : f32 = u_xlat79;
  u_xlat79 = (x_2359 / x_2360);
  let x_2362 : vec4<f32> = u_xlat0;
  let x_2364 : f32 = u_xlat79;
  let x_2367 : vec4<f32> = u_xlat5;
  let x_2369 : vec3<f32> = ((vec3<f32>(x_2362.x, x_2362.y, x_2362.z) * vec3<f32>(x_2364, x_2364, x_2364)) + vec3<f32>(x_2367.x, x_2367.y, x_2367.z));
  let x_2370 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2369.x, x_2369.y, x_2369.z, x_2370.w);
  let x_2372 : vec4<f32> = u_xlat6;
  let x_2374 : vec4<f32> = u_xlat7;
  let x_2376 : vec3<f32> = (vec3<f32>(x_2372.x, x_2372.y, x_2372.z) * vec3<f32>(x_2374.x, x_2374.y, x_2374.z));
  let x_2377 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2376.x, x_2376.y, x_2376.z, x_2377.w);
  let x_2380 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2382 : f32 = x_349.unity_LightData.y;
  u_xlat79 = min(x_2380, x_2382);
  let x_2386 : f32 = u_xlat79;
  u_xlatu79 = bitcast<u32>(i32(x_2386));
  let x_2389 : f32 = u_xlat83;
  let x_2392 : f32 = x_690.x_AdditionalShadowFadeParams.x;
  let x_2395 : f32 = x_690.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2389 * x_2392) + x_2395);
  let x_2399 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2399, 0.0f, 1.0f);
  let x_2403 : f32 = x_2011.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2405 : f32 = x_2011.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2407 : f32 = x_2011.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2409 : f32 = x_2011.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2410 : vec4<f32> = vec4<f32>(x_2403, x_2405, x_2407, x_2409);
  let x_2416 : vec4<bool> = (vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2410.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2416.x, x_2416.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2428 : u32 = u_xlatu_loop_1;
    let x_2429 : u32 = u_xlatu79;
    if ((x_2428 < x_2429)) {
    } else {
      break;
    }
    let x_2432 : u32 = u_xlatu_loop_1;
    u_xlatu82 = (x_2432 >> 2u);
    let x_2436 : u32 = u_xlatu_loop_1;
    u_xlati83 = bitcast<i32>((x_2436 & 3u));
    let x_2439 : u32 = u_xlatu82;
    let x_2442 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2439)];
    let x_2452 : i32 = u_xlati83;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2457 : vec4<u32> = indexable[x_2452];
    u_xlat82 = dot(x_2442, bitcast<vec4<f32>>(x_2457));
    let x_2461 : f32 = u_xlat82;
    u_xlati82 = i32(x_2461);
    let x_2463 : vec3<f32> = vs_INTERP7;
    let x_2474 : i32 = u_xlati82;
    let x_2476 : vec4<f32> = x_2473.x_AdditionalLightsPosition[x_2474];
    let x_2479 : i32 = u_xlati82;
    let x_2481 : vec4<f32> = x_2473.x_AdditionalLightsPosition[x_2479];
    let x_2483 : vec3<f32> = ((-(x_2463) * vec3<f32>(x_2476.w, x_2476.w, x_2476.w)) + vec3<f32>(x_2481.x, x_2481.y, x_2481.z));
    let x_2484 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2483.x, x_2483.y, x_2483.z, x_2484.w);
    let x_2486 : vec4<f32> = u_xlat9;
    let x_2488 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2486.x, x_2486.y, x_2486.z), vec3<f32>(x_2488.x, x_2488.y, x_2488.z));
    let x_2491 : f32 = u_xlat83;
    u_xlat83 = max(x_2491, 0.00006103515625f);
    let x_2494 : f32 = u_xlat83;
    u_xlat84 = inverseSqrt(x_2494);
    let x_2496 : f32 = u_xlat84;
    let x_2498 : vec4<f32> = u_xlat9;
    let x_2500 : vec3<f32> = (vec3<f32>(x_2496, x_2496, x_2496) * vec3<f32>(x_2498.x, x_2498.y, x_2498.z));
    let x_2501 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2500.x, x_2500.y, x_2500.z, x_2501.w);
    let x_2504 : f32 = u_xlat83;
    u_xlat59 = (1.0f / x_2504);
    let x_2506 : f32 = u_xlat83;
    let x_2507 : i32 = u_xlati82;
    let x_2509 : f32 = x_2473.x_AdditionalLightsAttenuation[x_2507].x;
    u_xlat83 = (x_2506 * x_2509);
    let x_2511 : f32 = u_xlat83;
    let x_2513 : f32 = u_xlat83;
    u_xlat83 = ((-(x_2511) * x_2513) + 1.0f);
    let x_2516 : f32 = u_xlat83;
    u_xlat83 = max(x_2516, 0.0f);
    let x_2518 : f32 = u_xlat83;
    let x_2519 : f32 = u_xlat83;
    u_xlat83 = (x_2518 * x_2519);
    let x_2521 : f32 = u_xlat83;
    let x_2522 : f32 = u_xlat59;
    u_xlat83 = (x_2521 * x_2522);
    let x_2524 : i32 = u_xlati82;
    let x_2526 : vec4<f32> = x_2473.x_AdditionalLightsSpotDir[x_2524];
    let x_2528 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_2526.x, x_2526.y, x_2526.z), vec3<f32>(x_2528.x, x_2528.y, x_2528.z));
    let x_2531 : f32 = u_xlat59;
    let x_2532 : i32 = u_xlati82;
    let x_2534 : f32 = x_2473.x_AdditionalLightsAttenuation[x_2532].z;
    let x_2536 : i32 = u_xlati82;
    let x_2538 : f32 = x_2473.x_AdditionalLightsAttenuation[x_2536].w;
    u_xlat59 = ((x_2531 * x_2534) + x_2538);
    let x_2540 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2540, 0.0f, 1.0f);
    let x_2542 : f32 = u_xlat59;
    let x_2543 : f32 = u_xlat59;
    u_xlat59 = (x_2542 * x_2543);
    let x_2545 : f32 = u_xlat83;
    let x_2546 : f32 = u_xlat59;
    u_xlat83 = (x_2545 * x_2546);
    let x_2550 : i32 = u_xlati82;
    let x_2552 : f32 = x_690.x_AdditionalShadowParams[x_2550].w;
    u_xlati59 = i32(x_2552);
    let x_2555 : i32 = u_xlati59;
    u_xlatb85 = (x_2555 >= 0i);
    let x_2557 : bool = u_xlatb85;
    if (x_2557) {
      let x_2561 : i32 = u_xlati82;
      let x_2563 : f32 = x_690.x_AdditionalShadowParams[x_2561].z;
      u_xlatb85 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2563, x_2563, x_2563, x_2563))));
      let x_2567 : bool = u_xlatb85;
      if (x_2567) {
        let x_2572 : vec4<f32> = u_xlat10;
        let x_2575 : vec4<f32> = u_xlat10;
        let x_2578 : vec4<bool> = (abs(vec4<f32>(x_2572.z, x_2572.z, x_2572.y, x_2572.z)) >= abs(vec4<f32>(x_2575.x, x_2575.y, x_2575.x, x_2575.x)));
        let x_2580 : vec3<bool> = vec3<bool>(x_2578.x, x_2578.y, x_2578.z);
        let x_2581 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2580.x, x_2580.y, x_2580.z, x_2581.w);
        let x_2584 : bool = u_xlatb11.y;
        let x_2586 : bool = u_xlatb11.x;
        u_xlatb85 = (x_2584 & x_2586);
        let x_2588 : vec4<f32> = u_xlat10;
        let x_2591 : vec4<bool> = (-(vec4<f32>(x_2588.z, x_2588.y, x_2588.z, x_2588.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2592 : vec3<bool> = vec3<bool>(x_2591.x, x_2591.y, x_2591.w);
        let x_2593 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2592.x, x_2592.y, x_2593.z, x_2592.z);
        let x_2596 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2596);
        let x_2601 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2601);
        let x_2607 : bool = u_xlatb11.w;
        u_xlat87 = select(0.0f, 1.0f, x_2607);
        let x_2610 : bool = u_xlatb11.z;
        if (x_2610) {
          let x_2615 : f32 = u_xlat11.y;
          x_2611 = x_2615;
        } else {
          let x_2617 : f32 = u_xlat87;
          x_2611 = x_2617;
        }
        let x_2618 : f32 = x_2611;
        u_xlat87 = x_2618;
        let x_2619 : bool = u_xlatb85;
        if (x_2619) {
          let x_2624 : f32 = u_xlat11.x;
          x_2620 = x_2624;
        } else {
          let x_2626 : f32 = u_xlat87;
          x_2620 = x_2626;
        }
        let x_2627 : f32 = x_2620;
        u_xlat85 = x_2627;
        let x_2628 : i32 = u_xlati82;
        let x_2630 : f32 = x_690.x_AdditionalShadowParams[x_2628].w;
        u_xlat87 = trunc(x_2630);
        let x_2632 : f32 = u_xlat85;
        let x_2633 : f32 = u_xlat87;
        u_xlat85 = (x_2632 + x_2633);
        let x_2635 : f32 = u_xlat85;
        u_xlati59 = i32(x_2635);
      }
      let x_2637 : i32 = u_xlati59;
      u_xlati59 = (x_2637 << bitcast<u32>(2i));
      let x_2639 : vec3<f32> = vs_INTERP7;
      let x_2642 : i32 = u_xlati59;
      let x_2645 : i32 = u_xlati59;
      let x_2649 : vec4<f32> = x_690.x_AdditionalLightsWorldToShadow[((x_2642 + 1i) / 4i)][((x_2645 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2639.y, x_2639.y, x_2639.y, x_2639.y) * x_2649);
      let x_2651 : i32 = u_xlati59;
      let x_2653 : i32 = u_xlati59;
      let x_2656 : vec4<f32> = x_690.x_AdditionalLightsWorldToShadow[(x_2651 / 4i)][(x_2653 % 4i)];
      let x_2657 : vec3<f32> = vs_INTERP7;
      let x_2660 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2656 * vec4<f32>(x_2657.x, x_2657.x, x_2657.x, x_2657.x)) + x_2660);
      let x_2662 : i32 = u_xlati59;
      let x_2665 : i32 = u_xlati59;
      let x_2669 : vec4<f32> = x_690.x_AdditionalLightsWorldToShadow[((x_2662 + 2i) / 4i)][((x_2665 + 2i) % 4i)];
      let x_2670 : vec3<f32> = vs_INTERP7;
      let x_2673 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2669 * vec4<f32>(x_2670.z, x_2670.z, x_2670.z, x_2670.z)) + x_2673);
      let x_2675 : vec4<f32> = u_xlat11;
      let x_2676 : i32 = u_xlati59;
      let x_2679 : i32 = u_xlati59;
      let x_2683 : vec4<f32> = x_690.x_AdditionalLightsWorldToShadow[((x_2676 + 3i) / 4i)][((x_2679 + 3i) % 4i)];
      u_xlat11 = (x_2675 + x_2683);
      let x_2685 : vec4<f32> = u_xlat11;
      let x_2687 : vec4<f32> = u_xlat11;
      let x_2689 : vec3<f32> = (vec3<f32>(x_2685.x, x_2685.y, x_2685.z) / vec3<f32>(x_2687.w, x_2687.w, x_2687.w));
      let x_2690 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2689.x, x_2689.y, x_2689.z, x_2690.w);
      let x_2693 : i32 = u_xlati82;
      let x_2695 : f32 = x_690.x_AdditionalShadowParams[x_2693].y;
      u_xlatb59 = (0.0f < x_2695);
      let x_2697 : bool = u_xlatb59;
      if (x_2697) {
        let x_2700 : i32 = u_xlati82;
        let x_2702 : f32 = x_690.x_AdditionalShadowParams[x_2700].y;
        u_xlatb59 = (1.0f == x_2702);
        let x_2704 : bool = u_xlatb59;
        if (x_2704) {
          let x_2707 : vec4<f32> = u_xlat11;
          let x_2711 : vec4<f32> = x_690.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2707.x, x_2707.y, x_2707.x, x_2707.y) + x_2711);
          let x_2714 : vec4<f32> = u_xlat12;
          let x_2715 : vec2<f32> = vec2<f32>(x_2714.x, x_2714.y);
          let x_2717 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2715.x, x_2715.y, x_2717);
          let x_2725 : vec3<f32> = txVec30;
          let x_2727 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2725.xy, x_2725.z);
          u_xlat13.x = x_2727;
          let x_2730 : vec4<f32> = u_xlat12;
          let x_2731 : vec2<f32> = vec2<f32>(x_2730.z, x_2730.w);
          let x_2733 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2731.x, x_2731.y, x_2733);
          let x_2740 : vec3<f32> = txVec31;
          let x_2742 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2740.xy, x_2740.z);
          u_xlat13.y = x_2742;
          let x_2744 : vec4<f32> = u_xlat11;
          let x_2748 : vec4<f32> = x_690.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2744.x, x_2744.y, x_2744.x, x_2744.y) + x_2748);
          let x_2751 : vec4<f32> = u_xlat12;
          let x_2752 : vec2<f32> = vec2<f32>(x_2751.x, x_2751.y);
          let x_2754 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2752.x, x_2752.y, x_2754);
          let x_2761 : vec3<f32> = txVec32;
          let x_2763 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2761.xy, x_2761.z);
          u_xlat13.z = x_2763;
          let x_2766 : vec4<f32> = u_xlat12;
          let x_2767 : vec2<f32> = vec2<f32>(x_2766.z, x_2766.w);
          let x_2769 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2767.x, x_2767.y, x_2769);
          let x_2776 : vec3<f32> = txVec33;
          let x_2778 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2776.xy, x_2776.z);
          u_xlat13.w = x_2778;
          let x_2780 : vec4<f32> = u_xlat13;
          u_xlat59 = dot(x_2780, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2783 : i32 = u_xlati82;
          let x_2785 : f32 = x_690.x_AdditionalShadowParams[x_2783].y;
          u_xlatb85 = (2.0f == x_2785);
          let x_2787 : bool = u_xlatb85;
          if (x_2787) {
            let x_2790 : vec4<f32> = u_xlat11;
            let x_2794 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2797 : vec2<f32> = ((vec2<f32>(x_2790.x, x_2790.y) * vec2<f32>(x_2794.z, x_2794.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2798 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2797.x, x_2797.y, x_2798.z, x_2798.w);
            let x_2800 : vec4<f32> = u_xlat12;
            let x_2802 : vec2<f32> = floor(vec2<f32>(x_2800.x, x_2800.y));
            let x_2803 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2802.x, x_2802.y, x_2803.z, x_2803.w);
            let x_2806 : vec4<f32> = u_xlat11;
            let x_2809 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2812 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2806.x, x_2806.y) * vec2<f32>(x_2809.z, x_2809.w)) + -(vec2<f32>(x_2812.x, x_2812.y)));
            let x_2816 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2816.x, x_2816.x, x_2816.y, x_2816.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2819 : vec4<f32> = u_xlat13;
            let x_2821 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2819.x, x_2819.x, x_2819.z, x_2819.z) * vec4<f32>(x_2821.x, x_2821.x, x_2821.z, x_2821.z));
            let x_2824 : vec4<f32> = u_xlat14;
            let x_2826 : vec2<f32> = (vec2<f32>(x_2824.y, x_2824.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2827 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2826.x, x_2827.y, x_2826.y, x_2827.w);
            let x_2829 : vec4<f32> = u_xlat14;
            let x_2832 : vec2<f32> = u_xlat64;
            let x_2834 : vec2<f32> = ((vec2<f32>(x_2829.x, x_2829.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2832));
            let x_2835 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2834.x, x_2834.y, x_2835.z, x_2835.w);
            let x_2837 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2837) + vec2<f32>(1.0f, 1.0f));
            let x_2840 : vec2<f32> = u_xlat64;
            let x_2841 : vec2<f32> = min(x_2840, vec2<f32>(0.0f, 0.0f));
            let x_2842 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2841.x, x_2841.y, x_2842.z, x_2842.w);
            let x_2844 : vec4<f32> = u_xlat15;
            let x_2847 : vec4<f32> = u_xlat15;
            let x_2850 : vec2<f32> = u_xlat66;
            let x_2851 : vec2<f32> = ((-(vec2<f32>(x_2844.x, x_2844.y)) * vec2<f32>(x_2847.x, x_2847.y)) + x_2850);
            let x_2852 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2851.x, x_2851.y, x_2852.z, x_2852.w);
            let x_2854 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2854, vec2<f32>(0.0f, 0.0f));
            let x_2856 : vec2<f32> = u_xlat64;
            let x_2858 : vec2<f32> = u_xlat64;
            let x_2860 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2856) * x_2858) + vec2<f32>(x_2860.y, x_2860.w));
            let x_2863 : vec4<f32> = u_xlat15;
            let x_2865 : vec2<f32> = (vec2<f32>(x_2863.x, x_2863.y) + vec2<f32>(1.0f, 1.0f));
            let x_2866 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2865.x, x_2865.y, x_2866.z, x_2866.w);
            let x_2868 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2868 + vec2<f32>(1.0f, 1.0f));
            let x_2870 : vec4<f32> = u_xlat14;
            let x_2872 : vec2<f32> = (vec2<f32>(x_2870.x, x_2870.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2873 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2872.x, x_2872.y, x_2873.z, x_2873.w);
            let x_2875 : vec2<f32> = u_xlat66;
            let x_2876 : vec2<f32> = (x_2875 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2877 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2876.x, x_2876.y, x_2877.z, x_2877.w);
            let x_2879 : vec4<f32> = u_xlat15;
            let x_2881 : vec2<f32> = (vec2<f32>(x_2879.x, x_2879.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2882 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2881.x, x_2881.y, x_2882.z, x_2882.w);
            let x_2884 : vec2<f32> = u_xlat64;
            let x_2885 : vec2<f32> = (x_2884 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2886 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2885.x, x_2885.y, x_2886.z, x_2886.w);
            let x_2888 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2888.y, x_2888.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2892 : f32 = u_xlat15.x;
            u_xlat16.z = x_2892;
            let x_2895 : f32 = u_xlat64.x;
            u_xlat16.w = x_2895;
            let x_2898 : f32 = u_xlat17.x;
            u_xlat14.z = x_2898;
            let x_2901 : f32 = u_xlat13.x;
            u_xlat14.w = x_2901;
            let x_2903 : vec4<f32> = u_xlat14;
            let x_2905 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2903.z, x_2903.w, x_2903.x, x_2903.z) + vec4<f32>(x_2905.z, x_2905.w, x_2905.x, x_2905.z));
            let x_2909 : f32 = u_xlat16.y;
            u_xlat15.z = x_2909;
            let x_2912 : f32 = u_xlat64.y;
            u_xlat15.w = x_2912;
            let x_2915 : f32 = u_xlat14.y;
            u_xlat17.z = x_2915;
            let x_2918 : f32 = u_xlat13.z;
            u_xlat17.w = x_2918;
            let x_2920 : vec4<f32> = u_xlat15;
            let x_2922 : vec4<f32> = u_xlat17;
            let x_2924 : vec3<f32> = (vec3<f32>(x_2920.z, x_2920.y, x_2920.w) + vec3<f32>(x_2922.z, x_2922.y, x_2922.w));
            let x_2925 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2924.x, x_2924.y, x_2924.z, x_2925.w);
            let x_2927 : vec4<f32> = u_xlat14;
            let x_2929 : vec4<f32> = u_xlat18;
            let x_2931 : vec3<f32> = (vec3<f32>(x_2927.x, x_2927.z, x_2927.w) / vec3<f32>(x_2929.z, x_2929.w, x_2929.y));
            let x_2932 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2931.x, x_2931.y, x_2931.z, x_2932.w);
            let x_2934 : vec4<f32> = u_xlat14;
            let x_2936 : vec3<f32> = (vec3<f32>(x_2934.x, x_2934.y, x_2934.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2937 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2936.x, x_2936.y, x_2936.z, x_2937.w);
            let x_2939 : vec4<f32> = u_xlat17;
            let x_2941 : vec4<f32> = u_xlat13;
            let x_2943 : vec3<f32> = (vec3<f32>(x_2939.z, x_2939.y, x_2939.w) / vec3<f32>(x_2941.x, x_2941.y, x_2941.z));
            let x_2944 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2943.x, x_2943.y, x_2943.z, x_2944.w);
            let x_2946 : vec4<f32> = u_xlat15;
            let x_2948 : vec3<f32> = (vec3<f32>(x_2946.x, x_2946.y, x_2946.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2949 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2948.x, x_2948.y, x_2948.z, x_2949.w);
            let x_2951 : vec4<f32> = u_xlat14;
            let x_2954 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2956 : vec3<f32> = (vec3<f32>(x_2951.y, x_2951.x, x_2951.z) * vec3<f32>(x_2954.x, x_2954.x, x_2954.x));
            let x_2957 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2956.x, x_2956.y, x_2956.z, x_2957.w);
            let x_2959 : vec4<f32> = u_xlat15;
            let x_2962 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2964 : vec3<f32> = (vec3<f32>(x_2959.x, x_2959.y, x_2959.z) * vec3<f32>(x_2962.y, x_2962.y, x_2962.y));
            let x_2965 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2964.x, x_2964.y, x_2964.z, x_2965.w);
            let x_2968 : f32 = u_xlat15.x;
            u_xlat14.w = x_2968;
            let x_2970 : vec4<f32> = u_xlat12;
            let x_2973 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2976 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2970.x, x_2970.y, x_2970.x, x_2970.y) * vec4<f32>(x_2973.x, x_2973.y, x_2973.x, x_2973.y)) + vec4<f32>(x_2976.y, x_2976.w, x_2976.x, x_2976.w));
            let x_2979 : vec4<f32> = u_xlat12;
            let x_2982 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2985 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2979.x, x_2979.y) * vec2<f32>(x_2982.x, x_2982.y)) + vec2<f32>(x_2985.z, x_2985.w));
            let x_2989 : f32 = u_xlat14.y;
            u_xlat15.w = x_2989;
            let x_2991 : vec4<f32> = u_xlat15;
            let x_2992 : vec2<f32> = vec2<f32>(x_2991.y, x_2991.z);
            let x_2993 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2993.x, x_2992.x, x_2993.z, x_2992.y);
            let x_2995 : vec4<f32> = u_xlat12;
            let x_2998 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3001 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2995.x, x_2995.y, x_2995.x, x_2995.y) * vec4<f32>(x_2998.x, x_2998.y, x_2998.x, x_2998.y)) + vec4<f32>(x_3001.x, x_3001.y, x_3001.z, x_3001.y));
            let x_3004 : vec4<f32> = u_xlat12;
            let x_3007 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3010 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_3004.x, x_3004.y, x_3004.x, x_3004.y) * vec4<f32>(x_3007.x, x_3007.y, x_3007.x, x_3007.y)) + vec4<f32>(x_3010.w, x_3010.y, x_3010.w, x_3010.z));
            let x_3013 : vec4<f32> = u_xlat12;
            let x_3016 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3019 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_3013.x, x_3013.y, x_3013.x, x_3013.y) * vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y)) + vec4<f32>(x_3019.x, x_3019.w, x_3019.z, x_3019.w));
            let x_3022 : vec4<f32> = u_xlat13;
            let x_3024 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_3022.x, x_3022.x, x_3022.x, x_3022.y) * vec4<f32>(x_3024.z, x_3024.w, x_3024.y, x_3024.z));
            let x_3028 : vec4<f32> = u_xlat13;
            let x_3030 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_3028.y, x_3028.y, x_3028.z, x_3028.z) * x_3030);
            let x_3033 : f32 = u_xlat13.z;
            let x_3035 : f32 = u_xlat18.y;
            u_xlat85 = (x_3033 * x_3035);
            let x_3038 : vec4<f32> = u_xlat16;
            let x_3039 : vec2<f32> = vec2<f32>(x_3038.x, x_3038.y);
            let x_3041 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_3039.x, x_3039.y, x_3041);
            let x_3048 : vec3<f32> = txVec34;
            let x_3050 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3048.xy, x_3048.z);
            u_xlat87 = x_3050;
            let x_3052 : vec4<f32> = u_xlat16;
            let x_3053 : vec2<f32> = vec2<f32>(x_3052.z, x_3052.w);
            let x_3055 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_3053.x, x_3053.y, x_3055);
            let x_3063 : vec3<f32> = txVec35;
            let x_3065 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3063.xy, x_3063.z);
            u_xlat88 = x_3065;
            let x_3066 : f32 = u_xlat88;
            let x_3068 : f32 = u_xlat19.y;
            u_xlat88 = (x_3066 * x_3068);
            let x_3071 : f32 = u_xlat19.x;
            let x_3072 : f32 = u_xlat87;
            let x_3074 : f32 = u_xlat88;
            u_xlat87 = ((x_3071 * x_3072) + x_3074);
            let x_3077 : vec2<f32> = u_xlat64;
            let x_3079 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
            let x_3086 : vec3<f32> = txVec36;
            let x_3088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3086.xy, x_3086.z);
            u_xlat88 = x_3088;
            let x_3090 : f32 = u_xlat19.z;
            let x_3091 : f32 = u_xlat88;
            let x_3093 : f32 = u_xlat87;
            u_xlat87 = ((x_3090 * x_3091) + x_3093);
            let x_3096 : vec4<f32> = u_xlat15;
            let x_3097 : vec2<f32> = vec2<f32>(x_3096.x, x_3096.y);
            let x_3099 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_3097.x, x_3097.y, x_3099);
            let x_3106 : vec3<f32> = txVec37;
            let x_3108 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3106.xy, x_3106.z);
            u_xlat88 = x_3108;
            let x_3110 : f32 = u_xlat19.w;
            let x_3111 : f32 = u_xlat88;
            let x_3113 : f32 = u_xlat87;
            u_xlat87 = ((x_3110 * x_3111) + x_3113);
            let x_3116 : vec4<f32> = u_xlat17;
            let x_3117 : vec2<f32> = vec2<f32>(x_3116.x, x_3116.y);
            let x_3119 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_3117.x, x_3117.y, x_3119);
            let x_3126 : vec3<f32> = txVec38;
            let x_3128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3126.xy, x_3126.z);
            u_xlat88 = x_3128;
            let x_3130 : f32 = u_xlat20.x;
            let x_3131 : f32 = u_xlat88;
            let x_3133 : f32 = u_xlat87;
            u_xlat87 = ((x_3130 * x_3131) + x_3133);
            let x_3136 : vec4<f32> = u_xlat17;
            let x_3137 : vec2<f32> = vec2<f32>(x_3136.z, x_3136.w);
            let x_3139 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_3137.x, x_3137.y, x_3139);
            let x_3146 : vec3<f32> = txVec39;
            let x_3148 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3146.xy, x_3146.z);
            u_xlat88 = x_3148;
            let x_3150 : f32 = u_xlat20.y;
            let x_3151 : f32 = u_xlat88;
            let x_3153 : f32 = u_xlat87;
            u_xlat87 = ((x_3150 * x_3151) + x_3153);
            let x_3156 : vec4<f32> = u_xlat15;
            let x_3157 : vec2<f32> = vec2<f32>(x_3156.z, x_3156.w);
            let x_3159 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3157.x, x_3157.y, x_3159);
            let x_3166 : vec3<f32> = txVec40;
            let x_3168 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3166.xy, x_3166.z);
            u_xlat88 = x_3168;
            let x_3170 : f32 = u_xlat20.z;
            let x_3171 : f32 = u_xlat88;
            let x_3173 : f32 = u_xlat87;
            u_xlat87 = ((x_3170 * x_3171) + x_3173);
            let x_3176 : vec4<f32> = u_xlat14;
            let x_3177 : vec2<f32> = vec2<f32>(x_3176.x, x_3176.y);
            let x_3179 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3177.x, x_3177.y, x_3179);
            let x_3186 : vec3<f32> = txVec41;
            let x_3188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3186.xy, x_3186.z);
            u_xlat88 = x_3188;
            let x_3190 : f32 = u_xlat20.w;
            let x_3191 : f32 = u_xlat88;
            let x_3193 : f32 = u_xlat87;
            u_xlat87 = ((x_3190 * x_3191) + x_3193);
            let x_3196 : vec4<f32> = u_xlat14;
            let x_3197 : vec2<f32> = vec2<f32>(x_3196.z, x_3196.w);
            let x_3199 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3197.x, x_3197.y, x_3199);
            let x_3206 : vec3<f32> = txVec42;
            let x_3208 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3206.xy, x_3206.z);
            u_xlat88 = x_3208;
            let x_3209 : f32 = u_xlat85;
            let x_3210 : f32 = u_xlat88;
            let x_3212 : f32 = u_xlat87;
            u_xlat59 = ((x_3209 * x_3210) + x_3212);
          } else {
            let x_3215 : vec4<f32> = u_xlat11;
            let x_3218 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3221 : vec2<f32> = ((vec2<f32>(x_3215.x, x_3215.y) * vec2<f32>(x_3218.z, x_3218.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3222 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3221.x, x_3221.y, x_3222.z, x_3222.w);
            let x_3224 : vec4<f32> = u_xlat12;
            let x_3226 : vec2<f32> = floor(vec2<f32>(x_3224.x, x_3224.y));
            let x_3227 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3226.x, x_3226.y, x_3227.z, x_3227.w);
            let x_3229 : vec4<f32> = u_xlat11;
            let x_3232 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3235 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3229.x, x_3229.y) * vec2<f32>(x_3232.z, x_3232.w)) + -(vec2<f32>(x_3235.x, x_3235.y)));
            let x_3239 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3239.x, x_3239.x, x_3239.y, x_3239.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3242 : vec4<f32> = u_xlat13;
            let x_3244 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3242.x, x_3242.x, x_3242.z, x_3242.z) * vec4<f32>(x_3244.x, x_3244.x, x_3244.z, x_3244.z));
            let x_3247 : vec4<f32> = u_xlat14;
            let x_3249 : vec2<f32> = (vec2<f32>(x_3247.y, x_3247.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3250 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3250.x, x_3249.x, x_3250.z, x_3249.y);
            let x_3252 : vec4<f32> = u_xlat14;
            let x_3255 : vec2<f32> = u_xlat64;
            let x_3257 : vec2<f32> = ((vec2<f32>(x_3252.x, x_3252.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3255));
            let x_3258 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3257.x, x_3258.y, x_3257.y, x_3258.w);
            let x_3260 : vec2<f32> = u_xlat64;
            let x_3262 : vec2<f32> = (-(x_3260) + vec2<f32>(1.0f, 1.0f));
            let x_3263 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3262.x, x_3262.y, x_3263.z, x_3263.w);
            let x_3265 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3265, vec2<f32>(0.0f, 0.0f));
            let x_3267 : vec2<f32> = u_xlat66;
            let x_3269 : vec2<f32> = u_xlat66;
            let x_3271 : vec4<f32> = u_xlat14;
            let x_3273 : vec2<f32> = ((-(x_3267) * x_3269) + vec2<f32>(x_3271.x, x_3271.y));
            let x_3274 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3273.x, x_3273.y, x_3274.z, x_3274.w);
            let x_3276 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3276, vec2<f32>(0.0f, 0.0f));
            let x_3279 : vec2<f32> = u_xlat66;
            let x_3281 : vec2<f32> = u_xlat66;
            let x_3283 : vec4<f32> = u_xlat13;
            let x_3285 : vec2<f32> = ((-(x_3279) * x_3281) + vec2<f32>(x_3283.y, x_3283.w));
            let x_3286 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3285.x, x_3286.y, x_3285.y);
            let x_3288 : vec4<f32> = u_xlat14;
            let x_3290 : vec2<f32> = (vec2<f32>(x_3288.x, x_3288.y) + vec2<f32>(2.0f, 2.0f));
            let x_3291 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3290.x, x_3290.y, x_3291.z, x_3291.w);
            let x_3293 : vec3<f32> = u_xlat39;
            let x_3295 : vec2<f32> = (vec2<f32>(x_3293.x, x_3293.z) + vec2<f32>(2.0f, 2.0f));
            let x_3296 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3296.x, x_3295.x, x_3296.z, x_3295.y);
            let x_3299 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3299 * 0.08163200318813323975f);
            let x_3302 : vec4<f32> = u_xlat13;
            let x_3304 : vec3<f32> = (vec3<f32>(x_3302.z, x_3302.x, x_3302.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3305 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3304.x, x_3304.y, x_3304.z, x_3305.w);
            let x_3307 : vec4<f32> = u_xlat14;
            let x_3309 : vec2<f32> = (vec2<f32>(x_3307.x, x_3307.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3310 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3309.x, x_3309.y, x_3310.z, x_3310.w);
            let x_3313 : f32 = u_xlat17.y;
            u_xlat16.x = x_3313;
            let x_3315 : vec2<f32> = u_xlat64;
            let x_3318 : vec2<f32> = ((vec2<f32>(x_3315.x, x_3315.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3319 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3319.x, x_3318.x, x_3319.z, x_3318.y);
            let x_3321 : vec2<f32> = u_xlat64;
            let x_3324 : vec2<f32> = ((vec2<f32>(x_3321.x, x_3321.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3325 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3324.x, x_3325.y, x_3324.y, x_3325.w);
            let x_3328 : f32 = u_xlat13.x;
            u_xlat14.y = x_3328;
            let x_3331 : f32 = u_xlat15.y;
            u_xlat14.w = x_3331;
            let x_3333 : vec4<f32> = u_xlat14;
            let x_3334 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3333 + x_3334);
            let x_3336 : vec2<f32> = u_xlat64;
            let x_3339 : vec2<f32> = ((vec2<f32>(x_3336.y, x_3336.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3340 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3340.x, x_3339.x, x_3340.z, x_3339.y);
            let x_3342 : vec2<f32> = u_xlat64;
            let x_3345 : vec2<f32> = ((vec2<f32>(x_3342.y, x_3342.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3346 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3345.x, x_3346.y, x_3345.y, x_3346.w);
            let x_3349 : f32 = u_xlat13.y;
            u_xlat15.y = x_3349;
            let x_3351 : vec4<f32> = u_xlat15;
            let x_3352 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3351 + x_3352);
            let x_3354 : vec4<f32> = u_xlat14;
            let x_3355 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3354 / x_3355);
            let x_3357 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3357 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3359 : vec4<f32> = u_xlat15;
            let x_3360 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3359 / x_3360);
            let x_3362 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3362 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3364 : vec4<f32> = u_xlat14;
            let x_3367 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3364.w, x_3364.x, x_3364.y, x_3364.z) * vec4<f32>(x_3367.x, x_3367.x, x_3367.x, x_3367.x));
            let x_3370 : vec4<f32> = u_xlat15;
            let x_3373 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3370.x, x_3370.w, x_3370.y, x_3370.z) * vec4<f32>(x_3373.y, x_3373.y, x_3373.y, x_3373.y));
            let x_3376 : vec4<f32> = u_xlat14;
            let x_3377 : vec3<f32> = vec3<f32>(x_3376.y, x_3376.z, x_3376.w);
            let x_3378 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3377.x, x_3378.y, x_3377.y, x_3377.z);
            let x_3381 : f32 = u_xlat15.x;
            u_xlat17.y = x_3381;
            let x_3383 : vec4<f32> = u_xlat12;
            let x_3386 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3389 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3383.x, x_3383.y, x_3383.x, x_3383.y) * vec4<f32>(x_3386.x, x_3386.y, x_3386.x, x_3386.y)) + vec4<f32>(x_3389.x, x_3389.y, x_3389.z, x_3389.y));
            let x_3392 : vec4<f32> = u_xlat12;
            let x_3395 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3398 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3392.x, x_3392.y) * vec2<f32>(x_3395.x, x_3395.y)) + vec2<f32>(x_3398.w, x_3398.y));
            let x_3402 : f32 = u_xlat17.y;
            u_xlat14.y = x_3402;
            let x_3405 : f32 = u_xlat15.z;
            u_xlat17.y = x_3405;
            let x_3407 : vec4<f32> = u_xlat12;
            let x_3410 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3413 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3407.x, x_3407.y, x_3407.x, x_3407.y) * vec4<f32>(x_3410.x, x_3410.y, x_3410.x, x_3410.y)) + vec4<f32>(x_3413.x, x_3413.y, x_3413.z, x_3413.y));
            let x_3416 : vec4<f32> = u_xlat12;
            let x_3419 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3422 : vec4<f32> = u_xlat17;
            let x_3424 : vec2<f32> = ((vec2<f32>(x_3416.x, x_3416.y) * vec2<f32>(x_3419.x, x_3419.y)) + vec2<f32>(x_3422.w, x_3422.y));
            let x_3425 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3424.x, x_3424.y, x_3425.z, x_3425.w);
            let x_3428 : f32 = u_xlat17.y;
            u_xlat14.z = x_3428;
            let x_3431 : vec4<f32> = u_xlat12;
            let x_3434 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3437 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3431.x, x_3431.y, x_3431.x, x_3431.y) * vec4<f32>(x_3434.x, x_3434.y, x_3434.x, x_3434.y)) + vec4<f32>(x_3437.x, x_3437.y, x_3437.x, x_3437.z));
            let x_3441 : f32 = u_xlat15.w;
            u_xlat17.y = x_3441;
            let x_3444 : vec4<f32> = u_xlat12;
            let x_3447 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3450 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3444.x, x_3444.y, x_3444.x, x_3444.y) * vec4<f32>(x_3447.x, x_3447.y, x_3447.x, x_3447.y)) + vec4<f32>(x_3450.x, x_3450.y, x_3450.z, x_3450.y));
            let x_3454 : vec4<f32> = u_xlat12;
            let x_3457 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3460 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3454.x, x_3454.y) * vec2<f32>(x_3457.x, x_3457.y)) + vec2<f32>(x_3460.w, x_3460.y));
            let x_3464 : f32 = u_xlat17.y;
            u_xlat14.w = x_3464;
            let x_3467 : vec4<f32> = u_xlat12;
            let x_3470 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3473 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3467.x, x_3467.y) * vec2<f32>(x_3470.x, x_3470.y)) + vec2<f32>(x_3473.x, x_3473.w));
            let x_3476 : vec4<f32> = u_xlat17;
            let x_3477 : vec3<f32> = vec3<f32>(x_3476.x, x_3476.z, x_3476.w);
            let x_3478 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3477.x, x_3478.y, x_3477.y, x_3477.z);
            let x_3480 : vec4<f32> = u_xlat12;
            let x_3483 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3486 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3480.x, x_3480.y, x_3480.x, x_3480.y) * vec4<f32>(x_3483.x, x_3483.y, x_3483.x, x_3483.y)) + vec4<f32>(x_3486.x, x_3486.y, x_3486.z, x_3486.y));
            let x_3490 : vec4<f32> = u_xlat12;
            let x_3493 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3496 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3490.x, x_3490.y) * vec2<f32>(x_3493.x, x_3493.y)) + vec2<f32>(x_3496.w, x_3496.y));
            let x_3500 : f32 = u_xlat14.x;
            u_xlat15.x = x_3500;
            let x_3502 : vec4<f32> = u_xlat12;
            let x_3505 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3508 : vec4<f32> = u_xlat15;
            let x_3510 : vec2<f32> = ((vec2<f32>(x_3502.x, x_3502.y) * vec2<f32>(x_3505.x, x_3505.y)) + vec2<f32>(x_3508.x, x_3508.y));
            let x_3511 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3510.x, x_3510.y, x_3511.z, x_3511.w);
            let x_3514 : vec4<f32> = u_xlat13;
            let x_3516 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3514.x, x_3514.x, x_3514.x, x_3514.x) * x_3516);
            let x_3519 : vec4<f32> = u_xlat13;
            let x_3521 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3519.y, x_3519.y, x_3519.y, x_3519.y) * x_3521);
            let x_3524 : vec4<f32> = u_xlat13;
            let x_3526 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3524.z, x_3524.z, x_3524.z, x_3524.z) * x_3526);
            let x_3528 : vec4<f32> = u_xlat13;
            let x_3530 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3528.w, x_3528.w, x_3528.w, x_3528.w) * x_3530);
            let x_3533 : vec4<f32> = u_xlat18;
            let x_3534 : vec2<f32> = vec2<f32>(x_3533.x, x_3533.y);
            let x_3536 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3534.x, x_3534.y, x_3536);
            let x_3543 : vec3<f32> = txVec43;
            let x_3545 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3543.xy, x_3543.z);
            u_xlat85 = x_3545;
            let x_3547 : vec4<f32> = u_xlat18;
            let x_3548 : vec2<f32> = vec2<f32>(x_3547.z, x_3547.w);
            let x_3550 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3548.x, x_3548.y, x_3550);
            let x_3557 : vec3<f32> = txVec44;
            let x_3559 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3557.xy, x_3557.z);
            u_xlat87 = x_3559;
            let x_3560 : f32 = u_xlat87;
            let x_3562 : f32 = u_xlat23.y;
            u_xlat87 = (x_3560 * x_3562);
            let x_3565 : f32 = u_xlat23.x;
            let x_3566 : f32 = u_xlat85;
            let x_3568 : f32 = u_xlat87;
            u_xlat85 = ((x_3565 * x_3566) + x_3568);
            let x_3571 : vec2<f32> = u_xlat64;
            let x_3573 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3571.x, x_3571.y, x_3573);
            let x_3580 : vec3<f32> = txVec45;
            let x_3582 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3580.xy, x_3580.z);
            u_xlat87 = x_3582;
            let x_3584 : f32 = u_xlat23.z;
            let x_3585 : f32 = u_xlat87;
            let x_3587 : f32 = u_xlat85;
            u_xlat85 = ((x_3584 * x_3585) + x_3587);
            let x_3590 : vec4<f32> = u_xlat21;
            let x_3591 : vec2<f32> = vec2<f32>(x_3590.x, x_3590.y);
            let x_3593 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3591.x, x_3591.y, x_3593);
            let x_3600 : vec3<f32> = txVec46;
            let x_3602 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3600.xy, x_3600.z);
            u_xlat87 = x_3602;
            let x_3604 : f32 = u_xlat23.w;
            let x_3605 : f32 = u_xlat87;
            let x_3607 : f32 = u_xlat85;
            u_xlat85 = ((x_3604 * x_3605) + x_3607);
            let x_3610 : vec4<f32> = u_xlat19;
            let x_3611 : vec2<f32> = vec2<f32>(x_3610.x, x_3610.y);
            let x_3613 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3611.x, x_3611.y, x_3613);
            let x_3620 : vec3<f32> = txVec47;
            let x_3622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3620.xy, x_3620.z);
            u_xlat87 = x_3622;
            let x_3624 : f32 = u_xlat24.x;
            let x_3625 : f32 = u_xlat87;
            let x_3627 : f32 = u_xlat85;
            u_xlat85 = ((x_3624 * x_3625) + x_3627);
            let x_3630 : vec4<f32> = u_xlat19;
            let x_3631 : vec2<f32> = vec2<f32>(x_3630.z, x_3630.w);
            let x_3633 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3631.x, x_3631.y, x_3633);
            let x_3640 : vec3<f32> = txVec48;
            let x_3642 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3640.xy, x_3640.z);
            u_xlat87 = x_3642;
            let x_3644 : f32 = u_xlat24.y;
            let x_3645 : f32 = u_xlat87;
            let x_3647 : f32 = u_xlat85;
            u_xlat85 = ((x_3644 * x_3645) + x_3647);
            let x_3650 : vec4<f32> = u_xlat20;
            let x_3651 : vec2<f32> = vec2<f32>(x_3650.x, x_3650.y);
            let x_3653 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3651.x, x_3651.y, x_3653);
            let x_3660 : vec3<f32> = txVec49;
            let x_3662 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3660.xy, x_3660.z);
            u_xlat87 = x_3662;
            let x_3664 : f32 = u_xlat24.z;
            let x_3665 : f32 = u_xlat87;
            let x_3667 : f32 = u_xlat85;
            u_xlat85 = ((x_3664 * x_3665) + x_3667);
            let x_3670 : vec4<f32> = u_xlat21;
            let x_3671 : vec2<f32> = vec2<f32>(x_3670.z, x_3670.w);
            let x_3673 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3671.x, x_3671.y, x_3673);
            let x_3680 : vec3<f32> = txVec50;
            let x_3682 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3680.xy, x_3680.z);
            u_xlat87 = x_3682;
            let x_3684 : f32 = u_xlat24.w;
            let x_3685 : f32 = u_xlat87;
            let x_3687 : f32 = u_xlat85;
            u_xlat85 = ((x_3684 * x_3685) + x_3687);
            let x_3690 : vec4<f32> = u_xlat22;
            let x_3691 : vec2<f32> = vec2<f32>(x_3690.x, x_3690.y);
            let x_3693 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3691.x, x_3691.y, x_3693);
            let x_3700 : vec3<f32> = txVec51;
            let x_3702 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3700.xy, x_3700.z);
            u_xlat87 = x_3702;
            let x_3704 : f32 = u_xlat25.x;
            let x_3705 : f32 = u_xlat87;
            let x_3707 : f32 = u_xlat85;
            u_xlat85 = ((x_3704 * x_3705) + x_3707);
            let x_3710 : vec4<f32> = u_xlat22;
            let x_3711 : vec2<f32> = vec2<f32>(x_3710.z, x_3710.w);
            let x_3713 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3711.x, x_3711.y, x_3713);
            let x_3720 : vec3<f32> = txVec52;
            let x_3722 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3720.xy, x_3720.z);
            u_xlat87 = x_3722;
            let x_3724 : f32 = u_xlat25.y;
            let x_3725 : f32 = u_xlat87;
            let x_3727 : f32 = u_xlat85;
            u_xlat85 = ((x_3724 * x_3725) + x_3727);
            let x_3730 : vec2<f32> = u_xlat40;
            let x_3732 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3730.x, x_3730.y, x_3732);
            let x_3739 : vec3<f32> = txVec53;
            let x_3741 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3739.xy, x_3739.z);
            u_xlat87 = x_3741;
            let x_3743 : f32 = u_xlat25.z;
            let x_3744 : f32 = u_xlat87;
            let x_3746 : f32 = u_xlat85;
            u_xlat85 = ((x_3743 * x_3744) + x_3746);
            let x_3749 : vec2<f32> = u_xlat72;
            let x_3751 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3749.x, x_3749.y, x_3751);
            let x_3758 : vec3<f32> = txVec54;
            let x_3760 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3758.xy, x_3758.z);
            u_xlat87 = x_3760;
            let x_3762 : f32 = u_xlat25.w;
            let x_3763 : f32 = u_xlat87;
            let x_3765 : f32 = u_xlat85;
            u_xlat85 = ((x_3762 * x_3763) + x_3765);
            let x_3768 : vec4<f32> = u_xlat17;
            let x_3769 : vec2<f32> = vec2<f32>(x_3768.x, x_3768.y);
            let x_3771 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3769.x, x_3769.y, x_3771);
            let x_3778 : vec3<f32> = txVec55;
            let x_3780 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3778.xy, x_3778.z);
            u_xlat87 = x_3780;
            let x_3782 : f32 = u_xlat13.x;
            let x_3783 : f32 = u_xlat87;
            let x_3785 : f32 = u_xlat85;
            u_xlat85 = ((x_3782 * x_3783) + x_3785);
            let x_3788 : vec4<f32> = u_xlat17;
            let x_3789 : vec2<f32> = vec2<f32>(x_3788.z, x_3788.w);
            let x_3791 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3789.x, x_3789.y, x_3791);
            let x_3798 : vec3<f32> = txVec56;
            let x_3800 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3798.xy, x_3798.z);
            u_xlat87 = x_3800;
            let x_3802 : f32 = u_xlat13.y;
            let x_3803 : f32 = u_xlat87;
            let x_3805 : f32 = u_xlat85;
            u_xlat85 = ((x_3802 * x_3803) + x_3805);
            let x_3808 : vec2<f32> = u_xlat67;
            let x_3810 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3808.x, x_3808.y, x_3810);
            let x_3817 : vec3<f32> = txVec57;
            let x_3819 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3817.xy, x_3817.z);
            u_xlat87 = x_3819;
            let x_3821 : f32 = u_xlat13.z;
            let x_3822 : f32 = u_xlat87;
            let x_3824 : f32 = u_xlat85;
            u_xlat85 = ((x_3821 * x_3822) + x_3824);
            let x_3827 : vec4<f32> = u_xlat12;
            let x_3828 : vec2<f32> = vec2<f32>(x_3827.x, x_3827.y);
            let x_3830 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3828.x, x_3828.y, x_3830);
            let x_3837 : vec3<f32> = txVec58;
            let x_3839 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3837.xy, x_3837.z);
            u_xlat87 = x_3839;
            let x_3841 : f32 = u_xlat13.w;
            let x_3842 : f32 = u_xlat87;
            let x_3844 : f32 = u_xlat85;
            u_xlat59 = ((x_3841 * x_3842) + x_3844);
          }
        }
      } else {
        let x_3848 : vec4<f32> = u_xlat11;
        let x_3849 : vec2<f32> = vec2<f32>(x_3848.x, x_3848.y);
        let x_3851 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3849.x, x_3849.y, x_3851);
        let x_3858 : vec3<f32> = txVec59;
        let x_3860 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3858.xy, x_3858.z);
        u_xlat59 = x_3860;
      }
      let x_3861 : i32 = u_xlati82;
      let x_3863 : f32 = x_690.x_AdditionalShadowParams[x_3861].x;
      u_xlat85 = (1.0f + -(x_3863));
      let x_3866 : f32 = u_xlat59;
      let x_3867 : i32 = u_xlati82;
      let x_3869 : f32 = x_690.x_AdditionalShadowParams[x_3867].x;
      let x_3871 : f32 = u_xlat85;
      u_xlat59 = ((x_3866 * x_3869) + x_3871);
      let x_3874 : f32 = u_xlat11.z;
      u_xlatb85 = (0.0f >= x_3874);
      let x_3878 : f32 = u_xlat11.z;
      u_xlatb87 = (x_3878 >= 1.0f);
      let x_3880 : bool = u_xlatb85;
      let x_3881 : bool = u_xlatb87;
      u_xlatb85 = (x_3880 | x_3881);
      let x_3883 : bool = u_xlatb85;
      let x_3884 : f32 = u_xlat59;
      u_xlat59 = select(x_3884, 1.0f, x_3883);
    } else {
      u_xlat59 = 1.0f;
    }
    let x_3887 : f32 = u_xlat59;
    u_xlat85 = (-(x_3887) + 1.0f);
    let x_3891 : f32 = u_xlat2.x;
    let x_3892 : f32 = u_xlat85;
    let x_3894 : f32 = u_xlat59;
    u_xlat59 = ((x_3891 * x_3892) + x_3894);
    let x_3897 : i32 = u_xlati82;
    u_xlati85 = (1i << bitcast<u32>((x_3897 & 31i)));
    let x_3901 : i32 = u_xlati85;
    let x_3904 : f32 = x_2011.x_AdditionalLightsCookieEnableBits;
    u_xlati85 = bitcast<i32>((bitcast<u32>(x_3901) & bitcast<u32>(x_3904)));
    let x_3908 : i32 = u_xlati85;
    if ((x_3908 != 0i)) {
      let x_3912 : i32 = u_xlati82;
      let x_3914 : f32 = x_2011.x_AdditionalLightsLightTypes[x_3912].el;
      u_xlati85 = i32(x_3914);
      let x_3917 : i32 = u_xlati85;
      u_xlati87 = select(1i, 0i, (x_3917 != 0i));
      let x_3921 : i32 = u_xlati82;
      u_xlati88 = (x_3921 << bitcast<u32>(2i));
      let x_3923 : i32 = u_xlati87;
      if ((x_3923 != 0i)) {
        let x_3927 : vec3<f32> = vs_INTERP7;
        let x_3929 : i32 = u_xlati88;
        let x_3932 : i32 = u_xlati88;
        let x_3936 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[((x_3929 + 1i) / 4i)][((x_3932 + 1i) % 4i)];
        let x_3938 : vec3<f32> = (vec3<f32>(x_3927.y, x_3927.y, x_3927.y) * vec3<f32>(x_3936.x, x_3936.y, x_3936.w));
        let x_3939 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3938.x, x_3938.y, x_3938.z, x_3939.w);
        let x_3941 : i32 = u_xlati88;
        let x_3943 : i32 = u_xlati88;
        let x_3946 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[(x_3941 / 4i)][(x_3943 % 4i)];
        let x_3948 : vec3<f32> = vs_INTERP7;
        let x_3951 : vec4<f32> = u_xlat11;
        let x_3953 : vec3<f32> = ((vec3<f32>(x_3946.x, x_3946.y, x_3946.w) * vec3<f32>(x_3948.x, x_3948.x, x_3948.x)) + vec3<f32>(x_3951.x, x_3951.y, x_3951.z));
        let x_3954 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3953.x, x_3953.y, x_3953.z, x_3954.w);
        let x_3956 : i32 = u_xlati88;
        let x_3959 : i32 = u_xlati88;
        let x_3963 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[((x_3956 + 2i) / 4i)][((x_3959 + 2i) % 4i)];
        let x_3965 : vec3<f32> = vs_INTERP7;
        let x_3968 : vec4<f32> = u_xlat11;
        let x_3970 : vec3<f32> = ((vec3<f32>(x_3963.x, x_3963.y, x_3963.w) * vec3<f32>(x_3965.z, x_3965.z, x_3965.z)) + vec3<f32>(x_3968.x, x_3968.y, x_3968.z));
        let x_3971 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3970.x, x_3970.y, x_3970.z, x_3971.w);
        let x_3973 : vec4<f32> = u_xlat11;
        let x_3975 : i32 = u_xlati88;
        let x_3978 : i32 = u_xlati88;
        let x_3982 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[((x_3975 + 3i) / 4i)][((x_3978 + 3i) % 4i)];
        let x_3984 : vec3<f32> = (vec3<f32>(x_3973.x, x_3973.y, x_3973.z) + vec3<f32>(x_3982.x, x_3982.y, x_3982.w));
        let x_3985 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3984.x, x_3984.y, x_3984.z, x_3985.w);
        let x_3987 : vec4<f32> = u_xlat11;
        let x_3989 : vec4<f32> = u_xlat11;
        let x_3991 : vec2<f32> = (vec2<f32>(x_3987.x, x_3987.y) / vec2<f32>(x_3989.z, x_3989.z));
        let x_3992 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3991.x, x_3991.y, x_3992.z, x_3992.w);
        let x_3994 : vec4<f32> = u_xlat11;
        let x_3997 : vec2<f32> = ((vec2<f32>(x_3994.x, x_3994.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3998 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_3997.x, x_3997.y, x_3998.z, x_3998.w);
        let x_4000 : vec4<f32> = u_xlat11;
        let x_4004 : vec2<f32> = clamp(vec2<f32>(x_4000.x, x_4000.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_4005 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4004.x, x_4004.y, x_4005.z, x_4005.w);
        let x_4007 : i32 = u_xlati82;
        let x_4009 : vec4<f32> = x_2011.x_AdditionalLightsCookieAtlasUVRects[x_4007];
        let x_4011 : vec4<f32> = u_xlat11;
        let x_4014 : i32 = u_xlati82;
        let x_4016 : vec4<f32> = x_2011.x_AdditionalLightsCookieAtlasUVRects[x_4014];
        let x_4018 : vec2<f32> = ((vec2<f32>(x_4009.x, x_4009.y) * vec2<f32>(x_4011.x, x_4011.y)) + vec2<f32>(x_4016.z, x_4016.w));
        let x_4019 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_4018.x, x_4018.y, x_4019.z, x_4019.w);
      } else {
        let x_4022 : i32 = u_xlati85;
        u_xlatb85 = (x_4022 == 1i);
        let x_4024 : bool = u_xlatb85;
        u_xlati85 = select(0i, 1i, x_4024);
        let x_4026 : i32 = u_xlati85;
        if ((x_4026 != 0i)) {
          let x_4031 : vec3<f32> = vs_INTERP7;
          let x_4033 : i32 = u_xlati88;
          let x_4036 : i32 = u_xlati88;
          let x_4040 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[((x_4033 + 1i) / 4i)][((x_4036 + 1i) % 4i)];
          u_xlat63 = (vec2<f32>(x_4031.y, x_4031.y) * vec2<f32>(x_4040.x, x_4040.y));
          let x_4043 : i32 = u_xlati88;
          let x_4045 : i32 = u_xlati88;
          let x_4048 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[(x_4043 / 4i)][(x_4045 % 4i)];
          let x_4050 : vec3<f32> = vs_INTERP7;
          let x_4053 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4048.x, x_4048.y) * vec2<f32>(x_4050.x, x_4050.x)) + x_4053);
          let x_4055 : i32 = u_xlati88;
          let x_4058 : i32 = u_xlati88;
          let x_4062 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[((x_4055 + 2i) / 4i)][((x_4058 + 2i) % 4i)];
          let x_4064 : vec3<f32> = vs_INTERP7;
          let x_4067 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4062.x, x_4062.y) * vec2<f32>(x_4064.z, x_4064.z)) + x_4067);
          let x_4069 : vec2<f32> = u_xlat63;
          let x_4070 : i32 = u_xlati88;
          let x_4073 : i32 = u_xlati88;
          let x_4077 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[((x_4070 + 3i) / 4i)][((x_4073 + 3i) % 4i)];
          u_xlat63 = (x_4069 + vec2<f32>(x_4077.x, x_4077.y));
          let x_4080 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4080 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4083 : vec2<f32> = u_xlat63;
          u_xlat63 = fract(x_4083);
          let x_4085 : i32 = u_xlati82;
          let x_4087 : vec4<f32> = x_2011.x_AdditionalLightsCookieAtlasUVRects[x_4085];
          let x_4089 : vec2<f32> = u_xlat63;
          let x_4091 : i32 = u_xlati82;
          let x_4093 : vec4<f32> = x_2011.x_AdditionalLightsCookieAtlasUVRects[x_4091];
          let x_4095 : vec2<f32> = ((vec2<f32>(x_4087.x, x_4087.y) * x_4089) + vec2<f32>(x_4093.z, x_4093.w));
          let x_4096 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4095.x, x_4095.y, x_4096.z, x_4096.w);
        } else {
          let x_4099 : vec3<f32> = vs_INTERP7;
          let x_4101 : i32 = u_xlati88;
          let x_4104 : i32 = u_xlati88;
          let x_4108 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[((x_4101 + 1i) / 4i)][((x_4104 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_4099.y, x_4099.y, x_4099.y, x_4099.y) * x_4108);
          let x_4110 : i32 = u_xlati88;
          let x_4112 : i32 = u_xlati88;
          let x_4115 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[(x_4110 / 4i)][(x_4112 % 4i)];
          let x_4116 : vec3<f32> = vs_INTERP7;
          let x_4119 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4115 * vec4<f32>(x_4116.x, x_4116.x, x_4116.x, x_4116.x)) + x_4119);
          let x_4121 : i32 = u_xlati88;
          let x_4124 : i32 = u_xlati88;
          let x_4128 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[((x_4121 + 2i) / 4i)][((x_4124 + 2i) % 4i)];
          let x_4129 : vec3<f32> = vs_INTERP7;
          let x_4132 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_4128 * vec4<f32>(x_4129.z, x_4129.z, x_4129.z, x_4129.z)) + x_4132);
          let x_4134 : vec4<f32> = u_xlat12;
          let x_4135 : i32 = u_xlati88;
          let x_4138 : i32 = u_xlati88;
          let x_4142 : vec4<f32> = x_2011.x_AdditionalLightsWorldToLights[((x_4135 + 3i) / 4i)][((x_4138 + 3i) % 4i)];
          u_xlat12 = (x_4134 + x_4142);
          let x_4144 : vec4<f32> = u_xlat12;
          let x_4146 : vec4<f32> = u_xlat12;
          let x_4148 : vec3<f32> = (vec3<f32>(x_4144.x, x_4144.y, x_4144.z) / vec3<f32>(x_4146.w, x_4146.w, x_4146.w));
          let x_4149 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4148.x, x_4148.y, x_4148.z, x_4149.w);
          let x_4151 : vec4<f32> = u_xlat12;
          let x_4153 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(vec3<f32>(x_4151.x, x_4151.y, x_4151.z), vec3<f32>(x_4153.x, x_4153.y, x_4153.z));
          let x_4156 : f32 = u_xlat85;
          u_xlat85 = inverseSqrt(x_4156);
          let x_4158 : f32 = u_xlat85;
          let x_4160 : vec4<f32> = u_xlat12;
          let x_4162 : vec3<f32> = (vec3<f32>(x_4158, x_4158, x_4158) * vec3<f32>(x_4160.x, x_4160.y, x_4160.z));
          let x_4163 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4162.x, x_4162.y, x_4162.z, x_4163.w);
          let x_4165 : vec4<f32> = u_xlat12;
          u_xlat85 = dot(abs(vec3<f32>(x_4165.x, x_4165.y, x_4165.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4169 : f32 = u_xlat85;
          u_xlat85 = max(x_4169, 0.00000099999999747524f);
          let x_4172 : f32 = u_xlat85;
          u_xlat85 = (1.0f / x_4172);
          let x_4174 : f32 = u_xlat85;
          let x_4176 : vec4<f32> = u_xlat12;
          let x_4178 : vec3<f32> = (vec3<f32>(x_4174, x_4174, x_4174) * vec3<f32>(x_4176.z, x_4176.x, x_4176.y));
          let x_4179 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4178.x, x_4178.y, x_4178.z, x_4179.w);
          let x_4182 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4182);
          let x_4186 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4186, 0.0f, 1.0f);
          let x_4190 : vec4<f32> = u_xlat13;
          let x_4192 : vec4<bool> = (vec4<f32>(x_4190.y, x_4190.z, x_4190.y, x_4190.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb63 = vec2<bool>(x_4192.x, x_4192.y);
          let x_4195 : bool = u_xlatb63.x;
          if (x_4195) {
            let x_4200 : f32 = u_xlat13.x;
            x_4196 = x_4200;
          } else {
            let x_4203 : f32 = u_xlat13.x;
            x_4196 = -(x_4203);
          }
          let x_4205 : f32 = x_4196;
          u_xlat63.x = x_4205;
          let x_4208 : bool = u_xlatb63.y;
          if (x_4208) {
            let x_4213 : f32 = u_xlat13.x;
            x_4209 = x_4213;
          } else {
            let x_4216 : f32 = u_xlat13.x;
            x_4209 = -(x_4216);
          }
          let x_4218 : f32 = x_4209;
          u_xlat63.y = x_4218;
          let x_4220 : vec4<f32> = u_xlat12;
          let x_4222 : f32 = u_xlat85;
          let x_4225 : vec2<f32> = u_xlat63;
          u_xlat63 = ((vec2<f32>(x_4220.x, x_4220.y) * vec2<f32>(x_4222, x_4222)) + x_4225);
          let x_4227 : vec2<f32> = u_xlat63;
          u_xlat63 = ((x_4227 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4230 : vec2<f32> = u_xlat63;
          u_xlat63 = clamp(x_4230, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4234 : i32 = u_xlati82;
          let x_4236 : vec4<f32> = x_2011.x_AdditionalLightsCookieAtlasUVRects[x_4234];
          let x_4238 : vec2<f32> = u_xlat63;
          let x_4240 : i32 = u_xlati82;
          let x_4242 : vec4<f32> = x_2011.x_AdditionalLightsCookieAtlasUVRects[x_4240];
          let x_4244 : vec2<f32> = ((vec2<f32>(x_4236.x, x_4236.y) * x_4238) + vec2<f32>(x_4242.z, x_4242.w));
          let x_4245 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4244.x, x_4244.y, x_4245.z, x_4245.w);
        }
      }
      let x_4252 : vec4<f32> = u_xlat11;
      let x_4254 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4252.x, x_4252.y), 0.0f);
      u_xlat11 = x_4254;
      let x_4256 : bool = u_xlatb7.y;
      if (x_4256) {
        let x_4261 : f32 = u_xlat11.w;
        x_4257 = x_4261;
      } else {
        let x_4264 : f32 = u_xlat11.x;
        x_4257 = x_4264;
      }
      let x_4265 : f32 = x_4257;
      u_xlat85 = x_4265;
      let x_4267 : bool = u_xlatb7.x;
      if (x_4267) {
        let x_4271 : vec4<f32> = u_xlat11;
        x_4268 = vec3<f32>(x_4271.x, x_4271.y, x_4271.z);
      } else {
        let x_4274 : f32 = u_xlat85;
        x_4268 = vec3<f32>(x_4274, x_4274, x_4274);
      }
      let x_4276 : vec3<f32> = x_4268;
      let x_4277 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4276.x, x_4276.y, x_4276.z, x_4277.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4283 : vec4<f32> = u_xlat11;
    let x_4285 : i32 = u_xlati82;
    let x_4287 : vec4<f32> = x_2473.x_AdditionalLightsColor[x_4285];
    let x_4289 : vec3<f32> = (vec3<f32>(x_4283.x, x_4283.y, x_4283.z) * vec3<f32>(x_4287.x, x_4287.y, x_4287.z));
    let x_4290 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4289.x, x_4289.y, x_4289.z, x_4290.w);
    let x_4292 : f32 = u_xlat83;
    let x_4293 : f32 = u_xlat59;
    u_xlat82 = (x_4292 * x_4293);
    let x_4295 : vec4<f32> = u_xlat1;
    let x_4297 : vec4<f32> = u_xlat10;
    u_xlat83 = dot(vec3<f32>(x_4295.x, x_4295.y, x_4295.z), vec3<f32>(x_4297.x, x_4297.y, x_4297.z));
    let x_4300 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4300, 0.0f, 1.0f);
    let x_4302 : f32 = u_xlat82;
    let x_4303 : f32 = u_xlat83;
    u_xlat82 = (x_4302 * x_4303);
    let x_4305 : f32 = u_xlat82;
    let x_4307 : vec4<f32> = u_xlat11;
    let x_4309 : vec3<f32> = (vec3<f32>(x_4305, x_4305, x_4305) * vec3<f32>(x_4307.x, x_4307.y, x_4307.z));
    let x_4310 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4309.x, x_4309.y, x_4309.z, x_4310.w);
    let x_4312 : vec4<f32> = u_xlat9;
    let x_4314 : f32 = u_xlat84;
    let x_4317 : vec4<f32> = u_xlat3;
    let x_4319 : vec3<f32> = ((vec3<f32>(x_4312.x, x_4312.y, x_4312.z) * vec3<f32>(x_4314, x_4314, x_4314)) + vec3<f32>(x_4317.x, x_4317.y, x_4317.z));
    let x_4320 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4319.x, x_4319.y, x_4319.z, x_4320.w);
    let x_4322 : vec4<f32> = u_xlat9;
    let x_4324 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4322.x, x_4322.y, x_4322.z), vec3<f32>(x_4324.x, x_4324.y, x_4324.z));
    let x_4327 : f32 = u_xlat82;
    u_xlat82 = max(x_4327, 1.17549435e-38f);
    let x_4329 : f32 = u_xlat82;
    u_xlat82 = inverseSqrt(x_4329);
    let x_4331 : f32 = u_xlat82;
    let x_4333 : vec4<f32> = u_xlat9;
    let x_4335 : vec3<f32> = (vec3<f32>(x_4331, x_4331, x_4331) * vec3<f32>(x_4333.x, x_4333.y, x_4333.z));
    let x_4336 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4335.x, x_4335.y, x_4335.z, x_4336.w);
    let x_4338 : vec4<f32> = u_xlat1;
    let x_4340 : vec4<f32> = u_xlat9;
    u_xlat82 = dot(vec3<f32>(x_4338.x, x_4338.y, x_4338.z), vec3<f32>(x_4340.x, x_4340.y, x_4340.z));
    let x_4343 : f32 = u_xlat82;
    u_xlat82 = clamp(x_4343, 0.0f, 1.0f);
    let x_4345 : vec4<f32> = u_xlat10;
    let x_4347 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_4345.x, x_4345.y, x_4345.z), vec3<f32>(x_4347.x, x_4347.y, x_4347.z));
    let x_4350 : f32 = u_xlat83;
    u_xlat83 = clamp(x_4350, 0.0f, 1.0f);
    let x_4352 : f32 = u_xlat82;
    let x_4353 : f32 = u_xlat82;
    u_xlat82 = (x_4352 * x_4353);
    let x_4355 : f32 = u_xlat82;
    let x_4357 : f32 = u_xlat8.x;
    u_xlat82 = ((x_4355 * x_4357) + 1.00001001358032226562f);
    let x_4360 : f32 = u_xlat83;
    let x_4361 : f32 = u_xlat83;
    u_xlat83 = (x_4360 * x_4361);
    let x_4363 : f32 = u_xlat82;
    let x_4364 : f32 = u_xlat82;
    u_xlat82 = (x_4363 * x_4364);
    let x_4366 : f32 = u_xlat83;
    u_xlat83 = max(x_4366, 0.10000000149011611938f);
    let x_4368 : f32 = u_xlat82;
    let x_4369 : f32 = u_xlat83;
    u_xlat82 = (x_4368 * x_4369);
    let x_4371 : f32 = u_xlat81;
    let x_4372 : f32 = u_xlat82;
    u_xlat82 = (x_4371 * x_4372);
    let x_4374 : f32 = u_xlat28;
    let x_4375 : f32 = u_xlat82;
    u_xlat82 = (x_4374 / x_4375);
    let x_4377 : vec4<f32> = u_xlat0;
    let x_4379 : f32 = u_xlat82;
    let x_4382 : vec4<f32> = u_xlat5;
    let x_4384 : vec3<f32> = ((vec3<f32>(x_4377.x, x_4377.y, x_4377.z) * vec3<f32>(x_4379, x_4379, x_4379)) + vec3<f32>(x_4382.x, x_4382.y, x_4382.z));
    let x_4385 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4384.x, x_4384.y, x_4384.z, x_4385.w);
    let x_4387 : vec4<f32> = u_xlat9;
    let x_4389 : vec4<f32> = u_xlat11;
    let x_4392 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4387.x, x_4387.y, x_4387.z) * vec3<f32>(x_4389.x, x_4389.y, x_4389.z)) + x_4392);

    continuing {
      let x_4394 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4394 + bitcast<u32>(1i));
    }
  }
  let x_4396 : vec3<f32> = u_xlat4;
  let x_4397 : f32 = u_xlat54;
  let x_4400 : vec4<f32> = u_xlat6;
  let x_4402 : vec3<f32> = ((x_4396 * vec3<f32>(x_4397, x_4397, x_4397)) + vec3<f32>(x_4400.x, x_4400.y, x_4400.z));
  let x_4403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4402.x, x_4402.y, x_4402.z, x_4403.w);
  let x_4405 : vec3<f32> = u_xlat34;
  let x_4406 : vec4<f32> = u_xlat0;
  let x_4408 : vec3<f32> = (x_4405 + vec3<f32>(x_4406.x, x_4406.y, x_4406.z));
  let x_4409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4408.x, x_4408.y, x_4408.z, x_4409.w);
  let x_4411 : f32 = u_xlat78;
  let x_4412 : f32 = u_xlat78;
  u_xlat78 = (x_4411 * -(x_4412));
  let x_4415 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4415);
  let x_4417 : vec4<f32> = u_xlat0;
  let x_4420 : vec4<f32> = x_29.unity_FogColor;
  let x_4423 : vec3<f32> = (vec3<f32>(x_4417.x, x_4417.y, x_4417.z) + -(vec3<f32>(x_4420.x, x_4420.y, x_4420.z)));
  let x_4424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4423.x, x_4423.y, x_4423.z, x_4424.w);
  let x_4428 : f32 = u_xlat78;
  let x_4430 : vec4<f32> = u_xlat0;
  let x_4434 : vec4<f32> = x_29.unity_FogColor;
  let x_4436 : vec3<f32> = ((vec3<f32>(x_4428, x_4428, x_4428) * vec3<f32>(x_4430.x, x_4430.y, x_4430.z)) + vec3<f32>(x_4434.x, x_4434.y, x_4434.z));
  let x_4437 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4436.x, x_4436.y, x_4436.z, x_4437.w);
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



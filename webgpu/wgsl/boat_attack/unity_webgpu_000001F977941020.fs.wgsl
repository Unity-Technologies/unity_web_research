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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(8) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb25 : bool;

var<private> u_xlat25 : f32;

var<private> u_xlat50 : f32;

var<private> u_xlat26 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb75 : bool;

@group(0) @binding(5) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat75 : f32;

@group(0) @binding(4) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb51 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat51 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat77 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat76 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlatb79 : bool;

@group(1) @binding(3) var<uniform> x_690 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat56 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat81 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu76 : u32;

var<private> u_xlatu79 : u32;

var<private> u_xlati80 : i32;

var<private> u_xlati79 : i32;

@group(1) @binding(1) var<uniform> x_2327 : AdditionalLights;

var<private> u_xlat83 : f32;

var<private> u_xlati83 : i32;

var<private> u_xlatb84 : bool;

var<private> u_xlatb10 : vec4<bool>;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb83 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat37 : vec3<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat38 : vec2<f32>;

var<private> u_xlat69 : vec2<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu77 : u32;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2467 : f32;
  var x_2477 : f32;
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
  u_xlatb25 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_89);
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
  let x_106 : f32 = u_xlat25;
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
  u_xlatb25 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat50 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb25;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat50;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat25 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat26.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat26.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat50;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat50 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat50;
  u_xlatb75 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat50;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat50;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat26;
  u_xlat26 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat26.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat50;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat50 = x_207;
  let x_208 : bool = u_xlatb75;
  if (x_208) {
    let x_213 : f32 = u_xlat26.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat50;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat50 = x_216;
  let x_217 : f32 = u_xlat50;
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
  let x_268 : f32 = u_xlat25;
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
  u_xlat75 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat75;
  u_xlat75 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat75;
  u_xlat75 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat75;
  u_xlat75 = sqrt(x_319);
  let x_321 : f32 = u_xlat75;
  u_xlat75 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb51.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb51.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb51.x;
  u_xlat51.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb51.y;
  u_xlat51.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat51.y;
  let x_367 : f32 = u_xlat51.x;
  u_xlat51.x = (x_365 * x_367);
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
  let x_390 : vec2<f32> = u_xlat51;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat26 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat26;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat75;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat75 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat75;
  u_xlat75 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat75;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb75 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat77 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat77;
  u_xlat77 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat77;
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
  let x_476 : bool = u_xlatb75;
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
  u_xlat75 = (x_489 * x_491);
  let x_494 : f32 = x_29.unity_MatrixV[0i].z;
  let x_496 : f32 = vs_INTERP7.x;
  let x_498 : f32 = u_xlat75;
  u_xlat75 = ((x_494 * x_496) + x_498);
  let x_501 : f32 = x_29.unity_MatrixV[2i].z;
  let x_503 : f32 = vs_INTERP7.z;
  let x_505 : f32 = u_xlat75;
  u_xlat75 = ((x_501 * x_503) + x_505);
  let x_507 : f32 = u_xlat75;
  let x_509 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat75 = (x_507 + x_509);
  let x_511 : f32 = u_xlat75;
  let x_515 : f32 = x_29.x_ProjectionParams.y;
  u_xlat75 = (-(x_511) + -(x_515));
  let x_518 : f32 = u_xlat75;
  u_xlat75 = max(x_518, 0.0f);
  let x_520 : f32 = u_xlat75;
  let x_523 : f32 = x_29.unity_FogParams.x;
  u_xlat75 = (x_520 * x_523);
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
  u_xlat76 = (x_572 * x_574);
  let x_577 : f32 = u_xlat1.x;
  let x_579 : f32 = u_xlat1.x;
  let x_581 : f32 = u_xlat76;
  u_xlat76 = ((x_577 * x_579) + -(x_581));
  let x_586 : vec4<f32> = x_349.unity_SHC;
  let x_588 : f32 = u_xlat76;
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
  u_xlat76 = ((-(x_615) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_620 : f32 = u_xlat76;
  let x_623 : f32 = u_xlat2.y;
  u_xlat77 = (-(x_620) + x_623);
  let x_625 : vec4<f32> = u_xlat0;
  let x_627 : f32 = u_xlat76;
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
  u_xlat76 = (-(x_650) + 1.0f);
  let x_653 : f32 = u_xlat76;
  let x_654 : f32 = u_xlat76;
  u_xlat2.x = (x_653 * x_654);
  let x_658 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_658, 0.0078125f);
  let x_664 : f32 = u_xlat2.x;
  let x_666 : f32 = u_xlat2.x;
  u_xlat27 = (x_664 * x_666);
  let x_668 : f32 = u_xlat77;
  u_xlat77 = (x_668 + 1.0f);
  let x_670 : f32 = u_xlat77;
  u_xlat77 = min(x_670, 1.0f);
  let x_674 : f32 = u_xlat2.x;
  u_xlat78 = ((x_674 * 4.0f) + 2.0f);
  let x_680 : f32 = u_xlat2.z;
  u_xlat52 = min(x_680, 1.0f);
  let x_693 : f32 = x_690.x_MainLightShadowParams.y;
  u_xlatb79 = (0.0f < x_693);
  let x_695 : bool = u_xlatb79;
  if (x_695) {
    let x_699 : f32 = x_690.x_MainLightShadowParams.y;
    u_xlatb79 = (x_699 == 1.0f);
    let x_701 : bool = u_xlatb79;
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
      u_xlat79 = dot(x_782, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_789 : f32 = x_690.x_MainLightShadowParams.y;
      u_xlatb80 = (x_789 == 2.0f);
      let x_791 : bool = u_xlatb80;
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
        u_xlat56 = ((vec2<f32>(x_811.x, x_811.y) * vec2<f32>(x_814.z, x_814.w)) + -(vec2<f32>(x_817.x, x_817.y)));
        let x_821 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_821.x, x_821.x, x_821.y, x_821.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_826 : vec4<f32> = u_xlat7;
        let x_828 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_826.x, x_826.x, x_826.z, x_826.z) * vec4<f32>(x_828.x, x_828.x, x_828.z, x_828.z));
        let x_831 : vec4<f32> = u_xlat8;
        let x_835 : vec2<f32> = (vec2<f32>(x_831.y, x_831.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_836 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_835.x, x_836.y, x_835.y, x_836.w);
        let x_838 : vec4<f32> = u_xlat8;
        let x_841 : vec2<f32> = u_xlat56;
        let x_843 : vec2<f32> = ((vec2<f32>(x_838.x, x_838.z) * vec2<f32>(0.5f, 0.5f)) + -(x_841));
        let x_844 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_843.x, x_843.y, x_844.z, x_844.w);
        let x_847 : vec2<f32> = u_xlat56;
        u_xlat58 = (-(x_847) + vec2<f32>(1.0f, 1.0f));
        let x_852 : vec2<f32> = u_xlat56;
        let x_854 : vec2<f32> = min(x_852, vec2<f32>(0.0f, 0.0f));
        let x_855 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_854.x, x_854.y, x_855.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat9;
        let x_860 : vec4<f32> = u_xlat9;
        let x_863 : vec2<f32> = u_xlat58;
        let x_864 : vec2<f32> = ((-(vec2<f32>(x_857.x, x_857.y)) * vec2<f32>(x_860.x, x_860.y)) + x_863);
        let x_865 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec2<f32> = u_xlat56;
        u_xlat56 = max(x_867, vec2<f32>(0.0f, 0.0f));
        let x_869 : vec2<f32> = u_xlat56;
        let x_871 : vec2<f32> = u_xlat56;
        let x_873 : vec4<f32> = u_xlat7;
        u_xlat56 = ((-(x_869) * x_871) + vec2<f32>(x_873.y, x_873.w));
        let x_876 : vec4<f32> = u_xlat9;
        let x_878 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) + vec2<f32>(1.0f, 1.0f));
        let x_879 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_881 : vec2<f32> = u_xlat56;
        u_xlat56 = (x_881 + vec2<f32>(1.0f, 1.0f));
        let x_884 : vec4<f32> = u_xlat8;
        let x_888 : vec2<f32> = (vec2<f32>(x_884.x, x_884.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_889 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_888.x, x_888.y, x_889.z, x_889.w);
        let x_891 : vec2<f32> = u_xlat58;
        let x_892 : vec2<f32> = (x_891 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_893 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec4<f32> = u_xlat9;
        let x_897 : vec2<f32> = (vec2<f32>(x_895.x, x_895.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_898 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_897.x, x_897.y, x_898.z, x_898.w);
        let x_901 : vec2<f32> = u_xlat56;
        let x_902 : vec2<f32> = (x_901 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_903 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_902.x, x_902.y, x_903.z, x_903.w);
        let x_905 : vec4<f32> = u_xlat7;
        u_xlat56 = (vec2<f32>(x_905.y, x_905.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_909 : f32 = u_xlat9.x;
        u_xlat10.z = x_909;
        let x_912 : f32 = u_xlat56.x;
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
        let x_930 : f32 = u_xlat56.y;
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
        u_xlat56 = ((vec2<f32>(x_1001.x, x_1001.y) * vec2<f32>(x_1004.x, x_1004.y)) + vec2<f32>(x_1007.z, x_1007.w));
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
        u_xlat80 = (x_1057 * x_1059);
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
        u_xlat31 = x_1090;
        let x_1091 : f32 = u_xlat31;
        let x_1093 : f32 = u_xlat13.y;
        u_xlat31 = (x_1091 * x_1093);
        let x_1096 : f32 = u_xlat13.x;
        let x_1098 : f32 = u_xlat6.x;
        let x_1100 : f32 = u_xlat31;
        u_xlat6.x = ((x_1096 * x_1098) + x_1100);
        let x_1104 : vec2<f32> = u_xlat56;
        let x_1106 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_1104.x, x_1104.y, x_1106);
        let x_1113 : vec3<f32> = txVec6;
        let x_1115 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1113.xy, x_1113.z);
        u_xlat31 = x_1115;
        let x_1117 : f32 = u_xlat13.z;
        let x_1118 : f32 = u_xlat31;
        let x_1121 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1117 * x_1118) + x_1121);
        let x_1125 : vec4<f32> = u_xlat9;
        let x_1126 : vec2<f32> = vec2<f32>(x_1125.x, x_1125.y);
        let x_1128 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_1126.x, x_1126.y, x_1128);
        let x_1135 : vec3<f32> = txVec7;
        let x_1137 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1135.xy, x_1135.z);
        u_xlat31 = x_1137;
        let x_1139 : f32 = u_xlat13.w;
        let x_1140 : f32 = u_xlat31;
        let x_1143 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1139 * x_1140) + x_1143);
        let x_1147 : vec4<f32> = u_xlat11;
        let x_1148 : vec2<f32> = vec2<f32>(x_1147.x, x_1147.y);
        let x_1150 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_1148.x, x_1148.y, x_1150);
        let x_1157 : vec3<f32> = txVec8;
        let x_1159 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1157.xy, x_1157.z);
        u_xlat31 = x_1159;
        let x_1161 : f32 = u_xlat14.x;
        let x_1162 : f32 = u_xlat31;
        let x_1165 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1161 * x_1162) + x_1165);
        let x_1169 : vec4<f32> = u_xlat11;
        let x_1170 : vec2<f32> = vec2<f32>(x_1169.z, x_1169.w);
        let x_1172 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_1170.x, x_1170.y, x_1172);
        let x_1179 : vec3<f32> = txVec9;
        let x_1181 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1179.xy, x_1179.z);
        u_xlat31 = x_1181;
        let x_1183 : f32 = u_xlat14.y;
        let x_1184 : f32 = u_xlat31;
        let x_1187 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1183 * x_1184) + x_1187);
        let x_1191 : vec4<f32> = u_xlat9;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.z, x_1191.w);
        let x_1194 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1201 : vec3<f32> = txVec10;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat31 = x_1203;
        let x_1205 : f32 = u_xlat14.z;
        let x_1206 : f32 = u_xlat31;
        let x_1209 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1205 * x_1206) + x_1209);
        let x_1213 : vec4<f32> = u_xlat8;
        let x_1214 : vec2<f32> = vec2<f32>(x_1213.x, x_1213.y);
        let x_1216 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1214.x, x_1214.y, x_1216);
        let x_1223 : vec3<f32> = txVec11;
        let x_1225 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1223.xy, x_1223.z);
        u_xlat31 = x_1225;
        let x_1227 : f32 = u_xlat14.w;
        let x_1228 : f32 = u_xlat31;
        let x_1231 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1227 * x_1228) + x_1231);
        let x_1235 : vec4<f32> = u_xlat8;
        let x_1236 : vec2<f32> = vec2<f32>(x_1235.z, x_1235.w);
        let x_1238 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1236.x, x_1236.y, x_1238);
        let x_1245 : vec3<f32> = txVec12;
        let x_1247 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1245.xy, x_1245.z);
        u_xlat31 = x_1247;
        let x_1248 : f32 = u_xlat80;
        let x_1249 : f32 = u_xlat31;
        let x_1252 : f32 = u_xlat6.x;
        u_xlat79 = ((x_1248 * x_1249) + x_1252);
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
        u_xlat56 = ((vec2<f32>(x_1269.x, x_1269.y) * vec2<f32>(x_1272.z, x_1272.w)) + -(vec2<f32>(x_1275.x, x_1275.y)));
        let x_1279 : vec2<f32> = u_xlat56;
        u_xlat7 = (vec4<f32>(x_1279.x, x_1279.x, x_1279.y, x_1279.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1282 : vec4<f32> = u_xlat7;
        let x_1284 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1282.x, x_1282.x, x_1282.z, x_1282.z) * vec4<f32>(x_1284.x, x_1284.x, x_1284.z, x_1284.z));
        let x_1287 : vec4<f32> = u_xlat8;
        let x_1291 : vec2<f32> = (vec2<f32>(x_1287.y, x_1287.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1292 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1292.x, x_1291.x, x_1292.z, x_1291.y);
        let x_1294 : vec4<f32> = u_xlat8;
        let x_1297 : vec2<f32> = u_xlat56;
        let x_1299 : vec2<f32> = ((vec2<f32>(x_1294.x, x_1294.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1297));
        let x_1300 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1299.x, x_1300.y, x_1299.y, x_1300.w);
        let x_1302 : vec2<f32> = u_xlat56;
        let x_1304 : vec2<f32> = (-(x_1302) + vec2<f32>(1.0f, 1.0f));
        let x_1305 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1304.x, x_1304.y, x_1305.z, x_1305.w);
        let x_1307 : vec2<f32> = u_xlat56;
        u_xlat58 = min(x_1307, vec2<f32>(0.0f, 0.0f));
        let x_1309 : vec2<f32> = u_xlat58;
        let x_1311 : vec2<f32> = u_xlat58;
        let x_1313 : vec4<f32> = u_xlat8;
        let x_1315 : vec2<f32> = ((-(x_1309) * x_1311) + vec2<f32>(x_1313.x, x_1313.y));
        let x_1316 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec2<f32> = u_xlat56;
        u_xlat58 = max(x_1318, vec2<f32>(0.0f, 0.0f));
        let x_1321 : vec2<f32> = u_xlat58;
        let x_1323 : vec2<f32> = u_xlat58;
        let x_1325 : vec4<f32> = u_xlat7;
        let x_1327 : vec2<f32> = ((-(x_1321) * x_1323) + vec2<f32>(x_1325.y, x_1325.w));
        let x_1328 : vec3<f32> = u_xlat32;
        u_xlat32 = vec3<f32>(x_1327.x, x_1328.y, x_1327.y);
        let x_1330 : vec4<f32> = u_xlat8;
        let x_1332 : vec2<f32> = (vec2<f32>(x_1330.x, x_1330.y) + vec2<f32>(2.0f, 2.0f));
        let x_1333 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1332.x, x_1332.y, x_1333.z, x_1333.w);
        let x_1335 : vec3<f32> = u_xlat32;
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
        let x_1360 : vec2<f32> = u_xlat56;
        let x_1367 : vec2<f32> = ((vec2<f32>(x_1360.x, x_1360.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1368 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1368.x, x_1367.x, x_1368.z, x_1367.y);
        let x_1370 : vec2<f32> = u_xlat56;
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
        let x_1386 : vec2<f32> = u_xlat56;
        let x_1389 : vec2<f32> = ((vec2<f32>(x_1386.y, x_1386.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1390 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1390.x, x_1389.x, x_1390.z, x_1389.y);
        let x_1392 : vec2<f32> = u_xlat56;
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
        u_xlat56 = ((vec2<f32>(x_1446.x, x_1446.y) * vec2<f32>(x_1449.x, x_1449.y)) + vec2<f32>(x_1452.w, x_1452.y));
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
        u_xlat33 = ((vec2<f32>(x_1508.x, x_1508.y) * vec2<f32>(x_1511.x, x_1511.y)) + vec2<f32>(x_1514.w, x_1514.y));
        let x_1518 : f32 = u_xlat11.y;
        u_xlat8.w = x_1518;
        let x_1521 : vec4<f32> = u_xlat6;
        let x_1524 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1527 : vec4<f32> = u_xlat8;
        u_xlat64 = ((vec2<f32>(x_1521.x, x_1521.y) * vec2<f32>(x_1524.x, x_1524.y)) + vec2<f32>(x_1527.x, x_1527.w));
        let x_1530 : vec4<f32> = u_xlat11;
        let x_1531 : vec3<f32> = vec3<f32>(x_1530.x, x_1530.z, x_1530.w);
        let x_1532 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1531.x, x_1532.y, x_1531.y, x_1531.z);
        let x_1534 : vec4<f32> = u_xlat6;
        let x_1537 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1540 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1534.x, x_1534.y, x_1534.x, x_1534.y) * vec4<f32>(x_1537.x, x_1537.y, x_1537.x, x_1537.y)) + vec4<f32>(x_1540.x, x_1540.y, x_1540.z, x_1540.y));
        let x_1544 : vec4<f32> = u_xlat6;
        let x_1547 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1550 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_1544.x, x_1544.y) * vec2<f32>(x_1547.x, x_1547.y)) + vec2<f32>(x_1550.w, x_1550.y));
        let x_1554 : f32 = u_xlat8.x;
        u_xlat9.x = x_1554;
        let x_1556 : vec4<f32> = u_xlat6;
        let x_1559 : vec4<f32> = x_690.x_MainLightShadowmapSize;
        let x_1562 : vec4<f32> = u_xlat9;
        let x_1564 : vec2<f32> = ((vec2<f32>(x_1556.x, x_1556.y) * vec2<f32>(x_1559.x, x_1559.y)) + vec2<f32>(x_1562.x, x_1562.y));
        let x_1565 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1564.x, x_1564.y, x_1565.z, x_1565.w);
        let x_1568 : vec4<f32> = u_xlat7;
        let x_1570 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1568.x, x_1568.x, x_1568.x, x_1568.x) * x_1570);
        let x_1573 : vec4<f32> = u_xlat7;
        let x_1575 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1573.y, x_1573.y, x_1573.y, x_1573.y) * x_1575);
        let x_1578 : vec4<f32> = u_xlat7;
        let x_1580 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1578.z, x_1578.z, x_1578.z, x_1578.z) * x_1580);
        let x_1582 : vec4<f32> = u_xlat7;
        let x_1584 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1582.w, x_1582.w, x_1582.w, x_1582.w) * x_1584);
        let x_1587 : vec4<f32> = u_xlat12;
        let x_1588 : vec2<f32> = vec2<f32>(x_1587.x, x_1587.y);
        let x_1590 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1588.x, x_1588.y, x_1590);
        let x_1597 : vec3<f32> = txVec13;
        let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1597.xy, x_1597.z);
        u_xlat80 = x_1599;
        let x_1601 : vec4<f32> = u_xlat12;
        let x_1602 : vec2<f32> = vec2<f32>(x_1601.z, x_1601.w);
        let x_1604 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec14;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1611.xy, x_1611.z);
        u_xlat8.x = x_1613;
        let x_1616 : f32 = u_xlat8.x;
        let x_1618 : f32 = u_xlat17.y;
        u_xlat8.x = (x_1616 * x_1618);
        let x_1622 : f32 = u_xlat17.x;
        let x_1623 : f32 = u_xlat80;
        let x_1626 : f32 = u_xlat8.x;
        u_xlat80 = ((x_1622 * x_1623) + x_1626);
        let x_1629 : vec2<f32> = u_xlat56;
        let x_1631 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1629.x, x_1629.y, x_1631);
        let x_1638 : vec3<f32> = txVec15;
        let x_1640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1638.xy, x_1638.z);
        u_xlat56.x = x_1640;
        let x_1643 : f32 = u_xlat17.z;
        let x_1645 : f32 = u_xlat56.x;
        let x_1647 : f32 = u_xlat80;
        u_xlat80 = ((x_1643 * x_1645) + x_1647);
        let x_1650 : vec4<f32> = u_xlat15;
        let x_1651 : vec2<f32> = vec2<f32>(x_1650.x, x_1650.y);
        let x_1653 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec16;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1660.xy, x_1660.z);
        u_xlat56.x = x_1662;
        let x_1665 : f32 = u_xlat17.w;
        let x_1667 : f32 = u_xlat56.x;
        let x_1669 : f32 = u_xlat80;
        u_xlat80 = ((x_1665 * x_1667) + x_1669);
        let x_1672 : vec4<f32> = u_xlat13;
        let x_1673 : vec2<f32> = vec2<f32>(x_1672.x, x_1672.y);
        let x_1675 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1673.x, x_1673.y, x_1675);
        let x_1682 : vec3<f32> = txVec17;
        let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1682.xy, x_1682.z);
        u_xlat56.x = x_1684;
        let x_1687 : f32 = u_xlat18.x;
        let x_1689 : f32 = u_xlat56.x;
        let x_1691 : f32 = u_xlat80;
        u_xlat80 = ((x_1687 * x_1689) + x_1691);
        let x_1694 : vec4<f32> = u_xlat13;
        let x_1695 : vec2<f32> = vec2<f32>(x_1694.z, x_1694.w);
        let x_1697 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1695.x, x_1695.y, x_1697);
        let x_1704 : vec3<f32> = txVec18;
        let x_1706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1704.xy, x_1704.z);
        u_xlat56.x = x_1706;
        let x_1709 : f32 = u_xlat18.y;
        let x_1711 : f32 = u_xlat56.x;
        let x_1713 : f32 = u_xlat80;
        u_xlat80 = ((x_1709 * x_1711) + x_1713);
        let x_1716 : vec4<f32> = u_xlat14;
        let x_1717 : vec2<f32> = vec2<f32>(x_1716.x, x_1716.y);
        let x_1719 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1717.x, x_1717.y, x_1719);
        let x_1726 : vec3<f32> = txVec19;
        let x_1728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1726.xy, x_1726.z);
        u_xlat56.x = x_1728;
        let x_1731 : f32 = u_xlat18.z;
        let x_1733 : f32 = u_xlat56.x;
        let x_1735 : f32 = u_xlat80;
        u_xlat80 = ((x_1731 * x_1733) + x_1735);
        let x_1738 : vec4<f32> = u_xlat15;
        let x_1739 : vec2<f32> = vec2<f32>(x_1738.z, x_1738.w);
        let x_1741 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1739.x, x_1739.y, x_1741);
        let x_1748 : vec3<f32> = txVec20;
        let x_1750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1748.xy, x_1748.z);
        u_xlat56.x = x_1750;
        let x_1753 : f32 = u_xlat18.w;
        let x_1755 : f32 = u_xlat56.x;
        let x_1757 : f32 = u_xlat80;
        u_xlat80 = ((x_1753 * x_1755) + x_1757);
        let x_1760 : vec4<f32> = u_xlat16;
        let x_1761 : vec2<f32> = vec2<f32>(x_1760.x, x_1760.y);
        let x_1763 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1761.x, x_1761.y, x_1763);
        let x_1770 : vec3<f32> = txVec21;
        let x_1772 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1770.xy, x_1770.z);
        u_xlat56.x = x_1772;
        let x_1775 : f32 = u_xlat19.x;
        let x_1777 : f32 = u_xlat56.x;
        let x_1779 : f32 = u_xlat80;
        u_xlat80 = ((x_1775 * x_1777) + x_1779);
        let x_1782 : vec4<f32> = u_xlat16;
        let x_1783 : vec2<f32> = vec2<f32>(x_1782.z, x_1782.w);
        let x_1785 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1783.x, x_1783.y, x_1785);
        let x_1792 : vec3<f32> = txVec22;
        let x_1794 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1792.xy, x_1792.z);
        u_xlat56.x = x_1794;
        let x_1797 : f32 = u_xlat19.y;
        let x_1799 : f32 = u_xlat56.x;
        let x_1801 : f32 = u_xlat80;
        u_xlat80 = ((x_1797 * x_1799) + x_1801);
        let x_1804 : vec2<f32> = u_xlat33;
        let x_1806 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1804.x, x_1804.y, x_1806);
        let x_1813 : vec3<f32> = txVec23;
        let x_1815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1813.xy, x_1813.z);
        u_xlat56.x = x_1815;
        let x_1818 : f32 = u_xlat19.z;
        let x_1820 : f32 = u_xlat56.x;
        let x_1822 : f32 = u_xlat80;
        u_xlat80 = ((x_1818 * x_1820) + x_1822);
        let x_1825 : vec2<f32> = u_xlat64;
        let x_1827 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1825.x, x_1825.y, x_1827);
        let x_1834 : vec3<f32> = txVec24;
        let x_1836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1834.xy, x_1834.z);
        u_xlat56.x = x_1836;
        let x_1839 : f32 = u_xlat19.w;
        let x_1841 : f32 = u_xlat56.x;
        let x_1843 : f32 = u_xlat80;
        u_xlat80 = ((x_1839 * x_1841) + x_1843);
        let x_1846 : vec4<f32> = u_xlat11;
        let x_1847 : vec2<f32> = vec2<f32>(x_1846.x, x_1846.y);
        let x_1849 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1847.x, x_1847.y, x_1849);
        let x_1856 : vec3<f32> = txVec25;
        let x_1858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1856.xy, x_1856.z);
        u_xlat56.x = x_1858;
        let x_1861 : f32 = u_xlat7.x;
        let x_1863 : f32 = u_xlat56.x;
        let x_1865 : f32 = u_xlat80;
        u_xlat80 = ((x_1861 * x_1863) + x_1865);
        let x_1868 : vec4<f32> = u_xlat11;
        let x_1869 : vec2<f32> = vec2<f32>(x_1868.z, x_1868.w);
        let x_1871 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
        let x_1878 : vec3<f32> = txVec26;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1878.xy, x_1878.z);
        u_xlat56.x = x_1880;
        let x_1883 : f32 = u_xlat7.y;
        let x_1885 : f32 = u_xlat56.x;
        let x_1887 : f32 = u_xlat80;
        u_xlat80 = ((x_1883 * x_1885) + x_1887);
        let x_1890 : vec2<f32> = u_xlat59;
        let x_1892 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1890.x, x_1890.y, x_1892);
        let x_1899 : vec3<f32> = txVec27;
        let x_1901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1899.xy, x_1899.z);
        u_xlat56.x = x_1901;
        let x_1904 : f32 = u_xlat7.z;
        let x_1906 : f32 = u_xlat56.x;
        let x_1908 : f32 = u_xlat80;
        u_xlat80 = ((x_1904 * x_1906) + x_1908);
        let x_1911 : vec4<f32> = u_xlat6;
        let x_1912 : vec2<f32> = vec2<f32>(x_1911.x, x_1911.y);
        let x_1914 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1912.x, x_1912.y, x_1914);
        let x_1921 : vec3<f32> = txVec28;
        let x_1923 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1921.xy, x_1921.z);
        u_xlat6.x = x_1923;
        let x_1926 : f32 = u_xlat7.w;
        let x_1928 : f32 = u_xlat6.x;
        let x_1930 : f32 = u_xlat80;
        u_xlat79 = ((x_1926 * x_1928) + x_1930);
      }
    }
  } else {
    let x_1934 : vec4<f32> = vs_INTERP3;
    let x_1935 : vec2<f32> = vec2<f32>(x_1934.x, x_1934.y);
    let x_1937 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1935.x, x_1935.y, x_1937);
    let x_1944 : vec3<f32> = txVec29;
    let x_1946 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1944.xy, x_1944.z);
    u_xlat79 = x_1946;
  }
  let x_1948 : f32 = x_690.x_MainLightShadowParams.x;
  u_xlat80 = (-(x_1948) + 1.0f);
  let x_1951 : f32 = u_xlat79;
  let x_1953 : f32 = x_690.x_MainLightShadowParams.x;
  let x_1955 : f32 = u_xlat80;
  u_xlat79 = ((x_1951 * x_1953) + x_1955);
  let x_1958 : f32 = vs_INTERP3.z;
  u_xlatb80 = (0.0f >= x_1958);
  let x_1962 : f32 = vs_INTERP3.z;
  u_xlatb6 = (x_1962 >= 1.0f);
  let x_1964 : bool = u_xlatb80;
  let x_1965 : bool = u_xlatb6;
  u_xlatb80 = (x_1964 | x_1965);
  let x_1967 : bool = u_xlatb80;
  let x_1968 : f32 = u_xlat79;
  u_xlat79 = select(x_1968, 1.0f, x_1967);
  let x_1970 : vec3<f32> = vs_INTERP7;
  let x_1972 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1974 : vec3<f32> = (x_1970 + -(x_1972));
  let x_1975 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
  let x_1977 : vec4<f32> = u_xlat6;
  let x_1979 : vec4<f32> = u_xlat6;
  u_xlat80 = dot(vec3<f32>(x_1977.x, x_1977.y, x_1977.z), vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
  let x_1982 : f32 = u_xlat80;
  let x_1984 : f32 = x_690.x_MainLightShadowParams.z;
  let x_1987 : f32 = x_690.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_1982 * x_1984) + x_1987);
  let x_1991 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1991, 0.0f, 1.0f);
  let x_1994 : f32 = u_xlat79;
  u_xlat31 = (-(x_1994) + 1.0f);
  let x_1998 : f32 = u_xlat6.x;
  let x_1999 : f32 = u_xlat31;
  let x_2001 : f32 = u_xlat79;
  u_xlat79 = ((x_1998 * x_1999) + x_2001);
  let x_2003 : vec4<f32> = u_xlat3;
  let x_2006 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(-(vec3<f32>(x_2003.x, x_2003.y, x_2003.z)), vec3<f32>(x_2006.x, x_2006.y, x_2006.z));
  let x_2011 : f32 = u_xlat6.x;
  let x_2013 : f32 = u_xlat6.x;
  u_xlat6.x = (x_2011 + x_2013);
  let x_2016 : vec4<f32> = u_xlat1;
  let x_2018 : vec4<f32> = u_xlat6;
  let x_2022 : vec4<f32> = u_xlat3;
  let x_2025 : vec3<f32> = ((vec3<f32>(x_2016.x, x_2016.y, x_2016.z) * -(vec3<f32>(x_2018.x, x_2018.x, x_2018.x))) + -(vec3<f32>(x_2022.x, x_2022.y, x_2022.z)));
  let x_2026 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2025.x, x_2025.y, x_2025.z, x_2026.w);
  let x_2029 : vec4<f32> = u_xlat1;
  let x_2031 : vec4<f32> = u_xlat3;
  u_xlat81 = dot(vec3<f32>(x_2029.x, x_2029.y, x_2029.z), vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
  let x_2034 : f32 = u_xlat81;
  u_xlat81 = clamp(x_2034, 0.0f, 1.0f);
  let x_2036 : f32 = u_xlat81;
  u_xlat81 = (-(x_2036) + 1.0f);
  let x_2039 : f32 = u_xlat81;
  let x_2040 : f32 = u_xlat81;
  u_xlat81 = (x_2039 * x_2040);
  let x_2042 : f32 = u_xlat81;
  let x_2043 : f32 = u_xlat81;
  u_xlat81 = (x_2042 * x_2043);
  let x_2045 : f32 = u_xlat76;
  u_xlat7.x = ((-(x_2045) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2052 : f32 = u_xlat76;
  let x_2054 : f32 = u_xlat7.x;
  u_xlat76 = (x_2052 * x_2054);
  let x_2056 : f32 = u_xlat76;
  u_xlat76 = (x_2056 * 6.0f);
  let x_2066 : vec4<f32> = u_xlat6;
  let x_2068 : f32 = u_xlat76;
  let x_2069 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2066.x, x_2066.y, x_2066.z), x_2068);
  u_xlat7 = x_2069;
  let x_2071 : f32 = u_xlat7.w;
  u_xlat76 = (x_2071 + -1.0f);
  let x_2074 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_2075 : f32 = u_xlat76;
  u_xlat76 = ((x_2074 * x_2075) + 1.0f);
  let x_2078 : f32 = u_xlat76;
  u_xlat76 = max(x_2078, 0.0f);
  let x_2080 : f32 = u_xlat76;
  u_xlat76 = log2(x_2080);
  let x_2082 : f32 = u_xlat76;
  let x_2084 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat76 = (x_2082 * x_2084);
  let x_2086 : f32 = u_xlat76;
  u_xlat76 = exp2(x_2086);
  let x_2088 : f32 = u_xlat76;
  let x_2090 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat76 = (x_2088 * x_2090);
  let x_2092 : vec4<f32> = u_xlat7;
  let x_2094 : f32 = u_xlat76;
  let x_2096 : vec3<f32> = (vec3<f32>(x_2092.x, x_2092.y, x_2092.z) * vec3<f32>(x_2094, x_2094, x_2094));
  let x_2097 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2096.x, x_2096.y, x_2096.z, x_2097.w);
  let x_2099 : vec4<f32> = u_xlat2;
  let x_2101 : vec4<f32> = u_xlat2;
  let x_2105 : vec2<f32> = ((vec2<f32>(x_2099.x, x_2099.x) * vec2<f32>(x_2101.x, x_2101.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2106 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2105.x, x_2105.y, x_2106.z, x_2106.w);
  let x_2109 : f32 = u_xlat7.y;
  u_xlat76 = (1.0f / x_2109);
  let x_2111 : vec4<f32> = u_xlat0;
  let x_2114 : f32 = u_xlat77;
  u_xlat32 = (-(vec3<f32>(x_2111.x, x_2111.y, x_2111.z)) + vec3<f32>(x_2114, x_2114, x_2114));
  let x_2117 : f32 = u_xlat81;
  let x_2119 : vec3<f32> = u_xlat32;
  let x_2121 : vec4<f32> = u_xlat0;
  u_xlat32 = ((vec3<f32>(x_2117, x_2117, x_2117) * x_2119) + vec3<f32>(x_2121.x, x_2121.y, x_2121.z));
  let x_2124 : f32 = u_xlat76;
  let x_2126 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2124, x_2124, x_2124) * x_2126);
  let x_2128 : vec4<f32> = u_xlat6;
  let x_2130 : vec3<f32> = u_xlat32;
  let x_2131 : vec3<f32> = (vec3<f32>(x_2128.x, x_2128.y, x_2128.z) * x_2130);
  let x_2132 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
  let x_2134 : vec3<f32> = u_xlat4;
  let x_2135 : vec4<f32> = u_xlat5;
  let x_2138 : vec4<f32> = u_xlat6;
  u_xlat4 = ((x_2134 * vec3<f32>(x_2135.x, x_2135.y, x_2135.z)) + vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
  let x_2141 : f32 = u_xlat79;
  let x_2143 : f32 = x_349.unity_LightData.z;
  u_xlat76 = (x_2141 * x_2143);
  let x_2145 : vec4<f32> = u_xlat1;
  let x_2148 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat2.x = dot(vec3<f32>(x_2145.x, x_2145.y, x_2145.z), vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
  let x_2153 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2153, 0.0f, 1.0f);
  let x_2156 : f32 = u_xlat76;
  let x_2158 : f32 = u_xlat2.x;
  u_xlat76 = (x_2156 * x_2158);
  let x_2160 : f32 = u_xlat76;
  let x_2163 : vec4<f32> = x_29.x_MainLightColor;
  let x_2165 : vec3<f32> = (vec3<f32>(x_2160, x_2160, x_2160) * vec3<f32>(x_2163.x, x_2163.y, x_2163.z));
  let x_2166 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2165.x, x_2165.y, x_2165.z, x_2166.w);
  let x_2168 : vec4<f32> = u_xlat3;
  let x_2171 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat32 = (vec3<f32>(x_2168.x, x_2168.y, x_2168.z) + vec3<f32>(x_2171.x, x_2171.y, x_2171.z));
  let x_2174 : vec3<f32> = u_xlat32;
  let x_2175 : vec3<f32> = u_xlat32;
  u_xlat76 = dot(x_2174, x_2175);
  let x_2177 : f32 = u_xlat76;
  u_xlat76 = max(x_2177, 1.17549435e-38f);
  let x_2180 : f32 = u_xlat76;
  u_xlat76 = inverseSqrt(x_2180);
  let x_2182 : f32 = u_xlat76;
  let x_2184 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2182, x_2182, x_2182) * x_2184);
  let x_2186 : vec4<f32> = u_xlat1;
  let x_2188 : vec3<f32> = u_xlat32;
  u_xlat76 = dot(vec3<f32>(x_2186.x, x_2186.y, x_2186.z), x_2188);
  let x_2190 : f32 = u_xlat76;
  u_xlat76 = clamp(x_2190, 0.0f, 1.0f);
  let x_2193 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2195 : vec3<f32> = u_xlat32;
  u_xlat2.x = dot(vec3<f32>(x_2193.x, x_2193.y, x_2193.z), x_2195);
  let x_2199 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2199, 0.0f, 1.0f);
  let x_2202 : f32 = u_xlat76;
  let x_2203 : f32 = u_xlat76;
  u_xlat76 = (x_2202 * x_2203);
  let x_2205 : f32 = u_xlat76;
  let x_2207 : f32 = u_xlat7.x;
  u_xlat76 = ((x_2205 * x_2207) + 1.00001001358032226562f);
  let x_2212 : f32 = u_xlat2.x;
  let x_2214 : f32 = u_xlat2.x;
  u_xlat2.x = (x_2212 * x_2214);
  let x_2217 : f32 = u_xlat76;
  let x_2218 : f32 = u_xlat76;
  u_xlat76 = (x_2217 * x_2218);
  let x_2221 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_2221, 0.10000000149011611938f);
  let x_2225 : f32 = u_xlat76;
  let x_2227 : f32 = u_xlat2.x;
  u_xlat76 = (x_2225 * x_2227);
  let x_2229 : f32 = u_xlat78;
  let x_2230 : f32 = u_xlat76;
  u_xlat76 = (x_2229 * x_2230);
  let x_2232 : f32 = u_xlat27;
  let x_2233 : f32 = u_xlat76;
  u_xlat76 = (x_2232 / x_2233);
  let x_2235 : vec4<f32> = u_xlat0;
  let x_2237 : f32 = u_xlat76;
  let x_2240 : vec4<f32> = u_xlat5;
  u_xlat32 = ((vec3<f32>(x_2235.x, x_2235.y, x_2235.z) * vec3<f32>(x_2237, x_2237, x_2237)) + vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
  let x_2243 : vec4<f32> = u_xlat6;
  let x_2245 : vec3<f32> = u_xlat32;
  let x_2246 : vec3<f32> = (vec3<f32>(x_2243.x, x_2243.y, x_2243.z) * x_2245);
  let x_2247 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2246.x, x_2246.y, x_2246.z, x_2247.w);
  let x_2250 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2252 : f32 = x_349.unity_LightData.y;
  u_xlat76 = min(x_2250, x_2252);
  let x_2256 : f32 = u_xlat76;
  u_xlatu76 = bitcast<u32>(i32(x_2256));
  let x_2259 : f32 = u_xlat80;
  let x_2262 : f32 = x_690.x_AdditionalShadowFadeParams.x;
  let x_2265 : f32 = x_690.x_AdditionalShadowFadeParams.y;
  u_xlat2.x = ((x_2259 * x_2262) + x_2265);
  let x_2269 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_2269, 0.0f, 1.0f);
  u_xlat32.x = 0.0f;
  u_xlat32.y = 0.0f;
  u_xlat32.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2282 : u32 = u_xlatu_loop_1;
    let x_2283 : u32 = u_xlatu76;
    if ((x_2282 < x_2283)) {
    } else {
      break;
    }
    let x_2286 : u32 = u_xlatu_loop_1;
    u_xlatu79 = (x_2286 >> 2u);
    let x_2290 : u32 = u_xlatu_loop_1;
    u_xlati80 = bitcast<i32>((x_2290 & 3u));
    let x_2293 : u32 = u_xlatu79;
    let x_2296 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_2293)];
    let x_2306 : i32 = u_xlati80;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2311 : vec4<u32> = indexable[x_2306];
    u_xlat79 = dot(x_2296, bitcast<vec4<f32>>(x_2311));
    let x_2315 : f32 = u_xlat79;
    u_xlati79 = i32(x_2315);
    let x_2317 : vec3<f32> = vs_INTERP7;
    let x_2328 : i32 = u_xlati79;
    let x_2330 : vec4<f32> = x_2327.x_AdditionalLightsPosition[x_2328];
    let x_2333 : i32 = u_xlati79;
    let x_2335 : vec4<f32> = x_2327.x_AdditionalLightsPosition[x_2333];
    let x_2337 : vec3<f32> = ((-(x_2317) * vec3<f32>(x_2330.w, x_2330.w, x_2330.w)) + vec3<f32>(x_2335.x, x_2335.y, x_2335.z));
    let x_2338 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2337.x, x_2337.y, x_2337.z, x_2338.w);
    let x_2340 : vec4<f32> = u_xlat8;
    let x_2342 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_2340.x, x_2340.y, x_2340.z), vec3<f32>(x_2342.x, x_2342.y, x_2342.z));
    let x_2345 : f32 = u_xlat80;
    u_xlat80 = max(x_2345, 0.00006103515625f);
    let x_2348 : f32 = u_xlat80;
    u_xlat81 = inverseSqrt(x_2348);
    let x_2350 : f32 = u_xlat81;
    let x_2352 : vec4<f32> = u_xlat8;
    let x_2354 : vec3<f32> = (vec3<f32>(x_2350, x_2350, x_2350) * vec3<f32>(x_2352.x, x_2352.y, x_2352.z));
    let x_2355 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2354.x, x_2354.y, x_2354.z, x_2355.w);
    let x_2358 : f32 = u_xlat80;
    u_xlat83 = (1.0f / x_2358);
    let x_2360 : f32 = u_xlat80;
    let x_2361 : i32 = u_xlati79;
    let x_2363 : f32 = x_2327.x_AdditionalLightsAttenuation[x_2361].x;
    u_xlat80 = (x_2360 * x_2363);
    let x_2365 : f32 = u_xlat80;
    let x_2367 : f32 = u_xlat80;
    u_xlat80 = ((-(x_2365) * x_2367) + 1.0f);
    let x_2370 : f32 = u_xlat80;
    u_xlat80 = max(x_2370, 0.0f);
    let x_2372 : f32 = u_xlat80;
    let x_2373 : f32 = u_xlat80;
    u_xlat80 = (x_2372 * x_2373);
    let x_2375 : f32 = u_xlat80;
    let x_2376 : f32 = u_xlat83;
    u_xlat80 = (x_2375 * x_2376);
    let x_2378 : i32 = u_xlati79;
    let x_2380 : vec4<f32> = x_2327.x_AdditionalLightsSpotDir[x_2378];
    let x_2382 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_2380.x, x_2380.y, x_2380.z), vec3<f32>(x_2382.x, x_2382.y, x_2382.z));
    let x_2385 : f32 = u_xlat83;
    let x_2386 : i32 = u_xlati79;
    let x_2388 : f32 = x_2327.x_AdditionalLightsAttenuation[x_2386].z;
    let x_2390 : i32 = u_xlati79;
    let x_2392 : f32 = x_2327.x_AdditionalLightsAttenuation[x_2390].w;
    u_xlat83 = ((x_2385 * x_2388) + x_2392);
    let x_2394 : f32 = u_xlat83;
    u_xlat83 = clamp(x_2394, 0.0f, 1.0f);
    let x_2396 : f32 = u_xlat83;
    let x_2397 : f32 = u_xlat83;
    u_xlat83 = (x_2396 * x_2397);
    let x_2399 : f32 = u_xlat80;
    let x_2400 : f32 = u_xlat83;
    u_xlat80 = (x_2399 * x_2400);
    let x_2404 : i32 = u_xlati79;
    let x_2406 : f32 = x_690.x_AdditionalShadowParams[x_2404].w;
    u_xlati83 = i32(x_2406);
    let x_2409 : i32 = u_xlati83;
    u_xlatb84 = (x_2409 >= 0i);
    let x_2411 : bool = u_xlatb84;
    if (x_2411) {
      let x_2415 : i32 = u_xlati79;
      let x_2417 : f32 = x_690.x_AdditionalShadowParams[x_2415].z;
      u_xlatb84 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2417, x_2417, x_2417, x_2417))));
      let x_2422 : bool = u_xlatb84;
      if (x_2422) {
        let x_2427 : vec4<f32> = u_xlat9;
        let x_2430 : vec4<f32> = u_xlat9;
        let x_2433 : vec4<bool> = (abs(vec4<f32>(x_2427.z, x_2427.z, x_2427.y, x_2427.z)) >= abs(vec4<f32>(x_2430.x, x_2430.y, x_2430.x, x_2430.x)));
        let x_2435 : vec3<bool> = vec3<bool>(x_2433.x, x_2433.y, x_2433.z);
        let x_2436 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
        let x_2439 : bool = u_xlatb10.y;
        let x_2441 : bool = u_xlatb10.x;
        u_xlatb84 = (x_2439 & x_2441);
        let x_2443 : vec4<f32> = u_xlat9;
        let x_2446 : vec4<bool> = (-(vec4<f32>(x_2443.z, x_2443.y, x_2443.z, x_2443.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2447 : vec3<bool> = vec3<bool>(x_2446.x, x_2446.y, x_2446.w);
        let x_2448 : vec4<bool> = u_xlatb10;
        u_xlatb10 = vec4<bool>(x_2447.x, x_2447.y, x_2448.z, x_2447.z);
        let x_2451 : bool = u_xlatb10.x;
        u_xlat10.x = select(4.0f, 5.0f, x_2451);
        let x_2456 : bool = u_xlatb10.y;
        u_xlat10.y = select(2.0f, 3.0f, x_2456);
        let x_2462 : bool = u_xlatb10.w;
        u_xlat85 = select(0.0f, 1.0f, x_2462);
        let x_2466 : bool = u_xlatb10.z;
        if (x_2466) {
          let x_2471 : f32 = u_xlat10.y;
          x_2467 = x_2471;
        } else {
          let x_2473 : f32 = u_xlat85;
          x_2467 = x_2473;
        }
        let x_2474 : f32 = x_2467;
        u_xlat35 = x_2474;
        let x_2476 : bool = u_xlatb84;
        if (x_2476) {
          let x_2481 : f32 = u_xlat10.x;
          x_2477 = x_2481;
        } else {
          let x_2483 : f32 = u_xlat35;
          x_2477 = x_2483;
        }
        let x_2484 : f32 = x_2477;
        u_xlat84 = x_2484;
        let x_2485 : i32 = u_xlati79;
        let x_2487 : f32 = x_690.x_AdditionalShadowParams[x_2485].w;
        u_xlat10.x = trunc(x_2487);
        let x_2490 : f32 = u_xlat84;
        let x_2492 : f32 = u_xlat10.x;
        u_xlat84 = (x_2490 + x_2492);
        let x_2494 : f32 = u_xlat84;
        u_xlati83 = i32(x_2494);
      }
      let x_2496 : i32 = u_xlati83;
      u_xlati83 = (x_2496 << bitcast<u32>(2i));
      let x_2498 : vec3<f32> = vs_INTERP7;
      let x_2501 : i32 = u_xlati83;
      let x_2504 : i32 = u_xlati83;
      let x_2508 : vec4<f32> = x_690.x_AdditionalLightsWorldToShadow[((x_2501 + 1i) / 4i)][((x_2504 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_2498.y, x_2498.y, x_2498.y, x_2498.y) * x_2508);
      let x_2510 : i32 = u_xlati83;
      let x_2512 : i32 = u_xlati83;
      let x_2515 : vec4<f32> = x_690.x_AdditionalLightsWorldToShadow[(x_2510 / 4i)][(x_2512 % 4i)];
      let x_2516 : vec3<f32> = vs_INTERP7;
      let x_2519 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2515 * vec4<f32>(x_2516.x, x_2516.x, x_2516.x, x_2516.x)) + x_2519);
      let x_2521 : i32 = u_xlati83;
      let x_2524 : i32 = u_xlati83;
      let x_2528 : vec4<f32> = x_690.x_AdditionalLightsWorldToShadow[((x_2521 + 2i) / 4i)][((x_2524 + 2i) % 4i)];
      let x_2529 : vec3<f32> = vs_INTERP7;
      let x_2532 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_2528 * vec4<f32>(x_2529.z, x_2529.z, x_2529.z, x_2529.z)) + x_2532);
      let x_2534 : vec4<f32> = u_xlat10;
      let x_2535 : i32 = u_xlati83;
      let x_2538 : i32 = u_xlati83;
      let x_2542 : vec4<f32> = x_690.x_AdditionalLightsWorldToShadow[((x_2535 + 3i) / 4i)][((x_2538 + 3i) % 4i)];
      u_xlat10 = (x_2534 + x_2542);
      let x_2544 : vec4<f32> = u_xlat10;
      let x_2546 : vec4<f32> = u_xlat10;
      let x_2548 : vec3<f32> = (vec3<f32>(x_2544.x, x_2544.y, x_2544.z) / vec3<f32>(x_2546.w, x_2546.w, x_2546.w));
      let x_2549 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2549.w);
      let x_2552 : i32 = u_xlati79;
      let x_2554 : f32 = x_690.x_AdditionalShadowParams[x_2552].y;
      u_xlatb83 = (0.0f < x_2554);
      let x_2556 : bool = u_xlatb83;
      if (x_2556) {
        let x_2559 : i32 = u_xlati79;
        let x_2561 : f32 = x_690.x_AdditionalShadowParams[x_2559].y;
        u_xlatb83 = (1.0f == x_2561);
        let x_2563 : bool = u_xlatb83;
        if (x_2563) {
          let x_2566 : vec4<f32> = u_xlat10;
          let x_2570 : vec4<f32> = x_690.x_AdditionalShadowOffset0;
          u_xlat11 = (vec4<f32>(x_2566.x, x_2566.y, x_2566.x, x_2566.y) + x_2570);
          let x_2573 : vec4<f32> = u_xlat11;
          let x_2574 : vec2<f32> = vec2<f32>(x_2573.x, x_2573.y);
          let x_2576 : f32 = u_xlat10.z;
          txVec30 = vec3<f32>(x_2574.x, x_2574.y, x_2576);
          let x_2584 : vec3<f32> = txVec30;
          let x_2586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2584.xy, x_2584.z);
          u_xlat12.x = x_2586;
          let x_2589 : vec4<f32> = u_xlat11;
          let x_2590 : vec2<f32> = vec2<f32>(x_2589.z, x_2589.w);
          let x_2592 : f32 = u_xlat10.z;
          txVec31 = vec3<f32>(x_2590.x, x_2590.y, x_2592);
          let x_2599 : vec3<f32> = txVec31;
          let x_2601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2599.xy, x_2599.z);
          u_xlat12.y = x_2601;
          let x_2603 : vec4<f32> = u_xlat10;
          let x_2607 : vec4<f32> = x_690.x_AdditionalShadowOffset1;
          u_xlat11 = (vec4<f32>(x_2603.x, x_2603.y, x_2603.x, x_2603.y) + x_2607);
          let x_2610 : vec4<f32> = u_xlat11;
          let x_2611 : vec2<f32> = vec2<f32>(x_2610.x, x_2610.y);
          let x_2613 : f32 = u_xlat10.z;
          txVec32 = vec3<f32>(x_2611.x, x_2611.y, x_2613);
          let x_2620 : vec3<f32> = txVec32;
          let x_2622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2620.xy, x_2620.z);
          u_xlat12.z = x_2622;
          let x_2625 : vec4<f32> = u_xlat11;
          let x_2626 : vec2<f32> = vec2<f32>(x_2625.z, x_2625.w);
          let x_2628 : f32 = u_xlat10.z;
          txVec33 = vec3<f32>(x_2626.x, x_2626.y, x_2628);
          let x_2635 : vec3<f32> = txVec33;
          let x_2637 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2635.xy, x_2635.z);
          u_xlat12.w = x_2637;
          let x_2639 : vec4<f32> = u_xlat12;
          u_xlat83 = dot(x_2639, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2642 : i32 = u_xlati79;
          let x_2644 : f32 = x_690.x_AdditionalShadowParams[x_2642].y;
          u_xlatb84 = (2.0f == x_2644);
          let x_2646 : bool = u_xlatb84;
          if (x_2646) {
            let x_2649 : vec4<f32> = u_xlat10;
            let x_2653 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2656 : vec2<f32> = ((vec2<f32>(x_2649.x, x_2649.y) * vec2<f32>(x_2653.z, x_2653.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2657 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2656.x, x_2656.y, x_2657.z, x_2657.w);
            let x_2659 : vec4<f32> = u_xlat11;
            let x_2661 : vec2<f32> = floor(vec2<f32>(x_2659.x, x_2659.y));
            let x_2662 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2661.x, x_2661.y, x_2662.z, x_2662.w);
            let x_2665 : vec4<f32> = u_xlat10;
            let x_2668 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2671 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_2665.x, x_2665.y) * vec2<f32>(x_2668.z, x_2668.w)) + -(vec2<f32>(x_2671.x, x_2671.y)));
            let x_2675 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_2675.x, x_2675.x, x_2675.y, x_2675.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2678 : vec4<f32> = u_xlat12;
            let x_2680 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_2678.x, x_2678.x, x_2678.z, x_2678.z) * vec4<f32>(x_2680.x, x_2680.x, x_2680.z, x_2680.z));
            let x_2683 : vec4<f32> = u_xlat13;
            let x_2685 : vec2<f32> = (vec2<f32>(x_2683.y, x_2683.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2686 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2685.x, x_2686.y, x_2685.y, x_2686.w);
            let x_2688 : vec4<f32> = u_xlat13;
            let x_2691 : vec2<f32> = u_xlat61;
            let x_2693 : vec2<f32> = ((vec2<f32>(x_2688.x, x_2688.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2691));
            let x_2694 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2693.x, x_2693.y, x_2694.z, x_2694.w);
            let x_2697 : vec2<f32> = u_xlat61;
            u_xlat63 = (-(x_2697) + vec2<f32>(1.0f, 1.0f));
            let x_2700 : vec2<f32> = u_xlat61;
            let x_2701 : vec2<f32> = min(x_2700, vec2<f32>(0.0f, 0.0f));
            let x_2702 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2701.x, x_2701.y, x_2702.z, x_2702.w);
            let x_2704 : vec4<f32> = u_xlat14;
            let x_2707 : vec4<f32> = u_xlat14;
            let x_2710 : vec2<f32> = u_xlat63;
            let x_2711 : vec2<f32> = ((-(vec2<f32>(x_2704.x, x_2704.y)) * vec2<f32>(x_2707.x, x_2707.y)) + x_2710);
            let x_2712 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2711.x, x_2711.y, x_2712.z, x_2712.w);
            let x_2714 : vec2<f32> = u_xlat61;
            u_xlat61 = max(x_2714, vec2<f32>(0.0f, 0.0f));
            let x_2716 : vec2<f32> = u_xlat61;
            let x_2718 : vec2<f32> = u_xlat61;
            let x_2720 : vec4<f32> = u_xlat12;
            u_xlat61 = ((-(x_2716) * x_2718) + vec2<f32>(x_2720.y, x_2720.w));
            let x_2723 : vec4<f32> = u_xlat14;
            let x_2725 : vec2<f32> = (vec2<f32>(x_2723.x, x_2723.y) + vec2<f32>(1.0f, 1.0f));
            let x_2726 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2725.x, x_2725.y, x_2726.z, x_2726.w);
            let x_2728 : vec2<f32> = u_xlat61;
            u_xlat61 = (x_2728 + vec2<f32>(1.0f, 1.0f));
            let x_2730 : vec4<f32> = u_xlat13;
            let x_2732 : vec2<f32> = (vec2<f32>(x_2730.x, x_2730.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2733 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2732.x, x_2732.y, x_2733.z, x_2733.w);
            let x_2735 : vec2<f32> = u_xlat63;
            let x_2736 : vec2<f32> = (x_2735 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2737 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2736.x, x_2736.y, x_2737.z, x_2737.w);
            let x_2739 : vec4<f32> = u_xlat14;
            let x_2741 : vec2<f32> = (vec2<f32>(x_2739.x, x_2739.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2742 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2741.x, x_2741.y, x_2742.z, x_2742.w);
            let x_2744 : vec2<f32> = u_xlat61;
            let x_2745 : vec2<f32> = (x_2744 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2746 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2745.x, x_2745.y, x_2746.z, x_2746.w);
            let x_2748 : vec4<f32> = u_xlat12;
            u_xlat61 = (vec2<f32>(x_2748.y, x_2748.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2752 : f32 = u_xlat14.x;
            u_xlat15.z = x_2752;
            let x_2755 : f32 = u_xlat61.x;
            u_xlat15.w = x_2755;
            let x_2758 : f32 = u_xlat16.x;
            u_xlat13.z = x_2758;
            let x_2761 : f32 = u_xlat12.x;
            u_xlat13.w = x_2761;
            let x_2763 : vec4<f32> = u_xlat13;
            let x_2765 : vec4<f32> = u_xlat15;
            u_xlat17 = (vec4<f32>(x_2763.z, x_2763.w, x_2763.x, x_2763.z) + vec4<f32>(x_2765.z, x_2765.w, x_2765.x, x_2765.z));
            let x_2769 : f32 = u_xlat15.y;
            u_xlat14.z = x_2769;
            let x_2772 : f32 = u_xlat61.y;
            u_xlat14.w = x_2772;
            let x_2775 : f32 = u_xlat13.y;
            u_xlat16.z = x_2775;
            let x_2778 : f32 = u_xlat12.z;
            u_xlat16.w = x_2778;
            let x_2780 : vec4<f32> = u_xlat14;
            let x_2782 : vec4<f32> = u_xlat16;
            let x_2784 : vec3<f32> = (vec3<f32>(x_2780.z, x_2780.y, x_2780.w) + vec3<f32>(x_2782.z, x_2782.y, x_2782.w));
            let x_2785 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2784.x, x_2784.y, x_2784.z, x_2785.w);
            let x_2787 : vec4<f32> = u_xlat13;
            let x_2789 : vec4<f32> = u_xlat17;
            let x_2791 : vec3<f32> = (vec3<f32>(x_2787.x, x_2787.z, x_2787.w) / vec3<f32>(x_2789.z, x_2789.w, x_2789.y));
            let x_2792 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2791.x, x_2791.y, x_2791.z, x_2792.w);
            let x_2794 : vec4<f32> = u_xlat13;
            let x_2796 : vec3<f32> = (vec3<f32>(x_2794.x, x_2794.y, x_2794.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2797 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
            let x_2799 : vec4<f32> = u_xlat16;
            let x_2801 : vec4<f32> = u_xlat12;
            let x_2803 : vec3<f32> = (vec3<f32>(x_2799.z, x_2799.y, x_2799.w) / vec3<f32>(x_2801.x, x_2801.y, x_2801.z));
            let x_2804 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2803.x, x_2803.y, x_2803.z, x_2804.w);
            let x_2806 : vec4<f32> = u_xlat14;
            let x_2808 : vec3<f32> = (vec3<f32>(x_2806.x, x_2806.y, x_2806.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2809 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2808.x, x_2808.y, x_2808.z, x_2809.w);
            let x_2811 : vec4<f32> = u_xlat13;
            let x_2814 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2816 : vec3<f32> = (vec3<f32>(x_2811.y, x_2811.x, x_2811.z) * vec3<f32>(x_2814.x, x_2814.x, x_2814.x));
            let x_2817 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2816.x, x_2816.y, x_2816.z, x_2817.w);
            let x_2819 : vec4<f32> = u_xlat14;
            let x_2822 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2824 : vec3<f32> = (vec3<f32>(x_2819.x, x_2819.y, x_2819.z) * vec3<f32>(x_2822.y, x_2822.y, x_2822.y));
            let x_2825 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2824.x, x_2824.y, x_2824.z, x_2825.w);
            let x_2828 : f32 = u_xlat14.x;
            u_xlat13.w = x_2828;
            let x_2830 : vec4<f32> = u_xlat11;
            let x_2833 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2836 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2830.x, x_2830.y, x_2830.x, x_2830.y) * vec4<f32>(x_2833.x, x_2833.y, x_2833.x, x_2833.y)) + vec4<f32>(x_2836.y, x_2836.w, x_2836.x, x_2836.w));
            let x_2839 : vec4<f32> = u_xlat11;
            let x_2842 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2845 : vec4<f32> = u_xlat13;
            u_xlat61 = ((vec2<f32>(x_2839.x, x_2839.y) * vec2<f32>(x_2842.x, x_2842.y)) + vec2<f32>(x_2845.z, x_2845.w));
            let x_2849 : f32 = u_xlat13.y;
            u_xlat14.w = x_2849;
            let x_2851 : vec4<f32> = u_xlat14;
            let x_2852 : vec2<f32> = vec2<f32>(x_2851.y, x_2851.z);
            let x_2853 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2853.x, x_2852.x, x_2853.z, x_2852.y);
            let x_2855 : vec4<f32> = u_xlat11;
            let x_2858 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2861 : vec4<f32> = u_xlat13;
            u_xlat16 = ((vec4<f32>(x_2855.x, x_2855.y, x_2855.x, x_2855.y) * vec4<f32>(x_2858.x, x_2858.y, x_2858.x, x_2858.y)) + vec4<f32>(x_2861.x, x_2861.y, x_2861.z, x_2861.y));
            let x_2864 : vec4<f32> = u_xlat11;
            let x_2867 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2870 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2864.x, x_2864.y, x_2864.x, x_2864.y) * vec4<f32>(x_2867.x, x_2867.y, x_2867.x, x_2867.y)) + vec4<f32>(x_2870.w, x_2870.y, x_2870.w, x_2870.z));
            let x_2873 : vec4<f32> = u_xlat11;
            let x_2876 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_2879 : vec4<f32> = u_xlat13;
            u_xlat13 = ((vec4<f32>(x_2873.x, x_2873.y, x_2873.x, x_2873.y) * vec4<f32>(x_2876.x, x_2876.y, x_2876.x, x_2876.y)) + vec4<f32>(x_2879.x, x_2879.w, x_2879.z, x_2879.w));
            let x_2882 : vec4<f32> = u_xlat12;
            let x_2884 : vec4<f32> = u_xlat17;
            u_xlat18 = (vec4<f32>(x_2882.x, x_2882.x, x_2882.x, x_2882.y) * vec4<f32>(x_2884.z, x_2884.w, x_2884.y, x_2884.z));
            let x_2887 : vec4<f32> = u_xlat12;
            let x_2889 : vec4<f32> = u_xlat17;
            u_xlat19 = (vec4<f32>(x_2887.y, x_2887.y, x_2887.z, x_2887.z) * x_2889);
            let x_2892 : f32 = u_xlat12.z;
            let x_2894 : f32 = u_xlat17.y;
            u_xlat84 = (x_2892 * x_2894);
            let x_2897 : vec4<f32> = u_xlat15;
            let x_2898 : vec2<f32> = vec2<f32>(x_2897.x, x_2897.y);
            let x_2900 : f32 = u_xlat10.z;
            txVec34 = vec3<f32>(x_2898.x, x_2898.y, x_2900);
            let x_2907 : vec3<f32> = txVec34;
            let x_2909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2907.xy, x_2907.z);
            u_xlat85 = x_2909;
            let x_2911 : vec4<f32> = u_xlat15;
            let x_2912 : vec2<f32> = vec2<f32>(x_2911.z, x_2911.w);
            let x_2914 : f32 = u_xlat10.z;
            txVec35 = vec3<f32>(x_2912.x, x_2912.y, x_2914);
            let x_2921 : vec3<f32> = txVec35;
            let x_2923 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2921.xy, x_2921.z);
            u_xlat11.x = x_2923;
            let x_2926 : f32 = u_xlat11.x;
            let x_2928 : f32 = u_xlat18.y;
            u_xlat11.x = (x_2926 * x_2928);
            let x_2932 : f32 = u_xlat18.x;
            let x_2933 : f32 = u_xlat85;
            let x_2936 : f32 = u_xlat11.x;
            u_xlat85 = ((x_2932 * x_2933) + x_2936);
            let x_2939 : vec2<f32> = u_xlat61;
            let x_2941 : f32 = u_xlat10.z;
            txVec36 = vec3<f32>(x_2939.x, x_2939.y, x_2941);
            let x_2948 : vec3<f32> = txVec36;
            let x_2950 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2948.xy, x_2948.z);
            u_xlat11.x = x_2950;
            let x_2953 : f32 = u_xlat18.z;
            let x_2955 : f32 = u_xlat11.x;
            let x_2957 : f32 = u_xlat85;
            u_xlat85 = ((x_2953 * x_2955) + x_2957);
            let x_2960 : vec4<f32> = u_xlat14;
            let x_2961 : vec2<f32> = vec2<f32>(x_2960.x, x_2960.y);
            let x_2963 : f32 = u_xlat10.z;
            txVec37 = vec3<f32>(x_2961.x, x_2961.y, x_2963);
            let x_2970 : vec3<f32> = txVec37;
            let x_2972 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2970.xy, x_2970.z);
            u_xlat11.x = x_2972;
            let x_2975 : f32 = u_xlat18.w;
            let x_2977 : f32 = u_xlat11.x;
            let x_2979 : f32 = u_xlat85;
            u_xlat85 = ((x_2975 * x_2977) + x_2979);
            let x_2982 : vec4<f32> = u_xlat16;
            let x_2983 : vec2<f32> = vec2<f32>(x_2982.x, x_2982.y);
            let x_2985 : f32 = u_xlat10.z;
            txVec38 = vec3<f32>(x_2983.x, x_2983.y, x_2985);
            let x_2992 : vec3<f32> = txVec38;
            let x_2994 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2992.xy, x_2992.z);
            u_xlat11.x = x_2994;
            let x_2997 : f32 = u_xlat19.x;
            let x_2999 : f32 = u_xlat11.x;
            let x_3001 : f32 = u_xlat85;
            u_xlat85 = ((x_2997 * x_2999) + x_3001);
            let x_3004 : vec4<f32> = u_xlat16;
            let x_3005 : vec2<f32> = vec2<f32>(x_3004.z, x_3004.w);
            let x_3007 : f32 = u_xlat10.z;
            txVec39 = vec3<f32>(x_3005.x, x_3005.y, x_3007);
            let x_3014 : vec3<f32> = txVec39;
            let x_3016 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3014.xy, x_3014.z);
            u_xlat11.x = x_3016;
            let x_3019 : f32 = u_xlat19.y;
            let x_3021 : f32 = u_xlat11.x;
            let x_3023 : f32 = u_xlat85;
            u_xlat85 = ((x_3019 * x_3021) + x_3023);
            let x_3026 : vec4<f32> = u_xlat14;
            let x_3027 : vec2<f32> = vec2<f32>(x_3026.z, x_3026.w);
            let x_3029 : f32 = u_xlat10.z;
            txVec40 = vec3<f32>(x_3027.x, x_3027.y, x_3029);
            let x_3036 : vec3<f32> = txVec40;
            let x_3038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
            u_xlat11.x = x_3038;
            let x_3041 : f32 = u_xlat19.z;
            let x_3043 : f32 = u_xlat11.x;
            let x_3045 : f32 = u_xlat85;
            u_xlat85 = ((x_3041 * x_3043) + x_3045);
            let x_3048 : vec4<f32> = u_xlat13;
            let x_3049 : vec2<f32> = vec2<f32>(x_3048.x, x_3048.y);
            let x_3051 : f32 = u_xlat10.z;
            txVec41 = vec3<f32>(x_3049.x, x_3049.y, x_3051);
            let x_3058 : vec3<f32> = txVec41;
            let x_3060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3058.xy, x_3058.z);
            u_xlat11.x = x_3060;
            let x_3063 : f32 = u_xlat19.w;
            let x_3065 : f32 = u_xlat11.x;
            let x_3067 : f32 = u_xlat85;
            u_xlat85 = ((x_3063 * x_3065) + x_3067);
            let x_3070 : vec4<f32> = u_xlat13;
            let x_3071 : vec2<f32> = vec2<f32>(x_3070.z, x_3070.w);
            let x_3073 : f32 = u_xlat10.z;
            txVec42 = vec3<f32>(x_3071.x, x_3071.y, x_3073);
            let x_3080 : vec3<f32> = txVec42;
            let x_3082 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3080.xy, x_3080.z);
            u_xlat11.x = x_3082;
            let x_3084 : f32 = u_xlat84;
            let x_3086 : f32 = u_xlat11.x;
            let x_3088 : f32 = u_xlat85;
            u_xlat83 = ((x_3084 * x_3086) + x_3088);
          } else {
            let x_3091 : vec4<f32> = u_xlat10;
            let x_3094 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3097 : vec2<f32> = ((vec2<f32>(x_3091.x, x_3091.y) * vec2<f32>(x_3094.z, x_3094.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3098 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3097.x, x_3097.y, x_3098.z, x_3098.w);
            let x_3100 : vec4<f32> = u_xlat11;
            let x_3102 : vec2<f32> = floor(vec2<f32>(x_3100.x, x_3100.y));
            let x_3103 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3102.x, x_3102.y, x_3103.z, x_3103.w);
            let x_3105 : vec4<f32> = u_xlat10;
            let x_3108 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3111 : vec4<f32> = u_xlat11;
            u_xlat61 = ((vec2<f32>(x_3105.x, x_3105.y) * vec2<f32>(x_3108.z, x_3108.w)) + -(vec2<f32>(x_3111.x, x_3111.y)));
            let x_3115 : vec2<f32> = u_xlat61;
            u_xlat12 = (vec4<f32>(x_3115.x, x_3115.x, x_3115.y, x_3115.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3118 : vec4<f32> = u_xlat12;
            let x_3120 : vec4<f32> = u_xlat12;
            u_xlat13 = (vec4<f32>(x_3118.x, x_3118.x, x_3118.z, x_3118.z) * vec4<f32>(x_3120.x, x_3120.x, x_3120.z, x_3120.z));
            let x_3123 : vec4<f32> = u_xlat13;
            let x_3125 : vec2<f32> = (vec2<f32>(x_3123.y, x_3123.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3126 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3126.x, x_3125.x, x_3126.z, x_3125.y);
            let x_3128 : vec4<f32> = u_xlat13;
            let x_3131 : vec2<f32> = u_xlat61;
            let x_3133 : vec2<f32> = ((vec2<f32>(x_3128.x, x_3128.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3131));
            let x_3134 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3133.x, x_3134.y, x_3133.y, x_3134.w);
            let x_3136 : vec2<f32> = u_xlat61;
            let x_3138 : vec2<f32> = (-(x_3136) + vec2<f32>(1.0f, 1.0f));
            let x_3139 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3138.x, x_3138.y, x_3139.z, x_3139.w);
            let x_3141 : vec2<f32> = u_xlat61;
            u_xlat63 = min(x_3141, vec2<f32>(0.0f, 0.0f));
            let x_3143 : vec2<f32> = u_xlat63;
            let x_3145 : vec2<f32> = u_xlat63;
            let x_3147 : vec4<f32> = u_xlat13;
            let x_3149 : vec2<f32> = ((-(x_3143) * x_3145) + vec2<f32>(x_3147.x, x_3147.y));
            let x_3150 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3149.x, x_3149.y, x_3150.z, x_3150.w);
            let x_3152 : vec2<f32> = u_xlat61;
            u_xlat63 = max(x_3152, vec2<f32>(0.0f, 0.0f));
            let x_3155 : vec2<f32> = u_xlat63;
            let x_3157 : vec2<f32> = u_xlat63;
            let x_3159 : vec4<f32> = u_xlat12;
            let x_3161 : vec2<f32> = ((-(x_3155) * x_3157) + vec2<f32>(x_3159.y, x_3159.w));
            let x_3162 : vec3<f32> = u_xlat37;
            u_xlat37 = vec3<f32>(x_3161.x, x_3162.y, x_3161.y);
            let x_3164 : vec4<f32> = u_xlat13;
            let x_3166 : vec2<f32> = (vec2<f32>(x_3164.x, x_3164.y) + vec2<f32>(2.0f, 2.0f));
            let x_3167 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3166.x, x_3166.y, x_3167.z, x_3167.w);
            let x_3169 : vec3<f32> = u_xlat37;
            let x_3171 : vec2<f32> = (vec2<f32>(x_3169.x, x_3169.z) + vec2<f32>(2.0f, 2.0f));
            let x_3172 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3172.x, x_3171.x, x_3172.z, x_3171.y);
            let x_3175 : f32 = u_xlat12.y;
            u_xlat15.z = (x_3175 * 0.08163200318813323975f);
            let x_3178 : vec4<f32> = u_xlat12;
            let x_3180 : vec3<f32> = (vec3<f32>(x_3178.z, x_3178.x, x_3178.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3181 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3180.x, x_3180.y, x_3180.z, x_3181.w);
            let x_3183 : vec4<f32> = u_xlat13;
            let x_3185 : vec2<f32> = (vec2<f32>(x_3183.x, x_3183.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3186 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3185.x, x_3185.y, x_3186.z, x_3186.w);
            let x_3189 : f32 = u_xlat16.y;
            u_xlat15.x = x_3189;
            let x_3191 : vec2<f32> = u_xlat61;
            let x_3194 : vec2<f32> = ((vec2<f32>(x_3191.x, x_3191.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3195 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3195.x, x_3194.x, x_3195.z, x_3194.y);
            let x_3197 : vec2<f32> = u_xlat61;
            let x_3200 : vec2<f32> = ((vec2<f32>(x_3197.x, x_3197.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3201 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3200.x, x_3201.y, x_3200.y, x_3201.w);
            let x_3204 : f32 = u_xlat12.x;
            u_xlat13.y = x_3204;
            let x_3207 : f32 = u_xlat14.y;
            u_xlat13.w = x_3207;
            let x_3209 : vec4<f32> = u_xlat13;
            let x_3210 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3209 + x_3210);
            let x_3212 : vec2<f32> = u_xlat61;
            let x_3215 : vec2<f32> = ((vec2<f32>(x_3212.y, x_3212.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3216 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3216.x, x_3215.x, x_3216.z, x_3215.y);
            let x_3218 : vec2<f32> = u_xlat61;
            let x_3221 : vec2<f32> = ((vec2<f32>(x_3218.y, x_3218.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3222 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3221.x, x_3222.y, x_3221.y, x_3222.w);
            let x_3225 : f32 = u_xlat12.y;
            u_xlat14.y = x_3225;
            let x_3227 : vec4<f32> = u_xlat14;
            let x_3228 : vec4<f32> = u_xlat16;
            u_xlat12 = (x_3227 + x_3228);
            let x_3230 : vec4<f32> = u_xlat13;
            let x_3231 : vec4<f32> = u_xlat15;
            u_xlat13 = (x_3230 / x_3231);
            let x_3233 : vec4<f32> = u_xlat13;
            u_xlat13 = (x_3233 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3235 : vec4<f32> = u_xlat14;
            let x_3236 : vec4<f32> = u_xlat12;
            u_xlat14 = (x_3235 / x_3236);
            let x_3238 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3238 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3240 : vec4<f32> = u_xlat13;
            let x_3243 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            u_xlat13 = (vec4<f32>(x_3240.w, x_3240.x, x_3240.y, x_3240.z) * vec4<f32>(x_3243.x, x_3243.x, x_3243.x, x_3243.x));
            let x_3246 : vec4<f32> = u_xlat14;
            let x_3249 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3246.x, x_3246.w, x_3246.y, x_3246.z) * vec4<f32>(x_3249.y, x_3249.y, x_3249.y, x_3249.y));
            let x_3252 : vec4<f32> = u_xlat13;
            let x_3253 : vec3<f32> = vec3<f32>(x_3252.y, x_3252.z, x_3252.w);
            let x_3254 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3253.x, x_3254.y, x_3253.y, x_3253.z);
            let x_3257 : f32 = u_xlat14.x;
            u_xlat16.y = x_3257;
            let x_3259 : vec4<f32> = u_xlat11;
            let x_3262 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3265 : vec4<f32> = u_xlat16;
            u_xlat17 = ((vec4<f32>(x_3259.x, x_3259.y, x_3259.x, x_3259.y) * vec4<f32>(x_3262.x, x_3262.y, x_3262.x, x_3262.y)) + vec4<f32>(x_3265.x, x_3265.y, x_3265.z, x_3265.y));
            let x_3268 : vec4<f32> = u_xlat11;
            let x_3271 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3274 : vec4<f32> = u_xlat16;
            u_xlat61 = ((vec2<f32>(x_3268.x, x_3268.y) * vec2<f32>(x_3271.x, x_3271.y)) + vec2<f32>(x_3274.w, x_3274.y));
            let x_3278 : f32 = u_xlat16.y;
            u_xlat13.y = x_3278;
            let x_3281 : f32 = u_xlat14.z;
            u_xlat16.y = x_3281;
            let x_3283 : vec4<f32> = u_xlat11;
            let x_3286 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3289 : vec4<f32> = u_xlat16;
            u_xlat18 = ((vec4<f32>(x_3283.x, x_3283.y, x_3283.x, x_3283.y) * vec4<f32>(x_3286.x, x_3286.y, x_3286.x, x_3286.y)) + vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3289.y));
            let x_3292 : vec4<f32> = u_xlat11;
            let x_3295 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3298 : vec4<f32> = u_xlat16;
            let x_3300 : vec2<f32> = ((vec2<f32>(x_3292.x, x_3292.y) * vec2<f32>(x_3295.x, x_3295.y)) + vec2<f32>(x_3298.w, x_3298.y));
            let x_3301 : vec4<f32> = u_xlat19;
            u_xlat19 = vec4<f32>(x_3300.x, x_3300.y, x_3301.z, x_3301.w);
            let x_3304 : f32 = u_xlat16.y;
            u_xlat13.z = x_3304;
            let x_3307 : vec4<f32> = u_xlat11;
            let x_3310 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3313 : vec4<f32> = u_xlat13;
            u_xlat20 = ((vec4<f32>(x_3307.x, x_3307.y, x_3307.x, x_3307.y) * vec4<f32>(x_3310.x, x_3310.y, x_3310.x, x_3310.y)) + vec4<f32>(x_3313.x, x_3313.y, x_3313.x, x_3313.z));
            let x_3317 : f32 = u_xlat14.w;
            u_xlat16.y = x_3317;
            let x_3320 : vec4<f32> = u_xlat11;
            let x_3323 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3326 : vec4<f32> = u_xlat16;
            u_xlat21 = ((vec4<f32>(x_3320.x, x_3320.y, x_3320.x, x_3320.y) * vec4<f32>(x_3323.x, x_3323.y, x_3323.x, x_3323.y)) + vec4<f32>(x_3326.x, x_3326.y, x_3326.z, x_3326.y));
            let x_3330 : vec4<f32> = u_xlat11;
            let x_3333 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3336 : vec4<f32> = u_xlat16;
            u_xlat38 = ((vec2<f32>(x_3330.x, x_3330.y) * vec2<f32>(x_3333.x, x_3333.y)) + vec2<f32>(x_3336.w, x_3336.y));
            let x_3340 : f32 = u_xlat16.y;
            u_xlat13.w = x_3340;
            let x_3343 : vec4<f32> = u_xlat11;
            let x_3346 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3349 : vec4<f32> = u_xlat13;
            u_xlat69 = ((vec2<f32>(x_3343.x, x_3343.y) * vec2<f32>(x_3346.x, x_3346.y)) + vec2<f32>(x_3349.x, x_3349.w));
            let x_3352 : vec4<f32> = u_xlat16;
            let x_3353 : vec3<f32> = vec3<f32>(x_3352.x, x_3352.z, x_3352.w);
            let x_3354 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3353.x, x_3354.y, x_3353.y, x_3353.z);
            let x_3356 : vec4<f32> = u_xlat11;
            let x_3359 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3362 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_3356.x, x_3356.y, x_3356.x, x_3356.y) * vec4<f32>(x_3359.x, x_3359.y, x_3359.x, x_3359.y)) + vec4<f32>(x_3362.x, x_3362.y, x_3362.z, x_3362.y));
            let x_3365 : vec4<f32> = u_xlat11;
            let x_3368 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3371 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_3365.x, x_3365.y) * vec2<f32>(x_3368.x, x_3368.y)) + vec2<f32>(x_3371.w, x_3371.y));
            let x_3375 : f32 = u_xlat13.x;
            u_xlat14.x = x_3375;
            let x_3377 : vec4<f32> = u_xlat11;
            let x_3380 : vec4<f32> = x_690.x_AdditionalShadowmapSize;
            let x_3383 : vec4<f32> = u_xlat14;
            let x_3385 : vec2<f32> = ((vec2<f32>(x_3377.x, x_3377.y) * vec2<f32>(x_3380.x, x_3380.y)) + vec2<f32>(x_3383.x, x_3383.y));
            let x_3386 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_3385.x, x_3385.y, x_3386.z, x_3386.w);
            let x_3389 : vec4<f32> = u_xlat12;
            let x_3391 : vec4<f32> = u_xlat15;
            u_xlat22 = (vec4<f32>(x_3389.x, x_3389.x, x_3389.x, x_3389.x) * x_3391);
            let x_3394 : vec4<f32> = u_xlat12;
            let x_3396 : vec4<f32> = u_xlat15;
            u_xlat23 = (vec4<f32>(x_3394.y, x_3394.y, x_3394.y, x_3394.y) * x_3396);
            let x_3399 : vec4<f32> = u_xlat12;
            let x_3401 : vec4<f32> = u_xlat15;
            u_xlat24 = (vec4<f32>(x_3399.z, x_3399.z, x_3399.z, x_3399.z) * x_3401);
            let x_3403 : vec4<f32> = u_xlat12;
            let x_3405 : vec4<f32> = u_xlat15;
            u_xlat12 = (vec4<f32>(x_3403.w, x_3403.w, x_3403.w, x_3403.w) * x_3405);
            let x_3408 : vec4<f32> = u_xlat17;
            let x_3409 : vec2<f32> = vec2<f32>(x_3408.x, x_3408.y);
            let x_3411 : f32 = u_xlat10.z;
            txVec43 = vec3<f32>(x_3409.x, x_3409.y, x_3411);
            let x_3418 : vec3<f32> = txVec43;
            let x_3420 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3418.xy, x_3418.z);
            u_xlat84 = x_3420;
            let x_3422 : vec4<f32> = u_xlat17;
            let x_3423 : vec2<f32> = vec2<f32>(x_3422.z, x_3422.w);
            let x_3425 : f32 = u_xlat10.z;
            txVec44 = vec3<f32>(x_3423.x, x_3423.y, x_3425);
            let x_3432 : vec3<f32> = txVec44;
            let x_3434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3432.xy, x_3432.z);
            u_xlat85 = x_3434;
            let x_3435 : f32 = u_xlat85;
            let x_3437 : f32 = u_xlat22.y;
            u_xlat85 = (x_3435 * x_3437);
            let x_3440 : f32 = u_xlat22.x;
            let x_3441 : f32 = u_xlat84;
            let x_3443 : f32 = u_xlat85;
            u_xlat84 = ((x_3440 * x_3441) + x_3443);
            let x_3446 : vec2<f32> = u_xlat61;
            let x_3448 : f32 = u_xlat10.z;
            txVec45 = vec3<f32>(x_3446.x, x_3446.y, x_3448);
            let x_3455 : vec3<f32> = txVec45;
            let x_3457 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3455.xy, x_3455.z);
            u_xlat85 = x_3457;
            let x_3459 : f32 = u_xlat22.z;
            let x_3460 : f32 = u_xlat85;
            let x_3462 : f32 = u_xlat84;
            u_xlat84 = ((x_3459 * x_3460) + x_3462);
            let x_3465 : vec4<f32> = u_xlat20;
            let x_3466 : vec2<f32> = vec2<f32>(x_3465.x, x_3465.y);
            let x_3468 : f32 = u_xlat10.z;
            txVec46 = vec3<f32>(x_3466.x, x_3466.y, x_3468);
            let x_3475 : vec3<f32> = txVec46;
            let x_3477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3475.xy, x_3475.z);
            u_xlat85 = x_3477;
            let x_3479 : f32 = u_xlat22.w;
            let x_3480 : f32 = u_xlat85;
            let x_3482 : f32 = u_xlat84;
            u_xlat84 = ((x_3479 * x_3480) + x_3482);
            let x_3485 : vec4<f32> = u_xlat18;
            let x_3486 : vec2<f32> = vec2<f32>(x_3485.x, x_3485.y);
            let x_3488 : f32 = u_xlat10.z;
            txVec47 = vec3<f32>(x_3486.x, x_3486.y, x_3488);
            let x_3495 : vec3<f32> = txVec47;
            let x_3497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3495.xy, x_3495.z);
            u_xlat85 = x_3497;
            let x_3499 : f32 = u_xlat23.x;
            let x_3500 : f32 = u_xlat85;
            let x_3502 : f32 = u_xlat84;
            u_xlat84 = ((x_3499 * x_3500) + x_3502);
            let x_3505 : vec4<f32> = u_xlat18;
            let x_3506 : vec2<f32> = vec2<f32>(x_3505.z, x_3505.w);
            let x_3508 : f32 = u_xlat10.z;
            txVec48 = vec3<f32>(x_3506.x, x_3506.y, x_3508);
            let x_3515 : vec3<f32> = txVec48;
            let x_3517 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3515.xy, x_3515.z);
            u_xlat85 = x_3517;
            let x_3519 : f32 = u_xlat23.y;
            let x_3520 : f32 = u_xlat85;
            let x_3522 : f32 = u_xlat84;
            u_xlat84 = ((x_3519 * x_3520) + x_3522);
            let x_3525 : vec4<f32> = u_xlat19;
            let x_3526 : vec2<f32> = vec2<f32>(x_3525.x, x_3525.y);
            let x_3528 : f32 = u_xlat10.z;
            txVec49 = vec3<f32>(x_3526.x, x_3526.y, x_3528);
            let x_3535 : vec3<f32> = txVec49;
            let x_3537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3535.xy, x_3535.z);
            u_xlat85 = x_3537;
            let x_3539 : f32 = u_xlat23.z;
            let x_3540 : f32 = u_xlat85;
            let x_3542 : f32 = u_xlat84;
            u_xlat84 = ((x_3539 * x_3540) + x_3542);
            let x_3545 : vec4<f32> = u_xlat20;
            let x_3546 : vec2<f32> = vec2<f32>(x_3545.z, x_3545.w);
            let x_3548 : f32 = u_xlat10.z;
            txVec50 = vec3<f32>(x_3546.x, x_3546.y, x_3548);
            let x_3555 : vec3<f32> = txVec50;
            let x_3557 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3555.xy, x_3555.z);
            u_xlat85 = x_3557;
            let x_3559 : f32 = u_xlat23.w;
            let x_3560 : f32 = u_xlat85;
            let x_3562 : f32 = u_xlat84;
            u_xlat84 = ((x_3559 * x_3560) + x_3562);
            let x_3565 : vec4<f32> = u_xlat21;
            let x_3566 : vec2<f32> = vec2<f32>(x_3565.x, x_3565.y);
            let x_3568 : f32 = u_xlat10.z;
            txVec51 = vec3<f32>(x_3566.x, x_3566.y, x_3568);
            let x_3575 : vec3<f32> = txVec51;
            let x_3577 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3575.xy, x_3575.z);
            u_xlat85 = x_3577;
            let x_3579 : f32 = u_xlat24.x;
            let x_3580 : f32 = u_xlat85;
            let x_3582 : f32 = u_xlat84;
            u_xlat84 = ((x_3579 * x_3580) + x_3582);
            let x_3585 : vec4<f32> = u_xlat21;
            let x_3586 : vec2<f32> = vec2<f32>(x_3585.z, x_3585.w);
            let x_3588 : f32 = u_xlat10.z;
            txVec52 = vec3<f32>(x_3586.x, x_3586.y, x_3588);
            let x_3595 : vec3<f32> = txVec52;
            let x_3597 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3595.xy, x_3595.z);
            u_xlat85 = x_3597;
            let x_3599 : f32 = u_xlat24.y;
            let x_3600 : f32 = u_xlat85;
            let x_3602 : f32 = u_xlat84;
            u_xlat84 = ((x_3599 * x_3600) + x_3602);
            let x_3605 : vec2<f32> = u_xlat38;
            let x_3607 : f32 = u_xlat10.z;
            txVec53 = vec3<f32>(x_3605.x, x_3605.y, x_3607);
            let x_3614 : vec3<f32> = txVec53;
            let x_3616 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3614.xy, x_3614.z);
            u_xlat85 = x_3616;
            let x_3618 : f32 = u_xlat24.z;
            let x_3619 : f32 = u_xlat85;
            let x_3621 : f32 = u_xlat84;
            u_xlat84 = ((x_3618 * x_3619) + x_3621);
            let x_3624 : vec2<f32> = u_xlat69;
            let x_3626 : f32 = u_xlat10.z;
            txVec54 = vec3<f32>(x_3624.x, x_3624.y, x_3626);
            let x_3633 : vec3<f32> = txVec54;
            let x_3635 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3633.xy, x_3633.z);
            u_xlat85 = x_3635;
            let x_3637 : f32 = u_xlat24.w;
            let x_3638 : f32 = u_xlat85;
            let x_3640 : f32 = u_xlat84;
            u_xlat84 = ((x_3637 * x_3638) + x_3640);
            let x_3643 : vec4<f32> = u_xlat16;
            let x_3644 : vec2<f32> = vec2<f32>(x_3643.x, x_3643.y);
            let x_3646 : f32 = u_xlat10.z;
            txVec55 = vec3<f32>(x_3644.x, x_3644.y, x_3646);
            let x_3653 : vec3<f32> = txVec55;
            let x_3655 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3653.xy, x_3653.z);
            u_xlat85 = x_3655;
            let x_3657 : f32 = u_xlat12.x;
            let x_3658 : f32 = u_xlat85;
            let x_3660 : f32 = u_xlat84;
            u_xlat84 = ((x_3657 * x_3658) + x_3660);
            let x_3663 : vec4<f32> = u_xlat16;
            let x_3664 : vec2<f32> = vec2<f32>(x_3663.z, x_3663.w);
            let x_3666 : f32 = u_xlat10.z;
            txVec56 = vec3<f32>(x_3664.x, x_3664.y, x_3666);
            let x_3673 : vec3<f32> = txVec56;
            let x_3675 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3673.xy, x_3673.z);
            u_xlat85 = x_3675;
            let x_3677 : f32 = u_xlat12.y;
            let x_3678 : f32 = u_xlat85;
            let x_3680 : f32 = u_xlat84;
            u_xlat84 = ((x_3677 * x_3678) + x_3680);
            let x_3683 : vec2<f32> = u_xlat64;
            let x_3685 : f32 = u_xlat10.z;
            txVec57 = vec3<f32>(x_3683.x, x_3683.y, x_3685);
            let x_3692 : vec3<f32> = txVec57;
            let x_3694 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3692.xy, x_3692.z);
            u_xlat85 = x_3694;
            let x_3696 : f32 = u_xlat12.z;
            let x_3697 : f32 = u_xlat85;
            let x_3699 : f32 = u_xlat84;
            u_xlat84 = ((x_3696 * x_3697) + x_3699);
            let x_3702 : vec4<f32> = u_xlat11;
            let x_3703 : vec2<f32> = vec2<f32>(x_3702.x, x_3702.y);
            let x_3705 : f32 = u_xlat10.z;
            txVec58 = vec3<f32>(x_3703.x, x_3703.y, x_3705);
            let x_3712 : vec3<f32> = txVec58;
            let x_3714 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3712.xy, x_3712.z);
            u_xlat85 = x_3714;
            let x_3716 : f32 = u_xlat12.w;
            let x_3717 : f32 = u_xlat85;
            let x_3719 : f32 = u_xlat84;
            u_xlat83 = ((x_3716 * x_3717) + x_3719);
          }
        }
      } else {
        let x_3723 : vec4<f32> = u_xlat10;
        let x_3724 : vec2<f32> = vec2<f32>(x_3723.x, x_3723.y);
        let x_3726 : f32 = u_xlat10.z;
        txVec59 = vec3<f32>(x_3724.x, x_3724.y, x_3726);
        let x_3733 : vec3<f32> = txVec59;
        let x_3735 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3733.xy, x_3733.z);
        u_xlat83 = x_3735;
      }
      let x_3736 : i32 = u_xlati79;
      let x_3738 : f32 = x_690.x_AdditionalShadowParams[x_3736].x;
      u_xlat84 = (1.0f + -(x_3738));
      let x_3741 : f32 = u_xlat83;
      let x_3742 : i32 = u_xlati79;
      let x_3744 : f32 = x_690.x_AdditionalShadowParams[x_3742].x;
      let x_3746 : f32 = u_xlat84;
      u_xlat83 = ((x_3741 * x_3744) + x_3746);
      let x_3749 : f32 = u_xlat10.z;
      u_xlatb84 = (0.0f >= x_3749);
      let x_3752 : f32 = u_xlat10.z;
      u_xlatb10.x = (x_3752 >= 1.0f);
      let x_3755 : bool = u_xlatb84;
      let x_3757 : bool = u_xlatb10.x;
      u_xlatb84 = (x_3755 | x_3757);
      let x_3759 : bool = u_xlatb84;
      let x_3760 : f32 = u_xlat83;
      u_xlat83 = select(x_3760, 1.0f, x_3759);
    } else {
      u_xlat83 = 1.0f;
    }
    let x_3763 : f32 = u_xlat83;
    u_xlat84 = (-(x_3763) + 1.0f);
    let x_3767 : f32 = u_xlat2.x;
    let x_3768 : f32 = u_xlat84;
    let x_3770 : f32 = u_xlat83;
    u_xlat83 = ((x_3767 * x_3768) + x_3770);
    let x_3772 : f32 = u_xlat80;
    let x_3773 : f32 = u_xlat83;
    u_xlat80 = (x_3772 * x_3773);
    let x_3775 : vec4<f32> = u_xlat1;
    let x_3777 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3775.x, x_3775.y, x_3775.z), vec3<f32>(x_3777.x, x_3777.y, x_3777.z));
    let x_3780 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3780, 0.0f, 1.0f);
    let x_3782 : f32 = u_xlat80;
    let x_3783 : f32 = u_xlat83;
    u_xlat80 = (x_3782 * x_3783);
    let x_3785 : f32 = u_xlat80;
    let x_3787 : i32 = u_xlati79;
    let x_3789 : vec4<f32> = x_2327.x_AdditionalLightsColor[x_3787];
    let x_3791 : vec3<f32> = (vec3<f32>(x_3785, x_3785, x_3785) * vec3<f32>(x_3789.x, x_3789.y, x_3789.z));
    let x_3792 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_3791.x, x_3791.y, x_3791.z, x_3792.w);
    let x_3794 : vec4<f32> = u_xlat8;
    let x_3796 : f32 = u_xlat81;
    let x_3799 : vec4<f32> = u_xlat3;
    let x_3801 : vec3<f32> = ((vec3<f32>(x_3794.x, x_3794.y, x_3794.z) * vec3<f32>(x_3796, x_3796, x_3796)) + vec3<f32>(x_3799.x, x_3799.y, x_3799.z));
    let x_3802 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3801.x, x_3801.y, x_3801.z, x_3802.w);
    let x_3804 : vec4<f32> = u_xlat8;
    let x_3806 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3804.x, x_3804.y, x_3804.z), vec3<f32>(x_3806.x, x_3806.y, x_3806.z));
    let x_3809 : f32 = u_xlat79;
    u_xlat79 = max(x_3809, 1.17549435e-38f);
    let x_3811 : f32 = u_xlat79;
    u_xlat79 = inverseSqrt(x_3811);
    let x_3813 : f32 = u_xlat79;
    let x_3815 : vec4<f32> = u_xlat8;
    let x_3817 : vec3<f32> = (vec3<f32>(x_3813, x_3813, x_3813) * vec3<f32>(x_3815.x, x_3815.y, x_3815.z));
    let x_3818 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3817.x, x_3817.y, x_3817.z, x_3818.w);
    let x_3820 : vec4<f32> = u_xlat1;
    let x_3822 : vec4<f32> = u_xlat8;
    u_xlat79 = dot(vec3<f32>(x_3820.x, x_3820.y, x_3820.z), vec3<f32>(x_3822.x, x_3822.y, x_3822.z));
    let x_3825 : f32 = u_xlat79;
    u_xlat79 = clamp(x_3825, 0.0f, 1.0f);
    let x_3827 : vec4<f32> = u_xlat9;
    let x_3829 : vec4<f32> = u_xlat8;
    u_xlat80 = dot(vec3<f32>(x_3827.x, x_3827.y, x_3827.z), vec3<f32>(x_3829.x, x_3829.y, x_3829.z));
    let x_3832 : f32 = u_xlat80;
    u_xlat80 = clamp(x_3832, 0.0f, 1.0f);
    let x_3834 : f32 = u_xlat79;
    let x_3835 : f32 = u_xlat79;
    u_xlat79 = (x_3834 * x_3835);
    let x_3837 : f32 = u_xlat79;
    let x_3839 : f32 = u_xlat7.x;
    u_xlat79 = ((x_3837 * x_3839) + 1.00001001358032226562f);
    let x_3842 : f32 = u_xlat80;
    let x_3843 : f32 = u_xlat80;
    u_xlat80 = (x_3842 * x_3843);
    let x_3845 : f32 = u_xlat79;
    let x_3846 : f32 = u_xlat79;
    u_xlat79 = (x_3845 * x_3846);
    let x_3848 : f32 = u_xlat80;
    u_xlat80 = max(x_3848, 0.10000000149011611938f);
    let x_3850 : f32 = u_xlat79;
    let x_3851 : f32 = u_xlat80;
    u_xlat79 = (x_3850 * x_3851);
    let x_3853 : f32 = u_xlat78;
    let x_3854 : f32 = u_xlat79;
    u_xlat79 = (x_3853 * x_3854);
    let x_3856 : f32 = u_xlat27;
    let x_3857 : f32 = u_xlat79;
    u_xlat79 = (x_3856 / x_3857);
    let x_3859 : vec4<f32> = u_xlat0;
    let x_3861 : f32 = u_xlat79;
    let x_3864 : vec4<f32> = u_xlat5;
    let x_3866 : vec3<f32> = ((vec3<f32>(x_3859.x, x_3859.y, x_3859.z) * vec3<f32>(x_3861, x_3861, x_3861)) + vec3<f32>(x_3864.x, x_3864.y, x_3864.z));
    let x_3867 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3866.x, x_3866.y, x_3866.z, x_3867.w);
    let x_3869 : vec4<f32> = u_xlat8;
    let x_3871 : vec4<f32> = u_xlat10;
    let x_3874 : vec3<f32> = u_xlat32;
    u_xlat32 = ((vec3<f32>(x_3869.x, x_3869.y, x_3869.z) * vec3<f32>(x_3871.x, x_3871.y, x_3871.z)) + x_3874);

    continuing {
      let x_3876 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3876 + bitcast<u32>(1i));
    }
  }
  let x_3878 : vec3<f32> = u_xlat4;
  let x_3879 : f32 = u_xlat52;
  let x_3882 : vec4<f32> = u_xlat6;
  let x_3884 : vec3<f32> = ((x_3878 * vec3<f32>(x_3879, x_3879, x_3879)) + vec3<f32>(x_3882.x, x_3882.y, x_3882.z));
  let x_3885 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3884.x, x_3884.y, x_3884.z, x_3885.w);
  let x_3887 : vec3<f32> = u_xlat32;
  let x_3888 : vec4<f32> = u_xlat0;
  let x_3890 : vec3<f32> = (x_3887 + vec3<f32>(x_3888.x, x_3888.y, x_3888.z));
  let x_3891 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3890.x, x_3890.y, x_3890.z, x_3891.w);
  let x_3893 : f32 = u_xlat75;
  let x_3894 : f32 = u_xlat75;
  u_xlat75 = (x_3893 * -(x_3894));
  let x_3897 : f32 = u_xlat75;
  u_xlat75 = exp2(x_3897);
  let x_3899 : vec4<f32> = u_xlat0;
  let x_3902 : vec4<f32> = x_29.unity_FogColor;
  let x_3905 : vec3<f32> = (vec3<f32>(x_3899.x, x_3899.y, x_3899.z) + -(vec3<f32>(x_3902.x, x_3902.y, x_3902.z)));
  let x_3906 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3905.x, x_3905.y, x_3905.z, x_3906.w);
  let x_3910 : f32 = u_xlat75;
  let x_3912 : vec4<f32> = u_xlat0;
  let x_3916 : vec4<f32> = x_29.unity_FogColor;
  let x_3918 : vec3<f32> = ((vec3<f32>(x_3910, x_3910, x_3910) * vec3<f32>(x_3912.x, x_3912.y, x_3912.z)) + vec3<f32>(x_3916.x, x_3916.y, x_3916.z));
  let x_3919 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3918.x, x_3918.y, x_3918.z, x_3919.w);
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



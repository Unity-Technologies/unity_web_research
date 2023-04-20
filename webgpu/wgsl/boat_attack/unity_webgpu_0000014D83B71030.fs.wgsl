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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> u_xlatb27 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat53 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat80 : f32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat78 : f32;

var<private> u_xlatb5 : bool;

@group(1) @binding(3) var<uniform> x_264 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb31 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat83 : f32;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat33 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlatb57 : vec2<bool>;

@group(1) @binding(4) var<uniform> x_1630 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1810 : UnityPerDraw;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlatu78 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu31 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati31 : i32;

@group(1) @binding(1) var<uniform> x_2074 : AdditionalLights;

var<private> u_xlat84 : f32;

var<private> u_xlat59 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlati85 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb85 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu80 : u32;

fn main_1() {
  var x_91 : f32;
  var x_104 : f32;
  var x_117 : f32;
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
  var x_1583 : f32;
  var x_1700 : f32;
  var x_1711 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2214 : f32;
  var x_2224 : f32;
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
  var x_3810 : f32;
  var x_3823 : f32;
  var x_3881 : f32;
  var x_3892 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_45 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : f32 = x_29.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_45.x, x_45.y), x_48);
  u_xlat1 = x_49.x;
  let x_57 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb27 = (x_57 == 0.0f);
  let x_63 : vec3<f32> = vs_TEXCOORD7;
  let x_68 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_69 : vec3<f32> = (-(x_63) + x_68);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat53 = dot(vec3<f32>(x_73.x, x_73.y, x_73.z), vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : f32 = u_xlat53;
  u_xlat53 = inverseSqrt(x_78);
  let x_80 : f32 = u_xlat53;
  let x_82 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80, x_80, x_80) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_89 : bool = u_xlatb27;
  if (x_89) {
    let x_95 : f32 = u_xlat2.x;
    x_91 = x_95;
  } else {
    let x_100 : f32 = x_29.unity_MatrixV[0i].z;
    x_91 = x_100;
  }
  let x_101 : f32 = x_91;
  u_xlat3.x = x_101;
  let x_103 : bool = u_xlatb27;
  if (x_103) {
    let x_109 : f32 = u_xlat2.y;
    x_104 = x_109;
  } else {
    let x_113 : f32 = x_29.unity_MatrixV[1i].z;
    x_104 = x_113;
  }
  let x_114 : f32 = x_104;
  u_xlat3.y = x_114;
  let x_116 : bool = u_xlatb27;
  if (x_116) {
    let x_121 : f32 = u_xlat2.z;
    x_117 = x_121;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[2i].z;
    x_117 = x_125;
  }
  let x_126 : f32 = x_117;
  u_xlat3.z = x_126;
  let x_130 : vec3<f32> = vs_TEXCOORD3;
  let x_131 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27.x = dot(x_130, x_131);
  let x_135 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_135);
  let x_138 : vec3<f32> = u_xlat27;
  let x_140 : vec3<f32> = vs_TEXCOORD3;
  u_xlat27 = (vec3<f32>(x_138.x, x_138.x, x_138.x) * x_140);
  let x_147 : vec4<f32> = vs_TEXCOORD0;
  let x_150 : f32 = x_29.x_GlobalMipBias.x;
  let x_151 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_147.z, x_147.w), x_150);
  u_xlat2 = x_151;
  let x_157 : vec4<f32> = vs_TEXCOORD0;
  let x_160 : f32 = x_29.x_GlobalMipBias.x;
  let x_161 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_157.z, x_157.w), x_160);
  u_xlat4 = vec3<f32>(x_161.x, x_161.y, x_161.z);
  let x_163 : vec4<f32> = u_xlat2;
  let x_167 : vec3<f32> = (vec3<f32>(x_163.x, x_163.y, x_163.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec3<f32> = u_xlat27;
  let x_171 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_170, vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_176 : f32 = u_xlat2.x;
  u_xlat2.x = (x_176 + 0.5f);
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = u_xlat4;
  let x_183 : vec3<f32> = (vec3<f32>(x_180.x, x_180.x, x_180.x) * x_182);
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_188 : f32 = u_xlat2.w;
  u_xlat80 = max(x_188, 0.00009999999747378752f);
  let x_191 : vec4<f32> = u_xlat2;
  let x_193 : f32 = u_xlat80;
  let x_195 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) / vec3<f32>(x_193, x_193, x_193));
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_198 : f32 = u_xlat1;
  u_xlat80 = ((-(x_198) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_204 : f32 = u_xlat80;
  u_xlat81 = (-(x_204) + 1.0f);
  let x_208 : vec4<f32> = u_xlat0;
  let x_210 : f32 = u_xlat80;
  u_xlat4 = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210, x_210, x_210));
  let x_213 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : f32 = u_xlat1;
  let x_222 : vec4<f32> = u_xlat0;
  let x_227 : vec3<f32> = ((vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_231) + 1.0f);
  let x_234 : f32 = u_xlat1;
  let x_235 : f32 = u_xlat1;
  u_xlat80 = (x_234 * x_235);
  let x_237 : f32 = u_xlat80;
  u_xlat80 = max(x_237, 0.0078125f);
  let x_241 : f32 = u_xlat80;
  let x_242 : f32 = u_xlat80;
  u_xlat82 = (x_241 * x_242);
  let x_246 : f32 = u_xlat0.w;
  let x_247 : f32 = u_xlat81;
  u_xlat78 = (x_246 + x_247);
  let x_249 : f32 = u_xlat78;
  u_xlat78 = clamp(x_249, 0.0f, 1.0f);
  let x_251 : f32 = u_xlat80;
  u_xlat81 = ((x_251 * 4.0f) + 2.0f);
  let x_267 : f32 = x_264.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_267);
  let x_269 : bool = u_xlatb5;
  if (x_269) {
    let x_273 : f32 = x_264.x_MainLightShadowParams.y;
    u_xlatb5 = (x_273 == 1.0f);
    let x_275 : bool = u_xlatb5;
    if (x_275) {
      let x_280 : vec4<f32> = vs_TEXCOORD8;
      let x_284 : vec4<f32> = x_264.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_280.x, x_280.y, x_280.x, x_280.y) + x_284);
      let x_288 : vec4<f32> = u_xlat5;
      let x_289 : vec2<f32> = vec2<f32>(x_288.x, x_288.y);
      let x_292 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_289.x, x_289.y, x_292);
      let x_305 : vec3<f32> = txVec0;
      let x_307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_305.xy, x_305.z);
      u_xlat6.x = x_307;
      let x_310 : vec4<f32> = u_xlat5;
      let x_311 : vec2<f32> = vec2<f32>(x_310.z, x_310.w);
      let x_313 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_311.x, x_311.y, x_313);
      let x_320 : vec3<f32> = txVec1;
      let x_322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_320.xy, x_320.z);
      u_xlat6.y = x_322;
      let x_324 : vec4<f32> = vs_TEXCOORD8;
      let x_328 : vec4<f32> = x_264.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_324.x, x_324.y, x_324.x, x_324.y) + x_328);
      let x_331 : vec4<f32> = u_xlat5;
      let x_332 : vec2<f32> = vec2<f32>(x_331.x, x_331.y);
      let x_334 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_332.x, x_332.y, x_334);
      let x_341 : vec3<f32> = txVec2;
      let x_343 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_341.xy, x_341.z);
      u_xlat6.z = x_343;
      let x_346 : vec4<f32> = u_xlat5;
      let x_347 : vec2<f32> = vec2<f32>(x_346.z, x_346.w);
      let x_349 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_347.x, x_347.y, x_349);
      let x_356 : vec3<f32> = txVec3;
      let x_358 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_356.xy, x_356.z);
      u_xlat6.w = x_358;
      let x_360 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_360, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_368 : f32 = x_264.x_MainLightShadowParams.y;
      u_xlatb31 = (x_368 == 2.0f);
      let x_370 : bool = u_xlatb31;
      if (x_370) {
        let x_374 : vec4<f32> = vs_TEXCOORD8;
        let x_378 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_382 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(x_378.z, x_378.w)) + vec2<f32>(0.5f, 0.5f));
        let x_383 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_382.x, x_382.y, x_383.z);
        let x_385 : vec3<f32> = u_xlat31;
        let x_387 : vec2<f32> = floor(vec2<f32>(x_385.x, x_385.y));
        let x_388 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_387.x, x_387.y, x_388.z);
        let x_390 : vec4<f32> = vs_TEXCOORD8;
        let x_393 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_396 : vec3<f32> = u_xlat31;
        let x_399 : vec2<f32> = ((vec2<f32>(x_390.x, x_390.y) * vec2<f32>(x_393.z, x_393.w)) + -(vec2<f32>(x_396.x, x_396.y)));
        let x_400 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
        let x_403 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_403.x, x_403.x, x_403.y, x_403.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_408 : vec4<f32> = u_xlat7;
        let x_410 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_408.x, x_408.x, x_408.z, x_408.z) * vec4<f32>(x_410.x, x_410.x, x_410.z, x_410.z));
        let x_415 : vec4<f32> = u_xlat8;
        u_xlat58 = (vec2<f32>(x_415.y, x_415.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_420 : vec4<f32> = u_xlat8;
        let x_423 : vec4<f32> = u_xlat6;
        let x_426 : vec2<f32> = ((vec2<f32>(x_420.x, x_420.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_423.x, x_423.y)));
        let x_427 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_426.x, x_427.y, x_426.y, x_427.w);
        let x_429 : vec4<f32> = u_xlat6;
        let x_433 : vec2<f32> = (-(vec2<f32>(x_429.x, x_429.y)) + vec2<f32>(1.0f, 1.0f));
        let x_434 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
        let x_437 : vec4<f32> = u_xlat6;
        u_xlat60 = min(vec2<f32>(x_437.x, x_437.y), vec2<f32>(0.0f, 0.0f));
        let x_441 : vec2<f32> = u_xlat60;
        let x_443 : vec2<f32> = u_xlat60;
        let x_445 : vec4<f32> = u_xlat8;
        u_xlat60 = ((-(x_441) * x_443) + vec2<f32>(x_445.x, x_445.y));
        let x_448 : vec4<f32> = u_xlat6;
        let x_450 : vec2<f32> = max(vec2<f32>(x_448.x, x_448.y), vec2<f32>(0.0f, 0.0f));
        let x_451 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
        let x_453 : vec4<f32> = u_xlat6;
        let x_456 : vec4<f32> = u_xlat6;
        let x_459 : vec4<f32> = u_xlat7;
        let x_461 : vec2<f32> = ((-(vec2<f32>(x_453.x, x_453.y)) * vec2<f32>(x_456.x, x_456.y)) + vec2<f32>(x_459.y, x_459.w));
        let x_462 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
        let x_464 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_464 + vec2<f32>(1.0f, 1.0f));
        let x_466 : vec4<f32> = u_xlat6;
        let x_468 : vec2<f32> = (vec2<f32>(x_466.x, x_466.y) + vec2<f32>(1.0f, 1.0f));
        let x_469 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
        let x_472 : vec4<f32> = u_xlat7;
        let x_476 : vec2<f32> = (vec2<f32>(x_472.x, x_472.z) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_477 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_476.x, x_476.y, x_477.z, x_477.w);
        let x_480 : vec4<f32> = u_xlat8;
        let x_482 : vec2<f32> = (vec2<f32>(x_480.x, x_480.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_483 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_482.x, x_482.y, x_483.z, x_483.w);
        let x_485 : vec2<f32> = u_xlat60;
        let x_486 : vec2<f32> = (x_485 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_487 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
        let x_490 : vec4<f32> = u_xlat6;
        let x_492 : vec2<f32> = (vec2<f32>(x_490.x, x_490.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_493 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_492.x, x_492.y, x_493.z, x_493.w);
        let x_495 : vec4<f32> = u_xlat7;
        let x_497 : vec2<f32> = (vec2<f32>(x_495.y, x_495.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_498 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_501 : f32 = u_xlat8.x;
        u_xlat9.z = x_501;
        let x_504 : f32 = u_xlat6.x;
        u_xlat9.w = x_504;
        let x_507 : f32 = u_xlat11.x;
        u_xlat10.z = x_507;
        let x_510 : f32 = u_xlat58.x;
        u_xlat10.w = x_510;
        let x_512 : vec4<f32> = u_xlat9;
        let x_514 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_512.z, x_512.w, x_512.x, x_512.z) + vec4<f32>(x_514.z, x_514.w, x_514.x, x_514.z));
        let x_518 : f32 = u_xlat9.y;
        u_xlat8.z = x_518;
        let x_521 : f32 = u_xlat6.y;
        u_xlat8.w = x_521;
        let x_524 : f32 = u_xlat10.y;
        u_xlat11.z = x_524;
        let x_527 : f32 = u_xlat58.y;
        u_xlat11.w = x_527;
        let x_529 : vec4<f32> = u_xlat8;
        let x_531 : vec4<f32> = u_xlat11;
        let x_533 : vec3<f32> = (vec3<f32>(x_529.z, x_529.y, x_529.w) + vec3<f32>(x_531.z, x_531.y, x_531.w));
        let x_534 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
        let x_536 : vec4<f32> = u_xlat10;
        let x_538 : vec4<f32> = u_xlat7;
        let x_540 : vec3<f32> = (vec3<f32>(x_536.x, x_536.z, x_536.w) / vec3<f32>(x_538.z, x_538.w, x_538.y));
        let x_541 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
        let x_543 : vec4<f32> = u_xlat8;
        let x_548 : vec3<f32> = (vec3<f32>(x_543.x, x_543.y, x_543.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_549 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat11;
        let x_553 : vec4<f32> = u_xlat6;
        let x_555 : vec3<f32> = (vec3<f32>(x_551.z, x_551.y, x_551.w) / vec3<f32>(x_553.x, x_553.y, x_553.z));
        let x_556 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
        let x_558 : vec4<f32> = u_xlat9;
        let x_560 : vec3<f32> = (vec3<f32>(x_558.x, x_558.y, x_558.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_561 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
        let x_563 : vec4<f32> = u_xlat8;
        let x_566 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_568 : vec3<f32> = (vec3<f32>(x_563.y, x_563.x, x_563.z) * vec3<f32>(x_566.x, x_566.x, x_566.x));
        let x_569 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
        let x_571 : vec4<f32> = u_xlat9;
        let x_574 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_576 : vec3<f32> = (vec3<f32>(x_571.x, x_571.y, x_571.z) * vec3<f32>(x_574.y, x_574.y, x_574.y));
        let x_577 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
        let x_580 : f32 = u_xlat9.x;
        u_xlat8.w = x_580;
        let x_582 : vec3<f32> = u_xlat31;
        let x_585 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_588 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y) * vec4<f32>(x_585.x, x_585.y, x_585.x, x_585.y)) + vec4<f32>(x_588.y, x_588.w, x_588.x, x_588.w));
        let x_591 : vec3<f32> = u_xlat31;
        let x_594 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_597 : vec4<f32> = u_xlat8;
        let x_599 : vec2<f32> = ((vec2<f32>(x_591.x, x_591.y) * vec2<f32>(x_594.x, x_594.y)) + vec2<f32>(x_597.z, x_597.w));
        let x_600 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_603 : f32 = u_xlat8.y;
        u_xlat9.w = x_603;
        let x_605 : vec4<f32> = u_xlat9;
        let x_606 : vec2<f32> = vec2<f32>(x_605.y, x_605.z);
        let x_607 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_607.x, x_606.x, x_607.z, x_606.y);
        let x_610 : vec3<f32> = u_xlat31;
        let x_613 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_616 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_610.x, x_610.y, x_610.x, x_610.y) * vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y)) + vec4<f32>(x_616.x, x_616.y, x_616.z, x_616.y));
        let x_619 : vec3<f32> = u_xlat31;
        let x_622 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_625 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_619.x, x_619.y, x_619.x, x_619.y) * vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y)) + vec4<f32>(x_625.w, x_625.y, x_625.w, x_625.z));
        let x_628 : vec3<f32> = u_xlat31;
        let x_631 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_634 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_628.x, x_628.y, x_628.x, x_628.y) * vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y)) + vec4<f32>(x_634.x, x_634.w, x_634.z, x_634.w));
        let x_638 : vec4<f32> = u_xlat6;
        let x_640 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_638.x, x_638.x, x_638.x, x_638.y) * vec4<f32>(x_640.z, x_640.w, x_640.y, x_640.z));
        let x_644 : vec4<f32> = u_xlat6;
        let x_646 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_644.y, x_644.y, x_644.z, x_644.z) * x_646);
        let x_649 : f32 = u_xlat6.z;
        let x_651 : f32 = u_xlat7.y;
        u_xlat31.x = (x_649 * x_651);
        let x_655 : vec4<f32> = u_xlat10;
        let x_656 : vec2<f32> = vec2<f32>(x_655.x, x_655.y);
        let x_658 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_656.x, x_656.y, x_658);
        let x_666 : vec3<f32> = txVec4;
        let x_668 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_666.xy, x_666.z);
        u_xlat57.x = x_668;
        let x_671 : vec4<f32> = u_xlat10;
        let x_672 : vec2<f32> = vec2<f32>(x_671.z, x_671.w);
        let x_674 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_672.x, x_672.y, x_674);
        let x_682 : vec3<f32> = txVec5;
        let x_684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_682.xy, x_682.z);
        u_xlat83 = x_684;
        let x_685 : f32 = u_xlat83;
        let x_687 : f32 = u_xlat13.y;
        u_xlat83 = (x_685 * x_687);
        let x_690 : f32 = u_xlat13.x;
        let x_692 : f32 = u_xlat57.x;
        let x_694 : f32 = u_xlat83;
        u_xlat57.x = ((x_690 * x_692) + x_694);
        let x_698 : vec4<f32> = u_xlat11;
        let x_699 : vec2<f32> = vec2<f32>(x_698.x, x_698.y);
        let x_701 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_699.x, x_699.y, x_701);
        let x_708 : vec3<f32> = txVec6;
        let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_708.xy, x_708.z);
        u_xlat83 = x_710;
        let x_712 : f32 = u_xlat13.z;
        let x_713 : f32 = u_xlat83;
        let x_716 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_712 * x_713) + x_716);
        let x_720 : vec4<f32> = u_xlat9;
        let x_721 : vec2<f32> = vec2<f32>(x_720.x, x_720.y);
        let x_723 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_721.x, x_721.y, x_723);
        let x_730 : vec3<f32> = txVec7;
        let x_732 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_730.xy, x_730.z);
        u_xlat83 = x_732;
        let x_734 : f32 = u_xlat13.w;
        let x_735 : f32 = u_xlat83;
        let x_738 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_734 * x_735) + x_738);
        let x_742 : vec4<f32> = u_xlat12;
        let x_743 : vec2<f32> = vec2<f32>(x_742.x, x_742.y);
        let x_745 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_743.x, x_743.y, x_745);
        let x_752 : vec3<f32> = txVec8;
        let x_754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_752.xy, x_752.z);
        u_xlat83 = x_754;
        let x_756 : f32 = u_xlat14.x;
        let x_757 : f32 = u_xlat83;
        let x_760 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_756 * x_757) + x_760);
        let x_764 : vec4<f32> = u_xlat12;
        let x_765 : vec2<f32> = vec2<f32>(x_764.z, x_764.w);
        let x_767 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_765.x, x_765.y, x_767);
        let x_774 : vec3<f32> = txVec9;
        let x_776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_774.xy, x_774.z);
        u_xlat83 = x_776;
        let x_778 : f32 = u_xlat14.y;
        let x_779 : f32 = u_xlat83;
        let x_782 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_778 * x_779) + x_782);
        let x_786 : vec4<f32> = u_xlat9;
        let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
        let x_789 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_796 : vec3<f32> = txVec10;
        let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_796.xy, x_796.z);
        u_xlat83 = x_798;
        let x_800 : f32 = u_xlat14.z;
        let x_801 : f32 = u_xlat83;
        let x_804 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_800 * x_801) + x_804);
        let x_808 : vec4<f32> = u_xlat8;
        let x_809 : vec2<f32> = vec2<f32>(x_808.x, x_808.y);
        let x_811 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_809.x, x_809.y, x_811);
        let x_818 : vec3<f32> = txVec11;
        let x_820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_818.xy, x_818.z);
        u_xlat83 = x_820;
        let x_822 : f32 = u_xlat14.w;
        let x_823 : f32 = u_xlat83;
        let x_826 : f32 = u_xlat57.x;
        u_xlat57.x = ((x_822 * x_823) + x_826);
        let x_830 : vec4<f32> = u_xlat8;
        let x_831 : vec2<f32> = vec2<f32>(x_830.z, x_830.w);
        let x_833 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_840 : vec3<f32> = txVec12;
        let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_840.xy, x_840.z);
        u_xlat83 = x_842;
        let x_844 : f32 = u_xlat31.x;
        let x_845 : f32 = u_xlat83;
        let x_848 : f32 = u_xlat57.x;
        u_xlat5.x = ((x_844 * x_845) + x_848);
      } else {
        let x_852 : vec4<f32> = vs_TEXCOORD8;
        let x_855 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_858 : vec2<f32> = ((vec2<f32>(x_852.x, x_852.y) * vec2<f32>(x_855.z, x_855.w)) + vec2<f32>(0.5f, 0.5f));
        let x_859 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_858.x, x_858.y, x_859.z);
        let x_861 : vec3<f32> = u_xlat31;
        let x_863 : vec2<f32> = floor(vec2<f32>(x_861.x, x_861.y));
        let x_864 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_863.x, x_863.y, x_864.z);
        let x_866 : vec4<f32> = vs_TEXCOORD8;
        let x_869 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_872 : vec3<f32> = u_xlat31;
        let x_875 : vec2<f32> = ((vec2<f32>(x_866.x, x_866.y) * vec2<f32>(x_869.z, x_869.w)) + -(vec2<f32>(x_872.x, x_872.y)));
        let x_876 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_875.x, x_875.y, x_876.z, x_876.w);
        let x_878 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_878.x, x_878.x, x_878.y, x_878.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_881 : vec4<f32> = u_xlat7;
        let x_883 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_881.x, x_881.x, x_881.z, x_881.z) * vec4<f32>(x_883.x, x_883.x, x_883.z, x_883.z));
        let x_886 : vec4<f32> = u_xlat8;
        let x_890 : vec2<f32> = (vec2<f32>(x_886.y, x_886.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_891 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_891.x, x_890.x, x_891.z, x_890.y);
        let x_893 : vec4<f32> = u_xlat8;
        let x_896 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_893.x, x_893.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_896.x, x_896.y)));
        let x_900 : vec4<f32> = u_xlat6;
        let x_903 : vec2<f32> = (-(vec2<f32>(x_900.x, x_900.y)) + vec2<f32>(1.0f, 1.0f));
        let x_904 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_903.x, x_904.y, x_903.y, x_904.w);
        let x_906 : vec4<f32> = u_xlat6;
        let x_908 : vec2<f32> = min(vec2<f32>(x_906.x, x_906.y), vec2<f32>(0.0f, 0.0f));
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
        let x_911 : vec4<f32> = u_xlat8;
        let x_914 : vec4<f32> = u_xlat8;
        let x_917 : vec4<f32> = u_xlat7;
        let x_919 : vec2<f32> = ((-(vec2<f32>(x_911.x, x_911.y)) * vec2<f32>(x_914.x, x_914.y)) + vec2<f32>(x_917.x, x_917.z));
        let x_920 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_919.x, x_920.y, x_919.y, x_920.w);
        let x_922 : vec4<f32> = u_xlat6;
        let x_924 : vec2<f32> = max(vec2<f32>(x_922.x, x_922.y), vec2<f32>(0.0f, 0.0f));
        let x_925 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_924.x, x_924.y, x_925.z, x_925.w);
        let x_927 : vec4<f32> = u_xlat8;
        let x_930 : vec4<f32> = u_xlat8;
        let x_933 : vec4<f32> = u_xlat7;
        let x_935 : vec2<f32> = ((-(vec2<f32>(x_927.x, x_927.y)) * vec2<f32>(x_930.x, x_930.y)) + vec2<f32>(x_933.y, x_933.w));
        let x_936 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_936.x, x_935.x, x_936.z, x_935.y);
        let x_938 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_938 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_942 : f32 = u_xlat7.y;
        u_xlat8.z = (x_942 * 0.08163200318813323975f);
        let x_946 : vec2<f32> = u_xlat58;
        let x_949 : vec2<f32> = (vec2<f32>(x_946.y, x_946.x) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_950 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_952.x, x_952.z) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_956 : f32 = u_xlat7.w;
        u_xlat10.z = (x_956 * 0.08163200318813323975f);
        let x_960 : f32 = u_xlat10.y;
        u_xlat8.x = x_960;
        let x_962 : vec4<f32> = u_xlat6;
        let x_969 : vec2<f32> = ((vec2<f32>(x_962.x, x_962.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_970 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_970.x, x_969.x, x_970.z, x_969.y);
        let x_972 : vec4<f32> = u_xlat6;
        let x_976 : vec2<f32> = ((vec2<f32>(x_972.x, x_972.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_977 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_976.x, x_977.y, x_976.y, x_977.w);
        let x_980 : f32 = u_xlat58.x;
        u_xlat7.y = x_980;
        let x_983 : f32 = u_xlat9.y;
        u_xlat7.w = x_983;
        let x_985 : vec4<f32> = u_xlat7;
        let x_986 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_985 + x_986);
        let x_988 : vec4<f32> = u_xlat6;
        let x_991 : vec2<f32> = ((vec2<f32>(x_988.y, x_988.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_992 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_992.x, x_991.x, x_992.z, x_991.y);
        let x_994 : vec4<f32> = u_xlat6;
        let x_997 : vec2<f32> = ((vec2<f32>(x_994.y, x_994.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_998 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_997.x, x_998.y, x_997.y, x_998.w);
        let x_1001 : f32 = u_xlat58.y;
        u_xlat9.y = x_1001;
        let x_1003 : vec4<f32> = u_xlat9;
        let x_1004 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1003 + x_1004);
        let x_1006 : vec4<f32> = u_xlat7;
        let x_1007 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_1006 / x_1007);
        let x_1009 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1009 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1015 : vec4<f32> = u_xlat9;
        let x_1016 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1015 / x_1016);
        let x_1018 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1018 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1020 : vec4<f32> = u_xlat7;
        let x_1023 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1020.w, x_1020.x, x_1020.y, x_1020.z) * vec4<f32>(x_1023.x, x_1023.x, x_1023.x, x_1023.x));
        let x_1026 : vec4<f32> = u_xlat9;
        let x_1029 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1026.x, x_1026.w, x_1026.y, x_1026.z) * vec4<f32>(x_1029.y, x_1029.y, x_1029.y, x_1029.y));
        let x_1032 : vec4<f32> = u_xlat7;
        let x_1033 : vec3<f32> = vec3<f32>(x_1032.y, x_1032.z, x_1032.w);
        let x_1034 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1033.x, x_1034.y, x_1033.y, x_1033.z);
        let x_1037 : f32 = u_xlat9.x;
        u_xlat10.y = x_1037;
        let x_1039 : vec3<f32> = u_xlat31;
        let x_1042 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1045 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1039.x, x_1039.y, x_1039.x, x_1039.y) * vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y)) + vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1045.y));
        let x_1048 : vec3<f32> = u_xlat31;
        let x_1051 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat10;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1051.x, x_1051.y)) + vec2<f32>(x_1054.w, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
        let x_1060 : f32 = u_xlat10.y;
        u_xlat7.y = x_1060;
        let x_1063 : f32 = u_xlat9.z;
        u_xlat10.y = x_1063;
        let x_1065 : vec3<f32> = u_xlat31;
        let x_1068 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1065.x, x_1065.y, x_1065.x, x_1065.y) * vec4<f32>(x_1068.x, x_1068.y, x_1068.x, x_1068.y)) + vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1071.y));
        let x_1075 : vec3<f32> = u_xlat31;
        let x_1078 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1081 : vec4<f32> = u_xlat10;
        u_xlat64 = ((vec2<f32>(x_1075.x, x_1075.y) * vec2<f32>(x_1078.x, x_1078.y)) + vec2<f32>(x_1081.w, x_1081.y));
        let x_1085 : f32 = u_xlat10.y;
        u_xlat7.z = x_1085;
        let x_1087 : vec3<f32> = u_xlat31;
        let x_1090 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y) * vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y)) + vec4<f32>(x_1093.x, x_1093.y, x_1093.x, x_1093.z));
        let x_1097 : f32 = u_xlat9.w;
        u_xlat10.y = x_1097;
        let x_1100 : vec3<f32> = u_xlat31;
        let x_1103 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1100.x, x_1100.y, x_1100.x, x_1100.y) * vec4<f32>(x_1103.x, x_1103.y, x_1103.x, x_1103.y)) + vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1106.y));
        let x_1110 : vec3<f32> = u_xlat31;
        let x_1113 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat10;
        u_xlat33 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.w, x_1116.y));
        let x_1120 : f32 = u_xlat10.y;
        u_xlat7.w = x_1120;
        let x_1123 : vec3<f32> = u_xlat31;
        let x_1126 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat7;
        let x_1131 : vec2<f32> = ((vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(x_1126.x, x_1126.y)) + vec2<f32>(x_1129.x, x_1129.w));
        let x_1132 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1131.x, x_1131.y, x_1132.z, x_1132.w);
        let x_1134 : vec4<f32> = u_xlat10;
        let x_1135 : vec3<f32> = vec3<f32>(x_1134.x, x_1134.z, x_1134.w);
        let x_1136 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1135.x, x_1136.y, x_1135.y, x_1135.z);
        let x_1138 : vec3<f32> = u_xlat31;
        let x_1141 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1138.x, x_1138.y, x_1138.x, x_1138.y) * vec4<f32>(x_1141.x, x_1141.y, x_1141.x, x_1141.y)) + vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1144.y));
        let x_1148 : vec3<f32> = u_xlat31;
        let x_1151 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.w, x_1154.y));
        let x_1158 : f32 = u_xlat7.x;
        u_xlat9.x = x_1158;
        let x_1160 : vec3<f32> = u_xlat31;
        let x_1163 : vec4<f32> = x_264.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1168 : vec2<f32> = ((vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(x_1166.x, x_1166.y));
        let x_1169 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1168.x, x_1168.y, x_1169.z);
        let x_1172 : vec4<f32> = u_xlat6;
        let x_1174 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1172.x, x_1172.x, x_1172.x, x_1172.x) * x_1174);
        let x_1177 : vec4<f32> = u_xlat6;
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1177.y, x_1177.y, x_1177.y, x_1177.y) * x_1179);
        let x_1182 : vec4<f32> = u_xlat6;
        let x_1184 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1182.z, x_1182.z, x_1182.z, x_1182.z) * x_1184);
        let x_1186 : vec4<f32> = u_xlat6;
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1186.w, x_1186.w, x_1186.w, x_1186.w) * x_1188);
        let x_1191 : vec4<f32> = u_xlat11;
        let x_1192 : vec2<f32> = vec2<f32>(x_1191.x, x_1191.y);
        let x_1194 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1192.x, x_1192.y, x_1194);
        let x_1201 : vec3<f32> = txVec13;
        let x_1203 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1201.xy, x_1201.z);
        u_xlat83 = x_1203;
        let x_1205 : vec4<f32> = u_xlat11;
        let x_1206 : vec2<f32> = vec2<f32>(x_1205.z, x_1205.w);
        let x_1208 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1206.x, x_1206.y, x_1208);
        let x_1215 : vec3<f32> = txVec14;
        let x_1217 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1215.xy, x_1215.z);
        u_xlat7.x = x_1217;
        let x_1220 : f32 = u_xlat7.x;
        let x_1222 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1220 * x_1222);
        let x_1226 : f32 = u_xlat17.x;
        let x_1227 : f32 = u_xlat83;
        let x_1230 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1226 * x_1227) + x_1230);
        let x_1233 : vec4<f32> = u_xlat12;
        let x_1234 : vec2<f32> = vec2<f32>(x_1233.x, x_1233.y);
        let x_1236 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec15;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1243.xy, x_1243.z);
        u_xlat7.x = x_1245;
        let x_1248 : f32 = u_xlat17.z;
        let x_1250 : f32 = u_xlat7.x;
        let x_1252 : f32 = u_xlat83;
        u_xlat83 = ((x_1248 * x_1250) + x_1252);
        let x_1255 : vec4<f32> = u_xlat14;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.x, x_1255.y);
        let x_1258 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec16;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1265.xy, x_1265.z);
        u_xlat7.x = x_1267;
        let x_1270 : f32 = u_xlat17.w;
        let x_1272 : f32 = u_xlat7.x;
        let x_1274 : f32 = u_xlat83;
        u_xlat83 = ((x_1270 * x_1272) + x_1274);
        let x_1277 : vec4<f32> = u_xlat13;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec17;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1287.xy, x_1287.z);
        u_xlat7.x = x_1289;
        let x_1292 : f32 = u_xlat18.x;
        let x_1294 : f32 = u_xlat7.x;
        let x_1296 : f32 = u_xlat83;
        u_xlat83 = ((x_1292 * x_1294) + x_1296);
        let x_1299 : vec4<f32> = u_xlat13;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.z, x_1299.w);
        let x_1302 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec18;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1309.xy, x_1309.z);
        u_xlat7.x = x_1311;
        let x_1314 : f32 = u_xlat18.y;
        let x_1316 : f32 = u_xlat7.x;
        let x_1318 : f32 = u_xlat83;
        u_xlat83 = ((x_1314 * x_1316) + x_1318);
        let x_1321 : vec2<f32> = u_xlat64;
        let x_1323 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec19;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1330.xy, x_1330.z);
        u_xlat7.x = x_1332;
        let x_1335 : f32 = u_xlat18.z;
        let x_1337 : f32 = u_xlat7.x;
        let x_1339 : f32 = u_xlat83;
        u_xlat83 = ((x_1335 * x_1337) + x_1339);
        let x_1342 : vec4<f32> = u_xlat14;
        let x_1343 : vec2<f32> = vec2<f32>(x_1342.z, x_1342.w);
        let x_1345 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec20;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1352.xy, x_1352.z);
        u_xlat7.x = x_1354;
        let x_1357 : f32 = u_xlat18.w;
        let x_1359 : f32 = u_xlat7.x;
        let x_1361 : f32 = u_xlat83;
        u_xlat83 = ((x_1357 * x_1359) + x_1361);
        let x_1364 : vec4<f32> = u_xlat15;
        let x_1365 : vec2<f32> = vec2<f32>(x_1364.x, x_1364.y);
        let x_1367 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1365.x, x_1365.y, x_1367);
        let x_1374 : vec3<f32> = txVec21;
        let x_1376 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1374.xy, x_1374.z);
        u_xlat7.x = x_1376;
        let x_1379 : f32 = u_xlat19.x;
        let x_1381 : f32 = u_xlat7.x;
        let x_1383 : f32 = u_xlat83;
        u_xlat83 = ((x_1379 * x_1381) + x_1383);
        let x_1386 : vec4<f32> = u_xlat15;
        let x_1387 : vec2<f32> = vec2<f32>(x_1386.z, x_1386.w);
        let x_1389 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1396 : vec3<f32> = txVec22;
        let x_1398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1396.xy, x_1396.z);
        u_xlat7.x = x_1398;
        let x_1401 : f32 = u_xlat19.y;
        let x_1403 : f32 = u_xlat7.x;
        let x_1405 : f32 = u_xlat83;
        u_xlat83 = ((x_1401 * x_1403) + x_1405);
        let x_1408 : vec2<f32> = u_xlat33;
        let x_1410 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec23;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1417.xy, x_1417.z);
        u_xlat7.x = x_1419;
        let x_1422 : f32 = u_xlat19.z;
        let x_1424 : f32 = u_xlat7.x;
        let x_1426 : f32 = u_xlat83;
        u_xlat83 = ((x_1422 * x_1424) + x_1426);
        let x_1429 : vec4<f32> = u_xlat16;
        let x_1430 : vec2<f32> = vec2<f32>(x_1429.x, x_1429.y);
        let x_1432 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1430.x, x_1430.y, x_1432);
        let x_1439 : vec3<f32> = txVec24;
        let x_1441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1439.xy, x_1439.z);
        u_xlat7.x = x_1441;
        let x_1444 : f32 = u_xlat19.w;
        let x_1446 : f32 = u_xlat7.x;
        let x_1448 : f32 = u_xlat83;
        u_xlat83 = ((x_1444 * x_1446) + x_1448);
        let x_1451 : vec4<f32> = u_xlat10;
        let x_1452 : vec2<f32> = vec2<f32>(x_1451.x, x_1451.y);
        let x_1454 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec25;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1461.xy, x_1461.z);
        u_xlat7.x = x_1463;
        let x_1466 : f32 = u_xlat6.x;
        let x_1468 : f32 = u_xlat7.x;
        let x_1470 : f32 = u_xlat83;
        u_xlat83 = ((x_1466 * x_1468) + x_1470);
        let x_1473 : vec4<f32> = u_xlat10;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.z, x_1473.w);
        let x_1476 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec26;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1483.xy, x_1483.z);
        u_xlat6.x = x_1485;
        let x_1488 : f32 = u_xlat6.y;
        let x_1490 : f32 = u_xlat6.x;
        let x_1492 : f32 = u_xlat83;
        u_xlat83 = ((x_1488 * x_1490) + x_1492);
        let x_1495 : vec2<f32> = u_xlat61;
        let x_1497 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec27;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1504.xy, x_1504.z);
        u_xlat6.x = x_1506;
        let x_1509 : f32 = u_xlat6.z;
        let x_1511 : f32 = u_xlat6.x;
        let x_1513 : f32 = u_xlat83;
        u_xlat83 = ((x_1509 * x_1511) + x_1513);
        let x_1516 : vec3<f32> = u_xlat31;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.x, x_1516.y);
        let x_1519 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec28;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1526.xy, x_1526.z);
        u_xlat31.x = x_1528;
        let x_1531 : f32 = u_xlat6.w;
        let x_1533 : f32 = u_xlat31.x;
        let x_1535 : f32 = u_xlat83;
        u_xlat5.x = ((x_1531 * x_1533) + x_1535);
      }
    }
  } else {
    let x_1540 : vec4<f32> = vs_TEXCOORD8;
    let x_1541 : vec2<f32> = vec2<f32>(x_1540.x, x_1540.y);
    let x_1543 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
    let x_1550 : vec3<f32> = txVec29;
    let x_1552 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1550.xy, x_1550.z);
    u_xlat5.x = x_1552;
  }
  let x_1555 : f32 = x_264.x_MainLightShadowParams.x;
  u_xlat31.x = (-(x_1555) + 1.0f);
  let x_1560 : f32 = u_xlat5.x;
  let x_1562 : f32 = x_264.x_MainLightShadowParams.x;
  let x_1565 : f32 = u_xlat31.x;
  u_xlat5.x = ((x_1560 * x_1562) + x_1565);
  let x_1569 : f32 = vs_TEXCOORD8.z;
  u_xlatb31 = (0.0f >= x_1569);
  let x_1575 : f32 = vs_TEXCOORD8.z;
  u_xlatb57.x = (x_1575 >= 1.0f);
  let x_1579 : bool = u_xlatb57.x;
  let x_1580 : bool = u_xlatb31;
  u_xlatb31 = (x_1579 | x_1580);
  let x_1582 : bool = u_xlatb31;
  if (x_1582) {
    x_1583 = 1.0f;
  } else {
    let x_1588 : f32 = u_xlat5.x;
    x_1583 = x_1588;
  }
  let x_1589 : f32 = x_1583;
  u_xlat5.x = x_1589;
  let x_1591 : vec3<f32> = vs_TEXCOORD7;
  let x_1593 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat31 = (x_1591 + -(x_1593));
  let x_1596 : vec3<f32> = u_xlat31;
  let x_1597 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_1596, x_1597);
  let x_1601 : f32 = u_xlat31.x;
  let x_1603 : f32 = x_264.x_MainLightShadowParams.z;
  let x_1606 : f32 = x_264.x_MainLightShadowParams.w;
  u_xlat57.x = ((x_1601 * x_1603) + x_1606);
  let x_1610 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_1610, 0.0f, 1.0f);
  let x_1614 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_1614) + 1.0f);
  let x_1618 : f32 = u_xlat57.x;
  let x_1619 : f32 = u_xlat83;
  let x_1622 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1618 * x_1619) + x_1622);
  let x_1632 : f32 = x_1630.x_MainLightCookieTextureFormat;
  u_xlatb57.x = !((x_1632 == -1.0f));
  let x_1637 : bool = u_xlatb57.x;
  if (x_1637) {
    let x_1640 : vec3<f32> = vs_TEXCOORD7;
    let x_1643 : vec4<f32> = x_1630.x_MainLightWorldToLight[1i];
    u_xlat57 = (vec2<f32>(x_1640.y, x_1640.y) * vec2<f32>(x_1643.x, x_1643.y));
    let x_1647 : vec4<f32> = x_1630.x_MainLightWorldToLight[0i];
    let x_1649 : vec3<f32> = vs_TEXCOORD7;
    let x_1652 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_1647.x, x_1647.y) * vec2<f32>(x_1649.x, x_1649.x)) + x_1652);
    let x_1655 : vec4<f32> = x_1630.x_MainLightWorldToLight[2i];
    let x_1657 : vec3<f32> = vs_TEXCOORD7;
    let x_1660 : vec2<f32> = u_xlat57;
    u_xlat57 = ((vec2<f32>(x_1655.x, x_1655.y) * vec2<f32>(x_1657.z, x_1657.z)) + x_1660);
    let x_1662 : vec2<f32> = u_xlat57;
    let x_1665 : vec4<f32> = x_1630.x_MainLightWorldToLight[3i];
    u_xlat57 = (x_1662 + vec2<f32>(x_1665.x, x_1665.y));
    let x_1668 : vec2<f32> = u_xlat57;
    u_xlat57 = ((x_1668 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1676 : vec2<f32> = u_xlat57;
    let x_1678 : f32 = x_29.x_GlobalMipBias.x;
    let x_1679 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1676, x_1678);
    u_xlat6 = x_1679;
    let x_1681 : f32 = x_1630.x_MainLightCookieTextureFormat;
    let x_1683 : f32 = x_1630.x_MainLightCookieTextureFormat;
    let x_1685 : f32 = x_1630.x_MainLightCookieTextureFormat;
    let x_1687 : f32 = x_1630.x_MainLightCookieTextureFormat;
    let x_1688 : vec4<f32> = vec4<f32>(x_1681, x_1683, x_1685, x_1687);
    let x_1696 : vec4<bool> = (vec4<f32>(x_1688.x, x_1688.y, x_1688.z, x_1688.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb57 = vec2<bool>(x_1696.x, x_1696.y);
    let x_1699 : bool = u_xlatb57.y;
    if (x_1699) {
      let x_1704 : f32 = u_xlat6.w;
      x_1700 = x_1704;
    } else {
      let x_1707 : f32 = u_xlat6.x;
      x_1700 = x_1707;
    }
    let x_1708 : f32 = x_1700;
    u_xlat83 = x_1708;
    let x_1710 : bool = u_xlatb57.x;
    if (x_1710) {
      let x_1714 : vec4<f32> = u_xlat6;
      x_1711 = vec3<f32>(x_1714.x, x_1714.y, x_1714.z);
    } else {
      let x_1717 : f32 = u_xlat83;
      x_1711 = vec3<f32>(x_1717, x_1717, x_1717);
    }
    let x_1719 : vec3<f32> = x_1711;
    let x_1720 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1726 : vec4<f32> = u_xlat6;
  let x_1729 : vec4<f32> = x_29.x_MainLightColor;
  let x_1731 : vec3<f32> = (vec3<f32>(x_1726.x, x_1726.y, x_1726.z) * vec3<f32>(x_1729.x, x_1729.y, x_1729.z));
  let x_1732 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1731.x, x_1731.y, x_1731.z, x_1732.w);
  let x_1734 : vec3<f32> = u_xlat3;
  let x_1736 : vec3<f32> = u_xlat27;
  u_xlat57.x = dot(-(x_1734), x_1736);
  let x_1740 : f32 = u_xlat57.x;
  let x_1742 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1740 + x_1742);
  let x_1745 : vec3<f32> = u_xlat27;
  let x_1746 : vec2<f32> = u_xlat57;
  let x_1750 : vec3<f32> = u_xlat3;
  let x_1752 : vec3<f32> = ((x_1745 * -(vec3<f32>(x_1746.x, x_1746.x, x_1746.x))) + -(x_1750));
  let x_1753 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
  let x_1755 : vec3<f32> = u_xlat27;
  let x_1756 : vec3<f32> = u_xlat3;
  u_xlat57.x = dot(x_1755, x_1756);
  let x_1760 : f32 = u_xlat57.x;
  u_xlat57.x = clamp(x_1760, 0.0f, 1.0f);
  let x_1764 : f32 = u_xlat57.x;
  u_xlat57.x = (-(x_1764) + 1.0f);
  let x_1769 : f32 = u_xlat57.x;
  let x_1771 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1769 * x_1771);
  let x_1775 : f32 = u_xlat57.x;
  let x_1777 : f32 = u_xlat57.x;
  u_xlat57.x = (x_1775 * x_1777);
  let x_1780 : f32 = u_xlat1;
  u_xlat83 = ((-(x_1780) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1786 : f32 = u_xlat1;
  let x_1787 : f32 = u_xlat83;
  u_xlat1 = (x_1786 * x_1787);
  let x_1789 : f32 = u_xlat1;
  u_xlat1 = (x_1789 * 6.0f);
  let x_1800 : vec4<f32> = u_xlat7;
  let x_1802 : f32 = u_xlat1;
  let x_1803 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1800.x, x_1800.y, x_1800.z), x_1802);
  u_xlat7 = x_1803;
  let x_1805 : f32 = u_xlat7.w;
  u_xlat1 = (x_1805 + -1.0f);
  let x_1812 : f32 = x_1810.unity_SpecCube0_HDR.w;
  let x_1813 : f32 = u_xlat1;
  u_xlat1 = ((x_1812 * x_1813) + 1.0f);
  let x_1816 : f32 = u_xlat1;
  u_xlat1 = max(x_1816, 0.0f);
  let x_1818 : f32 = u_xlat1;
  u_xlat1 = log2(x_1818);
  let x_1820 : f32 = u_xlat1;
  let x_1822 : f32 = x_1810.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1820 * x_1822);
  let x_1824 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1824);
  let x_1826 : f32 = u_xlat1;
  let x_1828 : f32 = x_1810.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1826 * x_1828);
  let x_1830 : vec4<f32> = u_xlat7;
  let x_1832 : f32 = u_xlat1;
  let x_1834 : vec3<f32> = (vec3<f32>(x_1830.x, x_1830.y, x_1830.z) * vec3<f32>(x_1832, x_1832, x_1832));
  let x_1835 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
  let x_1837 : f32 = u_xlat80;
  let x_1839 : f32 = u_xlat80;
  let x_1843 : vec2<f32> = ((vec2<f32>(x_1837, x_1837) * vec2<f32>(x_1839, x_1839)) + vec2<f32>(-1.0f, 1.0f));
  let x_1844 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1843.x, x_1843.y, x_1844.z, x_1844.w);
  let x_1847 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1847);
  let x_1850 : vec4<f32> = u_xlat0;
  let x_1853 : f32 = u_xlat78;
  u_xlat34 = (-(vec3<f32>(x_1850.x, x_1850.y, x_1850.z)) + vec3<f32>(x_1853, x_1853, x_1853));
  let x_1856 : vec2<f32> = u_xlat57;
  let x_1858 : vec3<f32> = u_xlat34;
  let x_1860 : vec4<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1856.x, x_1856.x, x_1856.x) * x_1858) + vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
  let x_1863 : f32 = u_xlat1;
  let x_1865 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1863, x_1863, x_1863) * x_1865);
  let x_1867 : vec4<f32> = u_xlat7;
  let x_1869 : vec3<f32> = u_xlat34;
  let x_1870 : vec3<f32> = (vec3<f32>(x_1867.x, x_1867.y, x_1867.z) * x_1869);
  let x_1871 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1870.x, x_1870.y, x_1870.z, x_1871.w);
  let x_1873 : vec4<f32> = u_xlat2;
  let x_1875 : vec3<f32> = u_xlat4;
  let x_1877 : vec4<f32> = u_xlat7;
  let x_1879 : vec3<f32> = ((vec3<f32>(x_1873.x, x_1873.y, x_1873.z) * x_1875) + vec3<f32>(x_1877.x, x_1877.y, x_1877.z));
  let x_1880 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1879.x, x_1879.y, x_1879.z, x_1880.w);
  let x_1883 : f32 = u_xlat5.x;
  let x_1885 : f32 = x_1810.unity_LightData.z;
  u_xlat78 = (x_1883 * x_1885);
  let x_1887 : vec3<f32> = u_xlat27;
  let x_1889 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_1887, vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
  let x_1892 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1892, 0.0f, 1.0f);
  let x_1894 : f32 = u_xlat78;
  let x_1895 : f32 = u_xlat1;
  u_xlat78 = (x_1894 * x_1895);
  let x_1897 : f32 = u_xlat78;
  let x_1899 : vec4<f32> = u_xlat6;
  let x_1901 : vec3<f32> = (vec3<f32>(x_1897, x_1897, x_1897) * vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
  let x_1902 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1901.x, x_1902.y, x_1901.y, x_1901.z);
  let x_1904 : vec3<f32> = u_xlat3;
  let x_1906 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1908 : vec3<f32> = (x_1904 + vec3<f32>(x_1906.x, x_1906.y, x_1906.z));
  let x_1909 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1908.x, x_1908.y, x_1908.z, x_1909.w);
  let x_1911 : vec4<f32> = u_xlat6;
  let x_1913 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(vec3<f32>(x_1911.x, x_1911.y, x_1911.z), vec3<f32>(x_1913.x, x_1913.y, x_1913.z));
  let x_1916 : f32 = u_xlat78;
  u_xlat78 = max(x_1916, 1.17549435e-38f);
  let x_1919 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_1919);
  let x_1921 : f32 = u_xlat78;
  let x_1923 : vec4<f32> = u_xlat6;
  let x_1925 : vec3<f32> = (vec3<f32>(x_1921, x_1921, x_1921) * vec3<f32>(x_1923.x, x_1923.y, x_1923.z));
  let x_1926 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1925.x, x_1925.y, x_1925.z, x_1926.w);
  let x_1928 : vec3<f32> = u_xlat27;
  let x_1929 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_1928, vec3<f32>(x_1929.x, x_1929.y, x_1929.z));
  let x_1932 : f32 = u_xlat78;
  u_xlat78 = clamp(x_1932, 0.0f, 1.0f);
  let x_1935 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1937 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_1935.x, x_1935.y, x_1935.z), vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
  let x_1940 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1940, 0.0f, 1.0f);
  let x_1942 : f32 = u_xlat78;
  let x_1943 : f32 = u_xlat78;
  u_xlat78 = (x_1942 * x_1943);
  let x_1945 : f32 = u_xlat78;
  let x_1947 : f32 = u_xlat8.x;
  u_xlat78 = ((x_1945 * x_1947) + 1.00001001358032226562f);
  let x_1951 : f32 = u_xlat1;
  let x_1952 : f32 = u_xlat1;
  u_xlat1 = (x_1951 * x_1952);
  let x_1954 : f32 = u_xlat78;
  let x_1955 : f32 = u_xlat78;
  u_xlat78 = (x_1954 * x_1955);
  let x_1957 : f32 = u_xlat1;
  u_xlat1 = max(x_1957, 0.10000000149011611938f);
  let x_1960 : f32 = u_xlat78;
  let x_1961 : f32 = u_xlat1;
  u_xlat78 = (x_1960 * x_1961);
  let x_1963 : f32 = u_xlat81;
  let x_1964 : f32 = u_xlat78;
  u_xlat78 = (x_1963 * x_1964);
  let x_1966 : f32 = u_xlat82;
  let x_1967 : f32 = u_xlat78;
  u_xlat78 = (x_1966 / x_1967);
  let x_1969 : vec4<f32> = u_xlat0;
  let x_1971 : f32 = u_xlat78;
  let x_1974 : vec3<f32> = u_xlat4;
  let x_1975 : vec3<f32> = ((vec3<f32>(x_1969.x, x_1969.y, x_1969.z) * vec3<f32>(x_1971, x_1971, x_1971)) + x_1974);
  let x_1976 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1975.x, x_1975.y, x_1975.z, x_1976.w);
  let x_1979 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1981 : f32 = x_1810.unity_LightData.y;
  u_xlat78 = min(x_1979, x_1981);
  let x_1985 : f32 = u_xlat78;
  u_xlatu78 = bitcast<u32>(i32(x_1985));
  let x_1989 : f32 = u_xlat31.x;
  let x_1992 : f32 = x_264.x_AdditionalShadowFadeParams.x;
  let x_1995 : f32 = x_264.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_1989 * x_1992) + x_1995);
  let x_1997 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1997, 0.0f, 1.0f);
  let x_2001 : f32 = x_1630.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2003 : f32 = x_1630.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2005 : f32 = x_1630.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2007 : f32 = x_1630.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2008 : vec4<f32> = vec4<f32>(x_2001, x_2003, x_2005, x_2007);
  let x_2015 : vec4<bool> = (vec4<f32>(x_2008.x, x_2008.y, x_2008.z, x_2008.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2015.x, x_2015.y);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2027 : u32 = u_xlatu_loop_1;
    let x_2028 : u32 = u_xlatu78;
    if ((x_2027 < x_2028)) {
    } else {
      break;
    }
    let x_2031 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_2031 >> 2u);
    let x_2035 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2035 & 3u));
    let x_2038 : u32 = u_xlatu31;
    let x_2041 : vec4<f32> = x_1810.unity_LightIndices[bitcast<i32>(x_2038)];
    let x_2051 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2056 : vec4<u32> = indexable[x_2051];
    u_xlat31.x = dot(x_2041, bitcast<vec4<f32>>(x_2056));
    let x_2062 : f32 = u_xlat31.x;
    u_xlati31 = i32(x_2062);
    let x_2064 : vec3<f32> = vs_TEXCOORD7;
    let x_2075 : i32 = u_xlati31;
    let x_2077 : vec4<f32> = x_2074.x_AdditionalLightsPosition[x_2075];
    let x_2080 : i32 = u_xlati31;
    let x_2082 : vec4<f32> = x_2074.x_AdditionalLightsPosition[x_2080];
    let x_2084 : vec3<f32> = ((-(x_2064) * vec3<f32>(x_2077.w, x_2077.w, x_2077.w)) + vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
    let x_2085 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2085.w);
    let x_2088 : vec4<f32> = u_xlat9;
    let x_2090 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2088.x, x_2088.y, x_2088.z), vec3<f32>(x_2090.x, x_2090.y, x_2090.z));
    let x_2093 : f32 = u_xlat84;
    u_xlat84 = max(x_2093, 0.00006103515625f);
    let x_2097 : f32 = u_xlat84;
    u_xlat59 = inverseSqrt(x_2097);
    let x_2099 : f32 = u_xlat59;
    let x_2101 : vec4<f32> = u_xlat9;
    let x_2103 : vec3<f32> = (vec3<f32>(x_2099, x_2099, x_2099) * vec3<f32>(x_2101.x, x_2101.y, x_2101.z));
    let x_2104 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2103.x, x_2103.y, x_2103.z, x_2104.w);
    let x_2107 : f32 = u_xlat84;
    u_xlat85 = (1.0f / x_2107);
    let x_2109 : f32 = u_xlat84;
    let x_2110 : i32 = u_xlati31;
    let x_2112 : f32 = x_2074.x_AdditionalLightsAttenuation[x_2110].x;
    u_xlat84 = (x_2109 * x_2112);
    let x_2114 : f32 = u_xlat84;
    let x_2116 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2114) * x_2116) + 1.0f);
    let x_2119 : f32 = u_xlat84;
    u_xlat84 = max(x_2119, 0.0f);
    let x_2121 : f32 = u_xlat84;
    let x_2122 : f32 = u_xlat84;
    u_xlat84 = (x_2121 * x_2122);
    let x_2124 : f32 = u_xlat84;
    let x_2125 : f32 = u_xlat85;
    u_xlat84 = (x_2124 * x_2125);
    let x_2127 : i32 = u_xlati31;
    let x_2129 : vec4<f32> = x_2074.x_AdditionalLightsSpotDir[x_2127];
    let x_2131 : vec4<f32> = u_xlat10;
    u_xlat85 = dot(vec3<f32>(x_2129.x, x_2129.y, x_2129.z), vec3<f32>(x_2131.x, x_2131.y, x_2131.z));
    let x_2134 : f32 = u_xlat85;
    let x_2135 : i32 = u_xlati31;
    let x_2137 : f32 = x_2074.x_AdditionalLightsAttenuation[x_2135].z;
    let x_2139 : i32 = u_xlati31;
    let x_2141 : f32 = x_2074.x_AdditionalLightsAttenuation[x_2139].w;
    u_xlat85 = ((x_2134 * x_2137) + x_2141);
    let x_2143 : f32 = u_xlat85;
    u_xlat85 = clamp(x_2143, 0.0f, 1.0f);
    let x_2145 : f32 = u_xlat85;
    let x_2146 : f32 = u_xlat85;
    u_xlat85 = (x_2145 * x_2146);
    let x_2148 : f32 = u_xlat84;
    let x_2149 : f32 = u_xlat85;
    u_xlat84 = (x_2148 * x_2149);
    let x_2153 : i32 = u_xlati31;
    let x_2155 : f32 = x_264.x_AdditionalShadowParams[x_2153].w;
    u_xlati85 = i32(x_2155);
    let x_2158 : i32 = u_xlati85;
    u_xlatb87 = (x_2158 >= 0i);
    let x_2160 : bool = u_xlatb87;
    if (x_2160) {
      let x_2164 : i32 = u_xlati31;
      let x_2166 : f32 = x_264.x_AdditionalShadowParams[x_2164].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2166, x_2166, x_2166, x_2166))));
      let x_2170 : bool = u_xlatb87;
      if (x_2170) {
        let x_2175 : vec4<f32> = u_xlat10;
        let x_2178 : vec4<f32> = u_xlat10;
        let x_2181 : vec4<bool> = (abs(vec4<f32>(x_2175.z, x_2175.z, x_2175.y, x_2175.z)) >= abs(vec4<f32>(x_2178.x, x_2178.y, x_2178.x, x_2178.x)));
        let x_2183 : vec3<bool> = vec3<bool>(x_2181.x, x_2181.y, x_2181.z);
        let x_2184 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2183.x, x_2183.y, x_2183.z, x_2184.w);
        let x_2187 : bool = u_xlatb11.y;
        let x_2189 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2187 & x_2189);
        let x_2191 : vec4<f32> = u_xlat10;
        let x_2194 : vec4<bool> = (-(vec4<f32>(x_2191.z, x_2191.y, x_2191.z, x_2191.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2195 : vec3<bool> = vec3<bool>(x_2194.x, x_2194.y, x_2194.w);
        let x_2196 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2195.x, x_2195.y, x_2196.z, x_2195.z);
        let x_2199 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2199);
        let x_2204 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2204);
        let x_2210 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2210);
        let x_2213 : bool = u_xlatb11.z;
        if (x_2213) {
          let x_2218 : f32 = u_xlat11.y;
          x_2214 = x_2218;
        } else {
          let x_2220 : f32 = u_xlat88;
          x_2214 = x_2220;
        }
        let x_2221 : f32 = x_2214;
        u_xlat88 = x_2221;
        let x_2223 : bool = u_xlatb87;
        if (x_2223) {
          let x_2228 : f32 = u_xlat11.x;
          x_2224 = x_2228;
        } else {
          let x_2230 : f32 = u_xlat88;
          x_2224 = x_2230;
        }
        let x_2231 : f32 = x_2224;
        u_xlat87 = x_2231;
        let x_2232 : i32 = u_xlati31;
        let x_2234 : f32 = x_264.x_AdditionalShadowParams[x_2232].w;
        u_xlat88 = trunc(x_2234);
        let x_2236 : f32 = u_xlat87;
        let x_2237 : f32 = u_xlat88;
        u_xlat87 = (x_2236 + x_2237);
        let x_2239 : f32 = u_xlat87;
        u_xlati85 = i32(x_2239);
      }
      let x_2241 : i32 = u_xlati85;
      u_xlati85 = (x_2241 << bitcast<u32>(2i));
      let x_2243 : vec3<f32> = vs_TEXCOORD7;
      let x_2246 : i32 = u_xlati85;
      let x_2249 : i32 = u_xlati85;
      let x_2253 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_2246 + 1i) / 4i)][((x_2249 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2243.y, x_2243.y, x_2243.y, x_2243.y) * x_2253);
      let x_2255 : i32 = u_xlati85;
      let x_2257 : i32 = u_xlati85;
      let x_2260 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[(x_2255 / 4i)][(x_2257 % 4i)];
      let x_2261 : vec3<f32> = vs_TEXCOORD7;
      let x_2264 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2260 * vec4<f32>(x_2261.x, x_2261.x, x_2261.x, x_2261.x)) + x_2264);
      let x_2266 : i32 = u_xlati85;
      let x_2269 : i32 = u_xlati85;
      let x_2273 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_2266 + 2i) / 4i)][((x_2269 + 2i) % 4i)];
      let x_2274 : vec3<f32> = vs_TEXCOORD7;
      let x_2277 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2273 * vec4<f32>(x_2274.z, x_2274.z, x_2274.z, x_2274.z)) + x_2277);
      let x_2279 : vec4<f32> = u_xlat11;
      let x_2280 : i32 = u_xlati85;
      let x_2283 : i32 = u_xlati85;
      let x_2287 : vec4<f32> = x_264.x_AdditionalLightsWorldToShadow[((x_2280 + 3i) / 4i)][((x_2283 + 3i) % 4i)];
      u_xlat11 = (x_2279 + x_2287);
      let x_2289 : vec4<f32> = u_xlat11;
      let x_2291 : vec4<f32> = u_xlat11;
      let x_2293 : vec3<f32> = (vec3<f32>(x_2289.x, x_2289.y, x_2289.z) / vec3<f32>(x_2291.w, x_2291.w, x_2291.w));
      let x_2294 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
      let x_2297 : i32 = u_xlati31;
      let x_2299 : f32 = x_264.x_AdditionalShadowParams[x_2297].y;
      u_xlatb85 = (0.0f < x_2299);
      let x_2301 : bool = u_xlatb85;
      if (x_2301) {
        let x_2304 : i32 = u_xlati31;
        let x_2306 : f32 = x_264.x_AdditionalShadowParams[x_2304].y;
        u_xlatb85 = (1.0f == x_2306);
        let x_2308 : bool = u_xlatb85;
        if (x_2308) {
          let x_2311 : vec4<f32> = u_xlat11;
          let x_2315 : vec4<f32> = x_264.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2311.x, x_2311.y, x_2311.x, x_2311.y) + x_2315);
          let x_2318 : vec4<f32> = u_xlat12;
          let x_2319 : vec2<f32> = vec2<f32>(x_2318.x, x_2318.y);
          let x_2321 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2319.x, x_2319.y, x_2321);
          let x_2329 : vec3<f32> = txVec30;
          let x_2331 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2329.xy, x_2329.z);
          u_xlat13.x = x_2331;
          let x_2334 : vec4<f32> = u_xlat12;
          let x_2335 : vec2<f32> = vec2<f32>(x_2334.z, x_2334.w);
          let x_2337 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2335.x, x_2335.y, x_2337);
          let x_2344 : vec3<f32> = txVec31;
          let x_2346 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2344.xy, x_2344.z);
          u_xlat13.y = x_2346;
          let x_2348 : vec4<f32> = u_xlat11;
          let x_2352 : vec4<f32> = x_264.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2348.x, x_2348.y, x_2348.x, x_2348.y) + x_2352);
          let x_2355 : vec4<f32> = u_xlat12;
          let x_2356 : vec2<f32> = vec2<f32>(x_2355.x, x_2355.y);
          let x_2358 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2356.x, x_2356.y, x_2358);
          let x_2365 : vec3<f32> = txVec32;
          let x_2367 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2365.xy, x_2365.z);
          u_xlat13.z = x_2367;
          let x_2370 : vec4<f32> = u_xlat12;
          let x_2371 : vec2<f32> = vec2<f32>(x_2370.z, x_2370.w);
          let x_2373 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2371.x, x_2371.y, x_2373);
          let x_2380 : vec3<f32> = txVec33;
          let x_2382 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2380.xy, x_2380.z);
          u_xlat13.w = x_2382;
          let x_2384 : vec4<f32> = u_xlat13;
          u_xlat85 = dot(x_2384, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2387 : i32 = u_xlati31;
          let x_2389 : f32 = x_264.x_AdditionalShadowParams[x_2387].y;
          u_xlatb87 = (2.0f == x_2389);
          let x_2391 : bool = u_xlatb87;
          if (x_2391) {
            let x_2394 : vec4<f32> = u_xlat11;
            let x_2398 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2401 : vec2<f32> = ((vec2<f32>(x_2394.x, x_2394.y) * vec2<f32>(x_2398.z, x_2398.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2402 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2401.x, x_2401.y, x_2402.z, x_2402.w);
            let x_2404 : vec4<f32> = u_xlat12;
            let x_2406 : vec2<f32> = floor(vec2<f32>(x_2404.x, x_2404.y));
            let x_2407 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2406.x, x_2406.y, x_2407.z, x_2407.w);
            let x_2409 : vec4<f32> = u_xlat11;
            let x_2412 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2415 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2409.x, x_2409.y) * vec2<f32>(x_2412.z, x_2412.w)) + -(vec2<f32>(x_2415.x, x_2415.y)));
            let x_2419 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2419.x, x_2419.x, x_2419.y, x_2419.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2422 : vec4<f32> = u_xlat13;
            let x_2424 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2422.x, x_2422.x, x_2422.z, x_2422.z) * vec4<f32>(x_2424.x, x_2424.x, x_2424.z, x_2424.z));
            let x_2427 : vec4<f32> = u_xlat14;
            let x_2429 : vec2<f32> = (vec2<f32>(x_2427.y, x_2427.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2430 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2429.x, x_2430.y, x_2429.y, x_2430.w);
            let x_2432 : vec4<f32> = u_xlat14;
            let x_2435 : vec2<f32> = u_xlat64;
            let x_2437 : vec2<f32> = ((vec2<f32>(x_2432.x, x_2432.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2435));
            let x_2438 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2437.x, x_2437.y, x_2438.z, x_2438.w);
            let x_2441 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2441) + vec2<f32>(1.0f, 1.0f));
            let x_2444 : vec2<f32> = u_xlat64;
            let x_2445 : vec2<f32> = min(x_2444, vec2<f32>(0.0f, 0.0f));
            let x_2446 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2445.x, x_2445.y, x_2446.z, x_2446.w);
            let x_2448 : vec4<f32> = u_xlat15;
            let x_2451 : vec4<f32> = u_xlat15;
            let x_2454 : vec2<f32> = u_xlat66;
            let x_2455 : vec2<f32> = ((-(vec2<f32>(x_2448.x, x_2448.y)) * vec2<f32>(x_2451.x, x_2451.y)) + x_2454);
            let x_2456 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2455.x, x_2455.y, x_2456.z, x_2456.w);
            let x_2458 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2458, vec2<f32>(0.0f, 0.0f));
            let x_2460 : vec2<f32> = u_xlat64;
            let x_2462 : vec2<f32> = u_xlat64;
            let x_2464 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2460) * x_2462) + vec2<f32>(x_2464.y, x_2464.w));
            let x_2467 : vec4<f32> = u_xlat15;
            let x_2469 : vec2<f32> = (vec2<f32>(x_2467.x, x_2467.y) + vec2<f32>(1.0f, 1.0f));
            let x_2470 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
            let x_2472 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2472 + vec2<f32>(1.0f, 1.0f));
            let x_2474 : vec4<f32> = u_xlat14;
            let x_2476 : vec2<f32> = (vec2<f32>(x_2474.x, x_2474.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2477 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
            let x_2479 : vec2<f32> = u_xlat66;
            let x_2480 : vec2<f32> = (x_2479 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2481 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2480.x, x_2480.y, x_2481.z, x_2481.w);
            let x_2483 : vec4<f32> = u_xlat15;
            let x_2485 : vec2<f32> = (vec2<f32>(x_2483.x, x_2483.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2486 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2485.x, x_2485.y, x_2486.z, x_2486.w);
            let x_2488 : vec2<f32> = u_xlat64;
            let x_2489 : vec2<f32> = (x_2488 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2490 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2489.x, x_2489.y, x_2490.z, x_2490.w);
            let x_2492 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2492.y, x_2492.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2496 : f32 = u_xlat15.x;
            u_xlat16.z = x_2496;
            let x_2499 : f32 = u_xlat64.x;
            u_xlat16.w = x_2499;
            let x_2502 : f32 = u_xlat17.x;
            u_xlat14.z = x_2502;
            let x_2505 : f32 = u_xlat13.x;
            u_xlat14.w = x_2505;
            let x_2507 : vec4<f32> = u_xlat14;
            let x_2509 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2507.z, x_2507.w, x_2507.x, x_2507.z) + vec4<f32>(x_2509.z, x_2509.w, x_2509.x, x_2509.z));
            let x_2513 : f32 = u_xlat16.y;
            u_xlat15.z = x_2513;
            let x_2516 : f32 = u_xlat64.y;
            u_xlat15.w = x_2516;
            let x_2519 : f32 = u_xlat14.y;
            u_xlat17.z = x_2519;
            let x_2522 : f32 = u_xlat13.z;
            u_xlat17.w = x_2522;
            let x_2524 : vec4<f32> = u_xlat15;
            let x_2526 : vec4<f32> = u_xlat17;
            let x_2528 : vec3<f32> = (vec3<f32>(x_2524.z, x_2524.y, x_2524.w) + vec3<f32>(x_2526.z, x_2526.y, x_2526.w));
            let x_2529 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2528.x, x_2528.y, x_2528.z, x_2529.w);
            let x_2531 : vec4<f32> = u_xlat14;
            let x_2533 : vec4<f32> = u_xlat18;
            let x_2535 : vec3<f32> = (vec3<f32>(x_2531.x, x_2531.z, x_2531.w) / vec3<f32>(x_2533.z, x_2533.w, x_2533.y));
            let x_2536 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
            let x_2538 : vec4<f32> = u_xlat14;
            let x_2540 : vec3<f32> = (vec3<f32>(x_2538.x, x_2538.y, x_2538.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2541 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2540.x, x_2540.y, x_2540.z, x_2541.w);
            let x_2543 : vec4<f32> = u_xlat17;
            let x_2545 : vec4<f32> = u_xlat13;
            let x_2547 : vec3<f32> = (vec3<f32>(x_2543.z, x_2543.y, x_2543.w) / vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
            let x_2548 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);
            let x_2550 : vec4<f32> = u_xlat15;
            let x_2552 : vec3<f32> = (vec3<f32>(x_2550.x, x_2550.y, x_2550.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2553 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
            let x_2555 : vec4<f32> = u_xlat14;
            let x_2558 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2560 : vec3<f32> = (vec3<f32>(x_2555.y, x_2555.x, x_2555.z) * vec3<f32>(x_2558.x, x_2558.x, x_2558.x));
            let x_2561 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2560.x, x_2560.y, x_2560.z, x_2561.w);
            let x_2563 : vec4<f32> = u_xlat15;
            let x_2566 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2568 : vec3<f32> = (vec3<f32>(x_2563.x, x_2563.y, x_2563.z) * vec3<f32>(x_2566.y, x_2566.y, x_2566.y));
            let x_2569 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
            let x_2572 : f32 = u_xlat15.x;
            u_xlat14.w = x_2572;
            let x_2574 : vec4<f32> = u_xlat12;
            let x_2577 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2580 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2574.x, x_2574.y, x_2574.x, x_2574.y) * vec4<f32>(x_2577.x, x_2577.y, x_2577.x, x_2577.y)) + vec4<f32>(x_2580.y, x_2580.w, x_2580.x, x_2580.w));
            let x_2583 : vec4<f32> = u_xlat12;
            let x_2586 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2589 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2583.x, x_2583.y) * vec2<f32>(x_2586.x, x_2586.y)) + vec2<f32>(x_2589.z, x_2589.w));
            let x_2593 : f32 = u_xlat14.y;
            u_xlat15.w = x_2593;
            let x_2595 : vec4<f32> = u_xlat15;
            let x_2596 : vec2<f32> = vec2<f32>(x_2595.y, x_2595.z);
            let x_2597 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2597.x, x_2596.x, x_2597.z, x_2596.y);
            let x_2599 : vec4<f32> = u_xlat12;
            let x_2602 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2605 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2599.x, x_2599.y, x_2599.x, x_2599.y) * vec4<f32>(x_2602.x, x_2602.y, x_2602.x, x_2602.y)) + vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2605.y));
            let x_2608 : vec4<f32> = u_xlat12;
            let x_2611 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2614 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2608.x, x_2608.y, x_2608.x, x_2608.y) * vec4<f32>(x_2611.x, x_2611.y, x_2611.x, x_2611.y)) + vec4<f32>(x_2614.w, x_2614.y, x_2614.w, x_2614.z));
            let x_2617 : vec4<f32> = u_xlat12;
            let x_2620 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2623 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2617.x, x_2617.y, x_2617.x, x_2617.y) * vec4<f32>(x_2620.x, x_2620.y, x_2620.x, x_2620.y)) + vec4<f32>(x_2623.x, x_2623.w, x_2623.z, x_2623.w));
            let x_2626 : vec4<f32> = u_xlat13;
            let x_2628 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2626.x, x_2626.x, x_2626.x, x_2626.y) * vec4<f32>(x_2628.z, x_2628.w, x_2628.y, x_2628.z));
            let x_2632 : vec4<f32> = u_xlat13;
            let x_2634 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2632.y, x_2632.y, x_2632.z, x_2632.z) * x_2634);
            let x_2637 : f32 = u_xlat13.z;
            let x_2639 : f32 = u_xlat18.y;
            u_xlat87 = (x_2637 * x_2639);
            let x_2642 : vec4<f32> = u_xlat16;
            let x_2643 : vec2<f32> = vec2<f32>(x_2642.x, x_2642.y);
            let x_2645 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2643.x, x_2643.y, x_2645);
            let x_2652 : vec3<f32> = txVec34;
            let x_2654 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2652.xy, x_2652.z);
            u_xlat88 = x_2654;
            let x_2656 : vec4<f32> = u_xlat16;
            let x_2657 : vec2<f32> = vec2<f32>(x_2656.z, x_2656.w);
            let x_2659 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2657.x, x_2657.y, x_2659);
            let x_2667 : vec3<f32> = txVec35;
            let x_2669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2667.xy, x_2667.z);
            u_xlat89 = x_2669;
            let x_2670 : f32 = u_xlat89;
            let x_2672 : f32 = u_xlat19.y;
            u_xlat89 = (x_2670 * x_2672);
            let x_2675 : f32 = u_xlat19.x;
            let x_2676 : f32 = u_xlat88;
            let x_2678 : f32 = u_xlat89;
            u_xlat88 = ((x_2675 * x_2676) + x_2678);
            let x_2681 : vec2<f32> = u_xlat64;
            let x_2683 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2681.x, x_2681.y, x_2683);
            let x_2690 : vec3<f32> = txVec36;
            let x_2692 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2690.xy, x_2690.z);
            u_xlat89 = x_2692;
            let x_2694 : f32 = u_xlat19.z;
            let x_2695 : f32 = u_xlat89;
            let x_2697 : f32 = u_xlat88;
            u_xlat88 = ((x_2694 * x_2695) + x_2697);
            let x_2700 : vec4<f32> = u_xlat15;
            let x_2701 : vec2<f32> = vec2<f32>(x_2700.x, x_2700.y);
            let x_2703 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2701.x, x_2701.y, x_2703);
            let x_2710 : vec3<f32> = txVec37;
            let x_2712 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2710.xy, x_2710.z);
            u_xlat89 = x_2712;
            let x_2714 : f32 = u_xlat19.w;
            let x_2715 : f32 = u_xlat89;
            let x_2717 : f32 = u_xlat88;
            u_xlat88 = ((x_2714 * x_2715) + x_2717);
            let x_2720 : vec4<f32> = u_xlat17;
            let x_2721 : vec2<f32> = vec2<f32>(x_2720.x, x_2720.y);
            let x_2723 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2721.x, x_2721.y, x_2723);
            let x_2730 : vec3<f32> = txVec38;
            let x_2732 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2730.xy, x_2730.z);
            u_xlat89 = x_2732;
            let x_2734 : f32 = u_xlat20.x;
            let x_2735 : f32 = u_xlat89;
            let x_2737 : f32 = u_xlat88;
            u_xlat88 = ((x_2734 * x_2735) + x_2737);
            let x_2740 : vec4<f32> = u_xlat17;
            let x_2741 : vec2<f32> = vec2<f32>(x_2740.z, x_2740.w);
            let x_2743 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2741.x, x_2741.y, x_2743);
            let x_2750 : vec3<f32> = txVec39;
            let x_2752 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2750.xy, x_2750.z);
            u_xlat89 = x_2752;
            let x_2754 : f32 = u_xlat20.y;
            let x_2755 : f32 = u_xlat89;
            let x_2757 : f32 = u_xlat88;
            u_xlat88 = ((x_2754 * x_2755) + x_2757);
            let x_2760 : vec4<f32> = u_xlat15;
            let x_2761 : vec2<f32> = vec2<f32>(x_2760.z, x_2760.w);
            let x_2763 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2761.x, x_2761.y, x_2763);
            let x_2770 : vec3<f32> = txVec40;
            let x_2772 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2770.xy, x_2770.z);
            u_xlat89 = x_2772;
            let x_2774 : f32 = u_xlat20.z;
            let x_2775 : f32 = u_xlat89;
            let x_2777 : f32 = u_xlat88;
            u_xlat88 = ((x_2774 * x_2775) + x_2777);
            let x_2780 : vec4<f32> = u_xlat14;
            let x_2781 : vec2<f32> = vec2<f32>(x_2780.x, x_2780.y);
            let x_2783 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2781.x, x_2781.y, x_2783);
            let x_2790 : vec3<f32> = txVec41;
            let x_2792 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2790.xy, x_2790.z);
            u_xlat89 = x_2792;
            let x_2794 : f32 = u_xlat20.w;
            let x_2795 : f32 = u_xlat89;
            let x_2797 : f32 = u_xlat88;
            u_xlat88 = ((x_2794 * x_2795) + x_2797);
            let x_2800 : vec4<f32> = u_xlat14;
            let x_2801 : vec2<f32> = vec2<f32>(x_2800.z, x_2800.w);
            let x_2803 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2801.x, x_2801.y, x_2803);
            let x_2810 : vec3<f32> = txVec42;
            let x_2812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2810.xy, x_2810.z);
            u_xlat89 = x_2812;
            let x_2813 : f32 = u_xlat87;
            let x_2814 : f32 = u_xlat89;
            let x_2816 : f32 = u_xlat88;
            u_xlat85 = ((x_2813 * x_2814) + x_2816);
          } else {
            let x_2819 : vec4<f32> = u_xlat11;
            let x_2822 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2825 : vec2<f32> = ((vec2<f32>(x_2819.x, x_2819.y) * vec2<f32>(x_2822.z, x_2822.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2826 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2825.x, x_2825.y, x_2826.z, x_2826.w);
            let x_2828 : vec4<f32> = u_xlat12;
            let x_2830 : vec2<f32> = floor(vec2<f32>(x_2828.x, x_2828.y));
            let x_2831 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2830.x, x_2830.y, x_2831.z, x_2831.w);
            let x_2833 : vec4<f32> = u_xlat11;
            let x_2836 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2839 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2833.x, x_2833.y) * vec2<f32>(x_2836.z, x_2836.w)) + -(vec2<f32>(x_2839.x, x_2839.y)));
            let x_2843 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2843.x, x_2843.x, x_2843.y, x_2843.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2846 : vec4<f32> = u_xlat13;
            let x_2848 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2846.x, x_2846.x, x_2846.z, x_2846.z) * vec4<f32>(x_2848.x, x_2848.x, x_2848.z, x_2848.z));
            let x_2851 : vec4<f32> = u_xlat14;
            let x_2853 : vec2<f32> = (vec2<f32>(x_2851.y, x_2851.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2854 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2854.x, x_2853.x, x_2854.z, x_2853.y);
            let x_2856 : vec4<f32> = u_xlat14;
            let x_2859 : vec2<f32> = u_xlat64;
            let x_2861 : vec2<f32> = ((vec2<f32>(x_2856.x, x_2856.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2859));
            let x_2862 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2861.x, x_2862.y, x_2861.y, x_2862.w);
            let x_2864 : vec2<f32> = u_xlat64;
            let x_2866 : vec2<f32> = (-(x_2864) + vec2<f32>(1.0f, 1.0f));
            let x_2867 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2866.x, x_2866.y, x_2867.z, x_2867.w);
            let x_2869 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2869, vec2<f32>(0.0f, 0.0f));
            let x_2871 : vec2<f32> = u_xlat66;
            let x_2873 : vec2<f32> = u_xlat66;
            let x_2875 : vec4<f32> = u_xlat14;
            let x_2877 : vec2<f32> = ((-(x_2871) * x_2873) + vec2<f32>(x_2875.x, x_2875.y));
            let x_2878 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2877.x, x_2877.y, x_2878.z, x_2878.w);
            let x_2880 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2880, vec2<f32>(0.0f, 0.0f));
            let x_2883 : vec2<f32> = u_xlat66;
            let x_2885 : vec2<f32> = u_xlat66;
            let x_2887 : vec4<f32> = u_xlat13;
            let x_2889 : vec2<f32> = ((-(x_2883) * x_2885) + vec2<f32>(x_2887.y, x_2887.w));
            let x_2890 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2889.x, x_2890.y, x_2889.y);
            let x_2892 : vec4<f32> = u_xlat14;
            let x_2895 : vec2<f32> = (vec2<f32>(x_2892.x, x_2892.y) + vec2<f32>(2.0f, 2.0f));
            let x_2896 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2895.x, x_2895.y, x_2896.z, x_2896.w);
            let x_2898 : vec3<f32> = u_xlat39;
            let x_2900 : vec2<f32> = (vec2<f32>(x_2898.x, x_2898.z) + vec2<f32>(2.0f, 2.0f));
            let x_2901 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2901.x, x_2900.x, x_2901.z, x_2900.y);
            let x_2904 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2904 * 0.08163200318813323975f);
            let x_2907 : vec4<f32> = u_xlat13;
            let x_2910 : vec3<f32> = (vec3<f32>(x_2907.z, x_2907.x, x_2907.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2911 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2910.x, x_2910.y, x_2910.z, x_2911.w);
            let x_2913 : vec4<f32> = u_xlat14;
            let x_2915 : vec2<f32> = (vec2<f32>(x_2913.x, x_2913.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2916 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2915.x, x_2915.y, x_2916.z, x_2916.w);
            let x_2919 : f32 = u_xlat17.y;
            u_xlat16.x = x_2919;
            let x_2921 : vec2<f32> = u_xlat64;
            let x_2924 : vec2<f32> = ((vec2<f32>(x_2921.x, x_2921.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2925 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2925.x, x_2924.x, x_2925.z, x_2924.y);
            let x_2927 : vec2<f32> = u_xlat64;
            let x_2930 : vec2<f32> = ((vec2<f32>(x_2927.x, x_2927.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2931 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2930.x, x_2931.y, x_2930.y, x_2931.w);
            let x_2934 : f32 = u_xlat13.x;
            u_xlat14.y = x_2934;
            let x_2937 : f32 = u_xlat15.y;
            u_xlat14.w = x_2937;
            let x_2939 : vec4<f32> = u_xlat14;
            let x_2940 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_2939 + x_2940);
            let x_2942 : vec2<f32> = u_xlat64;
            let x_2945 : vec2<f32> = ((vec2<f32>(x_2942.y, x_2942.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2946 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2946.x, x_2945.x, x_2946.z, x_2945.y);
            let x_2948 : vec2<f32> = u_xlat64;
            let x_2951 : vec2<f32> = ((vec2<f32>(x_2948.y, x_2948.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2952 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2951.x, x_2952.y, x_2951.y, x_2952.w);
            let x_2955 : f32 = u_xlat13.y;
            u_xlat15.y = x_2955;
            let x_2957 : vec4<f32> = u_xlat15;
            let x_2958 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_2957 + x_2958);
            let x_2960 : vec4<f32> = u_xlat14;
            let x_2961 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_2960 / x_2961);
            let x_2963 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_2963 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2965 : vec4<f32> = u_xlat15;
            let x_2966 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_2965 / x_2966);
            let x_2968 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_2968 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2970 : vec4<f32> = u_xlat14;
            let x_2973 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_2970.w, x_2970.x, x_2970.y, x_2970.z) * vec4<f32>(x_2973.x, x_2973.x, x_2973.x, x_2973.x));
            let x_2976 : vec4<f32> = u_xlat15;
            let x_2979 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_2976.x, x_2976.w, x_2976.y, x_2976.z) * vec4<f32>(x_2979.y, x_2979.y, x_2979.y, x_2979.y));
            let x_2982 : vec4<f32> = u_xlat14;
            let x_2983 : vec3<f32> = vec3<f32>(x_2982.y, x_2982.z, x_2982.w);
            let x_2984 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2983.x, x_2984.y, x_2983.y, x_2983.z);
            let x_2987 : f32 = u_xlat15.x;
            u_xlat17.y = x_2987;
            let x_2989 : vec4<f32> = u_xlat12;
            let x_2992 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_2995 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_2989.x, x_2989.y, x_2989.x, x_2989.y) * vec4<f32>(x_2992.x, x_2992.y, x_2992.x, x_2992.y)) + vec4<f32>(x_2995.x, x_2995.y, x_2995.z, x_2995.y));
            let x_2998 : vec4<f32> = u_xlat12;
            let x_3001 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_3004 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_2998.x, x_2998.y) * vec2<f32>(x_3001.x, x_3001.y)) + vec2<f32>(x_3004.w, x_3004.y));
            let x_3008 : f32 = u_xlat17.y;
            u_xlat14.y = x_3008;
            let x_3011 : f32 = u_xlat15.z;
            u_xlat17.y = x_3011;
            let x_3013 : vec4<f32> = u_xlat12;
            let x_3016 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_3019 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3013.x, x_3013.y, x_3013.x, x_3013.y) * vec4<f32>(x_3016.x, x_3016.y, x_3016.x, x_3016.y)) + vec4<f32>(x_3019.x, x_3019.y, x_3019.z, x_3019.y));
            let x_3022 : vec4<f32> = u_xlat12;
            let x_3025 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_3028 : vec4<f32> = u_xlat17;
            let x_3030 : vec2<f32> = ((vec2<f32>(x_3022.x, x_3022.y) * vec2<f32>(x_3025.x, x_3025.y)) + vec2<f32>(x_3028.w, x_3028.y));
            let x_3031 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3030.x, x_3030.y, x_3031.z, x_3031.w);
            let x_3034 : f32 = u_xlat17.y;
            u_xlat14.z = x_3034;
            let x_3037 : vec4<f32> = u_xlat12;
            let x_3040 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_3043 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3037.x, x_3037.y, x_3037.x, x_3037.y) * vec4<f32>(x_3040.x, x_3040.y, x_3040.x, x_3040.y)) + vec4<f32>(x_3043.x, x_3043.y, x_3043.x, x_3043.z));
            let x_3047 : f32 = u_xlat15.w;
            u_xlat17.y = x_3047;
            let x_3050 : vec4<f32> = u_xlat12;
            let x_3053 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_3056 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3050.x, x_3050.y, x_3050.x, x_3050.y) * vec4<f32>(x_3053.x, x_3053.y, x_3053.x, x_3053.y)) + vec4<f32>(x_3056.x, x_3056.y, x_3056.z, x_3056.y));
            let x_3060 : vec4<f32> = u_xlat12;
            let x_3063 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_3066 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3060.x, x_3060.y) * vec2<f32>(x_3063.x, x_3063.y)) + vec2<f32>(x_3066.w, x_3066.y));
            let x_3070 : f32 = u_xlat17.y;
            u_xlat14.w = x_3070;
            let x_3073 : vec4<f32> = u_xlat12;
            let x_3076 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_3079 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3073.x, x_3073.y) * vec2<f32>(x_3076.x, x_3076.y)) + vec2<f32>(x_3079.x, x_3079.w));
            let x_3082 : vec4<f32> = u_xlat17;
            let x_3083 : vec3<f32> = vec3<f32>(x_3082.x, x_3082.z, x_3082.w);
            let x_3084 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3083.x, x_3084.y, x_3083.y, x_3083.z);
            let x_3086 : vec4<f32> = u_xlat12;
            let x_3089 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_3092 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3086.x, x_3086.y, x_3086.x, x_3086.y) * vec4<f32>(x_3089.x, x_3089.y, x_3089.x, x_3089.y)) + vec4<f32>(x_3092.x, x_3092.y, x_3092.z, x_3092.y));
            let x_3096 : vec4<f32> = u_xlat12;
            let x_3099 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_3102 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3096.x, x_3096.y) * vec2<f32>(x_3099.x, x_3099.y)) + vec2<f32>(x_3102.w, x_3102.y));
            let x_3106 : f32 = u_xlat14.x;
            u_xlat15.x = x_3106;
            let x_3108 : vec4<f32> = u_xlat12;
            let x_3111 : vec4<f32> = x_264.x_AdditionalShadowmapSize;
            let x_3114 : vec4<f32> = u_xlat15;
            let x_3116 : vec2<f32> = ((vec2<f32>(x_3108.x, x_3108.y) * vec2<f32>(x_3111.x, x_3111.y)) + vec2<f32>(x_3114.x, x_3114.y));
            let x_3117 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3116.x, x_3116.y, x_3117.z, x_3117.w);
            let x_3120 : vec4<f32> = u_xlat13;
            let x_3122 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3120.x, x_3120.x, x_3120.x, x_3120.x) * x_3122);
            let x_3125 : vec4<f32> = u_xlat13;
            let x_3127 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3125.y, x_3125.y, x_3125.y, x_3125.y) * x_3127);
            let x_3130 : vec4<f32> = u_xlat13;
            let x_3132 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3130.z, x_3130.z, x_3130.z, x_3130.z) * x_3132);
            let x_3134 : vec4<f32> = u_xlat13;
            let x_3136 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3134.w, x_3134.w, x_3134.w, x_3134.w) * x_3136);
            let x_3139 : vec4<f32> = u_xlat18;
            let x_3140 : vec2<f32> = vec2<f32>(x_3139.x, x_3139.y);
            let x_3142 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3140.x, x_3140.y, x_3142);
            let x_3149 : vec3<f32> = txVec43;
            let x_3151 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3149.xy, x_3149.z);
            u_xlat87 = x_3151;
            let x_3153 : vec4<f32> = u_xlat18;
            let x_3154 : vec2<f32> = vec2<f32>(x_3153.z, x_3153.w);
            let x_3156 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3154.x, x_3154.y, x_3156);
            let x_3163 : vec3<f32> = txVec44;
            let x_3165 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3163.xy, x_3163.z);
            u_xlat88 = x_3165;
            let x_3166 : f32 = u_xlat88;
            let x_3168 : f32 = u_xlat23.y;
            u_xlat88 = (x_3166 * x_3168);
            let x_3171 : f32 = u_xlat23.x;
            let x_3172 : f32 = u_xlat87;
            let x_3174 : f32 = u_xlat88;
            u_xlat87 = ((x_3171 * x_3172) + x_3174);
            let x_3177 : vec2<f32> = u_xlat64;
            let x_3179 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3177.x, x_3177.y, x_3179);
            let x_3186 : vec3<f32> = txVec45;
            let x_3188 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3186.xy, x_3186.z);
            u_xlat88 = x_3188;
            let x_3190 : f32 = u_xlat23.z;
            let x_3191 : f32 = u_xlat88;
            let x_3193 : f32 = u_xlat87;
            u_xlat87 = ((x_3190 * x_3191) + x_3193);
            let x_3196 : vec4<f32> = u_xlat21;
            let x_3197 : vec2<f32> = vec2<f32>(x_3196.x, x_3196.y);
            let x_3199 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3197.x, x_3197.y, x_3199);
            let x_3206 : vec3<f32> = txVec46;
            let x_3208 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3206.xy, x_3206.z);
            u_xlat88 = x_3208;
            let x_3210 : f32 = u_xlat23.w;
            let x_3211 : f32 = u_xlat88;
            let x_3213 : f32 = u_xlat87;
            u_xlat87 = ((x_3210 * x_3211) + x_3213);
            let x_3216 : vec4<f32> = u_xlat19;
            let x_3217 : vec2<f32> = vec2<f32>(x_3216.x, x_3216.y);
            let x_3219 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3217.x, x_3217.y, x_3219);
            let x_3226 : vec3<f32> = txVec47;
            let x_3228 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3226.xy, x_3226.z);
            u_xlat88 = x_3228;
            let x_3230 : f32 = u_xlat24.x;
            let x_3231 : f32 = u_xlat88;
            let x_3233 : f32 = u_xlat87;
            u_xlat87 = ((x_3230 * x_3231) + x_3233);
            let x_3236 : vec4<f32> = u_xlat19;
            let x_3237 : vec2<f32> = vec2<f32>(x_3236.z, x_3236.w);
            let x_3239 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3237.x, x_3237.y, x_3239);
            let x_3246 : vec3<f32> = txVec48;
            let x_3248 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3246.xy, x_3246.z);
            u_xlat88 = x_3248;
            let x_3250 : f32 = u_xlat24.y;
            let x_3251 : f32 = u_xlat88;
            let x_3253 : f32 = u_xlat87;
            u_xlat87 = ((x_3250 * x_3251) + x_3253);
            let x_3256 : vec4<f32> = u_xlat20;
            let x_3257 : vec2<f32> = vec2<f32>(x_3256.x, x_3256.y);
            let x_3259 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3257.x, x_3257.y, x_3259);
            let x_3266 : vec3<f32> = txVec49;
            let x_3268 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3266.xy, x_3266.z);
            u_xlat88 = x_3268;
            let x_3270 : f32 = u_xlat24.z;
            let x_3271 : f32 = u_xlat88;
            let x_3273 : f32 = u_xlat87;
            u_xlat87 = ((x_3270 * x_3271) + x_3273);
            let x_3276 : vec4<f32> = u_xlat21;
            let x_3277 : vec2<f32> = vec2<f32>(x_3276.z, x_3276.w);
            let x_3279 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3277.x, x_3277.y, x_3279);
            let x_3286 : vec3<f32> = txVec50;
            let x_3288 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3286.xy, x_3286.z);
            u_xlat88 = x_3288;
            let x_3290 : f32 = u_xlat24.w;
            let x_3291 : f32 = u_xlat88;
            let x_3293 : f32 = u_xlat87;
            u_xlat87 = ((x_3290 * x_3291) + x_3293);
            let x_3296 : vec4<f32> = u_xlat22;
            let x_3297 : vec2<f32> = vec2<f32>(x_3296.x, x_3296.y);
            let x_3299 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3297.x, x_3297.y, x_3299);
            let x_3306 : vec3<f32> = txVec51;
            let x_3308 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3306.xy, x_3306.z);
            u_xlat88 = x_3308;
            let x_3310 : f32 = u_xlat25.x;
            let x_3311 : f32 = u_xlat88;
            let x_3313 : f32 = u_xlat87;
            u_xlat87 = ((x_3310 * x_3311) + x_3313);
            let x_3316 : vec4<f32> = u_xlat22;
            let x_3317 : vec2<f32> = vec2<f32>(x_3316.z, x_3316.w);
            let x_3319 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3317.x, x_3317.y, x_3319);
            let x_3326 : vec3<f32> = txVec52;
            let x_3328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3326.xy, x_3326.z);
            u_xlat88 = x_3328;
            let x_3330 : f32 = u_xlat25.y;
            let x_3331 : f32 = u_xlat88;
            let x_3333 : f32 = u_xlat87;
            u_xlat87 = ((x_3330 * x_3331) + x_3333);
            let x_3336 : vec2<f32> = u_xlat40;
            let x_3338 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3336.x, x_3336.y, x_3338);
            let x_3345 : vec3<f32> = txVec53;
            let x_3347 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3345.xy, x_3345.z);
            u_xlat88 = x_3347;
            let x_3349 : f32 = u_xlat25.z;
            let x_3350 : f32 = u_xlat88;
            let x_3352 : f32 = u_xlat87;
            u_xlat87 = ((x_3349 * x_3350) + x_3352);
            let x_3355 : vec2<f32> = u_xlat72;
            let x_3357 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3355.x, x_3355.y, x_3357);
            let x_3364 : vec3<f32> = txVec54;
            let x_3366 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3364.xy, x_3364.z);
            u_xlat88 = x_3366;
            let x_3368 : f32 = u_xlat25.w;
            let x_3369 : f32 = u_xlat88;
            let x_3371 : f32 = u_xlat87;
            u_xlat87 = ((x_3368 * x_3369) + x_3371);
            let x_3374 : vec4<f32> = u_xlat17;
            let x_3375 : vec2<f32> = vec2<f32>(x_3374.x, x_3374.y);
            let x_3377 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3375.x, x_3375.y, x_3377);
            let x_3384 : vec3<f32> = txVec55;
            let x_3386 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3384.xy, x_3384.z);
            u_xlat88 = x_3386;
            let x_3388 : f32 = u_xlat13.x;
            let x_3389 : f32 = u_xlat88;
            let x_3391 : f32 = u_xlat87;
            u_xlat87 = ((x_3388 * x_3389) + x_3391);
            let x_3394 : vec4<f32> = u_xlat17;
            let x_3395 : vec2<f32> = vec2<f32>(x_3394.z, x_3394.w);
            let x_3397 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3395.x, x_3395.y, x_3397);
            let x_3404 : vec3<f32> = txVec56;
            let x_3406 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3404.xy, x_3404.z);
            u_xlat88 = x_3406;
            let x_3408 : f32 = u_xlat13.y;
            let x_3409 : f32 = u_xlat88;
            let x_3411 : f32 = u_xlat87;
            u_xlat87 = ((x_3408 * x_3409) + x_3411);
            let x_3414 : vec2<f32> = u_xlat67;
            let x_3416 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3414.x, x_3414.y, x_3416);
            let x_3423 : vec3<f32> = txVec57;
            let x_3425 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3423.xy, x_3423.z);
            u_xlat88 = x_3425;
            let x_3427 : f32 = u_xlat13.z;
            let x_3428 : f32 = u_xlat88;
            let x_3430 : f32 = u_xlat87;
            u_xlat87 = ((x_3427 * x_3428) + x_3430);
            let x_3433 : vec4<f32> = u_xlat12;
            let x_3434 : vec2<f32> = vec2<f32>(x_3433.x, x_3433.y);
            let x_3436 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3434.x, x_3434.y, x_3436);
            let x_3443 : vec3<f32> = txVec58;
            let x_3445 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3443.xy, x_3443.z);
            u_xlat88 = x_3445;
            let x_3447 : f32 = u_xlat13.w;
            let x_3448 : f32 = u_xlat88;
            let x_3450 : f32 = u_xlat87;
            u_xlat85 = ((x_3447 * x_3448) + x_3450);
          }
        }
      } else {
        let x_3454 : vec4<f32> = u_xlat11;
        let x_3455 : vec2<f32> = vec2<f32>(x_3454.x, x_3454.y);
        let x_3457 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3455.x, x_3455.y, x_3457);
        let x_3464 : vec3<f32> = txVec59;
        let x_3466 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3464.xy, x_3464.z);
        u_xlat85 = x_3466;
      }
      let x_3467 : i32 = u_xlati31;
      let x_3469 : f32 = x_264.x_AdditionalShadowParams[x_3467].x;
      u_xlat87 = (1.0f + -(x_3469));
      let x_3472 : f32 = u_xlat85;
      let x_3473 : i32 = u_xlati31;
      let x_3475 : f32 = x_264.x_AdditionalShadowParams[x_3473].x;
      let x_3477 : f32 = u_xlat87;
      u_xlat85 = ((x_3472 * x_3475) + x_3477);
      let x_3480 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3480);
      let x_3484 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3484 >= 1.0f);
      let x_3486 : bool = u_xlatb87;
      let x_3487 : bool = u_xlatb88;
      u_xlatb87 = (x_3486 | x_3487);
      let x_3489 : bool = u_xlatb87;
      let x_3490 : f32 = u_xlat85;
      u_xlat85 = select(x_3490, 1.0f, x_3489);
    } else {
      u_xlat85 = 1.0f;
    }
    let x_3493 : f32 = u_xlat85;
    u_xlat87 = (-(x_3493) + 1.0f);
    let x_3496 : f32 = u_xlat1;
    let x_3497 : f32 = u_xlat87;
    let x_3499 : f32 = u_xlat85;
    u_xlat85 = ((x_3496 * x_3497) + x_3499);
    let x_3502 : i32 = u_xlati31;
    u_xlati87 = (1i << bitcast<u32>((x_3502 & 31i)));
    let x_3506 : i32 = u_xlati87;
    let x_3509 : f32 = x_1630.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3506) & bitcast<u32>(x_3509)));
    let x_3513 : i32 = u_xlati87;
    if ((x_3513 != 0i)) {
      let x_3517 : i32 = u_xlati31;
      let x_3519 : f32 = x_1630.x_AdditionalLightsLightTypes[x_3517].el;
      u_xlati87 = i32(x_3519);
      let x_3522 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3522 != 0i));
      let x_3526 : i32 = u_xlati31;
      u_xlati11 = (x_3526 << bitcast<u32>(2i));
      let x_3528 : i32 = u_xlati88;
      if ((x_3528 != 0i)) {
        let x_3533 : vec3<f32> = vs_TEXCOORD7;
        let x_3535 : i32 = u_xlati11;
        let x_3538 : i32 = u_xlati11;
        let x_3542 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[((x_3535 + 1i) / 4i)][((x_3538 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3533.y, x_3533.y, x_3533.y) * vec3<f32>(x_3542.x, x_3542.y, x_3542.w));
        let x_3545 : i32 = u_xlati11;
        let x_3547 : i32 = u_xlati11;
        let x_3550 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[(x_3545 / 4i)][(x_3547 % 4i)];
        let x_3552 : vec3<f32> = vs_TEXCOORD7;
        let x_3555 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3550.x, x_3550.y, x_3550.w) * vec3<f32>(x_3552.x, x_3552.x, x_3552.x)) + x_3555);
        let x_3557 : i32 = u_xlati11;
        let x_3560 : i32 = u_xlati11;
        let x_3564 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[((x_3557 + 2i) / 4i)][((x_3560 + 2i) % 4i)];
        let x_3566 : vec3<f32> = vs_TEXCOORD7;
        let x_3569 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3564.x, x_3564.y, x_3564.w) * vec3<f32>(x_3566.z, x_3566.z, x_3566.z)) + x_3569);
        let x_3571 : vec3<f32> = u_xlat37;
        let x_3572 : i32 = u_xlati11;
        let x_3575 : i32 = u_xlati11;
        let x_3579 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[((x_3572 + 3i) / 4i)][((x_3575 + 3i) % 4i)];
        u_xlat37 = (x_3571 + vec3<f32>(x_3579.x, x_3579.y, x_3579.w));
        let x_3582 : vec3<f32> = u_xlat37;
        let x_3584 : vec3<f32> = u_xlat37;
        let x_3586 : vec2<f32> = (vec2<f32>(x_3582.x, x_3582.y) / vec2<f32>(x_3584.z, x_3584.z));
        let x_3587 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3586.x, x_3586.y, x_3587.z);
        let x_3589 : vec3<f32> = u_xlat37;
        let x_3592 : vec2<f32> = ((vec2<f32>(x_3589.x, x_3589.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3593 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3592.x, x_3592.y, x_3593.z);
        let x_3595 : vec3<f32> = u_xlat37;
        let x_3599 : vec2<f32> = clamp(vec2<f32>(x_3595.x, x_3595.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3600 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3599.x, x_3599.y, x_3600.z);
        let x_3602 : i32 = u_xlati31;
        let x_3604 : vec4<f32> = x_1630.x_AdditionalLightsCookieAtlasUVRects[x_3602];
        let x_3606 : vec3<f32> = u_xlat37;
        let x_3609 : i32 = u_xlati31;
        let x_3611 : vec4<f32> = x_1630.x_AdditionalLightsCookieAtlasUVRects[x_3609];
        let x_3613 : vec2<f32> = ((vec2<f32>(x_3604.x, x_3604.y) * vec2<f32>(x_3606.x, x_3606.y)) + vec2<f32>(x_3611.z, x_3611.w));
        let x_3614 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3613.x, x_3613.y, x_3614.z);
      } else {
        let x_3617 : i32 = u_xlati87;
        u_xlatb87 = (x_3617 == 1i);
        let x_3619 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3619);
        let x_3621 : i32 = u_xlati87;
        if ((x_3621 != 0i)) {
          let x_3625 : vec3<f32> = vs_TEXCOORD7;
          let x_3627 : i32 = u_xlati11;
          let x_3630 : i32 = u_xlati11;
          let x_3634 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[((x_3627 + 1i) / 4i)][((x_3630 + 1i) % 4i)];
          let x_3636 : vec2<f32> = (vec2<f32>(x_3625.y, x_3625.y) * vec2<f32>(x_3634.x, x_3634.y));
          let x_3637 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3636.x, x_3636.y, x_3637.z, x_3637.w);
          let x_3639 : i32 = u_xlati11;
          let x_3641 : i32 = u_xlati11;
          let x_3644 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[(x_3639 / 4i)][(x_3641 % 4i)];
          let x_3646 : vec3<f32> = vs_TEXCOORD7;
          let x_3649 : vec4<f32> = u_xlat12;
          let x_3651 : vec2<f32> = ((vec2<f32>(x_3644.x, x_3644.y) * vec2<f32>(x_3646.x, x_3646.x)) + vec2<f32>(x_3649.x, x_3649.y));
          let x_3652 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3651.x, x_3651.y, x_3652.z, x_3652.w);
          let x_3654 : i32 = u_xlati11;
          let x_3657 : i32 = u_xlati11;
          let x_3661 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[((x_3654 + 2i) / 4i)][((x_3657 + 2i) % 4i)];
          let x_3663 : vec3<f32> = vs_TEXCOORD7;
          let x_3666 : vec4<f32> = u_xlat12;
          let x_3668 : vec2<f32> = ((vec2<f32>(x_3661.x, x_3661.y) * vec2<f32>(x_3663.z, x_3663.z)) + vec2<f32>(x_3666.x, x_3666.y));
          let x_3669 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3668.x, x_3668.y, x_3669.z, x_3669.w);
          let x_3671 : vec4<f32> = u_xlat12;
          let x_3673 : i32 = u_xlati11;
          let x_3676 : i32 = u_xlati11;
          let x_3680 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[((x_3673 + 3i) / 4i)][((x_3676 + 3i) % 4i)];
          let x_3682 : vec2<f32> = (vec2<f32>(x_3671.x, x_3671.y) + vec2<f32>(x_3680.x, x_3680.y));
          let x_3683 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3682.x, x_3682.y, x_3683.z, x_3683.w);
          let x_3685 : vec4<f32> = u_xlat12;
          let x_3688 : vec2<f32> = ((vec2<f32>(x_3685.x, x_3685.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3689 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3688.x, x_3688.y, x_3689.z, x_3689.w);
          let x_3691 : vec4<f32> = u_xlat12;
          let x_3693 : vec2<f32> = fract(vec2<f32>(x_3691.x, x_3691.y));
          let x_3694 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3693.x, x_3693.y, x_3694.z, x_3694.w);
          let x_3696 : i32 = u_xlati31;
          let x_3698 : vec4<f32> = x_1630.x_AdditionalLightsCookieAtlasUVRects[x_3696];
          let x_3700 : vec4<f32> = u_xlat12;
          let x_3703 : i32 = u_xlati31;
          let x_3705 : vec4<f32> = x_1630.x_AdditionalLightsCookieAtlasUVRects[x_3703];
          let x_3707 : vec2<f32> = ((vec2<f32>(x_3698.x, x_3698.y) * vec2<f32>(x_3700.x, x_3700.y)) + vec2<f32>(x_3705.z, x_3705.w));
          let x_3708 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3707.x, x_3707.y, x_3708.z);
        } else {
          let x_3711 : vec3<f32> = vs_TEXCOORD7;
          let x_3713 : i32 = u_xlati11;
          let x_3716 : i32 = u_xlati11;
          let x_3720 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[((x_3713 + 1i) / 4i)][((x_3716 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3711.y, x_3711.y, x_3711.y, x_3711.y) * x_3720);
          let x_3722 : i32 = u_xlati11;
          let x_3724 : i32 = u_xlati11;
          let x_3727 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[(x_3722 / 4i)][(x_3724 % 4i)];
          let x_3728 : vec3<f32> = vs_TEXCOORD7;
          let x_3731 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3727 * vec4<f32>(x_3728.x, x_3728.x, x_3728.x, x_3728.x)) + x_3731);
          let x_3733 : i32 = u_xlati11;
          let x_3736 : i32 = u_xlati11;
          let x_3740 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[((x_3733 + 2i) / 4i)][((x_3736 + 2i) % 4i)];
          let x_3741 : vec3<f32> = vs_TEXCOORD7;
          let x_3744 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3740 * vec4<f32>(x_3741.z, x_3741.z, x_3741.z, x_3741.z)) + x_3744);
          let x_3746 : vec4<f32> = u_xlat12;
          let x_3747 : i32 = u_xlati11;
          let x_3750 : i32 = u_xlati11;
          let x_3754 : vec4<f32> = x_1630.x_AdditionalLightsWorldToLights[((x_3747 + 3i) / 4i)][((x_3750 + 3i) % 4i)];
          u_xlat12 = (x_3746 + x_3754);
          let x_3756 : vec4<f32> = u_xlat12;
          let x_3758 : vec4<f32> = u_xlat12;
          let x_3760 : vec3<f32> = (vec3<f32>(x_3756.x, x_3756.y, x_3756.z) / vec3<f32>(x_3758.w, x_3758.w, x_3758.w));
          let x_3761 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3760.x, x_3760.y, x_3760.z, x_3761.w);
          let x_3763 : vec4<f32> = u_xlat12;
          let x_3765 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_3763.x, x_3763.y, x_3763.z), vec3<f32>(x_3765.x, x_3765.y, x_3765.z));
          let x_3768 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_3768);
          let x_3770 : f32 = u_xlat87;
          let x_3772 : vec4<f32> = u_xlat12;
          let x_3774 : vec3<f32> = (vec3<f32>(x_3770, x_3770, x_3770) * vec3<f32>(x_3772.x, x_3772.y, x_3772.z));
          let x_3775 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3774.x, x_3774.y, x_3774.z, x_3775.w);
          let x_3777 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_3777.x, x_3777.y, x_3777.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_3782 : f32 = u_xlat87;
          u_xlat87 = max(x_3782, 0.00000099999999747524f);
          let x_3785 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_3785);
          let x_3787 : f32 = u_xlat87;
          let x_3789 : vec4<f32> = u_xlat12;
          let x_3791 : vec3<f32> = (vec3<f32>(x_3787, x_3787, x_3787) * vec3<f32>(x_3789.z, x_3789.x, x_3789.y));
          let x_3792 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_3791.x, x_3791.y, x_3791.z, x_3792.w);
          let x_3795 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_3795);
          let x_3799 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_3799, 0.0f, 1.0f);
          let x_3802 : vec4<f32> = u_xlat13;
          let x_3804 : vec4<bool> = (vec4<f32>(x_3802.y, x_3802.y, x_3802.y, x_3802.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_3805 : vec2<bool> = vec2<bool>(x_3804.x, x_3804.w);
          let x_3806 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_3805.x, x_3806.y, x_3806.z, x_3805.y);
          let x_3809 : bool = u_xlatb11.x;
          if (x_3809) {
            let x_3814 : f32 = u_xlat13.x;
            x_3810 = x_3814;
          } else {
            let x_3817 : f32 = u_xlat13.x;
            x_3810 = -(x_3817);
          }
          let x_3819 : f32 = x_3810;
          u_xlat11.x = x_3819;
          let x_3822 : bool = u_xlatb11.w;
          if (x_3822) {
            let x_3827 : f32 = u_xlat13.x;
            x_3823 = x_3827;
          } else {
            let x_3830 : f32 = u_xlat13.x;
            x_3823 = -(x_3830);
          }
          let x_3832 : f32 = x_3823;
          u_xlat11.w = x_3832;
          let x_3834 : vec4<f32> = u_xlat12;
          let x_3836 : f32 = u_xlat87;
          let x_3839 : vec4<f32> = u_xlat11;
          let x_3841 : vec2<f32> = ((vec2<f32>(x_3834.x, x_3834.y) * vec2<f32>(x_3836, x_3836)) + vec2<f32>(x_3839.x, x_3839.w));
          let x_3842 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3841.x, x_3842.y, x_3842.z, x_3841.y);
          let x_3844 : vec4<f32> = u_xlat11;
          let x_3847 : vec2<f32> = ((vec2<f32>(x_3844.x, x_3844.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3848 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3847.x, x_3848.y, x_3848.z, x_3847.y);
          let x_3850 : vec4<f32> = u_xlat11;
          let x_3854 : vec2<f32> = clamp(vec2<f32>(x_3850.x, x_3850.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3855 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3854.x, x_3855.y, x_3855.z, x_3854.y);
          let x_3857 : i32 = u_xlati31;
          let x_3859 : vec4<f32> = x_1630.x_AdditionalLightsCookieAtlasUVRects[x_3857];
          let x_3861 : vec4<f32> = u_xlat11;
          let x_3864 : i32 = u_xlati31;
          let x_3866 : vec4<f32> = x_1630.x_AdditionalLightsCookieAtlasUVRects[x_3864];
          let x_3868 : vec2<f32> = ((vec2<f32>(x_3859.x, x_3859.y) * vec2<f32>(x_3861.x, x_3861.w)) + vec2<f32>(x_3866.z, x_3866.w));
          let x_3869 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3868.x, x_3868.y, x_3869.z);
        }
      }
      let x_3876 : vec3<f32> = u_xlat37;
      let x_3878 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_3876.x, x_3876.y), 0.0f);
      u_xlat11 = x_3878;
      let x_3880 : bool = u_xlatb7.y;
      if (x_3880) {
        let x_3885 : f32 = u_xlat11.w;
        x_3881 = x_3885;
      } else {
        let x_3888 : f32 = u_xlat11.x;
        x_3881 = x_3888;
      }
      let x_3889 : f32 = x_3881;
      u_xlat87 = x_3889;
      let x_3891 : bool = u_xlatb7.x;
      if (x_3891) {
        let x_3895 : vec4<f32> = u_xlat11;
        x_3892 = vec3<f32>(x_3895.x, x_3895.y, x_3895.z);
      } else {
        let x_3898 : f32 = u_xlat87;
        x_3892 = vec3<f32>(x_3898, x_3898, x_3898);
      }
      let x_3900 : vec3<f32> = x_3892;
      let x_3901 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3900.x, x_3900.y, x_3900.z, x_3901.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3907 : vec4<f32> = u_xlat11;
    let x_3909 : i32 = u_xlati31;
    let x_3911 : vec4<f32> = x_2074.x_AdditionalLightsColor[x_3909];
    let x_3913 : vec3<f32> = (vec3<f32>(x_3907.x, x_3907.y, x_3907.z) * vec3<f32>(x_3911.x, x_3911.y, x_3911.z));
    let x_3914 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3913.x, x_3913.y, x_3913.z, x_3914.w);
    let x_3916 : f32 = u_xlat84;
    let x_3917 : f32 = u_xlat85;
    u_xlat31.x = (x_3916 * x_3917);
    let x_3920 : vec3<f32> = u_xlat27;
    let x_3921 : vec4<f32> = u_xlat10;
    u_xlat84 = dot(x_3920, vec3<f32>(x_3921.x, x_3921.y, x_3921.z));
    let x_3924 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3924, 0.0f, 1.0f);
    let x_3927 : f32 = u_xlat31.x;
    let x_3928 : f32 = u_xlat84;
    u_xlat31.x = (x_3927 * x_3928);
    let x_3931 : vec3<f32> = u_xlat31;
    let x_3933 : vec4<f32> = u_xlat11;
    let x_3935 : vec3<f32> = (vec3<f32>(x_3931.x, x_3931.x, x_3931.x) * vec3<f32>(x_3933.x, x_3933.y, x_3933.z));
    let x_3936 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3935.x, x_3935.y, x_3935.z, x_3936.w);
    let x_3938 : vec4<f32> = u_xlat9;
    let x_3940 : f32 = u_xlat59;
    let x_3943 : vec3<f32> = u_xlat3;
    let x_3944 : vec3<f32> = ((vec3<f32>(x_3938.x, x_3938.y, x_3938.z) * vec3<f32>(x_3940, x_3940, x_3940)) + x_3943);
    let x_3945 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3944.x, x_3944.y, x_3944.z, x_3945.w);
    let x_3947 : vec4<f32> = u_xlat9;
    let x_3949 : vec4<f32> = u_xlat9;
    u_xlat31.x = dot(vec3<f32>(x_3947.x, x_3947.y, x_3947.z), vec3<f32>(x_3949.x, x_3949.y, x_3949.z));
    let x_3954 : f32 = u_xlat31.x;
    u_xlat31.x = max(x_3954, 1.17549435e-38f);
    let x_3958 : f32 = u_xlat31.x;
    u_xlat31.x = inverseSqrt(x_3958);
    let x_3961 : vec3<f32> = u_xlat31;
    let x_3963 : vec4<f32> = u_xlat9;
    let x_3965 : vec3<f32> = (vec3<f32>(x_3961.x, x_3961.x, x_3961.x) * vec3<f32>(x_3963.x, x_3963.y, x_3963.z));
    let x_3966 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3965.x, x_3965.y, x_3965.z, x_3966.w);
    let x_3968 : vec3<f32> = u_xlat27;
    let x_3969 : vec4<f32> = u_xlat9;
    u_xlat31.x = dot(x_3968, vec3<f32>(x_3969.x, x_3969.y, x_3969.z));
    let x_3974 : f32 = u_xlat31.x;
    u_xlat31.x = clamp(x_3974, 0.0f, 1.0f);
    let x_3977 : vec4<f32> = u_xlat10;
    let x_3979 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3977.x, x_3977.y, x_3977.z), vec3<f32>(x_3979.x, x_3979.y, x_3979.z));
    let x_3982 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3982, 0.0f, 1.0f);
    let x_3985 : f32 = u_xlat31.x;
    let x_3987 : f32 = u_xlat31.x;
    u_xlat31.x = (x_3985 * x_3987);
    let x_3991 : f32 = u_xlat31.x;
    let x_3993 : f32 = u_xlat8.x;
    u_xlat31.x = ((x_3991 * x_3993) + 1.00001001358032226562f);
    let x_3997 : f32 = u_xlat84;
    let x_3998 : f32 = u_xlat84;
    u_xlat84 = (x_3997 * x_3998);
    let x_4001 : f32 = u_xlat31.x;
    let x_4003 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4001 * x_4003);
    let x_4006 : f32 = u_xlat84;
    u_xlat84 = max(x_4006, 0.10000000149011611938f);
    let x_4009 : f32 = u_xlat31.x;
    let x_4010 : f32 = u_xlat84;
    u_xlat31.x = (x_4009 * x_4010);
    let x_4013 : f32 = u_xlat81;
    let x_4015 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4013 * x_4015);
    let x_4018 : f32 = u_xlat82;
    let x_4020 : f32 = u_xlat31.x;
    u_xlat31.x = (x_4018 / x_4020);
    let x_4023 : vec4<f32> = u_xlat0;
    let x_4025 : vec3<f32> = u_xlat31;
    let x_4028 : vec3<f32> = u_xlat4;
    let x_4029 : vec3<f32> = ((vec3<f32>(x_4023.x, x_4023.y, x_4023.z) * vec3<f32>(x_4025.x, x_4025.x, x_4025.x)) + x_4028);
    let x_4030 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4029.x, x_4029.y, x_4029.z, x_4030.w);
    let x_4032 : vec4<f32> = u_xlat9;
    let x_4034 : vec4<f32> = u_xlat11;
    let x_4037 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_4032.x, x_4032.y, x_4032.z) * vec3<f32>(x_4034.x, x_4034.y, x_4034.z)) + x_4037);

    continuing {
      let x_4039 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4039 + bitcast<u32>(1i));
    }
  }
  let x_4041 : vec4<f32> = u_xlat6;
  let x_4043 : vec4<f32> = u_xlat5;
  let x_4046 : vec4<f32> = u_xlat2;
  let x_4048 : vec3<f32> = ((vec3<f32>(x_4041.x, x_4041.y, x_4041.z) * vec3<f32>(x_4043.x, x_4043.z, x_4043.w)) + vec3<f32>(x_4046.x, x_4046.y, x_4046.z));
  let x_4049 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4048.x, x_4048.y, x_4048.z, x_4049.w);
  let x_4053 : vec3<f32> = u_xlat34;
  let x_4054 : vec4<f32> = u_xlat0;
  let x_4056 : vec3<f32> = (x_4053 + vec3<f32>(x_4054.x, x_4054.y, x_4054.z));
  let x_4057 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4056.x, x_4056.y, x_4056.z, x_4057.w);
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



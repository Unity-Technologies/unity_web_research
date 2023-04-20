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

var<private> u_xlatb14 : bool;

var<private> u_xlat14 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

@group(0) @binding(9) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(17) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat42 : f32;

@group(0) @binding(8) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(16) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb29 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat29 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_508 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat16 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat45 : f32;

@group(1) @binding(4) var<uniform> x_918 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu17 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati17 : i32;

@group(1) @binding(1) var<uniform> x_1364 : AdditionalLights;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb35 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlat35 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb49 : bool;

var<private> u_xlati35 : i32;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

var<private> u_xlat39 : vec2<f32>;

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
  var x_869 : f32;
  var x_986 : f32;
  var x_997 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1496 : f32;
  var x_1506 : f32;
  var txVec1 : vec3<f32>;
  var x_1943 : f32;
  var x_1956 : f32;
  var x_2004 : f32;
  var x_2016 : vec3<f32>;
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
  u_xlatb14 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb14;
  u_xlat14 = select(0.0f, 1.0f, x_89);
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
  let x_106 : f32 = u_xlat14;
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
  u_xlatb14 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat28 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb14;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat28;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat14 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat15.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat15.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat28;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat28 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat28;
  u_xlatb42 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat28;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat28;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat15.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat28;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat28 = x_207;
  let x_208 : bool = u_xlatb42;
  if (x_208) {
    let x_213 : f32 = u_xlat15.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat28;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat28 = x_216;
  let x_217 : f32 = u_xlat28;
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
  let x_268 : f32 = u_xlat14;
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
  u_xlat42 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat42;
  u_xlat42 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat42;
  u_xlat42 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_319);
  let x_321 : f32 = u_xlat42;
  u_xlat42 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb29.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat29.y;
  let x_367 : f32 = u_xlat29.x;
  u_xlat29.x = (x_365 * x_367);
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
  let x_390 : vec2<f32> = u_xlat29;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat15 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat15;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat42;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat42;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb42 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat43 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat43;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : bool = u_xlatb42;
  if (x_464) {
    let x_469 : f32 = u_xlat3.x;
    x_465 = x_469;
  } else {
    let x_473 : f32 = x_29.unity_MatrixV[0i].z;
    x_465 = x_473;
  }
  let x_474 : f32 = x_465;
  u_xlat4.x = x_474;
  let x_476 : bool = u_xlatb42;
  if (x_476) {
    let x_481 : f32 = u_xlat3.y;
    x_477 = x_481;
  } else {
    let x_485 : f32 = x_29.unity_MatrixV[1i].z;
    x_477 = x_485;
  }
  let x_486 : f32 = x_477;
  u_xlat4.y = x_486;
  let x_488 : bool = u_xlatb42;
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
  u_xlat42 = dot(x_613, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_618 : f32 = u_xlat42;
  u_xlat42 = (-(x_618) + 4.0f);
  let x_623 : f32 = u_xlat42;
  u_xlatu42 = u32(x_623);
  let x_627 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_627) << bitcast<u32>(2i));
  let x_630 : vec3<f32> = vs_INTERP7;
  let x_632 : i32 = u_xlati42;
  let x_635 : i32 = u_xlati42;
  let x_639 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_632 + 1i) / 4i)][((x_635 + 1i) % 4i)];
  let x_641 : vec3<f32> = (vec3<f32>(x_630.y, x_630.y, x_630.y) * vec3<f32>(x_639.x, x_639.y, x_639.z));
  let x_642 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : i32 = u_xlati42;
  let x_646 : i32 = u_xlati42;
  let x_649 : vec4<f32> = x_508.x_MainLightWorldToShadow[(x_644 / 4i)][(x_646 % 4i)];
  let x_651 : vec3<f32> = vs_INTERP7;
  let x_654 : vec4<f32> = u_xlat3;
  let x_656 : vec3<f32> = ((vec3<f32>(x_649.x, x_649.y, x_649.z) * vec3<f32>(x_651.x, x_651.x, x_651.x)) + vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_659 : i32 = u_xlati42;
  let x_662 : i32 = u_xlati42;
  let x_666 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_659 + 2i) / 4i)][((x_662 + 2i) % 4i)];
  let x_668 : vec3<f32> = vs_INTERP7;
  let x_671 : vec4<f32> = u_xlat3;
  let x_673 : vec3<f32> = ((vec3<f32>(x_666.x, x_666.y, x_666.z) * vec3<f32>(x_668.z, x_668.z, x_668.z)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat3;
  let x_678 : i32 = u_xlati42;
  let x_681 : i32 = u_xlati42;
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
  u_xlat42 = dot(vec3<f32>(x_717.x, x_717.y, x_717.z), vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : f32 = u_xlat42;
  u_xlat42 = (x_722 + 0.5f);
  let x_725 : f32 = u_xlat42;
  let x_727 : vec3<f32> = u_xlat6;
  let x_728 : vec3<f32> = (vec3<f32>(x_725, x_725, x_725) * x_727);
  let x_729 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_732 : f32 = u_xlat5.w;
  u_xlat42 = max(x_732, 0.00009999999747378752f);
  let x_735 : vec4<f32> = u_xlat5;
  let x_737 : f32 = u_xlat42;
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
  u_xlat42 = ((-(x_754) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_759 : f32 = u_xlat42;
  let x_762 : f32 = u_xlat2.y;
  u_xlat43 = (-(x_759) + x_762);
  let x_764 : f32 = u_xlat42;
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
  u_xlat42 = (-(x_787) + 1.0f);
  let x_790 : f32 = u_xlat42;
  let x_791 : f32 = u_xlat42;
  u_xlat2.x = (x_790 * x_791);
  let x_795 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_795, 0.0078125f);
  let x_801 : f32 = u_xlat2.x;
  let x_803 : f32 = u_xlat2.x;
  u_xlat16 = (x_801 * x_803);
  let x_805 : f32 = u_xlat43;
  u_xlat43 = (x_805 + 1.0f);
  let x_807 : f32 = u_xlat43;
  u_xlat43 = min(x_807, 1.0f);
  let x_811 : f32 = u_xlat2.x;
  u_xlat44 = ((x_811 * 4.0f) + 2.0f);
  let x_816 : f32 = u_xlat2.z;
  u_xlat30 = min(x_816, 1.0f);
  let x_820 : vec4<f32> = u_xlat3;
  let x_821 : vec2<f32> = vec2<f32>(x_820.x, x_820.y);
  let x_823 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_821.x, x_821.y, x_823);
  let x_835 : vec3<f32> = txVec0;
  let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_835.xy, x_835.z);
  u_xlat3.x = x_837;
  let x_842 : f32 = x_508.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_842) + 1.0f);
  let x_847 : f32 = u_xlat3.x;
  let x_849 : f32 = x_508.x_MainLightShadowParams.x;
  let x_852 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_847 * x_849) + x_852);
  let x_857 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_857);
  let x_861 : f32 = u_xlat3.z;
  u_xlatb31.x = (x_861 >= 1.0f);
  let x_865 : bool = u_xlatb31.x;
  let x_866 : bool = u_xlatb17;
  u_xlatb17 = (x_865 | x_866);
  let x_868 : bool = u_xlatb17;
  if (x_868) {
    x_869 = 1.0f;
  } else {
    let x_874 : f32 = u_xlat3.x;
    x_869 = x_874;
  }
  let x_875 : f32 = x_869;
  u_xlat3.x = x_875;
  let x_877 : vec3<f32> = vs_INTERP7;
  let x_879 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_877 + -(x_879));
  let x_882 : vec3<f32> = u_xlat17;
  let x_883 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_882, x_883);
  let x_888 : f32 = u_xlat17.x;
  let x_890 : f32 = x_508.x_MainLightShadowParams.z;
  let x_893 : f32 = x_508.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_888 * x_890) + x_893);
  let x_897 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_897, 0.0f, 1.0f);
  let x_902 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_902) + 1.0f);
  let x_906 : f32 = u_xlat31.x;
  let x_907 : f32 = u_xlat45;
  let x_910 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_906 * x_907) + x_910);
  let x_920 : f32 = x_918.x_MainLightCookieTextureFormat;
  u_xlatb31.x = !((x_920 == -1.0f));
  let x_924 : bool = u_xlatb31.x;
  if (x_924) {
    let x_927 : vec3<f32> = vs_INTERP7;
    let x_930 : vec4<f32> = x_918.x_MainLightWorldToLight[1i];
    u_xlat31 = (vec2<f32>(x_927.y, x_927.y) * vec2<f32>(x_930.x, x_930.y));
    let x_934 : vec4<f32> = x_918.x_MainLightWorldToLight[0i];
    let x_936 : vec3<f32> = vs_INTERP7;
    let x_939 : vec2<f32> = u_xlat31;
    u_xlat31 = ((vec2<f32>(x_934.x, x_934.y) * vec2<f32>(x_936.x, x_936.x)) + x_939);
    let x_942 : vec4<f32> = x_918.x_MainLightWorldToLight[2i];
    let x_944 : vec3<f32> = vs_INTERP7;
    let x_947 : vec2<f32> = u_xlat31;
    u_xlat31 = ((vec2<f32>(x_942.x, x_942.y) * vec2<f32>(x_944.z, x_944.z)) + x_947);
    let x_949 : vec2<f32> = u_xlat31;
    let x_951 : vec4<f32> = x_918.x_MainLightWorldToLight[3i];
    u_xlat31 = (x_949 + vec2<f32>(x_951.x, x_951.y));
    let x_954 : vec2<f32> = u_xlat31;
    u_xlat31 = ((x_954 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_963 : vec2<f32> = u_xlat31;
    let x_965 : f32 = x_29.x_GlobalMipBias.x;
    let x_966 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_963, x_965);
    u_xlat7 = x_966;
    let x_968 : f32 = x_918.x_MainLightCookieTextureFormat;
    let x_970 : f32 = x_918.x_MainLightCookieTextureFormat;
    let x_972 : f32 = x_918.x_MainLightCookieTextureFormat;
    let x_974 : f32 = x_918.x_MainLightCookieTextureFormat;
    let x_975 : vec4<f32> = vec4<f32>(x_968, x_970, x_972, x_974);
    let x_982 : vec4<bool> = (vec4<f32>(x_975.x, x_975.y, x_975.z, x_975.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb31 = vec2<bool>(x_982.x, x_982.y);
    let x_985 : bool = u_xlatb31.y;
    if (x_985) {
      let x_990 : f32 = u_xlat7.w;
      x_986 = x_990;
    } else {
      let x_993 : f32 = u_xlat7.x;
      x_986 = x_993;
    }
    let x_994 : f32 = x_986;
    u_xlat45 = x_994;
    let x_996 : bool = u_xlatb31.x;
    if (x_996) {
      let x_1000 : vec4<f32> = u_xlat7;
      x_997 = vec3<f32>(x_1000.x, x_1000.y, x_1000.z);
    } else {
      let x_1003 : f32 = u_xlat45;
      x_997 = vec3<f32>(x_1003, x_1003, x_1003);
    }
    let x_1005 : vec3<f32> = x_997;
    let x_1006 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1012 : vec4<f32> = u_xlat7;
  let x_1015 : vec4<f32> = x_29.x_MainLightColor;
  let x_1017 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.y, x_1012.z) * vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec3<f32> = u_xlat4;
  let x_1022 : vec4<f32> = u_xlat1;
  u_xlat31.x = dot(-(x_1020), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1027 : f32 = u_xlat31.x;
  let x_1029 : f32 = u_xlat31.x;
  u_xlat31.x = (x_1027 + x_1029);
  let x_1033 : vec4<f32> = u_xlat1;
  let x_1035 : vec2<f32> = u_xlat31;
  let x_1039 : vec3<f32> = u_xlat4;
  let x_1041 : vec3<f32> = ((vec3<f32>(x_1033.x, x_1033.y, x_1033.z) * -(vec3<f32>(x_1035.x, x_1035.x, x_1035.x))) + -(x_1039));
  let x_1042 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat1;
  let x_1046 : vec3<f32> = u_xlat4;
  u_xlat31.x = dot(vec3<f32>(x_1044.x, x_1044.y, x_1044.z), x_1046);
  let x_1050 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_1050, 0.0f, 1.0f);
  let x_1054 : f32 = u_xlat31.x;
  u_xlat31.x = (-(x_1054) + 1.0f);
  let x_1059 : f32 = u_xlat31.x;
  let x_1061 : f32 = u_xlat31.x;
  u_xlat31.x = (x_1059 * x_1061);
  let x_1065 : f32 = u_xlat31.x;
  let x_1067 : f32 = u_xlat31.x;
  u_xlat31.x = (x_1065 * x_1067);
  let x_1070 : f32 = u_xlat42;
  u_xlat45 = ((-(x_1070) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1076 : f32 = u_xlat42;
  let x_1077 : f32 = u_xlat45;
  u_xlat42 = (x_1076 * x_1077);
  let x_1079 : f32 = u_xlat42;
  u_xlat42 = (x_1079 * 6.0f);
  let x_1089 : vec4<f32> = u_xlat8;
  let x_1091 : f32 = u_xlat42;
  let x_1092 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1089.x, x_1089.y, x_1089.z), x_1091);
  u_xlat8 = x_1092;
  let x_1094 : f32 = u_xlat8.w;
  u_xlat42 = (x_1094 + -1.0f);
  let x_1097 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_1098 : f32 = u_xlat42;
  u_xlat42 = ((x_1097 * x_1098) + 1.0f);
  let x_1101 : f32 = u_xlat42;
  u_xlat42 = max(x_1101, 0.0f);
  let x_1103 : f32 = u_xlat42;
  u_xlat42 = log2(x_1103);
  let x_1105 : f32 = u_xlat42;
  let x_1107 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_1105 * x_1107);
  let x_1109 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1109);
  let x_1111 : f32 = u_xlat42;
  let x_1113 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_1111 * x_1113);
  let x_1115 : vec4<f32> = u_xlat8;
  let x_1117 : f32 = u_xlat42;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1115.x, x_1115.y, x_1115.z) * vec3<f32>(x_1117, x_1117, x_1117));
  let x_1120 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1123 : vec4<f32> = u_xlat2;
  let x_1125 : vec4<f32> = u_xlat2;
  u_xlat9 = ((vec2<f32>(x_1123.x, x_1123.x) * vec2<f32>(x_1125.x, x_1125.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1131 : f32 = u_xlat9.y;
  u_xlat42 = (1.0f / x_1131);
  let x_1134 : vec4<f32> = u_xlat0;
  let x_1137 : f32 = u_xlat43;
  u_xlat23 = (-(vec3<f32>(x_1134.x, x_1134.y, x_1134.z)) + vec3<f32>(x_1137, x_1137, x_1137));
  let x_1140 : vec2<f32> = u_xlat31;
  let x_1142 : vec3<f32> = u_xlat23;
  let x_1144 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_1140.x, x_1140.x, x_1140.x) * x_1142) + vec3<f32>(x_1144.x, x_1144.y, x_1144.z));
  let x_1147 : f32 = u_xlat42;
  let x_1149 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1147, x_1147, x_1147) * x_1149);
  let x_1151 : vec4<f32> = u_xlat8;
  let x_1153 : vec3<f32> = u_xlat23;
  let x_1154 : vec3<f32> = (vec3<f32>(x_1151.x, x_1151.y, x_1151.z) * x_1153);
  let x_1155 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : vec4<f32> = u_xlat5;
  let x_1159 : vec3<f32> = u_xlat6;
  let x_1161 : vec4<f32> = u_xlat8;
  let x_1163 : vec3<f32> = ((vec3<f32>(x_1157.x, x_1157.y, x_1157.z) * x_1159) + vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1167 : f32 = u_xlat3.x;
  let x_1169 : f32 = x_349.unity_LightData.z;
  u_xlat42 = (x_1167 * x_1169);
  let x_1171 : vec4<f32> = u_xlat1;
  let x_1174 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1171.x, x_1171.y, x_1171.z), vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
  let x_1177 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1177, 0.0f, 1.0f);
  let x_1179 : f32 = u_xlat42;
  let x_1180 : f32 = u_xlat43;
  u_xlat42 = (x_1179 * x_1180);
  let x_1182 : f32 = u_xlat42;
  let x_1184 : vec4<f32> = u_xlat7;
  let x_1186 : vec3<f32> = (vec3<f32>(x_1182, x_1182, x_1182) * vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1186.x, x_1187.y, x_1186.y, x_1186.z);
  let x_1189 : vec3<f32> = u_xlat4;
  let x_1191 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1193 : vec3<f32> = (x_1189 + vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : vec4<f32> = u_xlat7;
  let x_1198 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1196.x, x_1196.y, x_1196.z), vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : f32 = u_xlat42;
  u_xlat42 = max(x_1201, 1.17549435e-38f);
  let x_1204 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1204);
  let x_1206 : f32 = u_xlat42;
  let x_1208 : vec4<f32> = u_xlat7;
  let x_1210 : vec3<f32> = (vec3<f32>(x_1206, x_1206, x_1206) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1211 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1210.x, x_1210.y, x_1210.z, x_1211.w);
  let x_1213 : vec4<f32> = u_xlat1;
  let x_1215 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1213.x, x_1213.y, x_1213.z), vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1218, 0.0f, 1.0f);
  let x_1221 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1223 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1221.x, x_1221.y, x_1221.z), vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
  let x_1226 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1226, 0.0f, 1.0f);
  let x_1228 : f32 = u_xlat42;
  let x_1229 : f32 = u_xlat42;
  u_xlat42 = (x_1228 * x_1229);
  let x_1231 : f32 = u_xlat42;
  let x_1233 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1231 * x_1233) + 1.00001001358032226562f);
  let x_1237 : f32 = u_xlat43;
  let x_1238 : f32 = u_xlat43;
  u_xlat43 = (x_1237 * x_1238);
  let x_1240 : f32 = u_xlat42;
  let x_1241 : f32 = u_xlat42;
  u_xlat42 = (x_1240 * x_1241);
  let x_1243 : f32 = u_xlat43;
  u_xlat43 = max(x_1243, 0.10000000149011611938f);
  let x_1246 : f32 = u_xlat42;
  let x_1247 : f32 = u_xlat43;
  u_xlat42 = (x_1246 * x_1247);
  let x_1249 : f32 = u_xlat44;
  let x_1250 : f32 = u_xlat42;
  u_xlat42 = (x_1249 * x_1250);
  let x_1252 : f32 = u_xlat16;
  let x_1253 : f32 = u_xlat42;
  u_xlat42 = (x_1252 / x_1253);
  let x_1255 : vec4<f32> = u_xlat0;
  let x_1257 : f32 = u_xlat42;
  let x_1260 : vec3<f32> = u_xlat6;
  let x_1261 : vec3<f32> = ((vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(x_1257, x_1257, x_1257)) + x_1260);
  let x_1262 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1264 : vec4<f32> = u_xlat3;
  let x_1266 : vec4<f32> = u_xlat7;
  let x_1268 : vec3<f32> = (vec3<f32>(x_1264.x, x_1264.z, x_1264.w) * vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1269 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1268.x, x_1269.y, x_1268.y, x_1268.z);
  let x_1272 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1274 : f32 = x_349.unity_LightData.y;
  u_xlat42 = min(x_1272, x_1274);
  let x_1276 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1276));
  let x_1280 : f32 = u_xlat17.x;
  let x_1283 : f32 = x_508.x_AdditionalShadowFadeParams.x;
  let x_1286 : f32 = x_508.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1280 * x_1283) + x_1286);
  let x_1288 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1288, 0.0f, 1.0f);
  let x_1292 : f32 = x_918.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1294 : f32 = x_918.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1296 : f32 = x_918.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1298 : f32 = x_918.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1299 : vec4<f32> = vec4<f32>(x_1292, x_1294, x_1296, x_1298);
  let x_1306 : vec4<bool> = (vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1299.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1306.x, x_1306.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1318 : u32 = u_xlatu_loop_1;
    let x_1319 : u32 = u_xlatu42;
    if ((x_1318 < x_1319)) {
    } else {
      break;
    }
    let x_1322 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_1322 >> 2u);
    let x_1325 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1325 & 3u));
    let x_1328 : u32 = u_xlatu17;
    let x_1331 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1328)];
    let x_1341 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1346 : vec4<u32> = indexable[x_1341];
    u_xlat17.x = dot(x_1331, bitcast<vec4<f32>>(x_1346));
    let x_1352 : f32 = u_xlat17.x;
    u_xlati17 = i32(x_1352);
    let x_1354 : vec3<f32> = vs_INTERP7;
    let x_1365 : i32 = u_xlati17;
    let x_1367 : vec4<f32> = x_1364.x_AdditionalLightsPosition[x_1365];
    let x_1370 : i32 = u_xlati17;
    let x_1372 : vec4<f32> = x_1364.x_AdditionalLightsPosition[x_1370];
    u_xlat23 = ((-(x_1354) * vec3<f32>(x_1367.w, x_1367.w, x_1367.w)) + vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
    let x_1376 : vec3<f32> = u_xlat23;
    let x_1377 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1376, x_1377);
    let x_1379 : f32 = u_xlat46;
    u_xlat46 = max(x_1379, 0.00006103515625f);
    let x_1383 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1383);
    let x_1386 : f32 = u_xlat47;
    let x_1388 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1386, x_1386, x_1386) * x_1388);
    let x_1391 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1391);
    let x_1393 : f32 = u_xlat46;
    let x_1394 : i32 = u_xlati17;
    let x_1396 : f32 = x_1364.x_AdditionalLightsAttenuation[x_1394].x;
    u_xlat46 = (x_1393 * x_1396);
    let x_1398 : f32 = u_xlat46;
    let x_1400 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1398) * x_1400) + 1.0f);
    let x_1403 : f32 = u_xlat46;
    u_xlat46 = max(x_1403, 0.0f);
    let x_1405 : f32 = u_xlat46;
    let x_1406 : f32 = u_xlat46;
    u_xlat46 = (x_1405 * x_1406);
    let x_1408 : f32 = u_xlat46;
    let x_1409 : f32 = u_xlat48;
    u_xlat46 = (x_1408 * x_1409);
    let x_1411 : i32 = u_xlati17;
    let x_1413 : vec4<f32> = x_1364.x_AdditionalLightsSpotDir[x_1411];
    let x_1415 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1413.x, x_1413.y, x_1413.z), x_1415);
    let x_1417 : f32 = u_xlat48;
    let x_1418 : i32 = u_xlati17;
    let x_1420 : f32 = x_1364.x_AdditionalLightsAttenuation[x_1418].z;
    let x_1422 : i32 = u_xlati17;
    let x_1424 : f32 = x_1364.x_AdditionalLightsAttenuation[x_1422].w;
    u_xlat48 = ((x_1417 * x_1420) + x_1424);
    let x_1426 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1426, 0.0f, 1.0f);
    let x_1428 : f32 = u_xlat48;
    let x_1429 : f32 = u_xlat48;
    u_xlat48 = (x_1428 * x_1429);
    let x_1431 : f32 = u_xlat46;
    let x_1432 : f32 = u_xlat48;
    u_xlat46 = (x_1431 * x_1432);
    let x_1436 : i32 = u_xlati17;
    let x_1438 : f32 = x_508.x_AdditionalShadowParams[x_1436].w;
    u_xlati48 = i32(x_1438);
    let x_1441 : i32 = u_xlati48;
    u_xlatb35 = (x_1441 >= 0i);
    let x_1443 : bool = u_xlatb35;
    if (x_1443) {
      let x_1447 : i32 = u_xlati17;
      let x_1449 : f32 = x_508.x_AdditionalShadowParams[x_1447].z;
      u_xlatb35 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1449, x_1449, x_1449, x_1449))));
      let x_1453 : bool = u_xlatb35;
      if (x_1453) {
        let x_1457 : vec3<f32> = u_xlat10;
        let x_1460 : vec3<f32> = u_xlat10;
        let x_1463 : vec4<bool> = (abs(vec4<f32>(x_1457.z, x_1457.z, x_1457.y, x_1457.z)) >= abs(vec4<f32>(x_1460.x, x_1460.y, x_1460.x, x_1460.x)));
        let x_1465 : vec3<bool> = vec3<bool>(x_1463.x, x_1463.y, x_1463.z);
        let x_1466 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1465.x, x_1465.y, x_1465.z, x_1466.w);
        let x_1469 : bool = u_xlatb11.y;
        let x_1471 : bool = u_xlatb11.x;
        u_xlatb35 = (x_1469 & x_1471);
        let x_1473 : vec3<f32> = u_xlat10;
        let x_1476 : vec4<bool> = (-(vec4<f32>(x_1473.z, x_1473.y, x_1473.z, x_1473.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1477 : vec3<bool> = vec3<bool>(x_1476.x, x_1476.y, x_1476.w);
        let x_1478 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1477.x, x_1477.y, x_1478.z, x_1477.z);
        let x_1482 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1482);
        let x_1487 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1487);
        let x_1492 : bool = u_xlatb11.w;
        u_xlat49 = select(0.0f, 1.0f, x_1492);
        let x_1495 : bool = u_xlatb11.z;
        if (x_1495) {
          let x_1500 : f32 = u_xlat11.y;
          x_1496 = x_1500;
        } else {
          let x_1502 : f32 = u_xlat49;
          x_1496 = x_1502;
        }
        let x_1503 : f32 = x_1496;
        u_xlat49 = x_1503;
        let x_1505 : bool = u_xlatb35;
        if (x_1505) {
          let x_1510 : f32 = u_xlat11.x;
          x_1506 = x_1510;
        } else {
          let x_1512 : f32 = u_xlat49;
          x_1506 = x_1512;
        }
        let x_1513 : f32 = x_1506;
        u_xlat35.x = x_1513;
        let x_1515 : i32 = u_xlati17;
        let x_1517 : f32 = x_508.x_AdditionalShadowParams[x_1515].w;
        u_xlat49 = trunc(x_1517);
        let x_1520 : f32 = u_xlat35.x;
        let x_1521 : f32 = u_xlat49;
        u_xlat35.x = (x_1520 + x_1521);
        let x_1525 : f32 = u_xlat35.x;
        u_xlati48 = i32(x_1525);
      }
      let x_1527 : i32 = u_xlati48;
      u_xlati48 = (x_1527 << bitcast<u32>(2i));
      let x_1529 : vec3<f32> = vs_INTERP7;
      let x_1532 : i32 = u_xlati48;
      let x_1535 : i32 = u_xlati48;
      let x_1539 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1532 + 1i) / 4i)][((x_1535 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1529.y, x_1529.y, x_1529.y, x_1529.y) * x_1539);
      let x_1541 : i32 = u_xlati48;
      let x_1543 : i32 = u_xlati48;
      let x_1546 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[(x_1541 / 4i)][(x_1543 % 4i)];
      let x_1547 : vec3<f32> = vs_INTERP7;
      let x_1550 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1546 * vec4<f32>(x_1547.x, x_1547.x, x_1547.x, x_1547.x)) + x_1550);
      let x_1552 : i32 = u_xlati48;
      let x_1555 : i32 = u_xlati48;
      let x_1559 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1552 + 2i) / 4i)][((x_1555 + 2i) % 4i)];
      let x_1560 : vec3<f32> = vs_INTERP7;
      let x_1563 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1559 * vec4<f32>(x_1560.z, x_1560.z, x_1560.z, x_1560.z)) + x_1563);
      let x_1565 : vec4<f32> = u_xlat11;
      let x_1566 : i32 = u_xlati48;
      let x_1569 : i32 = u_xlati48;
      let x_1573 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1566 + 3i) / 4i)][((x_1569 + 3i) % 4i)];
      u_xlat11 = (x_1565 + x_1573);
      let x_1575 : vec4<f32> = u_xlat11;
      let x_1577 : vec4<f32> = u_xlat11;
      let x_1579 : vec3<f32> = (vec3<f32>(x_1575.x, x_1575.y, x_1575.z) / vec3<f32>(x_1577.w, x_1577.w, x_1577.w));
      let x_1580 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1579.x, x_1579.y, x_1579.z, x_1580.w);
      let x_1583 : vec4<f32> = u_xlat11;
      let x_1584 : vec2<f32> = vec2<f32>(x_1583.x, x_1583.y);
      let x_1586 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1584.x, x_1584.y, x_1586);
      let x_1594 : vec3<f32> = txVec1;
      let x_1596 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
      u_xlat48 = x_1596;
      let x_1597 : i32 = u_xlati17;
      let x_1599 : f32 = x_508.x_AdditionalShadowParams[x_1597].x;
      u_xlat35.x = (1.0f + -(x_1599));
      let x_1603 : f32 = u_xlat48;
      let x_1604 : i32 = u_xlati17;
      let x_1606 : f32 = x_508.x_AdditionalShadowParams[x_1604].x;
      let x_1609 : f32 = u_xlat35.x;
      u_xlat48 = ((x_1603 * x_1606) + x_1609);
      let x_1612 : f32 = u_xlat11.z;
      u_xlatb35 = (0.0f >= x_1612);
      let x_1616 : f32 = u_xlat11.z;
      u_xlatb49 = (x_1616 >= 1.0f);
      let x_1618 : bool = u_xlatb49;
      let x_1619 : bool = u_xlatb35;
      u_xlatb35 = (x_1618 | x_1619);
      let x_1621 : bool = u_xlatb35;
      let x_1622 : f32 = u_xlat48;
      u_xlat48 = select(x_1622, 1.0f, x_1621);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1625 : f32 = u_xlat48;
    u_xlat35.x = (-(x_1625) + 1.0f);
    let x_1629 : f32 = u_xlat43;
    let x_1631 : f32 = u_xlat35.x;
    let x_1633 : f32 = u_xlat48;
    u_xlat48 = ((x_1629 * x_1631) + x_1633);
    let x_1636 : i32 = u_xlati17;
    u_xlati35 = (1i << bitcast<u32>((x_1636 & 31i)));
    let x_1640 : i32 = u_xlati35;
    let x_1643 : f32 = x_918.x_AdditionalLightsCookieEnableBits;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1640) & bitcast<u32>(x_1643)));
    let x_1647 : i32 = u_xlati35;
    if ((x_1647 != 0i)) {
      let x_1651 : i32 = u_xlati17;
      let x_1653 : f32 = x_918.x_AdditionalLightsLightTypes[x_1651].el;
      u_xlati35 = i32(x_1653);
      let x_1656 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1656 != 0i));
      let x_1660 : i32 = u_xlati17;
      u_xlati50 = (x_1660 << bitcast<u32>(2i));
      let x_1662 : i32 = u_xlati49;
      if ((x_1662 != 0i)) {
        let x_1666 : vec3<f32> = vs_INTERP7;
        let x_1668 : i32 = u_xlati50;
        let x_1671 : i32 = u_xlati50;
        let x_1675 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1668 + 1i) / 4i)][((x_1671 + 1i) % 4i)];
        let x_1677 : vec3<f32> = (vec3<f32>(x_1666.y, x_1666.y, x_1666.y) * vec3<f32>(x_1675.x, x_1675.y, x_1675.w));
        let x_1678 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
        let x_1680 : i32 = u_xlati50;
        let x_1682 : i32 = u_xlati50;
        let x_1685 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[(x_1680 / 4i)][(x_1682 % 4i)];
        let x_1687 : vec3<f32> = vs_INTERP7;
        let x_1690 : vec4<f32> = u_xlat11;
        let x_1692 : vec3<f32> = ((vec3<f32>(x_1685.x, x_1685.y, x_1685.w) * vec3<f32>(x_1687.x, x_1687.x, x_1687.x)) + vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
        let x_1693 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
        let x_1695 : i32 = u_xlati50;
        let x_1698 : i32 = u_xlati50;
        let x_1702 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1695 + 2i) / 4i)][((x_1698 + 2i) % 4i)];
        let x_1704 : vec3<f32> = vs_INTERP7;
        let x_1707 : vec4<f32> = u_xlat11;
        let x_1709 : vec3<f32> = ((vec3<f32>(x_1702.x, x_1702.y, x_1702.w) * vec3<f32>(x_1704.z, x_1704.z, x_1704.z)) + vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
        let x_1710 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
        let x_1712 : vec4<f32> = u_xlat11;
        let x_1714 : i32 = u_xlati50;
        let x_1717 : i32 = u_xlati50;
        let x_1721 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1714 + 3i) / 4i)][((x_1717 + 3i) % 4i)];
        let x_1723 : vec3<f32> = (vec3<f32>(x_1712.x, x_1712.y, x_1712.z) + vec3<f32>(x_1721.x, x_1721.y, x_1721.w));
        let x_1724 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1723.x, x_1723.y, x_1723.z, x_1724.w);
        let x_1726 : vec4<f32> = u_xlat11;
        let x_1728 : vec4<f32> = u_xlat11;
        let x_1730 : vec2<f32> = (vec2<f32>(x_1726.x, x_1726.y) / vec2<f32>(x_1728.z, x_1728.z));
        let x_1731 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1730.x, x_1730.y, x_1731.z, x_1731.w);
        let x_1733 : vec4<f32> = u_xlat11;
        let x_1736 : vec2<f32> = ((vec2<f32>(x_1733.x, x_1733.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1737 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1736.x, x_1736.y, x_1737.z, x_1737.w);
        let x_1739 : vec4<f32> = u_xlat11;
        let x_1743 : vec2<f32> = clamp(vec2<f32>(x_1739.x, x_1739.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1744 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1743.x, x_1743.y, x_1744.z, x_1744.w);
        let x_1746 : i32 = u_xlati17;
        let x_1748 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[x_1746];
        let x_1750 : vec4<f32> = u_xlat11;
        let x_1753 : i32 = u_xlati17;
        let x_1755 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[x_1753];
        let x_1757 : vec2<f32> = ((vec2<f32>(x_1748.x, x_1748.y) * vec2<f32>(x_1750.x, x_1750.y)) + vec2<f32>(x_1755.z, x_1755.w));
        let x_1758 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1757.x, x_1757.y, x_1758.z, x_1758.w);
      } else {
        let x_1761 : i32 = u_xlati35;
        u_xlatb35 = (x_1761 == 1i);
        let x_1763 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1763);
        let x_1765 : i32 = u_xlati35;
        if ((x_1765 != 0i)) {
          let x_1769 : vec3<f32> = vs_INTERP7;
          let x_1771 : i32 = u_xlati50;
          let x_1774 : i32 = u_xlati50;
          let x_1778 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1771 + 1i) / 4i)][((x_1774 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1769.y, x_1769.y) * vec2<f32>(x_1778.x, x_1778.y));
          let x_1781 : i32 = u_xlati50;
          let x_1783 : i32 = u_xlati50;
          let x_1786 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[(x_1781 / 4i)][(x_1783 % 4i)];
          let x_1788 : vec3<f32> = vs_INTERP7;
          let x_1791 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1786.x, x_1786.y) * vec2<f32>(x_1788.x, x_1788.x)) + x_1791);
          let x_1793 : i32 = u_xlati50;
          let x_1796 : i32 = u_xlati50;
          let x_1800 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1793 + 2i) / 4i)][((x_1796 + 2i) % 4i)];
          let x_1802 : vec3<f32> = vs_INTERP7;
          let x_1805 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1800.x, x_1800.y) * vec2<f32>(x_1802.z, x_1802.z)) + x_1805);
          let x_1807 : vec2<f32> = u_xlat35;
          let x_1808 : i32 = u_xlati50;
          let x_1811 : i32 = u_xlati50;
          let x_1815 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1808 + 3i) / 4i)][((x_1811 + 3i) % 4i)];
          u_xlat35 = (x_1807 + vec2<f32>(x_1815.x, x_1815.y));
          let x_1818 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1818 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1821 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1821);
          let x_1823 : i32 = u_xlati17;
          let x_1825 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[x_1823];
          let x_1827 : vec2<f32> = u_xlat35;
          let x_1829 : i32 = u_xlati17;
          let x_1831 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[x_1829];
          let x_1833 : vec2<f32> = ((vec2<f32>(x_1825.x, x_1825.y) * x_1827) + vec2<f32>(x_1831.z, x_1831.w));
          let x_1834 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1833.x, x_1833.y, x_1834.z, x_1834.w);
        } else {
          let x_1838 : vec3<f32> = vs_INTERP7;
          let x_1840 : i32 = u_xlati50;
          let x_1843 : i32 = u_xlati50;
          let x_1847 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1840 + 1i) / 4i)][((x_1843 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1838.y, x_1838.y, x_1838.y, x_1838.y) * x_1847);
          let x_1849 : i32 = u_xlati50;
          let x_1851 : i32 = u_xlati50;
          let x_1854 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[(x_1849 / 4i)][(x_1851 % 4i)];
          let x_1855 : vec3<f32> = vs_INTERP7;
          let x_1858 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1854 * vec4<f32>(x_1855.x, x_1855.x, x_1855.x, x_1855.x)) + x_1858);
          let x_1860 : i32 = u_xlati50;
          let x_1863 : i32 = u_xlati50;
          let x_1867 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1860 + 2i) / 4i)][((x_1863 + 2i) % 4i)];
          let x_1868 : vec3<f32> = vs_INTERP7;
          let x_1871 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1867 * vec4<f32>(x_1868.z, x_1868.z, x_1868.z, x_1868.z)) + x_1871);
          let x_1873 : vec4<f32> = u_xlat12;
          let x_1874 : i32 = u_xlati50;
          let x_1877 : i32 = u_xlati50;
          let x_1881 : vec4<f32> = x_918.x_AdditionalLightsWorldToLights[((x_1874 + 3i) / 4i)][((x_1877 + 3i) % 4i)];
          u_xlat12 = (x_1873 + x_1881);
          let x_1883 : vec4<f32> = u_xlat12;
          let x_1885 : vec4<f32> = u_xlat12;
          let x_1887 : vec3<f32> = (vec3<f32>(x_1883.x, x_1883.y, x_1883.z) / vec3<f32>(x_1885.w, x_1885.w, x_1885.w));
          let x_1888 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
          let x_1890 : vec4<f32> = u_xlat12;
          let x_1892 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1890.x, x_1890.y, x_1890.z), vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
          let x_1897 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1897);
          let x_1900 : vec2<f32> = u_xlat35;
          let x_1902 : vec4<f32> = u_xlat12;
          let x_1904 : vec3<f32> = (vec3<f32>(x_1900.x, x_1900.x, x_1900.x) * vec3<f32>(x_1902.x, x_1902.y, x_1902.z));
          let x_1905 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1905.w);
          let x_1907 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1907.x, x_1907.y, x_1907.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1913 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1913, 0.00000099999999747524f);
          let x_1918 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1918);
          let x_1922 : vec2<f32> = u_xlat35;
          let x_1924 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1922.x, x_1922.x, x_1922.x) * vec3<f32>(x_1924.z, x_1924.x, x_1924.y));
          let x_1928 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1928);
          let x_1932 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1932, 0.0f, 1.0f);
          let x_1936 : vec3<f32> = u_xlat13;
          let x_1938 : vec4<bool> = (vec4<f32>(x_1936.y, x_1936.z, x_1936.y, x_1936.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1938.x, x_1938.y);
          let x_1942 : bool = u_xlatb39.x;
          if (x_1942) {
            let x_1947 : f32 = u_xlat13.x;
            x_1943 = x_1947;
          } else {
            let x_1950 : f32 = u_xlat13.x;
            x_1943 = -(x_1950);
          }
          let x_1952 : f32 = x_1943;
          u_xlat39.x = x_1952;
          let x_1955 : bool = u_xlatb39.y;
          if (x_1955) {
            let x_1960 : f32 = u_xlat13.x;
            x_1956 = x_1960;
          } else {
            let x_1963 : f32 = u_xlat13.x;
            x_1956 = -(x_1963);
          }
          let x_1965 : f32 = x_1956;
          u_xlat39.y = x_1965;
          let x_1967 : vec4<f32> = u_xlat12;
          let x_1969 : vec2<f32> = u_xlat35;
          let x_1972 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1967.x, x_1967.y) * vec2<f32>(x_1969.x, x_1969.x)) + x_1972);
          let x_1974 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1974 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1977 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1977, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1981 : i32 = u_xlati17;
          let x_1983 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[x_1981];
          let x_1985 : vec2<f32> = u_xlat35;
          let x_1987 : i32 = u_xlati17;
          let x_1989 : vec4<f32> = x_918.x_AdditionalLightsCookieAtlasUVRects[x_1987];
          let x_1991 : vec2<f32> = ((vec2<f32>(x_1983.x, x_1983.y) * x_1985) + vec2<f32>(x_1989.z, x_1989.w));
          let x_1992 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1991.x, x_1991.y, x_1992.z, x_1992.w);
        }
      }
      let x_1999 : vec4<f32> = u_xlat11;
      let x_2001 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1999.x, x_1999.y), 0.0f);
      u_xlat11 = x_2001;
      let x_2003 : bool = u_xlatb7.y;
      if (x_2003) {
        let x_2008 : f32 = u_xlat11.w;
        x_2004 = x_2008;
      } else {
        let x_2011 : f32 = u_xlat11.x;
        x_2004 = x_2011;
      }
      let x_2012 : f32 = x_2004;
      u_xlat35.x = x_2012;
      let x_2015 : bool = u_xlatb7.x;
      if (x_2015) {
        let x_2019 : vec4<f32> = u_xlat11;
        x_2016 = vec3<f32>(x_2019.x, x_2019.y, x_2019.z);
      } else {
        let x_2022 : vec2<f32> = u_xlat35;
        x_2016 = vec3<f32>(x_2022.x, x_2022.x, x_2022.x);
      }
      let x_2024 : vec3<f32> = x_2016;
      let x_2025 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2024.x, x_2024.y, x_2024.z, x_2025.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2031 : vec4<f32> = u_xlat11;
    let x_2033 : i32 = u_xlati17;
    let x_2035 : vec4<f32> = x_1364.x_AdditionalLightsColor[x_2033];
    let x_2037 : vec3<f32> = (vec3<f32>(x_2031.x, x_2031.y, x_2031.z) * vec3<f32>(x_2035.x, x_2035.y, x_2035.z));
    let x_2038 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2037.x, x_2037.y, x_2037.z, x_2038.w);
    let x_2040 : f32 = u_xlat46;
    let x_2041 : f32 = u_xlat48;
    u_xlat17.x = (x_2040 * x_2041);
    let x_2044 : vec4<f32> = u_xlat1;
    let x_2046 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2044.x, x_2044.y, x_2044.z), x_2046);
    let x_2048 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2048, 0.0f, 1.0f);
    let x_2051 : f32 = u_xlat17.x;
    let x_2052 : f32 = u_xlat46;
    u_xlat17.x = (x_2051 * x_2052);
    let x_2055 : vec3<f32> = u_xlat17;
    let x_2057 : vec4<f32> = u_xlat11;
    let x_2059 : vec3<f32> = (vec3<f32>(x_2055.x, x_2055.x, x_2055.x) * vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
    let x_2060 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
    let x_2062 : vec3<f32> = u_xlat23;
    let x_2063 : f32 = u_xlat47;
    let x_2066 : vec3<f32> = u_xlat4;
    u_xlat23 = ((x_2062 * vec3<f32>(x_2063, x_2063, x_2063)) + x_2066);
    let x_2068 : vec3<f32> = u_xlat23;
    let x_2069 : vec3<f32> = u_xlat23;
    u_xlat17.x = dot(x_2068, x_2069);
    let x_2073 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_2073, 1.17549435e-38f);
    let x_2077 : f32 = u_xlat17.x;
    u_xlat17.x = inverseSqrt(x_2077);
    let x_2080 : vec3<f32> = u_xlat17;
    let x_2082 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2080.x, x_2080.x, x_2080.x) * x_2082);
    let x_2084 : vec4<f32> = u_xlat1;
    let x_2086 : vec3<f32> = u_xlat23;
    u_xlat17.x = dot(vec3<f32>(x_2084.x, x_2084.y, x_2084.z), x_2086);
    let x_2090 : f32 = u_xlat17.x;
    u_xlat17.x = clamp(x_2090, 0.0f, 1.0f);
    let x_2093 : vec3<f32> = u_xlat10;
    let x_2094 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_2093, x_2094);
    let x_2096 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2096, 0.0f, 1.0f);
    let x_2099 : f32 = u_xlat17.x;
    let x_2101 : f32 = u_xlat17.x;
    u_xlat17.x = (x_2099 * x_2101);
    let x_2105 : f32 = u_xlat17.x;
    let x_2107 : f32 = u_xlat9.x;
    u_xlat17.x = ((x_2105 * x_2107) + 1.00001001358032226562f);
    let x_2111 : f32 = u_xlat46;
    let x_2112 : f32 = u_xlat46;
    u_xlat46 = (x_2111 * x_2112);
    let x_2115 : f32 = u_xlat17.x;
    let x_2117 : f32 = u_xlat17.x;
    u_xlat17.x = (x_2115 * x_2117);
    let x_2120 : f32 = u_xlat46;
    u_xlat46 = max(x_2120, 0.10000000149011611938f);
    let x_2123 : f32 = u_xlat17.x;
    let x_2124 : f32 = u_xlat46;
    u_xlat17.x = (x_2123 * x_2124);
    let x_2127 : f32 = u_xlat44;
    let x_2129 : f32 = u_xlat17.x;
    u_xlat17.x = (x_2127 * x_2129);
    let x_2132 : f32 = u_xlat16;
    let x_2134 : f32 = u_xlat17.x;
    u_xlat17.x = (x_2132 / x_2134);
    let x_2137 : vec4<f32> = u_xlat0;
    let x_2139 : vec3<f32> = u_xlat17;
    let x_2142 : vec3<f32> = u_xlat6;
    u_xlat23 = ((vec3<f32>(x_2137.x, x_2137.y, x_2137.z) * vec3<f32>(x_2139.x, x_2139.x, x_2139.x)) + x_2142);
    let x_2144 : vec3<f32> = u_xlat23;
    let x_2145 : vec4<f32> = u_xlat11;
    let x_2148 : vec4<f32> = u_xlat8;
    let x_2150 : vec3<f32> = ((x_2144 * vec3<f32>(x_2145.x, x_2145.y, x_2145.z)) + vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
    let x_2151 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2151.w);

    continuing {
      let x_2153 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2153 + bitcast<u32>(1i));
    }
  }
  let x_2155 : vec4<f32> = u_xlat5;
  let x_2157 : f32 = u_xlat30;
  let x_2160 : vec4<f32> = u_xlat3;
  let x_2162 : vec3<f32> = ((vec3<f32>(x_2155.x, x_2155.y, x_2155.z) * vec3<f32>(x_2157, x_2157, x_2157)) + vec3<f32>(x_2160.x, x_2160.z, x_2160.w));
  let x_2163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2162.x, x_2162.y, x_2162.z, x_2163.w);
  let x_2167 : vec4<f32> = u_xlat8;
  let x_2169 : vec4<f32> = u_xlat0;
  let x_2171 : vec3<f32> = (vec3<f32>(x_2167.x, x_2167.y, x_2167.z) + vec3<f32>(x_2169.x, x_2169.y, x_2169.z));
  let x_2172 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2171.x, x_2171.y, x_2171.z, x_2172.w);
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



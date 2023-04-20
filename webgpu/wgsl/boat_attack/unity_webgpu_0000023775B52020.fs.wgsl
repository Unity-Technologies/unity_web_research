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
  /* @offset(208) */
  x_NightFade : f32,
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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat78 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(6) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat53 : f32;

@group(1) @binding(2) var<uniform> x_107 : UnityPerDraw;

var<private> u_xlatb53 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_F0A81025 : sampler;

var<private> u_xlatb79 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlatb80 : bool;

var<private> u_xlat80 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb78 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_298 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu78 : u32;

var<private> u_xlati78 : i32;

var<private> u_xlat81 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat55 : f32;

var<private> u_xlatb83 : bool;

var<private> u_xlat9 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb84 : bool;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat85 : f32;

var<private> u_xlat35 : vec3<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat36 : vec2<f32>;

var<private> u_xlat68 : vec2<f32>;

var<private> u_xlat63 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb31 : bool;

var<private> u_xlatb57 : bool;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat57 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu80 : u32;

var<private> u_xlatu31 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati31 : i32;

@group(1) @binding(1) var<uniform> x_2300 : AdditionalLights;

var<private> u_xlat86 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat88 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu29 : u32;

fn main_1() {
  var x_279 : vec3<f32>;
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
  var x_1924 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2432 : f32;
  var x_2442 : f32;
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
  let x_24 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_37.z);
  let x_46 : vec4<f32> = vs_INTERP5;
  let x_49 : f32 = x_29.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_46.x, x_46.y), x_49);
  let x_51 : vec3<f32> = vec3<f32>(x_50.x, x_50.y, x_50.w);
  let x_52 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_51.x, x_51.y, x_51.z, x_52.w);
  let x_56 : f32 = u_xlat1.x;
  let x_59 : f32 = u_xlat1.z;
  u_xlat1.x = (x_56 * x_59);
  let x_62 : vec4<f32> = u_xlat1;
  let x_69 : vec2<f32> = ((vec2<f32>(x_62.x, x_62.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat78 = dot(vec2<f32>(x_73.x, x_73.y), vec2<f32>(x_75.x, x_75.y));
  let x_78 : f32 = u_xlat78;
  u_xlat78 = min(x_78, 1.0f);
  let x_81 : f32 = u_xlat78;
  u_xlat78 = (-(x_81) + 1.0f);
  let x_84 : f32 = u_xlat78;
  u_xlat78 = sqrt(x_84);
  let x_86 : f32 = u_xlat78;
  u_xlat78 = max(x_86, 0.0000000000000001f);
  let x_95 : vec4<f32> = vs_INTERP5;
  let x_98 : f32 = x_29.x_GlobalMipBias.x;
  let x_99 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_95.x, x_95.y), x_98);
  let x_100 : vec3<f32> = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_111 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  let x_114 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  u_xlat53 = dot(vec3<f32>(x_111.x, x_111.y, x_111.z), vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : f32 = u_xlat53;
  u_xlat53 = sqrt(x_117);
  let x_119 : f32 = u_xlat53;
  u_xlat53 = fract(x_119);
  let x_121 : f32 = u_xlat53;
  let x_124 : f32 = x_29.x_NightFade;
  u_xlat53 = (x_121 + x_124);
  let x_129 : f32 = u_xlat53;
  u_xlatb53 = (x_129 >= 1.0f);
  let x_131 : bool = u_xlatb53;
  u_xlat53 = select(0.0f, 1.0f, x_131);
  let x_140 : vec4<f32> = vs_INTERP5;
  let x_143 : f32 = x_29.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_140.x, x_140.y), x_143);
  u_xlat3 = vec3<f32>(x_144.x, x_144.w, x_144.y);
  let x_151 : f32 = vs_INTERP4.w;
  u_xlatb79 = (0.0f < x_151);
  let x_154 : bool = u_xlatb79;
  u_xlat79 = select(-1.0f, 1.0f, x_154);
  let x_158 : f32 = x_107.unity_WorldTransformParams.w;
  u_xlatb80 = (x_158 >= 0.0f);
  let x_161 : bool = u_xlatb80;
  u_xlat80 = select(-1.0f, 1.0f, x_161);
  let x_163 : f32 = u_xlat79;
  let x_164 : f32 = u_xlat80;
  u_xlat79 = (x_163 * x_164);
  let x_167 : vec4<f32> = vs_INTERP4;
  let x_171 : vec3<f32> = vs_INTERP8;
  let x_173 : vec3<f32> = (vec3<f32>(x_167.y, x_167.z, x_167.x) * vec3<f32>(x_171.z, x_171.x, x_171.y));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec3<f32> = vs_INTERP8;
  let x_178 : vec4<f32> = vs_INTERP4;
  let x_181 : vec4<f32> = u_xlat4;
  let x_184 : vec3<f32> = ((vec3<f32>(x_176.y, x_176.z, x_176.x) * vec3<f32>(x_178.z, x_178.x, x_178.y)) + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : f32 = u_xlat79;
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = u_xlat4;
  let x_198 : vec3<f32> = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec4<f32> = vs_INTERP4;
  let x_206 : vec4<f32> = u_xlat4;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.x, x_201.x) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_208.z);
  let x_211 : f32 = u_xlat78;
  let x_213 : vec3<f32> = vs_INTERP8;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211, x_211, x_211) * x_213) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_217.z);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat78 = dot(vec3<f32>(x_220.x, x_220.y, x_220.w), vec3<f32>(x_222.x, x_222.y, x_222.w));
  let x_225 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat78;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_237 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb78 = (x_237 == 0.0f);
  let x_240 : vec3<f32> = vs_INTERP7;
  let x_245 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_246 : vec3<f32> = (-(x_240) + x_245);
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_247.z, x_246.z);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat80 = dot(vec3<f32>(x_249.x, x_249.y, x_249.w), vec3<f32>(x_251.x, x_251.y, x_251.w));
  let x_254 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_254);
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : f32 = u_xlat80;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.w) * vec3<f32>(x_258, x_258, x_258));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_260.z);
  let x_266 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat5.x = x_266;
  let x_270 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat5.y = x_270;
  let x_275 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat5.z = x_275;
  let x_277 : bool = u_xlatb78;
  if (x_277) {
    let x_282 : vec4<f32> = u_xlat1;
    x_279 = vec3<f32>(x_282.x, x_282.y, x_282.w);
  } else {
    let x_285 : vec4<f32> = u_xlat5;
    x_279 = vec3<f32>(x_285.x, x_285.y, x_285.z);
  }
  let x_287 : vec3<f32> = x_279;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_287.z);
  let x_290 : vec3<f32> = vs_INTERP7;
  let x_300 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres0;
  let x_303 : vec3<f32> = (x_290 + -(vec3<f32>(x_300.x, x_300.y, x_300.z)));
  let x_304 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : vec3<f32> = vs_INTERP7;
  let x_309 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres1;
  let x_312 : vec3<f32> = (x_307 + -(vec3<f32>(x_309.x, x_309.y, x_309.z)));
  let x_313 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec3<f32> = vs_INTERP7;
  let x_318 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres2;
  let x_321 : vec3<f32> = (x_316 + -(vec3<f32>(x_318.x, x_318.y, x_318.z)));
  let x_322 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_325 : vec3<f32> = vs_INTERP7;
  let x_327 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres3;
  let x_330 : vec3<f32> = (x_325 + -(vec3<f32>(x_327.x, x_327.y, x_327.z)));
  let x_331 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat5;
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_345 : vec4<f32> = u_xlat7;
  let x_347 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_351 : vec4<f32> = u_xlat8;
  let x_353 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_360 : vec4<f32> = u_xlat5;
  let x_363 : vec4<f32> = x_298.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_360 < x_363);
  let x_366 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_366);
  let x_370 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_370);
  let x_374 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_374);
  let x_378 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_378);
  let x_382 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_382);
  let x_387 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_387);
  let x_391 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_391);
  let x_394 : vec4<f32> = u_xlat5;
  let x_396 : vec4<f32> = u_xlat6;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) + vec3<f32>(x_396.y, x_396.z, x_396.w));
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat5;
  let x_404 : vec3<f32> = max(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_405.x, x_404.x, x_404.y, x_404.z);
  let x_407 : vec4<f32> = u_xlat6;
  u_xlat78 = dot(x_407, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_412 : f32 = u_xlat78;
  u_xlat78 = (-(x_412) + 4.0f);
  let x_417 : f32 = u_xlat78;
  u_xlatu78 = u32(x_417);
  let x_421 : u32 = u_xlatu78;
  u_xlati78 = (bitcast<i32>(x_421) << bitcast<u32>(2i));
  let x_424 : vec3<f32> = vs_INTERP7;
  let x_426 : i32 = u_xlati78;
  let x_429 : i32 = u_xlati78;
  let x_433 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_426 + 1i) / 4i)][((x_429 + 1i) % 4i)];
  let x_435 : vec3<f32> = (vec3<f32>(x_424.y, x_424.y, x_424.y) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : i32 = u_xlati78;
  let x_440 : i32 = u_xlati78;
  let x_443 : vec4<f32> = x_298.x_MainLightWorldToShadow[(x_438 / 4i)][(x_440 % 4i)];
  let x_445 : vec3<f32> = vs_INTERP7;
  let x_448 : vec4<f32> = u_xlat5;
  let x_450 : vec3<f32> = ((vec3<f32>(x_443.x, x_443.y, x_443.z) * vec3<f32>(x_445.x, x_445.x, x_445.x)) + vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : i32 = u_xlati78;
  let x_456 : i32 = u_xlati78;
  let x_460 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_453 + 2i) / 4i)][((x_456 + 2i) % 4i)];
  let x_462 : vec3<f32> = vs_INTERP7;
  let x_465 : vec4<f32> = u_xlat5;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_462.z, x_462.z, x_462.z)) + vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat5;
  let x_472 : i32 = u_xlati78;
  let x_475 : i32 = u_xlati78;
  let x_479 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_472 + 3i) / 4i)][((x_475 + 3i) % 4i)];
  let x_481 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : f32 = vs_INTERP7.y;
  let x_487 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat78 = (x_485 * x_487);
  let x_490 : f32 = x_29.unity_MatrixV[0i].z;
  let x_492 : f32 = vs_INTERP7.x;
  let x_494 : f32 = u_xlat78;
  u_xlat78 = ((x_490 * x_492) + x_494);
  let x_497 : f32 = x_29.unity_MatrixV[2i].z;
  let x_499 : f32 = vs_INTERP7.z;
  let x_501 : f32 = u_xlat78;
  u_xlat78 = ((x_497 * x_499) + x_501);
  let x_503 : f32 = u_xlat78;
  let x_505 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat78 = (x_503 + x_505);
  let x_507 : f32 = u_xlat78;
  let x_510 : f32 = x_29.x_ProjectionParams.y;
  u_xlat78 = (-(x_507) + -(x_510));
  let x_513 : f32 = u_xlat78;
  u_xlat78 = max(x_513, 0.0f);
  let x_515 : f32 = u_xlat78;
  let x_518 : f32 = x_29.unity_FogParams.x;
  u_xlat78 = (x_515 * x_518);
  u_xlat4.w = 1.0f;
  let x_523 : vec4<f32> = x_107.unity_SHAr;
  let x_524 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_523, x_524);
  let x_529 : vec4<f32> = x_107.unity_SHAg;
  let x_530 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_107.unity_SHAb;
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_535, x_536);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_539.y, x_539.z, x_539.z, x_539.x) * vec4<f32>(x_541.x, x_541.y, x_541.z, x_541.z));
  let x_546 : vec4<f32> = x_107.unity_SHBr;
  let x_547 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_546, x_547);
  let x_552 : vec4<f32> = x_107.unity_SHBg;
  let x_553 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_552, x_553);
  let x_558 : vec4<f32> = x_107.unity_SHBb;
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_558, x_559);
  let x_563 : f32 = u_xlat4.y;
  let x_565 : f32 = u_xlat4.y;
  u_xlat80 = (x_563 * x_565);
  let x_568 : f32 = u_xlat4.x;
  let x_570 : f32 = u_xlat4.x;
  let x_572 : f32 = u_xlat80;
  u_xlat80 = ((x_568 * x_570) + -(x_572));
  let x_577 : vec4<f32> = x_107.unity_SHC;
  let x_579 : f32 = u_xlat80;
  let x_582 : vec4<f32> = u_xlat8;
  let x_584 : vec3<f32> = ((vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(x_579, x_579, x_579)) + vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat6;
  let x_589 : vec4<f32> = u_xlat7;
  let x_591 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) + vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat6;
  let x_596 : vec3<f32> = max(vec3<f32>(x_594.x, x_594.y, x_594.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_597 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec3<f32> = u_xlat3;
  let x_600 : vec2<f32> = vec2<f32>(x_599.x, x_599.y);
  let x_601 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_600.x, x_600.y, x_601.z);
  let x_603 : vec3<f32> = u_xlat3;
  let x_607 : vec2<f32> = clamp(vec2<f32>(x_603.x, x_603.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_608 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_607.x, x_607.y, x_608.z);
  let x_611 : f32 = u_xlat3.x;
  u_xlat80 = ((-(x_611) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_617 : f32 = u_xlat80;
  u_xlat81 = (-(x_617) + 1.0f);
  let x_620 : vec3<f32> = u_xlat0;
  let x_621 : f32 = u_xlat80;
  let x_623 : vec3<f32> = (x_620 * vec3<f32>(x_621, x_621, x_621));
  let x_624 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_626 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_630 : vec3<f32> = u_xlat3;
  let x_632 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_630.x, x_630.x, x_630.x) * x_632) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_638 : f32 = u_xlat3.y;
  u_xlat80 = (-(x_638) + 1.0f);
  let x_641 : f32 = u_xlat80;
  let x_642 : f32 = u_xlat80;
  u_xlat3.x = (x_641 * x_642);
  let x_646 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_646, 0.0078125f);
  let x_652 : f32 = u_xlat3.x;
  let x_654 : f32 = u_xlat3.x;
  u_xlat82 = (x_652 * x_654);
  let x_657 : f32 = u_xlat81;
  let x_659 : f32 = u_xlat3.y;
  u_xlat29 = (x_657 + x_659);
  let x_661 : f32 = u_xlat29;
  u_xlat29 = min(x_661, 1.0f);
  let x_664 : f32 = u_xlat3.x;
  u_xlat81 = ((x_664 * 4.0f) + 2.0f);
  let x_669 : f32 = u_xlat3.z;
  u_xlat55 = min(x_669, 1.0f);
  let x_674 : f32 = x_298.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_674);
  let x_676 : bool = u_xlatb83;
  if (x_676) {
    let x_680 : f32 = x_298.x_MainLightShadowParams.y;
    u_xlatb83 = (x_680 == 1.0f);
    let x_682 : bool = u_xlatb83;
    if (x_682) {
      let x_685 : vec4<f32> = u_xlat5;
      let x_688 : vec4<f32> = x_298.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_685.x, x_685.y, x_685.x, x_685.y) + x_688);
      let x_691 : vec4<f32> = u_xlat8;
      let x_692 : vec2<f32> = vec2<f32>(x_691.x, x_691.y);
      let x_694 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_692.x, x_692.y, x_694);
      let x_707 : vec3<f32> = txVec0;
      let x_709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_707.xy, x_707.z);
      u_xlat9.x = x_709;
      let x_712 : vec4<f32> = u_xlat8;
      let x_713 : vec2<f32> = vec2<f32>(x_712.z, x_712.w);
      let x_715 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_713.x, x_713.y, x_715);
      let x_722 : vec3<f32> = txVec1;
      let x_724 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_722.xy, x_722.z);
      u_xlat9.y = x_724;
      let x_726 : vec4<f32> = u_xlat5;
      let x_729 : vec4<f32> = x_298.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_726.x, x_726.y, x_726.x, x_726.y) + x_729);
      let x_732 : vec4<f32> = u_xlat8;
      let x_733 : vec2<f32> = vec2<f32>(x_732.x, x_732.y);
      let x_735 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_733.x, x_733.y, x_735);
      let x_742 : vec3<f32> = txVec2;
      let x_744 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_742.xy, x_742.z);
      u_xlat9.z = x_744;
      let x_747 : vec4<f32> = u_xlat8;
      let x_748 : vec2<f32> = vec2<f32>(x_747.z, x_747.w);
      let x_750 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_748.x, x_748.y, x_750);
      let x_757 : vec3<f32> = txVec3;
      let x_759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_757.xy, x_757.z);
      u_xlat9.w = x_759;
      let x_762 : vec4<f32> = u_xlat9;
      u_xlat83 = dot(x_762, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_769 : f32 = x_298.x_MainLightShadowParams.y;
      u_xlatb84 = (x_769 == 2.0f);
      let x_771 : bool = u_xlatb84;
      if (x_771) {
        let x_774 : vec4<f32> = u_xlat5;
        let x_777 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_782 : vec2<f32> = ((vec2<f32>(x_774.x, x_774.y) * vec2<f32>(x_777.z, x_777.w)) + vec2<f32>(0.5f, 0.5f));
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
        let x_785 : vec4<f32> = u_xlat8;
        let x_787 : vec2<f32> = floor(vec2<f32>(x_785.x, x_785.y));
        let x_788 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_787.x, x_787.y, x_788.z, x_788.w);
        let x_792 : vec4<f32> = u_xlat5;
        let x_795 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_798 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_792.x, x_792.y) * vec2<f32>(x_795.z, x_795.w)) + -(vec2<f32>(x_798.x, x_798.y)));
        let x_802 : vec2<f32> = u_xlat60;
        u_xlat9 = (vec4<f32>(x_802.x, x_802.x, x_802.y, x_802.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_807 : vec4<f32> = u_xlat9;
        let x_809 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_807.x, x_807.x, x_807.z, x_807.z) * vec4<f32>(x_809.x, x_809.x, x_809.z, x_809.z));
        let x_812 : vec4<f32> = u_xlat10;
        let x_816 : vec2<f32> = (vec2<f32>(x_812.y, x_812.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_816.x, x_817.y, x_816.y, x_817.w);
        let x_819 : vec4<f32> = u_xlat10;
        let x_822 : vec2<f32> = u_xlat60;
        let x_824 : vec2<f32> = ((vec2<f32>(x_819.x, x_819.z) * vec2<f32>(0.5f, 0.5f)) + -(x_822));
        let x_825 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
        let x_828 : vec2<f32> = u_xlat60;
        u_xlat62 = (-(x_828) + vec2<f32>(1.0f, 1.0f));
        let x_833 : vec2<f32> = u_xlat60;
        let x_835 : vec2<f32> = min(x_833, vec2<f32>(0.0f, 0.0f));
        let x_836 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_835.x, x_835.y, x_836.z, x_836.w);
        let x_838 : vec4<f32> = u_xlat11;
        let x_841 : vec4<f32> = u_xlat11;
        let x_844 : vec2<f32> = u_xlat62;
        let x_845 : vec2<f32> = ((-(vec2<f32>(x_838.x, x_838.y)) * vec2<f32>(x_841.x, x_841.y)) + x_844);
        let x_846 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_845.x, x_845.y, x_846.z, x_846.w);
        let x_848 : vec2<f32> = u_xlat60;
        u_xlat60 = max(x_848, vec2<f32>(0.0f, 0.0f));
        let x_850 : vec2<f32> = u_xlat60;
        let x_852 : vec2<f32> = u_xlat60;
        let x_854 : vec4<f32> = u_xlat9;
        u_xlat60 = ((-(x_850) * x_852) + vec2<f32>(x_854.y, x_854.w));
        let x_857 : vec4<f32> = u_xlat11;
        let x_859 : vec2<f32> = (vec2<f32>(x_857.x, x_857.y) + vec2<f32>(1.0f, 1.0f));
        let x_860 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_862 : vec2<f32> = u_xlat60;
        u_xlat60 = (x_862 + vec2<f32>(1.0f, 1.0f));
        let x_865 : vec4<f32> = u_xlat10;
        let x_869 : vec2<f32> = (vec2<f32>(x_865.x, x_865.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_870 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_869.x, x_869.y, x_870.z, x_870.w);
        let x_872 : vec2<f32> = u_xlat62;
        let x_873 : vec2<f32> = (x_872 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_874 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_873.x, x_873.y, x_874.z, x_874.w);
        let x_876 : vec4<f32> = u_xlat11;
        let x_878 : vec2<f32> = (vec2<f32>(x_876.x, x_876.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_878.x, x_878.y, x_879.z, x_879.w);
        let x_882 : vec2<f32> = u_xlat60;
        let x_883 : vec2<f32> = (x_882 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_884 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_883.x, x_883.y, x_884.z, x_884.w);
        let x_886 : vec4<f32> = u_xlat9;
        u_xlat60 = (vec2<f32>(x_886.y, x_886.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_890 : f32 = u_xlat11.x;
        u_xlat12.z = x_890;
        let x_893 : f32 = u_xlat60.x;
        u_xlat12.w = x_893;
        let x_896 : f32 = u_xlat13.x;
        u_xlat10.z = x_896;
        let x_899 : f32 = u_xlat9.x;
        u_xlat10.w = x_899;
        let x_902 : vec4<f32> = u_xlat10;
        let x_904 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_902.z, x_902.w, x_902.x, x_902.z) + vec4<f32>(x_904.z, x_904.w, x_904.x, x_904.z));
        let x_908 : f32 = u_xlat12.y;
        u_xlat11.z = x_908;
        let x_911 : f32 = u_xlat60.y;
        u_xlat11.w = x_911;
        let x_914 : f32 = u_xlat10.y;
        u_xlat13.z = x_914;
        let x_917 : f32 = u_xlat9.z;
        u_xlat13.w = x_917;
        let x_919 : vec4<f32> = u_xlat11;
        let x_921 : vec4<f32> = u_xlat13;
        let x_923 : vec3<f32> = (vec3<f32>(x_919.z, x_919.y, x_919.w) + vec3<f32>(x_921.z, x_921.y, x_921.w));
        let x_924 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
        let x_926 : vec4<f32> = u_xlat10;
        let x_928 : vec4<f32> = u_xlat14;
        let x_930 : vec3<f32> = (vec3<f32>(x_926.x, x_926.z, x_926.w) / vec3<f32>(x_928.z, x_928.w, x_928.y));
        let x_931 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
        let x_933 : vec4<f32> = u_xlat10;
        let x_939 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_940 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
        let x_942 : vec4<f32> = u_xlat13;
        let x_944 : vec4<f32> = u_xlat9;
        let x_946 : vec3<f32> = (vec3<f32>(x_942.z, x_942.y, x_942.w) / vec3<f32>(x_944.x, x_944.y, x_944.z));
        let x_947 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat11;
        let x_951 : vec3<f32> = (vec3<f32>(x_949.x, x_949.y, x_949.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_952 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
        let x_954 : vec4<f32> = u_xlat10;
        let x_957 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_959 : vec3<f32> = (vec3<f32>(x_954.y, x_954.x, x_954.z) * vec3<f32>(x_957.x, x_957.x, x_957.x));
        let x_960 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
        let x_962 : vec4<f32> = u_xlat11;
        let x_965 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_967 : vec3<f32> = (vec3<f32>(x_962.x, x_962.y, x_962.z) * vec3<f32>(x_965.y, x_965.y, x_965.y));
        let x_968 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
        let x_971 : f32 = u_xlat11.x;
        u_xlat10.w = x_971;
        let x_973 : vec4<f32> = u_xlat8;
        let x_976 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_979 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_973.x, x_973.y, x_973.x, x_973.y) * vec4<f32>(x_976.x, x_976.y, x_976.x, x_976.y)) + vec4<f32>(x_979.y, x_979.w, x_979.x, x_979.w));
        let x_982 : vec4<f32> = u_xlat8;
        let x_985 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_988 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_982.x, x_982.y) * vec2<f32>(x_985.x, x_985.y)) + vec2<f32>(x_988.z, x_988.w));
        let x_992 : f32 = u_xlat10.y;
        u_xlat11.w = x_992;
        let x_994 : vec4<f32> = u_xlat11;
        let x_995 : vec2<f32> = vec2<f32>(x_994.y, x_994.z);
        let x_996 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_996.x, x_995.x, x_996.z, x_995.y);
        let x_998 : vec4<f32> = u_xlat8;
        let x_1001 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_998.x, x_998.y, x_998.x, x_998.y) * vec4<f32>(x_1001.x, x_1001.y, x_1001.x, x_1001.y)) + vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1004.y));
        let x_1007 : vec4<f32> = u_xlat8;
        let x_1010 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1013 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_1007.x, x_1007.y, x_1007.x, x_1007.y) * vec4<f32>(x_1010.x, x_1010.y, x_1010.x, x_1010.y)) + vec4<f32>(x_1013.w, x_1013.y, x_1013.w, x_1013.z));
        let x_1016 : vec4<f32> = u_xlat8;
        let x_1019 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1022 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y) * vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y)) + vec4<f32>(x_1022.x, x_1022.w, x_1022.z, x_1022.w));
        let x_1026 : vec4<f32> = u_xlat9;
        let x_1028 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_1026.x, x_1026.x, x_1026.x, x_1026.y) * vec4<f32>(x_1028.z, x_1028.w, x_1028.y, x_1028.z));
        let x_1032 : vec4<f32> = u_xlat9;
        let x_1034 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_1032.y, x_1032.y, x_1032.z, x_1032.z) * x_1034);
        let x_1038 : f32 = u_xlat9.z;
        let x_1040 : f32 = u_xlat14.y;
        u_xlat84 = (x_1038 * x_1040);
        let x_1043 : vec4<f32> = u_xlat12;
        let x_1044 : vec2<f32> = vec2<f32>(x_1043.x, x_1043.y);
        let x_1046 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
        let x_1054 : vec3<f32> = txVec4;
        let x_1056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1054.xy, x_1054.z);
        u_xlat85 = x_1056;
        let x_1058 : vec4<f32> = u_xlat12;
        let x_1059 : vec2<f32> = vec2<f32>(x_1058.z, x_1058.w);
        let x_1061 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_1059.x, x_1059.y, x_1061);
        let x_1068 : vec3<f32> = txVec5;
        let x_1070 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1068.xy, x_1068.z);
        u_xlat8.x = x_1070;
        let x_1073 : f32 = u_xlat8.x;
        let x_1075 : f32 = u_xlat15.y;
        u_xlat8.x = (x_1073 * x_1075);
        let x_1079 : f32 = u_xlat15.x;
        let x_1080 : f32 = u_xlat85;
        let x_1083 : f32 = u_xlat8.x;
        u_xlat85 = ((x_1079 * x_1080) + x_1083);
        let x_1086 : vec2<f32> = u_xlat60;
        let x_1088 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_1086.x, x_1086.y, x_1088);
        let x_1095 : vec3<f32> = txVec6;
        let x_1097 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1095.xy, x_1095.z);
        u_xlat8.x = x_1097;
        let x_1100 : f32 = u_xlat15.z;
        let x_1102 : f32 = u_xlat8.x;
        let x_1104 : f32 = u_xlat85;
        u_xlat85 = ((x_1100 * x_1102) + x_1104);
        let x_1107 : vec4<f32> = u_xlat11;
        let x_1108 : vec2<f32> = vec2<f32>(x_1107.x, x_1107.y);
        let x_1110 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1108.x, x_1108.y, x_1110);
        let x_1117 : vec3<f32> = txVec7;
        let x_1119 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1117.xy, x_1117.z);
        u_xlat8.x = x_1119;
        let x_1122 : f32 = u_xlat15.w;
        let x_1124 : f32 = u_xlat8.x;
        let x_1126 : f32 = u_xlat85;
        u_xlat85 = ((x_1122 * x_1124) + x_1126);
        let x_1129 : vec4<f32> = u_xlat13;
        let x_1130 : vec2<f32> = vec2<f32>(x_1129.x, x_1129.y);
        let x_1132 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1130.x, x_1130.y, x_1132);
        let x_1139 : vec3<f32> = txVec8;
        let x_1141 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1139.xy, x_1139.z);
        u_xlat8.x = x_1141;
        let x_1144 : f32 = u_xlat16.x;
        let x_1146 : f32 = u_xlat8.x;
        let x_1148 : f32 = u_xlat85;
        u_xlat85 = ((x_1144 * x_1146) + x_1148);
        let x_1151 : vec4<f32> = u_xlat13;
        let x_1152 : vec2<f32> = vec2<f32>(x_1151.z, x_1151.w);
        let x_1154 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec9;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1161.xy, x_1161.z);
        u_xlat8.x = x_1163;
        let x_1166 : f32 = u_xlat16.y;
        let x_1168 : f32 = u_xlat8.x;
        let x_1170 : f32 = u_xlat85;
        u_xlat85 = ((x_1166 * x_1168) + x_1170);
        let x_1173 : vec4<f32> = u_xlat11;
        let x_1174 : vec2<f32> = vec2<f32>(x_1173.z, x_1173.w);
        let x_1176 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1174.x, x_1174.y, x_1176);
        let x_1183 : vec3<f32> = txVec10;
        let x_1185 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1183.xy, x_1183.z);
        u_xlat8.x = x_1185;
        let x_1188 : f32 = u_xlat16.z;
        let x_1190 : f32 = u_xlat8.x;
        let x_1192 : f32 = u_xlat85;
        u_xlat85 = ((x_1188 * x_1190) + x_1192);
        let x_1195 : vec4<f32> = u_xlat10;
        let x_1196 : vec2<f32> = vec2<f32>(x_1195.x, x_1195.y);
        let x_1198 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1196.x, x_1196.y, x_1198);
        let x_1205 : vec3<f32> = txVec11;
        let x_1207 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1205.xy, x_1205.z);
        u_xlat8.x = x_1207;
        let x_1210 : f32 = u_xlat16.w;
        let x_1212 : f32 = u_xlat8.x;
        let x_1214 : f32 = u_xlat85;
        u_xlat85 = ((x_1210 * x_1212) + x_1214);
        let x_1217 : vec4<f32> = u_xlat10;
        let x_1218 : vec2<f32> = vec2<f32>(x_1217.z, x_1217.w);
        let x_1220 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1218.x, x_1218.y, x_1220);
        let x_1227 : vec3<f32> = txVec12;
        let x_1229 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1227.xy, x_1227.z);
        u_xlat8.x = x_1229;
        let x_1231 : f32 = u_xlat84;
        let x_1233 : f32 = u_xlat8.x;
        let x_1235 : f32 = u_xlat85;
        u_xlat83 = ((x_1231 * x_1233) + x_1235);
      } else {
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1241 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1244 : vec2<f32> = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.z, x_1241.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1244.x, x_1244.y, x_1245.z, x_1245.w);
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1249 : vec2<f32> = floor(vec2<f32>(x_1247.x, x_1247.y));
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1249.x, x_1249.y, x_1250.z, x_1250.w);
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat60 = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.z, x_1255.w)) + -(vec2<f32>(x_1258.x, x_1258.y)));
        let x_1262 : vec2<f32> = u_xlat60;
        u_xlat9 = (vec4<f32>(x_1262.x, x_1262.x, x_1262.y, x_1262.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1265 : vec4<f32> = u_xlat9;
        let x_1267 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1265.x, x_1265.x, x_1265.z, x_1265.z) * vec4<f32>(x_1267.x, x_1267.x, x_1267.z, x_1267.z));
        let x_1270 : vec4<f32> = u_xlat10;
        let x_1274 : vec2<f32> = (vec2<f32>(x_1270.y, x_1270.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1275 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1275.x, x_1274.x, x_1275.z, x_1274.y);
        let x_1277 : vec4<f32> = u_xlat10;
        let x_1280 : vec2<f32> = u_xlat60;
        let x_1282 : vec2<f32> = ((vec2<f32>(x_1277.x, x_1277.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1280));
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1282.x, x_1283.y, x_1282.y, x_1283.w);
        let x_1285 : vec2<f32> = u_xlat60;
        let x_1287 : vec2<f32> = (-(x_1285) + vec2<f32>(1.0f, 1.0f));
        let x_1288 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1287.x, x_1287.y, x_1288.z, x_1288.w);
        let x_1290 : vec2<f32> = u_xlat60;
        u_xlat62 = min(x_1290, vec2<f32>(0.0f, 0.0f));
        let x_1292 : vec2<f32> = u_xlat62;
        let x_1294 : vec2<f32> = u_xlat62;
        let x_1296 : vec4<f32> = u_xlat10;
        let x_1298 : vec2<f32> = ((-(x_1292) * x_1294) + vec2<f32>(x_1296.x, x_1296.y));
        let x_1299 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1298.x, x_1298.y, x_1299.z, x_1299.w);
        let x_1301 : vec2<f32> = u_xlat60;
        u_xlat62 = max(x_1301, vec2<f32>(0.0f, 0.0f));
        let x_1304 : vec2<f32> = u_xlat62;
        let x_1306 : vec2<f32> = u_xlat62;
        let x_1308 : vec4<f32> = u_xlat9;
        let x_1310 : vec2<f32> = ((-(x_1304) * x_1306) + vec2<f32>(x_1308.y, x_1308.w));
        let x_1311 : vec3<f32> = u_xlat35;
        u_xlat35 = vec3<f32>(x_1310.x, x_1311.y, x_1310.y);
        let x_1313 : vec4<f32> = u_xlat10;
        let x_1315 : vec2<f32> = (vec2<f32>(x_1313.x, x_1313.y) + vec2<f32>(2.0f, 2.0f));
        let x_1316 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec3<f32> = u_xlat35;
        let x_1320 : vec2<f32> = (vec2<f32>(x_1318.x, x_1318.z) + vec2<f32>(2.0f, 2.0f));
        let x_1321 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1321.x, x_1320.x, x_1321.z, x_1320.y);
        let x_1324 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1324 * 0.08163200318813323975f);
        let x_1328 : vec4<f32> = u_xlat9;
        let x_1331 : vec3<f32> = (vec3<f32>(x_1328.z, x_1328.x, x_1328.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1332 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
        let x_1334 : vec4<f32> = u_xlat10;
        let x_1337 : vec2<f32> = (vec2<f32>(x_1334.x, x_1334.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1338 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1337.x, x_1337.y, x_1338.z, x_1338.w);
        let x_1341 : f32 = u_xlat13.y;
        u_xlat12.x = x_1341;
        let x_1343 : vec2<f32> = u_xlat60;
        let x_1350 : vec2<f32> = ((vec2<f32>(x_1343.x, x_1343.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1351 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1351.x, x_1350.x, x_1351.z, x_1350.y);
        let x_1353 : vec2<f32> = u_xlat60;
        let x_1357 : vec2<f32> = ((vec2<f32>(x_1353.x, x_1353.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1358 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1357.x, x_1358.y, x_1357.y, x_1358.w);
        let x_1361 : f32 = u_xlat9.x;
        u_xlat10.y = x_1361;
        let x_1364 : f32 = u_xlat11.y;
        u_xlat10.w = x_1364;
        let x_1366 : vec4<f32> = u_xlat10;
        let x_1367 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1366 + x_1367);
        let x_1369 : vec2<f32> = u_xlat60;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1369.y, x_1369.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1373 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1373.x, x_1372.x, x_1373.z, x_1372.y);
        let x_1375 : vec2<f32> = u_xlat60;
        let x_1378 : vec2<f32> = ((vec2<f32>(x_1375.y, x_1375.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1379 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1378.x, x_1379.y, x_1378.y, x_1379.w);
        let x_1382 : f32 = u_xlat9.y;
        u_xlat11.y = x_1382;
        let x_1384 : vec4<f32> = u_xlat11;
        let x_1385 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1384 + x_1385);
        let x_1387 : vec4<f32> = u_xlat10;
        let x_1388 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1387 / x_1388);
        let x_1390 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1390 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1396 : vec4<f32> = u_xlat11;
        let x_1397 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1396 / x_1397);
        let x_1399 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1399 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1401 : vec4<f32> = u_xlat10;
        let x_1404 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1401.w, x_1401.x, x_1401.y, x_1401.z) * vec4<f32>(x_1404.x, x_1404.x, x_1404.x, x_1404.x));
        let x_1407 : vec4<f32> = u_xlat11;
        let x_1410 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1407.x, x_1407.w, x_1407.y, x_1407.z) * vec4<f32>(x_1410.y, x_1410.y, x_1410.y, x_1410.y));
        let x_1413 : vec4<f32> = u_xlat10;
        let x_1414 : vec3<f32> = vec3<f32>(x_1413.y, x_1413.z, x_1413.w);
        let x_1415 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1414.x, x_1415.y, x_1414.y, x_1414.z);
        let x_1418 : f32 = u_xlat11.x;
        u_xlat13.y = x_1418;
        let x_1420 : vec4<f32> = u_xlat8;
        let x_1423 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1426 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1420.x, x_1420.y, x_1420.x, x_1420.y) * vec4<f32>(x_1423.x, x_1423.y, x_1423.x, x_1423.y)) + vec4<f32>(x_1426.x, x_1426.y, x_1426.z, x_1426.y));
        let x_1429 : vec4<f32> = u_xlat8;
        let x_1432 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1435 : vec4<f32> = u_xlat13;
        u_xlat60 = ((vec2<f32>(x_1429.x, x_1429.y) * vec2<f32>(x_1432.x, x_1432.y)) + vec2<f32>(x_1435.w, x_1435.y));
        let x_1439 : f32 = u_xlat13.y;
        u_xlat10.y = x_1439;
        let x_1442 : f32 = u_xlat11.z;
        u_xlat13.y = x_1442;
        let x_1444 : vec4<f32> = u_xlat8;
        let x_1447 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1450 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1444.x, x_1444.y, x_1444.x, x_1444.y) * vec4<f32>(x_1447.x, x_1447.y, x_1447.x, x_1447.y)) + vec4<f32>(x_1450.x, x_1450.y, x_1450.z, x_1450.y));
        let x_1453 : vec4<f32> = u_xlat8;
        let x_1456 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1459 : vec4<f32> = u_xlat13;
        let x_1461 : vec2<f32> = ((vec2<f32>(x_1453.x, x_1453.y) * vec2<f32>(x_1456.x, x_1456.y)) + vec2<f32>(x_1459.w, x_1459.y));
        let x_1462 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1461.x, x_1461.y, x_1462.z, x_1462.w);
        let x_1465 : f32 = u_xlat13.y;
        u_xlat10.z = x_1465;
        let x_1468 : vec4<f32> = u_xlat8;
        let x_1471 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1474 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1468.x, x_1468.y, x_1468.x, x_1468.y) * vec4<f32>(x_1471.x, x_1471.y, x_1471.x, x_1471.y)) + vec4<f32>(x_1474.x, x_1474.y, x_1474.x, x_1474.z));
        let x_1478 : f32 = u_xlat11.w;
        u_xlat13.y = x_1478;
        let x_1481 : vec4<f32> = u_xlat8;
        let x_1484 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1487 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1481.x, x_1481.y, x_1481.x, x_1481.y) * vec4<f32>(x_1484.x, x_1484.y, x_1484.x, x_1484.y)) + vec4<f32>(x_1487.x, x_1487.y, x_1487.z, x_1487.y));
        let x_1491 : vec4<f32> = u_xlat8;
        let x_1494 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1497 : vec4<f32> = u_xlat13;
        u_xlat36 = ((vec2<f32>(x_1491.x, x_1491.y) * vec2<f32>(x_1494.x, x_1494.y)) + vec2<f32>(x_1497.w, x_1497.y));
        let x_1501 : f32 = u_xlat13.y;
        u_xlat10.w = x_1501;
        let x_1504 : vec4<f32> = u_xlat8;
        let x_1507 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1510 : vec4<f32> = u_xlat10;
        u_xlat68 = ((vec2<f32>(x_1504.x, x_1504.y) * vec2<f32>(x_1507.x, x_1507.y)) + vec2<f32>(x_1510.x, x_1510.w));
        let x_1513 : vec4<f32> = u_xlat13;
        let x_1514 : vec3<f32> = vec3<f32>(x_1513.x, x_1513.z, x_1513.w);
        let x_1515 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1514.x, x_1515.y, x_1514.y, x_1514.z);
        let x_1517 : vec4<f32> = u_xlat8;
        let x_1520 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1523 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1517.x, x_1517.y, x_1517.x, x_1517.y) * vec4<f32>(x_1520.x, x_1520.y, x_1520.x, x_1520.y)) + vec4<f32>(x_1523.x, x_1523.y, x_1523.z, x_1523.y));
        let x_1527 : vec4<f32> = u_xlat8;
        let x_1530 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1533 : vec4<f32> = u_xlat11;
        u_xlat63 = ((vec2<f32>(x_1527.x, x_1527.y) * vec2<f32>(x_1530.x, x_1530.y)) + vec2<f32>(x_1533.w, x_1533.y));
        let x_1537 : f32 = u_xlat10.x;
        u_xlat11.x = x_1537;
        let x_1539 : vec4<f32> = u_xlat8;
        let x_1542 : vec4<f32> = x_298.x_MainLightShadowmapSize;
        let x_1545 : vec4<f32> = u_xlat11;
        let x_1547 : vec2<f32> = ((vec2<f32>(x_1539.x, x_1539.y) * vec2<f32>(x_1542.x, x_1542.y)) + vec2<f32>(x_1545.x, x_1545.y));
        let x_1548 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1547.x, x_1547.y, x_1548.z, x_1548.w);
        let x_1551 : vec4<f32> = u_xlat9;
        let x_1553 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1551.x, x_1551.x, x_1551.x, x_1551.x) * x_1553);
        let x_1556 : vec4<f32> = u_xlat9;
        let x_1558 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1556.y, x_1556.y, x_1556.y, x_1556.y) * x_1558);
        let x_1561 : vec4<f32> = u_xlat9;
        let x_1563 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1561.z, x_1561.z, x_1561.z, x_1561.z) * x_1563);
        let x_1565 : vec4<f32> = u_xlat9;
        let x_1567 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1565.w, x_1565.w, x_1565.w, x_1565.w) * x_1567);
        let x_1570 : vec4<f32> = u_xlat14;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.x, x_1570.y);
        let x_1573 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec13;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1580.xy, x_1580.z);
        u_xlat84 = x_1582;
        let x_1584 : vec4<f32> = u_xlat14;
        let x_1585 : vec2<f32> = vec2<f32>(x_1584.z, x_1584.w);
        let x_1587 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1585.x, x_1585.y, x_1587);
        let x_1594 : vec3<f32> = txVec14;
        let x_1596 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1594.xy, x_1594.z);
        u_xlat85 = x_1596;
        let x_1597 : f32 = u_xlat85;
        let x_1599 : f32 = u_xlat19.y;
        u_xlat85 = (x_1597 * x_1599);
        let x_1602 : f32 = u_xlat19.x;
        let x_1603 : f32 = u_xlat84;
        let x_1605 : f32 = u_xlat85;
        u_xlat84 = ((x_1602 * x_1603) + x_1605);
        let x_1608 : vec2<f32> = u_xlat60;
        let x_1610 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec15;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1617.xy, x_1617.z);
        u_xlat85 = x_1619;
        let x_1621 : f32 = u_xlat19.z;
        let x_1622 : f32 = u_xlat85;
        let x_1624 : f32 = u_xlat84;
        u_xlat84 = ((x_1621 * x_1622) + x_1624);
        let x_1627 : vec4<f32> = u_xlat17;
        let x_1628 : vec2<f32> = vec2<f32>(x_1627.x, x_1627.y);
        let x_1630 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1628.x, x_1628.y, x_1630);
        let x_1637 : vec3<f32> = txVec16;
        let x_1639 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1637.xy, x_1637.z);
        u_xlat85 = x_1639;
        let x_1641 : f32 = u_xlat19.w;
        let x_1642 : f32 = u_xlat85;
        let x_1644 : f32 = u_xlat84;
        u_xlat84 = ((x_1641 * x_1642) + x_1644);
        let x_1647 : vec4<f32> = u_xlat15;
        let x_1648 : vec2<f32> = vec2<f32>(x_1647.x, x_1647.y);
        let x_1650 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1648.x, x_1648.y, x_1650);
        let x_1657 : vec3<f32> = txVec17;
        let x_1659 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1657.xy, x_1657.z);
        u_xlat85 = x_1659;
        let x_1661 : f32 = u_xlat20.x;
        let x_1662 : f32 = u_xlat85;
        let x_1664 : f32 = u_xlat84;
        u_xlat84 = ((x_1661 * x_1662) + x_1664);
        let x_1667 : vec4<f32> = u_xlat15;
        let x_1668 : vec2<f32> = vec2<f32>(x_1667.z, x_1667.w);
        let x_1670 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1668.x, x_1668.y, x_1670);
        let x_1677 : vec3<f32> = txVec18;
        let x_1679 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1677.xy, x_1677.z);
        u_xlat85 = x_1679;
        let x_1681 : f32 = u_xlat20.y;
        let x_1682 : f32 = u_xlat85;
        let x_1684 : f32 = u_xlat84;
        u_xlat84 = ((x_1681 * x_1682) + x_1684);
        let x_1687 : vec4<f32> = u_xlat16;
        let x_1688 : vec2<f32> = vec2<f32>(x_1687.x, x_1687.y);
        let x_1690 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1688.x, x_1688.y, x_1690);
        let x_1697 : vec3<f32> = txVec19;
        let x_1699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1697.xy, x_1697.z);
        u_xlat85 = x_1699;
        let x_1701 : f32 = u_xlat20.z;
        let x_1702 : f32 = u_xlat85;
        let x_1704 : f32 = u_xlat84;
        u_xlat84 = ((x_1701 * x_1702) + x_1704);
        let x_1707 : vec4<f32> = u_xlat17;
        let x_1708 : vec2<f32> = vec2<f32>(x_1707.z, x_1707.w);
        let x_1710 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1708.x, x_1708.y, x_1710);
        let x_1717 : vec3<f32> = txVec20;
        let x_1719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1717.xy, x_1717.z);
        u_xlat85 = x_1719;
        let x_1721 : f32 = u_xlat20.w;
        let x_1722 : f32 = u_xlat85;
        let x_1724 : f32 = u_xlat84;
        u_xlat84 = ((x_1721 * x_1722) + x_1724);
        let x_1727 : vec4<f32> = u_xlat18;
        let x_1728 : vec2<f32> = vec2<f32>(x_1727.x, x_1727.y);
        let x_1730 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1728.x, x_1728.y, x_1730);
        let x_1737 : vec3<f32> = txVec21;
        let x_1739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1737.xy, x_1737.z);
        u_xlat85 = x_1739;
        let x_1741 : f32 = u_xlat21.x;
        let x_1742 : f32 = u_xlat85;
        let x_1744 : f32 = u_xlat84;
        u_xlat84 = ((x_1741 * x_1742) + x_1744);
        let x_1747 : vec4<f32> = u_xlat18;
        let x_1748 : vec2<f32> = vec2<f32>(x_1747.z, x_1747.w);
        let x_1750 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1748.x, x_1748.y, x_1750);
        let x_1757 : vec3<f32> = txVec22;
        let x_1759 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1757.xy, x_1757.z);
        u_xlat85 = x_1759;
        let x_1761 : f32 = u_xlat21.y;
        let x_1762 : f32 = u_xlat85;
        let x_1764 : f32 = u_xlat84;
        u_xlat84 = ((x_1761 * x_1762) + x_1764);
        let x_1767 : vec2<f32> = u_xlat36;
        let x_1769 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1767.x, x_1767.y, x_1769);
        let x_1776 : vec3<f32> = txVec23;
        let x_1778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1776.xy, x_1776.z);
        u_xlat85 = x_1778;
        let x_1780 : f32 = u_xlat21.z;
        let x_1781 : f32 = u_xlat85;
        let x_1783 : f32 = u_xlat84;
        u_xlat84 = ((x_1780 * x_1781) + x_1783);
        let x_1786 : vec2<f32> = u_xlat68;
        let x_1788 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1786.x, x_1786.y, x_1788);
        let x_1795 : vec3<f32> = txVec24;
        let x_1797 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1795.xy, x_1795.z);
        u_xlat85 = x_1797;
        let x_1799 : f32 = u_xlat21.w;
        let x_1800 : f32 = u_xlat85;
        let x_1802 : f32 = u_xlat84;
        u_xlat84 = ((x_1799 * x_1800) + x_1802);
        let x_1805 : vec4<f32> = u_xlat13;
        let x_1806 : vec2<f32> = vec2<f32>(x_1805.x, x_1805.y);
        let x_1808 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1806.x, x_1806.y, x_1808);
        let x_1815 : vec3<f32> = txVec25;
        let x_1817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1815.xy, x_1815.z);
        u_xlat85 = x_1817;
        let x_1819 : f32 = u_xlat9.x;
        let x_1820 : f32 = u_xlat85;
        let x_1822 : f32 = u_xlat84;
        u_xlat84 = ((x_1819 * x_1820) + x_1822);
        let x_1825 : vec4<f32> = u_xlat13;
        let x_1826 : vec2<f32> = vec2<f32>(x_1825.z, x_1825.w);
        let x_1828 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1826.x, x_1826.y, x_1828);
        let x_1835 : vec3<f32> = txVec26;
        let x_1837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1835.xy, x_1835.z);
        u_xlat85 = x_1837;
        let x_1839 : f32 = u_xlat9.y;
        let x_1840 : f32 = u_xlat85;
        let x_1842 : f32 = u_xlat84;
        u_xlat84 = ((x_1839 * x_1840) + x_1842);
        let x_1845 : vec2<f32> = u_xlat63;
        let x_1847 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1845.x, x_1845.y, x_1847);
        let x_1854 : vec3<f32> = txVec27;
        let x_1856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1854.xy, x_1854.z);
        u_xlat85 = x_1856;
        let x_1858 : f32 = u_xlat9.z;
        let x_1859 : f32 = u_xlat85;
        let x_1861 : f32 = u_xlat84;
        u_xlat84 = ((x_1858 * x_1859) + x_1861);
        let x_1864 : vec4<f32> = u_xlat8;
        let x_1865 : vec2<f32> = vec2<f32>(x_1864.x, x_1864.y);
        let x_1867 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1865.x, x_1865.y, x_1867);
        let x_1874 : vec3<f32> = txVec28;
        let x_1876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1874.xy, x_1874.z);
        u_xlat85 = x_1876;
        let x_1878 : f32 = u_xlat9.w;
        let x_1879 : f32 = u_xlat85;
        let x_1881 : f32 = u_xlat84;
        u_xlat83 = ((x_1878 * x_1879) + x_1881);
      }
    }
  } else {
    let x_1885 : vec4<f32> = u_xlat5;
    let x_1886 : vec2<f32> = vec2<f32>(x_1885.x, x_1885.y);
    let x_1888 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1886.x, x_1886.y, x_1888);
    let x_1895 : vec3<f32> = txVec29;
    let x_1897 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1895.xy, x_1895.z);
    u_xlat83 = x_1897;
  }
  let x_1899 : f32 = x_298.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1899) + 1.0f);
  let x_1903 : f32 = u_xlat83;
  let x_1905 : f32 = x_298.x_MainLightShadowParams.x;
  let x_1908 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1903 * x_1905) + x_1908);
  let x_1913 : f32 = u_xlat5.z;
  u_xlatb31 = (0.0f >= x_1913);
  let x_1917 : f32 = u_xlat5.z;
  u_xlatb57 = (x_1917 >= 1.0f);
  let x_1919 : bool = u_xlatb57;
  let x_1920 : bool = u_xlatb31;
  u_xlatb31 = (x_1919 | x_1920);
  let x_1922 : bool = u_xlatb31;
  if (x_1922) {
    x_1924 = 1.0f;
  } else {
    let x_1929 : f32 = u_xlat5.x;
    x_1924 = x_1929;
  }
  let x_1930 : f32 = x_1924;
  u_xlat5.x = x_1930;
  let x_1933 : vec3<f32> = vs_INTERP7;
  let x_1935 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat31 = (x_1933 + -(x_1935));
  let x_1938 : vec3<f32> = u_xlat31;
  let x_1939 : vec3<f32> = u_xlat31;
  u_xlat31.x = dot(x_1938, x_1939);
  let x_1944 : f32 = u_xlat31.x;
  let x_1946 : f32 = x_298.x_MainLightShadowParams.z;
  let x_1949 : f32 = x_298.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1944 * x_1946) + x_1949);
  let x_1951 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1951, 0.0f, 1.0f);
  let x_1954 : f32 = u_xlat5.x;
  u_xlat83 = (-(x_1954) + 1.0f);
  let x_1957 : f32 = u_xlat57;
  let x_1958 : f32 = u_xlat83;
  let x_1961 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1957 * x_1958) + x_1961);
  let x_1964 : vec4<f32> = u_xlat1;
  let x_1967 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(-(vec3<f32>(x_1964.x, x_1964.y, x_1964.w)), vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
  let x_1970 : f32 = u_xlat57;
  let x_1971 : f32 = u_xlat57;
  u_xlat57 = (x_1970 + x_1971);
  let x_1973 : vec4<f32> = u_xlat4;
  let x_1975 : f32 = u_xlat57;
  let x_1979 : vec4<f32> = u_xlat1;
  let x_1982 : vec3<f32> = ((vec3<f32>(x_1973.x, x_1973.y, x_1973.z) * -(vec3<f32>(x_1975, x_1975, x_1975))) + -(vec3<f32>(x_1979.x, x_1979.y, x_1979.w)));
  let x_1983 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
  let x_1985 : vec4<f32> = u_xlat4;
  let x_1987 : vec4<f32> = u_xlat1;
  u_xlat57 = dot(vec3<f32>(x_1985.x, x_1985.y, x_1985.z), vec3<f32>(x_1987.x, x_1987.y, x_1987.w));
  let x_1990 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1990, 0.0f, 1.0f);
  let x_1992 : f32 = u_xlat57;
  u_xlat57 = (-(x_1992) + 1.0f);
  let x_1995 : f32 = u_xlat57;
  let x_1996 : f32 = u_xlat57;
  u_xlat57 = (x_1995 * x_1996);
  let x_1998 : f32 = u_xlat57;
  let x_1999 : f32 = u_xlat57;
  u_xlat57 = (x_1998 * x_1999);
  let x_2001 : f32 = u_xlat80;
  u_xlat83 = ((-(x_2001) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_2007 : f32 = u_xlat80;
  let x_2008 : f32 = u_xlat83;
  u_xlat2.w = (x_2007 * x_2008);
  let x_2011 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_2011 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_2024 : vec4<f32> = u_xlat8;
  let x_2027 : f32 = u_xlat2.w;
  let x_2028 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2024.x, x_2024.y, x_2024.z), x_2027);
  u_xlat8 = x_2028;
  let x_2030 : f32 = u_xlat8.w;
  u_xlat80 = (x_2030 + -1.0f);
  let x_2033 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_2034 : f32 = u_xlat80;
  u_xlat80 = ((x_2033 * x_2034) + 1.0f);
  let x_2037 : f32 = u_xlat80;
  u_xlat80 = max(x_2037, 0.0f);
  let x_2039 : f32 = u_xlat80;
  u_xlat80 = log2(x_2039);
  let x_2041 : f32 = u_xlat80;
  let x_2043 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_2041 * x_2043);
  let x_2045 : f32 = u_xlat80;
  u_xlat80 = exp2(x_2045);
  let x_2047 : f32 = u_xlat80;
  let x_2049 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_2047 * x_2049);
  let x_2051 : vec4<f32> = u_xlat8;
  let x_2053 : f32 = u_xlat80;
  let x_2055 : vec3<f32> = (vec3<f32>(x_2051.x, x_2051.y, x_2051.z) * vec3<f32>(x_2053, x_2053, x_2053));
  let x_2056 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
  let x_2058 : vec3<f32> = u_xlat3;
  let x_2060 : vec3<f32> = u_xlat3;
  let x_2064 : vec2<f32> = ((vec2<f32>(x_2058.x, x_2058.x) * vec2<f32>(x_2060.x, x_2060.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2065 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2064.x, x_2064.y, x_2065.z, x_2065.w);
  let x_2068 : f32 = u_xlat9.y;
  u_xlat80 = (1.0f / x_2068);
  let x_2070 : vec3<f32> = u_xlat0;
  let x_2072 : f32 = u_xlat29;
  u_xlat35 = (-(x_2070) + vec3<f32>(x_2072, x_2072, x_2072));
  let x_2075 : f32 = u_xlat57;
  let x_2077 : vec3<f32> = u_xlat35;
  let x_2079 : vec3<f32> = u_xlat0;
  u_xlat35 = ((vec3<f32>(x_2075, x_2075, x_2075) * x_2077) + x_2079);
  let x_2081 : f32 = u_xlat80;
  let x_2083 : vec3<f32> = u_xlat35;
  u_xlat35 = (vec3<f32>(x_2081, x_2081, x_2081) * x_2083);
  let x_2085 : vec4<f32> = u_xlat8;
  let x_2087 : vec3<f32> = u_xlat35;
  let x_2088 : vec3<f32> = (vec3<f32>(x_2085.x, x_2085.y, x_2085.z) * x_2087);
  let x_2089 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
  let x_2091 : vec4<f32> = u_xlat6;
  let x_2093 : vec4<f32> = u_xlat7;
  let x_2096 : vec4<f32> = u_xlat8;
  let x_2098 : vec3<f32> = ((vec3<f32>(x_2091.x, x_2091.y, x_2091.z) * vec3<f32>(x_2093.x, x_2093.y, x_2093.z)) + vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
  let x_2099 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2099.w);
  let x_2102 : f32 = u_xlat5.x;
  let x_2104 : f32 = x_107.unity_LightData.z;
  u_xlat80 = (x_2102 * x_2104);
  let x_2106 : vec4<f32> = u_xlat4;
  let x_2109 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_2106.x, x_2106.y, x_2106.z), vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
  let x_2114 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2114, 0.0f, 1.0f);
  let x_2117 : f32 = u_xlat80;
  let x_2119 : f32 = u_xlat3.x;
  u_xlat80 = (x_2117 * x_2119);
  let x_2121 : f32 = u_xlat80;
  let x_2124 : vec4<f32> = x_29.x_MainLightColor;
  let x_2126 : vec3<f32> = (vec3<f32>(x_2121, x_2121, x_2121) * vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
  let x_2127 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2126.x, x_2127.y, x_2126.y, x_2126.z);
  let x_2129 : vec4<f32> = u_xlat1;
  let x_2132 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2134 : vec3<f32> = (vec3<f32>(x_2129.x, x_2129.y, x_2129.w) + vec3<f32>(x_2132.x, x_2132.y, x_2132.z));
  let x_2135 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2134.x, x_2134.y, x_2134.z, x_2135.w);
  let x_2137 : vec4<f32> = u_xlat8;
  let x_2139 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_2137.x, x_2137.y, x_2137.z), vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2142 : f32 = u_xlat80;
  u_xlat80 = max(x_2142, 1.17549435e-38f);
  let x_2145 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_2145);
  let x_2147 : f32 = u_xlat80;
  let x_2149 : vec4<f32> = u_xlat8;
  let x_2151 : vec3<f32> = (vec3<f32>(x_2147, x_2147, x_2147) * vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
  let x_2152 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2151.x, x_2151.y, x_2151.z, x_2152.w);
  let x_2154 : vec4<f32> = u_xlat4;
  let x_2156 : vec4<f32> = u_xlat8;
  u_xlat80 = dot(vec3<f32>(x_2154.x, x_2154.y, x_2154.z), vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
  let x_2159 : f32 = u_xlat80;
  u_xlat80 = clamp(x_2159, 0.0f, 1.0f);
  let x_2162 : vec4<f32> = x_29.x_MainLightPosition;
  let x_2164 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_2162.x, x_2162.y, x_2162.z), vec3<f32>(x_2164.x, x_2164.y, x_2164.z));
  let x_2169 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2169, 0.0f, 1.0f);
  let x_2172 : f32 = u_xlat80;
  let x_2173 : f32 = u_xlat80;
  u_xlat80 = (x_2172 * x_2173);
  let x_2175 : f32 = u_xlat80;
  let x_2177 : f32 = u_xlat9.x;
  u_xlat80 = ((x_2175 * x_2177) + 1.00001001358032226562f);
  let x_2182 : f32 = u_xlat3.x;
  let x_2184 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2182 * x_2184);
  let x_2187 : f32 = u_xlat80;
  let x_2188 : f32 = u_xlat80;
  u_xlat80 = (x_2187 * x_2188);
  let x_2191 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2191, 0.10000000149011611938f);
  let x_2195 : f32 = u_xlat80;
  let x_2197 : f32 = u_xlat3.x;
  u_xlat80 = (x_2195 * x_2197);
  let x_2199 : f32 = u_xlat81;
  let x_2200 : f32 = u_xlat80;
  u_xlat80 = (x_2199 * x_2200);
  let x_2202 : f32 = u_xlat82;
  let x_2203 : f32 = u_xlat80;
  u_xlat80 = (x_2202 / x_2203);
  let x_2205 : vec3<f32> = u_xlat0;
  let x_2206 : f32 = u_xlat80;
  let x_2209 : vec4<f32> = u_xlat7;
  let x_2211 : vec3<f32> = ((x_2205 * vec3<f32>(x_2206, x_2206, x_2206)) + vec3<f32>(x_2209.x, x_2209.y, x_2209.z));
  let x_2212 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2211.x, x_2211.y, x_2211.z, x_2212.w);
  let x_2214 : vec4<f32> = u_xlat5;
  let x_2216 : vec4<f32> = u_xlat8;
  let x_2218 : vec3<f32> = (vec3<f32>(x_2214.x, x_2214.z, x_2214.w) * vec3<f32>(x_2216.x, x_2216.y, x_2216.z));
  let x_2219 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2218.x, x_2219.y, x_2218.y, x_2218.z);
  let x_2222 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2224 : f32 = x_107.unity_LightData.y;
  u_xlat80 = min(x_2222, x_2224);
  let x_2227 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2227));
  let x_2231 : f32 = u_xlat31.x;
  let x_2234 : f32 = x_298.x_AdditionalShadowFadeParams.x;
  let x_2237 : f32 = x_298.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2231 * x_2234) + x_2237);
  let x_2241 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2241, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2254 : u32 = u_xlatu_loop_1;
    let x_2255 : u32 = u_xlatu80;
    if ((x_2254 < x_2255)) {
    } else {
      break;
    }
    let x_2258 : u32 = u_xlatu_loop_1;
    u_xlatu31 = (x_2258 >> 2u);
    let x_2261 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2261 & 3u));
    let x_2264 : u32 = u_xlatu31;
    let x_2267 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_2264)];
    let x_2277 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2282 : vec4<u32> = indexable[x_2277];
    u_xlat31.x = dot(x_2267, bitcast<vec4<f32>>(x_2282));
    let x_2288 : f32 = u_xlat31.x;
    u_xlati31 = i32(x_2288);
    let x_2290 : vec3<f32> = vs_INTERP7;
    let x_2301 : i32 = u_xlati31;
    let x_2303 : vec4<f32> = x_2300.x_AdditionalLightsPosition[x_2301];
    let x_2306 : i32 = u_xlati31;
    let x_2308 : vec4<f32> = x_2300.x_AdditionalLightsPosition[x_2306];
    u_xlat35 = ((-(x_2290) * vec3<f32>(x_2303.w, x_2303.w, x_2303.w)) + vec3<f32>(x_2308.x, x_2308.y, x_2308.z));
    let x_2311 : vec3<f32> = u_xlat35;
    let x_2312 : vec3<f32> = u_xlat35;
    u_xlat84 = dot(x_2311, x_2312);
    let x_2314 : f32 = u_xlat84;
    u_xlat84 = max(x_2314, 0.00006103515625f);
    let x_2317 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2317);
    let x_2319 : f32 = u_xlat85;
    let x_2321 : vec3<f32> = u_xlat35;
    let x_2322 : vec3<f32> = (vec3<f32>(x_2319, x_2319, x_2319) * x_2321);
    let x_2323 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
    let x_2326 : f32 = u_xlat84;
    u_xlat86 = (1.0f / x_2326);
    let x_2328 : f32 = u_xlat84;
    let x_2329 : i32 = u_xlati31;
    let x_2331 : f32 = x_2300.x_AdditionalLightsAttenuation[x_2329].x;
    u_xlat84 = (x_2328 * x_2331);
    let x_2333 : f32 = u_xlat84;
    let x_2335 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2333) * x_2335) + 1.0f);
    let x_2338 : f32 = u_xlat84;
    u_xlat84 = max(x_2338, 0.0f);
    let x_2340 : f32 = u_xlat84;
    let x_2341 : f32 = u_xlat84;
    u_xlat84 = (x_2340 * x_2341);
    let x_2343 : f32 = u_xlat84;
    let x_2344 : f32 = u_xlat86;
    u_xlat84 = (x_2343 * x_2344);
    let x_2346 : i32 = u_xlati31;
    let x_2348 : vec4<f32> = x_2300.x_AdditionalLightsSpotDir[x_2346];
    let x_2350 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2348.x, x_2348.y, x_2348.z), vec3<f32>(x_2350.x, x_2350.y, x_2350.z));
    let x_2353 : f32 = u_xlat86;
    let x_2354 : i32 = u_xlati31;
    let x_2356 : f32 = x_2300.x_AdditionalLightsAttenuation[x_2354].z;
    let x_2358 : i32 = u_xlati31;
    let x_2360 : f32 = x_2300.x_AdditionalLightsAttenuation[x_2358].w;
    u_xlat86 = ((x_2353 * x_2356) + x_2360);
    let x_2362 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2362, 0.0f, 1.0f);
    let x_2364 : f32 = u_xlat86;
    let x_2365 : f32 = u_xlat86;
    u_xlat86 = (x_2364 * x_2365);
    let x_2367 : f32 = u_xlat84;
    let x_2368 : f32 = u_xlat86;
    u_xlat84 = (x_2367 * x_2368);
    let x_2372 : i32 = u_xlati31;
    let x_2374 : f32 = x_298.x_AdditionalShadowParams[x_2372].w;
    u_xlati86 = i32(x_2374);
    let x_2377 : i32 = u_xlati86;
    u_xlatb88 = (x_2377 >= 0i);
    let x_2379 : bool = u_xlatb88;
    if (x_2379) {
      let x_2383 : i32 = u_xlati31;
      let x_2385 : f32 = x_298.x_AdditionalShadowParams[x_2383].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2385, x_2385, x_2385, x_2385))));
      let x_2389 : bool = u_xlatb88;
      if (x_2389) {
        let x_2393 : vec4<f32> = u_xlat10;
        let x_2396 : vec4<f32> = u_xlat10;
        let x_2399 : vec4<bool> = (abs(vec4<f32>(x_2393.z, x_2393.z, x_2393.y, x_2393.z)) >= abs(vec4<f32>(x_2396.x, x_2396.y, x_2396.x, x_2396.x)));
        let x_2401 : vec3<bool> = vec3<bool>(x_2399.x, x_2399.y, x_2399.z);
        let x_2402 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2401.x, x_2401.y, x_2401.z, x_2402.w);
        let x_2405 : bool = u_xlatb11.y;
        let x_2407 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2405 & x_2407);
        let x_2409 : vec4<f32> = u_xlat10;
        let x_2412 : vec4<bool> = (-(vec4<f32>(x_2409.z, x_2409.y, x_2409.z, x_2409.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2413 : vec3<bool> = vec3<bool>(x_2412.x, x_2412.y, x_2412.w);
        let x_2414 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2413.x, x_2413.y, x_2414.z, x_2413.z);
        let x_2417 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2417);
        let x_2422 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2422);
        let x_2427 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2427);
        let x_2431 : bool = u_xlatb11.z;
        if (x_2431) {
          let x_2436 : f32 = u_xlat11.y;
          x_2432 = x_2436;
        } else {
          let x_2438 : f32 = u_xlat89;
          x_2432 = x_2438;
        }
        let x_2439 : f32 = x_2432;
        u_xlat37 = x_2439;
        let x_2441 : bool = u_xlatb88;
        if (x_2441) {
          let x_2446 : f32 = u_xlat11.x;
          x_2442 = x_2446;
        } else {
          let x_2448 : f32 = u_xlat37;
          x_2442 = x_2448;
        }
        let x_2449 : f32 = x_2442;
        u_xlat88 = x_2449;
        let x_2450 : i32 = u_xlati31;
        let x_2452 : f32 = x_298.x_AdditionalShadowParams[x_2450].w;
        u_xlat11.x = trunc(x_2452);
        let x_2455 : f32 = u_xlat88;
        let x_2457 : f32 = u_xlat11.x;
        u_xlat88 = (x_2455 + x_2457);
        let x_2459 : f32 = u_xlat88;
        u_xlati86 = i32(x_2459);
      }
      let x_2461 : i32 = u_xlati86;
      u_xlati86 = (x_2461 << bitcast<u32>(2i));
      let x_2463 : vec3<f32> = vs_INTERP7;
      let x_2466 : i32 = u_xlati86;
      let x_2469 : i32 = u_xlati86;
      let x_2473 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2466 + 1i) / 4i)][((x_2469 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2463.y, x_2463.y, x_2463.y, x_2463.y) * x_2473);
      let x_2475 : i32 = u_xlati86;
      let x_2477 : i32 = u_xlati86;
      let x_2480 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[(x_2475 / 4i)][(x_2477 % 4i)];
      let x_2481 : vec3<f32> = vs_INTERP7;
      let x_2484 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2480 * vec4<f32>(x_2481.x, x_2481.x, x_2481.x, x_2481.x)) + x_2484);
      let x_2486 : i32 = u_xlati86;
      let x_2489 : i32 = u_xlati86;
      let x_2493 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2486 + 2i) / 4i)][((x_2489 + 2i) % 4i)];
      let x_2494 : vec3<f32> = vs_INTERP7;
      let x_2497 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2493 * vec4<f32>(x_2494.z, x_2494.z, x_2494.z, x_2494.z)) + x_2497);
      let x_2499 : vec4<f32> = u_xlat11;
      let x_2500 : i32 = u_xlati86;
      let x_2503 : i32 = u_xlati86;
      let x_2507 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_2500 + 3i) / 4i)][((x_2503 + 3i) % 4i)];
      u_xlat11 = (x_2499 + x_2507);
      let x_2509 : vec4<f32> = u_xlat11;
      let x_2511 : vec4<f32> = u_xlat11;
      let x_2513 : vec3<f32> = (vec3<f32>(x_2509.x, x_2509.y, x_2509.z) / vec3<f32>(x_2511.w, x_2511.w, x_2511.w));
      let x_2514 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2513.x, x_2513.y, x_2513.z, x_2514.w);
      let x_2517 : i32 = u_xlati31;
      let x_2519 : f32 = x_298.x_AdditionalShadowParams[x_2517].y;
      u_xlatb86 = (0.0f < x_2519);
      let x_2521 : bool = u_xlatb86;
      if (x_2521) {
        let x_2524 : i32 = u_xlati31;
        let x_2526 : f32 = x_298.x_AdditionalShadowParams[x_2524].y;
        u_xlatb86 = (1.0f == x_2526);
        let x_2528 : bool = u_xlatb86;
        if (x_2528) {
          let x_2531 : vec4<f32> = u_xlat11;
          let x_2534 : vec4<f32> = x_298.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2531.x, x_2531.y, x_2531.x, x_2531.y) + x_2534);
          let x_2537 : vec4<f32> = u_xlat12;
          let x_2538 : vec2<f32> = vec2<f32>(x_2537.x, x_2537.y);
          let x_2540 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2538.x, x_2538.y, x_2540);
          let x_2548 : vec3<f32> = txVec30;
          let x_2550 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2548.xy, x_2548.z);
          u_xlat13.x = x_2550;
          let x_2553 : vec4<f32> = u_xlat12;
          let x_2554 : vec2<f32> = vec2<f32>(x_2553.z, x_2553.w);
          let x_2556 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2554.x, x_2554.y, x_2556);
          let x_2563 : vec3<f32> = txVec31;
          let x_2565 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2563.xy, x_2563.z);
          u_xlat13.y = x_2565;
          let x_2567 : vec4<f32> = u_xlat11;
          let x_2571 : vec4<f32> = x_298.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2567.x, x_2567.y, x_2567.x, x_2567.y) + x_2571);
          let x_2574 : vec4<f32> = u_xlat12;
          let x_2575 : vec2<f32> = vec2<f32>(x_2574.x, x_2574.y);
          let x_2577 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2575.x, x_2575.y, x_2577);
          let x_2584 : vec3<f32> = txVec32;
          let x_2586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2584.xy, x_2584.z);
          u_xlat13.z = x_2586;
          let x_2589 : vec4<f32> = u_xlat12;
          let x_2590 : vec2<f32> = vec2<f32>(x_2589.z, x_2589.w);
          let x_2592 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2590.x, x_2590.y, x_2592);
          let x_2599 : vec3<f32> = txVec33;
          let x_2601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2599.xy, x_2599.z);
          u_xlat13.w = x_2601;
          let x_2603 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2603, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2606 : i32 = u_xlati31;
          let x_2608 : f32 = x_298.x_AdditionalShadowParams[x_2606].y;
          u_xlatb88 = (2.0f == x_2608);
          let x_2610 : bool = u_xlatb88;
          if (x_2610) {
            let x_2613 : vec4<f32> = u_xlat11;
            let x_2617 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2620 : vec2<f32> = ((vec2<f32>(x_2613.x, x_2613.y) * vec2<f32>(x_2617.z, x_2617.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2621 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2620.x, x_2620.y, x_2621.z, x_2621.w);
            let x_2623 : vec4<f32> = u_xlat12;
            let x_2625 : vec2<f32> = floor(vec2<f32>(x_2623.x, x_2623.y));
            let x_2626 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2625.x, x_2625.y, x_2626.z, x_2626.w);
            let x_2629 : vec4<f32> = u_xlat11;
            let x_2632 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2635 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2629.x, x_2629.y) * vec2<f32>(x_2632.z, x_2632.w)) + -(vec2<f32>(x_2635.x, x_2635.y)));
            let x_2639 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2639.x, x_2639.x, x_2639.y, x_2639.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2642 : vec4<f32> = u_xlat13;
            let x_2644 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2642.x, x_2642.x, x_2642.z, x_2642.z) * vec4<f32>(x_2644.x, x_2644.x, x_2644.z, x_2644.z));
            let x_2647 : vec4<f32> = u_xlat14;
            let x_2649 : vec2<f32> = (vec2<f32>(x_2647.y, x_2647.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2650 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2649.x, x_2650.y, x_2649.y, x_2650.w);
            let x_2652 : vec4<f32> = u_xlat14;
            let x_2655 : vec2<f32> = u_xlat64;
            let x_2657 : vec2<f32> = ((vec2<f32>(x_2652.x, x_2652.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2655));
            let x_2658 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2657.x, x_2657.y, x_2658.z, x_2658.w);
            let x_2661 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2661) + vec2<f32>(1.0f, 1.0f));
            let x_2664 : vec2<f32> = u_xlat64;
            let x_2665 : vec2<f32> = min(x_2664, vec2<f32>(0.0f, 0.0f));
            let x_2666 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2665.x, x_2665.y, x_2666.z, x_2666.w);
            let x_2668 : vec4<f32> = u_xlat15;
            let x_2671 : vec4<f32> = u_xlat15;
            let x_2674 : vec2<f32> = u_xlat66;
            let x_2675 : vec2<f32> = ((-(vec2<f32>(x_2668.x, x_2668.y)) * vec2<f32>(x_2671.x, x_2671.y)) + x_2674);
            let x_2676 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2675.x, x_2675.y, x_2676.z, x_2676.w);
            let x_2678 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2678, vec2<f32>(0.0f, 0.0f));
            let x_2680 : vec2<f32> = u_xlat64;
            let x_2682 : vec2<f32> = u_xlat64;
            let x_2684 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2680) * x_2682) + vec2<f32>(x_2684.y, x_2684.w));
            let x_2687 : vec4<f32> = u_xlat15;
            let x_2689 : vec2<f32> = (vec2<f32>(x_2687.x, x_2687.y) + vec2<f32>(1.0f, 1.0f));
            let x_2690 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2689.x, x_2689.y, x_2690.z, x_2690.w);
            let x_2692 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2692 + vec2<f32>(1.0f, 1.0f));
            let x_2694 : vec4<f32> = u_xlat14;
            let x_2696 : vec2<f32> = (vec2<f32>(x_2694.x, x_2694.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2697 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2696.x, x_2696.y, x_2697.z, x_2697.w);
            let x_2699 : vec2<f32> = u_xlat66;
            let x_2700 : vec2<f32> = (x_2699 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2701 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2700.x, x_2700.y, x_2701.z, x_2701.w);
            let x_2703 : vec4<f32> = u_xlat15;
            let x_2705 : vec2<f32> = (vec2<f32>(x_2703.x, x_2703.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2706 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2705.x, x_2705.y, x_2706.z, x_2706.w);
            let x_2708 : vec2<f32> = u_xlat64;
            let x_2709 : vec2<f32> = (x_2708 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2710 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2709.x, x_2709.y, x_2710.z, x_2710.w);
            let x_2712 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2712.y, x_2712.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2716 : f32 = u_xlat15.x;
            u_xlat16.z = x_2716;
            let x_2719 : f32 = u_xlat64.x;
            u_xlat16.w = x_2719;
            let x_2722 : f32 = u_xlat17.x;
            u_xlat14.z = x_2722;
            let x_2725 : f32 = u_xlat13.x;
            u_xlat14.w = x_2725;
            let x_2727 : vec4<f32> = u_xlat14;
            let x_2729 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2727.z, x_2727.w, x_2727.x, x_2727.z) + vec4<f32>(x_2729.z, x_2729.w, x_2729.x, x_2729.z));
            let x_2733 : f32 = u_xlat16.y;
            u_xlat15.z = x_2733;
            let x_2736 : f32 = u_xlat64.y;
            u_xlat15.w = x_2736;
            let x_2739 : f32 = u_xlat14.y;
            u_xlat17.z = x_2739;
            let x_2742 : f32 = u_xlat13.z;
            u_xlat17.w = x_2742;
            let x_2744 : vec4<f32> = u_xlat15;
            let x_2746 : vec4<f32> = u_xlat17;
            let x_2748 : vec3<f32> = (vec3<f32>(x_2744.z, x_2744.y, x_2744.w) + vec3<f32>(x_2746.z, x_2746.y, x_2746.w));
            let x_2749 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2748.x, x_2748.y, x_2748.z, x_2749.w);
            let x_2751 : vec4<f32> = u_xlat14;
            let x_2753 : vec4<f32> = u_xlat18;
            let x_2755 : vec3<f32> = (vec3<f32>(x_2751.x, x_2751.z, x_2751.w) / vec3<f32>(x_2753.z, x_2753.w, x_2753.y));
            let x_2756 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2755.x, x_2755.y, x_2755.z, x_2756.w);
            let x_2758 : vec4<f32> = u_xlat14;
            let x_2760 : vec3<f32> = (vec3<f32>(x_2758.x, x_2758.y, x_2758.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2761 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
            let x_2763 : vec4<f32> = u_xlat17;
            let x_2765 : vec4<f32> = u_xlat13;
            let x_2767 : vec3<f32> = (vec3<f32>(x_2763.z, x_2763.y, x_2763.w) / vec3<f32>(x_2765.x, x_2765.y, x_2765.z));
            let x_2768 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2767.x, x_2767.y, x_2767.z, x_2768.w);
            let x_2770 : vec4<f32> = u_xlat15;
            let x_2772 : vec3<f32> = (vec3<f32>(x_2770.x, x_2770.y, x_2770.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2773 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2772.x, x_2772.y, x_2772.z, x_2773.w);
            let x_2775 : vec4<f32> = u_xlat14;
            let x_2778 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2780 : vec3<f32> = (vec3<f32>(x_2775.y, x_2775.x, x_2775.z) * vec3<f32>(x_2778.x, x_2778.x, x_2778.x));
            let x_2781 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2780.x, x_2780.y, x_2780.z, x_2781.w);
            let x_2783 : vec4<f32> = u_xlat15;
            let x_2786 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2788 : vec3<f32> = (vec3<f32>(x_2783.x, x_2783.y, x_2783.z) * vec3<f32>(x_2786.y, x_2786.y, x_2786.y));
            let x_2789 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2788.x, x_2788.y, x_2788.z, x_2789.w);
            let x_2792 : f32 = u_xlat15.x;
            u_xlat14.w = x_2792;
            let x_2794 : vec4<f32> = u_xlat12;
            let x_2797 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2800 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2794.x, x_2794.y, x_2794.x, x_2794.y) * vec4<f32>(x_2797.x, x_2797.y, x_2797.x, x_2797.y)) + vec4<f32>(x_2800.y, x_2800.w, x_2800.x, x_2800.w));
            let x_2803 : vec4<f32> = u_xlat12;
            let x_2806 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2809 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2803.x, x_2803.y) * vec2<f32>(x_2806.x, x_2806.y)) + vec2<f32>(x_2809.z, x_2809.w));
            let x_2813 : f32 = u_xlat14.y;
            u_xlat15.w = x_2813;
            let x_2815 : vec4<f32> = u_xlat15;
            let x_2816 : vec2<f32> = vec2<f32>(x_2815.y, x_2815.z);
            let x_2817 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2817.x, x_2816.x, x_2817.z, x_2816.y);
            let x_2819 : vec4<f32> = u_xlat12;
            let x_2822 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2825 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2819.x, x_2819.y, x_2819.x, x_2819.y) * vec4<f32>(x_2822.x, x_2822.y, x_2822.x, x_2822.y)) + vec4<f32>(x_2825.x, x_2825.y, x_2825.z, x_2825.y));
            let x_2828 : vec4<f32> = u_xlat12;
            let x_2831 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2834 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2828.x, x_2828.y, x_2828.x, x_2828.y) * vec4<f32>(x_2831.x, x_2831.y, x_2831.x, x_2831.y)) + vec4<f32>(x_2834.w, x_2834.y, x_2834.w, x_2834.z));
            let x_2837 : vec4<f32> = u_xlat12;
            let x_2840 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_2843 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2837.x, x_2837.y, x_2837.x, x_2837.y) * vec4<f32>(x_2840.x, x_2840.y, x_2840.x, x_2840.y)) + vec4<f32>(x_2843.x, x_2843.w, x_2843.z, x_2843.w));
            let x_2846 : vec4<f32> = u_xlat13;
            let x_2848 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2846.x, x_2846.x, x_2846.x, x_2846.y) * vec4<f32>(x_2848.z, x_2848.w, x_2848.y, x_2848.z));
            let x_2851 : vec4<f32> = u_xlat13;
            let x_2853 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2851.y, x_2851.y, x_2851.z, x_2851.z) * x_2853);
            let x_2856 : f32 = u_xlat13.z;
            let x_2858 : f32 = u_xlat18.y;
            u_xlat88 = (x_2856 * x_2858);
            let x_2861 : vec4<f32> = u_xlat16;
            let x_2862 : vec2<f32> = vec2<f32>(x_2861.x, x_2861.y);
            let x_2864 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2862.x, x_2862.y, x_2864);
            let x_2871 : vec3<f32> = txVec34;
            let x_2873 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2871.xy, x_2871.z);
            u_xlat89 = x_2873;
            let x_2875 : vec4<f32> = u_xlat16;
            let x_2876 : vec2<f32> = vec2<f32>(x_2875.z, x_2875.w);
            let x_2878 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2876.x, x_2876.y, x_2878);
            let x_2885 : vec3<f32> = txVec35;
            let x_2887 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2885.xy, x_2885.z);
            u_xlat12.x = x_2887;
            let x_2890 : f32 = u_xlat12.x;
            let x_2892 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2890 * x_2892);
            let x_2896 : f32 = u_xlat19.x;
            let x_2897 : f32 = u_xlat89;
            let x_2900 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2896 * x_2897) + x_2900);
            let x_2903 : vec2<f32> = u_xlat64;
            let x_2905 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2903.x, x_2903.y, x_2905);
            let x_2912 : vec3<f32> = txVec36;
            let x_2914 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2912.xy, x_2912.z);
            u_xlat12.x = x_2914;
            let x_2917 : f32 = u_xlat19.z;
            let x_2919 : f32 = u_xlat12.x;
            let x_2921 : f32 = u_xlat89;
            u_xlat89 = ((x_2917 * x_2919) + x_2921);
            let x_2924 : vec4<f32> = u_xlat15;
            let x_2925 : vec2<f32> = vec2<f32>(x_2924.x, x_2924.y);
            let x_2927 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2925.x, x_2925.y, x_2927);
            let x_2934 : vec3<f32> = txVec37;
            let x_2936 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2934.xy, x_2934.z);
            u_xlat12.x = x_2936;
            let x_2939 : f32 = u_xlat19.w;
            let x_2941 : f32 = u_xlat12.x;
            let x_2943 : f32 = u_xlat89;
            u_xlat89 = ((x_2939 * x_2941) + x_2943);
            let x_2946 : vec4<f32> = u_xlat17;
            let x_2947 : vec2<f32> = vec2<f32>(x_2946.x, x_2946.y);
            let x_2949 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
            let x_2956 : vec3<f32> = txVec38;
            let x_2958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
            u_xlat12.x = x_2958;
            let x_2961 : f32 = u_xlat20.x;
            let x_2963 : f32 = u_xlat12.x;
            let x_2965 : f32 = u_xlat89;
            u_xlat89 = ((x_2961 * x_2963) + x_2965);
            let x_2968 : vec4<f32> = u_xlat17;
            let x_2969 : vec2<f32> = vec2<f32>(x_2968.z, x_2968.w);
            let x_2971 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2969.x, x_2969.y, x_2971);
            let x_2978 : vec3<f32> = txVec39;
            let x_2980 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2978.xy, x_2978.z);
            u_xlat12.x = x_2980;
            let x_2983 : f32 = u_xlat20.y;
            let x_2985 : f32 = u_xlat12.x;
            let x_2987 : f32 = u_xlat89;
            u_xlat89 = ((x_2983 * x_2985) + x_2987);
            let x_2990 : vec4<f32> = u_xlat15;
            let x_2991 : vec2<f32> = vec2<f32>(x_2990.z, x_2990.w);
            let x_2993 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2991.x, x_2991.y, x_2993);
            let x_3000 : vec3<f32> = txVec40;
            let x_3002 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3000.xy, x_3000.z);
            u_xlat12.x = x_3002;
            let x_3005 : f32 = u_xlat20.z;
            let x_3007 : f32 = u_xlat12.x;
            let x_3009 : f32 = u_xlat89;
            u_xlat89 = ((x_3005 * x_3007) + x_3009);
            let x_3012 : vec4<f32> = u_xlat14;
            let x_3013 : vec2<f32> = vec2<f32>(x_3012.x, x_3012.y);
            let x_3015 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3013.x, x_3013.y, x_3015);
            let x_3022 : vec3<f32> = txVec41;
            let x_3024 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3022.xy, x_3022.z);
            u_xlat12.x = x_3024;
            let x_3027 : f32 = u_xlat20.w;
            let x_3029 : f32 = u_xlat12.x;
            let x_3031 : f32 = u_xlat89;
            u_xlat89 = ((x_3027 * x_3029) + x_3031);
            let x_3034 : vec4<f32> = u_xlat14;
            let x_3035 : vec2<f32> = vec2<f32>(x_3034.z, x_3034.w);
            let x_3037 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3035.x, x_3035.y, x_3037);
            let x_3044 : vec3<f32> = txVec42;
            let x_3046 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3044.xy, x_3044.z);
            u_xlat12.x = x_3046;
            let x_3048 : f32 = u_xlat88;
            let x_3050 : f32 = u_xlat12.x;
            let x_3052 : f32 = u_xlat89;
            u_xlat86 = ((x_3048 * x_3050) + x_3052);
          } else {
            let x_3055 : vec4<f32> = u_xlat11;
            let x_3058 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3061 : vec2<f32> = ((vec2<f32>(x_3055.x, x_3055.y) * vec2<f32>(x_3058.z, x_3058.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3062 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3061.x, x_3061.y, x_3062.z, x_3062.w);
            let x_3064 : vec4<f32> = u_xlat12;
            let x_3066 : vec2<f32> = floor(vec2<f32>(x_3064.x, x_3064.y));
            let x_3067 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3066.x, x_3066.y, x_3067.z, x_3067.w);
            let x_3069 : vec4<f32> = u_xlat11;
            let x_3072 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3075 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3069.x, x_3069.y) * vec2<f32>(x_3072.z, x_3072.w)) + -(vec2<f32>(x_3075.x, x_3075.y)));
            let x_3079 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3079.x, x_3079.x, x_3079.y, x_3079.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3082 : vec4<f32> = u_xlat13;
            let x_3084 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3082.x, x_3082.x, x_3082.z, x_3082.z) * vec4<f32>(x_3084.x, x_3084.x, x_3084.z, x_3084.z));
            let x_3087 : vec4<f32> = u_xlat14;
            let x_3089 : vec2<f32> = (vec2<f32>(x_3087.y, x_3087.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3090 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3090.x, x_3089.x, x_3090.z, x_3089.y);
            let x_3092 : vec4<f32> = u_xlat14;
            let x_3095 : vec2<f32> = u_xlat64;
            let x_3097 : vec2<f32> = ((vec2<f32>(x_3092.x, x_3092.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3095));
            let x_3098 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3097.x, x_3098.y, x_3097.y, x_3098.w);
            let x_3100 : vec2<f32> = u_xlat64;
            let x_3102 : vec2<f32> = (-(x_3100) + vec2<f32>(1.0f, 1.0f));
            let x_3103 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3102.x, x_3102.y, x_3103.z, x_3103.w);
            let x_3105 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3105, vec2<f32>(0.0f, 0.0f));
            let x_3107 : vec2<f32> = u_xlat66;
            let x_3109 : vec2<f32> = u_xlat66;
            let x_3111 : vec4<f32> = u_xlat14;
            let x_3113 : vec2<f32> = ((-(x_3107) * x_3109) + vec2<f32>(x_3111.x, x_3111.y));
            let x_3114 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3113.x, x_3113.y, x_3114.z, x_3114.w);
            let x_3116 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3116, vec2<f32>(0.0f, 0.0f));
            let x_3119 : vec2<f32> = u_xlat66;
            let x_3121 : vec2<f32> = u_xlat66;
            let x_3123 : vec4<f32> = u_xlat13;
            let x_3125 : vec2<f32> = ((-(x_3119) * x_3121) + vec2<f32>(x_3123.y, x_3123.w));
            let x_3126 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3125.x, x_3126.y, x_3125.y);
            let x_3128 : vec4<f32> = u_xlat14;
            let x_3130 : vec2<f32> = (vec2<f32>(x_3128.x, x_3128.y) + vec2<f32>(2.0f, 2.0f));
            let x_3131 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3130.x, x_3130.y, x_3131.z, x_3131.w);
            let x_3133 : vec3<f32> = u_xlat39;
            let x_3135 : vec2<f32> = (vec2<f32>(x_3133.x, x_3133.z) + vec2<f32>(2.0f, 2.0f));
            let x_3136 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3136.x, x_3135.x, x_3136.z, x_3135.y);
            let x_3139 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3139 * 0.08163200318813323975f);
            let x_3142 : vec4<f32> = u_xlat13;
            let x_3144 : vec3<f32> = (vec3<f32>(x_3142.z, x_3142.x, x_3142.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3145 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3144.x, x_3144.y, x_3144.z, x_3145.w);
            let x_3147 : vec4<f32> = u_xlat14;
            let x_3149 : vec2<f32> = (vec2<f32>(x_3147.x, x_3147.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3150 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3149.x, x_3149.y, x_3150.z, x_3150.w);
            let x_3153 : f32 = u_xlat17.y;
            u_xlat16.x = x_3153;
            let x_3155 : vec2<f32> = u_xlat64;
            let x_3158 : vec2<f32> = ((vec2<f32>(x_3155.x, x_3155.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3159 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3159.x, x_3158.x, x_3159.z, x_3158.y);
            let x_3161 : vec2<f32> = u_xlat64;
            let x_3164 : vec2<f32> = ((vec2<f32>(x_3161.x, x_3161.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3165 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3164.x, x_3165.y, x_3164.y, x_3165.w);
            let x_3168 : f32 = u_xlat13.x;
            u_xlat14.y = x_3168;
            let x_3171 : f32 = u_xlat15.y;
            u_xlat14.w = x_3171;
            let x_3173 : vec4<f32> = u_xlat14;
            let x_3174 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3173 + x_3174);
            let x_3176 : vec2<f32> = u_xlat64;
            let x_3179 : vec2<f32> = ((vec2<f32>(x_3176.y, x_3176.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3180 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3180.x, x_3179.x, x_3180.z, x_3179.y);
            let x_3182 : vec2<f32> = u_xlat64;
            let x_3185 : vec2<f32> = ((vec2<f32>(x_3182.y, x_3182.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3186 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3185.x, x_3186.y, x_3185.y, x_3186.w);
            let x_3189 : f32 = u_xlat13.y;
            u_xlat15.y = x_3189;
            let x_3191 : vec4<f32> = u_xlat15;
            let x_3192 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3191 + x_3192);
            let x_3194 : vec4<f32> = u_xlat14;
            let x_3195 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3194 / x_3195);
            let x_3197 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3197 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3199 : vec4<f32> = u_xlat15;
            let x_3200 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3199 / x_3200);
            let x_3202 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3202 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3204 : vec4<f32> = u_xlat14;
            let x_3207 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3204.w, x_3204.x, x_3204.y, x_3204.z) * vec4<f32>(x_3207.x, x_3207.x, x_3207.x, x_3207.x));
            let x_3210 : vec4<f32> = u_xlat15;
            let x_3213 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3210.x, x_3210.w, x_3210.y, x_3210.z) * vec4<f32>(x_3213.y, x_3213.y, x_3213.y, x_3213.y));
            let x_3216 : vec4<f32> = u_xlat14;
            let x_3217 : vec3<f32> = vec3<f32>(x_3216.y, x_3216.z, x_3216.w);
            let x_3218 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3217.x, x_3218.y, x_3217.y, x_3217.z);
            let x_3221 : f32 = u_xlat15.x;
            u_xlat17.y = x_3221;
            let x_3223 : vec4<f32> = u_xlat12;
            let x_3226 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3229 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3223.x, x_3223.y, x_3223.x, x_3223.y) * vec4<f32>(x_3226.x, x_3226.y, x_3226.x, x_3226.y)) + vec4<f32>(x_3229.x, x_3229.y, x_3229.z, x_3229.y));
            let x_3232 : vec4<f32> = u_xlat12;
            let x_3235 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3238 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3232.x, x_3232.y) * vec2<f32>(x_3235.x, x_3235.y)) + vec2<f32>(x_3238.w, x_3238.y));
            let x_3242 : f32 = u_xlat17.y;
            u_xlat14.y = x_3242;
            let x_3245 : f32 = u_xlat15.z;
            u_xlat17.y = x_3245;
            let x_3247 : vec4<f32> = u_xlat12;
            let x_3250 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3253 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3247.x, x_3247.y, x_3247.x, x_3247.y) * vec4<f32>(x_3250.x, x_3250.y, x_3250.x, x_3250.y)) + vec4<f32>(x_3253.x, x_3253.y, x_3253.z, x_3253.y));
            let x_3256 : vec4<f32> = u_xlat12;
            let x_3259 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3262 : vec4<f32> = u_xlat17;
            let x_3264 : vec2<f32> = ((vec2<f32>(x_3256.x, x_3256.y) * vec2<f32>(x_3259.x, x_3259.y)) + vec2<f32>(x_3262.w, x_3262.y));
            let x_3265 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3264.x, x_3264.y, x_3265.z, x_3265.w);
            let x_3268 : f32 = u_xlat17.y;
            u_xlat14.z = x_3268;
            let x_3270 : vec4<f32> = u_xlat12;
            let x_3273 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3276 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3270.x, x_3270.y, x_3270.x, x_3270.y) * vec4<f32>(x_3273.x, x_3273.y, x_3273.x, x_3273.y)) + vec4<f32>(x_3276.x, x_3276.y, x_3276.x, x_3276.z));
            let x_3280 : f32 = u_xlat15.w;
            u_xlat17.y = x_3280;
            let x_3283 : vec4<f32> = u_xlat12;
            let x_3286 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3289 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3283.x, x_3283.y, x_3283.x, x_3283.y) * vec4<f32>(x_3286.x, x_3286.y, x_3286.x, x_3286.y)) + vec4<f32>(x_3289.x, x_3289.y, x_3289.z, x_3289.y));
            let x_3293 : vec4<f32> = u_xlat12;
            let x_3296 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3299 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3293.x, x_3293.y) * vec2<f32>(x_3296.x, x_3296.y)) + vec2<f32>(x_3299.w, x_3299.y));
            let x_3303 : f32 = u_xlat17.y;
            u_xlat14.w = x_3303;
            let x_3306 : vec4<f32> = u_xlat12;
            let x_3309 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3312 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3306.x, x_3306.y) * vec2<f32>(x_3309.x, x_3309.y)) + vec2<f32>(x_3312.x, x_3312.w));
            let x_3315 : vec4<f32> = u_xlat17;
            let x_3316 : vec3<f32> = vec3<f32>(x_3315.x, x_3315.z, x_3315.w);
            let x_3317 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3316.x, x_3317.y, x_3316.y, x_3316.z);
            let x_3319 : vec4<f32> = u_xlat12;
            let x_3322 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3325 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3319.x, x_3319.y, x_3319.x, x_3319.y) * vec4<f32>(x_3322.x, x_3322.y, x_3322.x, x_3322.y)) + vec4<f32>(x_3325.x, x_3325.y, x_3325.z, x_3325.y));
            let x_3329 : vec4<f32> = u_xlat12;
            let x_3332 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3335 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3329.x, x_3329.y) * vec2<f32>(x_3332.x, x_3332.y)) + vec2<f32>(x_3335.w, x_3335.y));
            let x_3339 : f32 = u_xlat14.x;
            u_xlat15.x = x_3339;
            let x_3341 : vec4<f32> = u_xlat12;
            let x_3344 : vec4<f32> = x_298.x_AdditionalShadowmapSize;
            let x_3347 : vec4<f32> = u_xlat15;
            let x_3349 : vec2<f32> = ((vec2<f32>(x_3341.x, x_3341.y) * vec2<f32>(x_3344.x, x_3344.y)) + vec2<f32>(x_3347.x, x_3347.y));
            let x_3350 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3349.x, x_3349.y, x_3350.z, x_3350.w);
            let x_3353 : vec4<f32> = u_xlat13;
            let x_3355 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3353.x, x_3353.x, x_3353.x, x_3353.x) * x_3355);
            let x_3358 : vec4<f32> = u_xlat13;
            let x_3360 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3358.y, x_3358.y, x_3358.y, x_3358.y) * x_3360);
            let x_3363 : vec4<f32> = u_xlat13;
            let x_3365 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3363.z, x_3363.z, x_3363.z, x_3363.z) * x_3365);
            let x_3367 : vec4<f32> = u_xlat13;
            let x_3369 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3367.w, x_3367.w, x_3367.w, x_3367.w) * x_3369);
            let x_3372 : vec4<f32> = u_xlat18;
            let x_3373 : vec2<f32> = vec2<f32>(x_3372.x, x_3372.y);
            let x_3375 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3373.x, x_3373.y, x_3375);
            let x_3382 : vec3<f32> = txVec43;
            let x_3384 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3382.xy, x_3382.z);
            u_xlat88 = x_3384;
            let x_3386 : vec4<f32> = u_xlat18;
            let x_3387 : vec2<f32> = vec2<f32>(x_3386.z, x_3386.w);
            let x_3389 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3387.x, x_3387.y, x_3389);
            let x_3396 : vec3<f32> = txVec44;
            let x_3398 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3396.xy, x_3396.z);
            u_xlat89 = x_3398;
            let x_3399 : f32 = u_xlat89;
            let x_3401 : f32 = u_xlat23.y;
            u_xlat89 = (x_3399 * x_3401);
            let x_3404 : f32 = u_xlat23.x;
            let x_3405 : f32 = u_xlat88;
            let x_3407 : f32 = u_xlat89;
            u_xlat88 = ((x_3404 * x_3405) + x_3407);
            let x_3410 : vec2<f32> = u_xlat64;
            let x_3412 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3410.x, x_3410.y, x_3412);
            let x_3419 : vec3<f32> = txVec45;
            let x_3421 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3419.xy, x_3419.z);
            u_xlat89 = x_3421;
            let x_3423 : f32 = u_xlat23.z;
            let x_3424 : f32 = u_xlat89;
            let x_3426 : f32 = u_xlat88;
            u_xlat88 = ((x_3423 * x_3424) + x_3426);
            let x_3429 : vec4<f32> = u_xlat21;
            let x_3430 : vec2<f32> = vec2<f32>(x_3429.x, x_3429.y);
            let x_3432 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3430.x, x_3430.y, x_3432);
            let x_3439 : vec3<f32> = txVec46;
            let x_3441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3439.xy, x_3439.z);
            u_xlat89 = x_3441;
            let x_3443 : f32 = u_xlat23.w;
            let x_3444 : f32 = u_xlat89;
            let x_3446 : f32 = u_xlat88;
            u_xlat88 = ((x_3443 * x_3444) + x_3446);
            let x_3449 : vec4<f32> = u_xlat19;
            let x_3450 : vec2<f32> = vec2<f32>(x_3449.x, x_3449.y);
            let x_3452 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3450.x, x_3450.y, x_3452);
            let x_3459 : vec3<f32> = txVec47;
            let x_3461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3459.xy, x_3459.z);
            u_xlat89 = x_3461;
            let x_3463 : f32 = u_xlat24.x;
            let x_3464 : f32 = u_xlat89;
            let x_3466 : f32 = u_xlat88;
            u_xlat88 = ((x_3463 * x_3464) + x_3466);
            let x_3469 : vec4<f32> = u_xlat19;
            let x_3470 : vec2<f32> = vec2<f32>(x_3469.z, x_3469.w);
            let x_3472 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3470.x, x_3470.y, x_3472);
            let x_3479 : vec3<f32> = txVec48;
            let x_3481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3479.xy, x_3479.z);
            u_xlat89 = x_3481;
            let x_3483 : f32 = u_xlat24.y;
            let x_3484 : f32 = u_xlat89;
            let x_3486 : f32 = u_xlat88;
            u_xlat88 = ((x_3483 * x_3484) + x_3486);
            let x_3489 : vec4<f32> = u_xlat20;
            let x_3490 : vec2<f32> = vec2<f32>(x_3489.x, x_3489.y);
            let x_3492 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3490.x, x_3490.y, x_3492);
            let x_3499 : vec3<f32> = txVec49;
            let x_3501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3499.xy, x_3499.z);
            u_xlat89 = x_3501;
            let x_3503 : f32 = u_xlat24.z;
            let x_3504 : f32 = u_xlat89;
            let x_3506 : f32 = u_xlat88;
            u_xlat88 = ((x_3503 * x_3504) + x_3506);
            let x_3509 : vec4<f32> = u_xlat21;
            let x_3510 : vec2<f32> = vec2<f32>(x_3509.z, x_3509.w);
            let x_3512 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3510.x, x_3510.y, x_3512);
            let x_3519 : vec3<f32> = txVec50;
            let x_3521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3519.xy, x_3519.z);
            u_xlat89 = x_3521;
            let x_3523 : f32 = u_xlat24.w;
            let x_3524 : f32 = u_xlat89;
            let x_3526 : f32 = u_xlat88;
            u_xlat88 = ((x_3523 * x_3524) + x_3526);
            let x_3529 : vec4<f32> = u_xlat22;
            let x_3530 : vec2<f32> = vec2<f32>(x_3529.x, x_3529.y);
            let x_3532 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3530.x, x_3530.y, x_3532);
            let x_3539 : vec3<f32> = txVec51;
            let x_3541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3539.xy, x_3539.z);
            u_xlat89 = x_3541;
            let x_3543 : f32 = u_xlat25.x;
            let x_3544 : f32 = u_xlat89;
            let x_3546 : f32 = u_xlat88;
            u_xlat88 = ((x_3543 * x_3544) + x_3546);
            let x_3549 : vec4<f32> = u_xlat22;
            let x_3550 : vec2<f32> = vec2<f32>(x_3549.z, x_3549.w);
            let x_3552 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3550.x, x_3550.y, x_3552);
            let x_3559 : vec3<f32> = txVec52;
            let x_3561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3559.xy, x_3559.z);
            u_xlat89 = x_3561;
            let x_3563 : f32 = u_xlat25.y;
            let x_3564 : f32 = u_xlat89;
            let x_3566 : f32 = u_xlat88;
            u_xlat88 = ((x_3563 * x_3564) + x_3566);
            let x_3569 : vec2<f32> = u_xlat40;
            let x_3571 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3569.x, x_3569.y, x_3571);
            let x_3578 : vec3<f32> = txVec53;
            let x_3580 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3578.xy, x_3578.z);
            u_xlat89 = x_3580;
            let x_3582 : f32 = u_xlat25.z;
            let x_3583 : f32 = u_xlat89;
            let x_3585 : f32 = u_xlat88;
            u_xlat88 = ((x_3582 * x_3583) + x_3585);
            let x_3588 : vec2<f32> = u_xlat72;
            let x_3590 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3588.x, x_3588.y, x_3590);
            let x_3597 : vec3<f32> = txVec54;
            let x_3599 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3597.xy, x_3597.z);
            u_xlat89 = x_3599;
            let x_3601 : f32 = u_xlat25.w;
            let x_3602 : f32 = u_xlat89;
            let x_3604 : f32 = u_xlat88;
            u_xlat88 = ((x_3601 * x_3602) + x_3604);
            let x_3607 : vec4<f32> = u_xlat17;
            let x_3608 : vec2<f32> = vec2<f32>(x_3607.x, x_3607.y);
            let x_3610 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3608.x, x_3608.y, x_3610);
            let x_3617 : vec3<f32> = txVec55;
            let x_3619 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3617.xy, x_3617.z);
            u_xlat89 = x_3619;
            let x_3621 : f32 = u_xlat13.x;
            let x_3622 : f32 = u_xlat89;
            let x_3624 : f32 = u_xlat88;
            u_xlat88 = ((x_3621 * x_3622) + x_3624);
            let x_3627 : vec4<f32> = u_xlat17;
            let x_3628 : vec2<f32> = vec2<f32>(x_3627.z, x_3627.w);
            let x_3630 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3628.x, x_3628.y, x_3630);
            let x_3637 : vec3<f32> = txVec56;
            let x_3639 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3637.xy, x_3637.z);
            u_xlat89 = x_3639;
            let x_3641 : f32 = u_xlat13.y;
            let x_3642 : f32 = u_xlat89;
            let x_3644 : f32 = u_xlat88;
            u_xlat88 = ((x_3641 * x_3642) + x_3644);
            let x_3647 : vec2<f32> = u_xlat67;
            let x_3649 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3647.x, x_3647.y, x_3649);
            let x_3656 : vec3<f32> = txVec57;
            let x_3658 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3656.xy, x_3656.z);
            u_xlat89 = x_3658;
            let x_3660 : f32 = u_xlat13.z;
            let x_3661 : f32 = u_xlat89;
            let x_3663 : f32 = u_xlat88;
            u_xlat88 = ((x_3660 * x_3661) + x_3663);
            let x_3666 : vec4<f32> = u_xlat12;
            let x_3667 : vec2<f32> = vec2<f32>(x_3666.x, x_3666.y);
            let x_3669 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3667.x, x_3667.y, x_3669);
            let x_3676 : vec3<f32> = txVec58;
            let x_3678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3676.xy, x_3676.z);
            u_xlat89 = x_3678;
            let x_3680 : f32 = u_xlat13.w;
            let x_3681 : f32 = u_xlat89;
            let x_3683 : f32 = u_xlat88;
            u_xlat86 = ((x_3680 * x_3681) + x_3683);
          }
        }
      } else {
        let x_3687 : vec4<f32> = u_xlat11;
        let x_3688 : vec2<f32> = vec2<f32>(x_3687.x, x_3687.y);
        let x_3690 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3688.x, x_3688.y, x_3690);
        let x_3697 : vec3<f32> = txVec59;
        let x_3699 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3697.xy, x_3697.z);
        u_xlat86 = x_3699;
      }
      let x_3700 : i32 = u_xlati31;
      let x_3702 : f32 = x_298.x_AdditionalShadowParams[x_3700].x;
      u_xlat88 = (1.0f + -(x_3702));
      let x_3705 : f32 = u_xlat86;
      let x_3706 : i32 = u_xlati31;
      let x_3708 : f32 = x_298.x_AdditionalShadowParams[x_3706].x;
      let x_3710 : f32 = u_xlat88;
      u_xlat86 = ((x_3705 * x_3708) + x_3710);
      let x_3713 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3713);
      let x_3716 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3716 >= 1.0f);
      let x_3719 : bool = u_xlatb88;
      let x_3721 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3719 | x_3721);
      let x_3723 : bool = u_xlatb88;
      let x_3724 : f32 = u_xlat86;
      u_xlat86 = select(x_3724, 1.0f, x_3723);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3727 : f32 = u_xlat86;
    u_xlat88 = (-(x_3727) + 1.0f);
    let x_3731 : f32 = u_xlat3.x;
    let x_3732 : f32 = u_xlat88;
    let x_3734 : f32 = u_xlat86;
    u_xlat86 = ((x_3731 * x_3732) + x_3734);
    let x_3736 : f32 = u_xlat84;
    let x_3737 : f32 = u_xlat86;
    u_xlat84 = (x_3736 * x_3737);
    let x_3739 : vec4<f32> = u_xlat4;
    let x_3741 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_3739.x, x_3739.y, x_3739.z), vec3<f32>(x_3741.x, x_3741.y, x_3741.z));
    let x_3744 : f32 = u_xlat86;
    u_xlat86 = clamp(x_3744, 0.0f, 1.0f);
    let x_3746 : f32 = u_xlat84;
    let x_3747 : f32 = u_xlat86;
    u_xlat84 = (x_3746 * x_3747);
    let x_3749 : f32 = u_xlat84;
    let x_3751 : i32 = u_xlati31;
    let x_3753 : vec4<f32> = x_2300.x_AdditionalLightsColor[x_3751];
    let x_3755 : vec3<f32> = (vec3<f32>(x_3749, x_3749, x_3749) * vec3<f32>(x_3753.x, x_3753.y, x_3753.z));
    let x_3756 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3755.x, x_3755.y, x_3755.z, x_3756.w);
    let x_3758 : vec3<f32> = u_xlat35;
    let x_3759 : f32 = u_xlat85;
    let x_3762 : vec4<f32> = u_xlat1;
    u_xlat35 = ((x_3758 * vec3<f32>(x_3759, x_3759, x_3759)) + vec3<f32>(x_3762.x, x_3762.y, x_3762.w));
    let x_3765 : vec3<f32> = u_xlat35;
    let x_3766 : vec3<f32> = u_xlat35;
    u_xlat31.x = dot(x_3765, x_3766);
    let x_3770 : f32 = u_xlat31.x;
    u_xlat31.x = max(x_3770, 1.17549435e-38f);
    let x_3774 : f32 = u_xlat31.x;
    u_xlat31.x = inverseSqrt(x_3774);
    let x_3777 : vec3<f32> = u_xlat31;
    let x_3779 : vec3<f32> = u_xlat35;
    u_xlat35 = (vec3<f32>(x_3777.x, x_3777.x, x_3777.x) * x_3779);
    let x_3781 : vec4<f32> = u_xlat4;
    let x_3783 : vec3<f32> = u_xlat35;
    u_xlat31.x = dot(vec3<f32>(x_3781.x, x_3781.y, x_3781.z), x_3783);
    let x_3787 : f32 = u_xlat31.x;
    u_xlat31.x = clamp(x_3787, 0.0f, 1.0f);
    let x_3790 : vec4<f32> = u_xlat10;
    let x_3792 : vec3<f32> = u_xlat35;
    u_xlat84 = dot(vec3<f32>(x_3790.x, x_3790.y, x_3790.z), x_3792);
    let x_3794 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3794, 0.0f, 1.0f);
    let x_3797 : f32 = u_xlat31.x;
    let x_3799 : f32 = u_xlat31.x;
    u_xlat31.x = (x_3797 * x_3799);
    let x_3803 : f32 = u_xlat31.x;
    let x_3805 : f32 = u_xlat9.x;
    u_xlat31.x = ((x_3803 * x_3805) + 1.00001001358032226562f);
    let x_3809 : f32 = u_xlat84;
    let x_3810 : f32 = u_xlat84;
    u_xlat84 = (x_3809 * x_3810);
    let x_3813 : f32 = u_xlat31.x;
    let x_3815 : f32 = u_xlat31.x;
    u_xlat31.x = (x_3813 * x_3815);
    let x_3818 : f32 = u_xlat84;
    u_xlat84 = max(x_3818, 0.10000000149011611938f);
    let x_3821 : f32 = u_xlat31.x;
    let x_3822 : f32 = u_xlat84;
    u_xlat31.x = (x_3821 * x_3822);
    let x_3825 : f32 = u_xlat81;
    let x_3827 : f32 = u_xlat31.x;
    u_xlat31.x = (x_3825 * x_3827);
    let x_3830 : f32 = u_xlat82;
    let x_3832 : f32 = u_xlat31.x;
    u_xlat31.x = (x_3830 / x_3832);
    let x_3835 : vec3<f32> = u_xlat0;
    let x_3836 : vec3<f32> = u_xlat31;
    let x_3839 : vec4<f32> = u_xlat7;
    u_xlat35 = ((x_3835 * vec3<f32>(x_3836.x, x_3836.x, x_3836.x)) + vec3<f32>(x_3839.x, x_3839.y, x_3839.z));
    let x_3842 : vec3<f32> = u_xlat35;
    let x_3843 : vec4<f32> = u_xlat11;
    let x_3846 : vec4<f32> = u_xlat8;
    let x_3848 : vec3<f32> = ((x_3842 * vec3<f32>(x_3843.x, x_3843.y, x_3843.z)) + vec3<f32>(x_3846.x, x_3846.y, x_3846.z));
    let x_3849 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3848.x, x_3848.y, x_3848.z, x_3849.w);

    continuing {
      let x_3851 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3851 + bitcast<u32>(1i));
    }
  }
  let x_3853 : vec4<f32> = u_xlat6;
  let x_3855 : f32 = u_xlat55;
  let x_3858 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_3853.x, x_3853.y, x_3853.z) * vec3<f32>(x_3855, x_3855, x_3855)) + vec3<f32>(x_3858.x, x_3858.z, x_3858.w));
  let x_3861 : vec4<f32> = u_xlat8;
  let x_3863 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_3861.x, x_3861.y, x_3861.z) + x_3863);
  let x_3865 : vec4<f32> = u_xlat2;
  let x_3867 : f32 = u_xlat53;
  let x_3870 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3865.x, x_3865.y, x_3865.z) * vec3<f32>(x_3867, x_3867, x_3867)) + x_3870);
  let x_3872 : f32 = u_xlat78;
  let x_3873 : f32 = u_xlat78;
  u_xlat78 = (x_3872 * -(x_3873));
  let x_3876 : f32 = u_xlat78;
  u_xlat78 = exp2(x_3876);
  let x_3878 : vec3<f32> = u_xlat0;
  let x_3880 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_3878 + -(vec3<f32>(x_3880.x, x_3880.y, x_3880.z)));
  let x_3886 : f32 = u_xlat78;
  let x_3888 : vec3<f32> = u_xlat0;
  let x_3891 : vec4<f32> = x_29.unity_FogColor;
  let x_3893 : vec3<f32> = ((vec3<f32>(x_3886, x_3886, x_3886) * x_3888) + vec3<f32>(x_3891.x, x_3891.y, x_3891.z));
  let x_3894 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3893.x, x_3893.y, x_3893.z, x_3894.w);
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



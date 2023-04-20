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

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat81 : f32;

var<private> u_xlat29 : f32;

var<private> u_xlat82 : f32;

var<private> u_xlat55 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(3) var<uniform> x_483 : LightShadows;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb84 : bool;

var<private> u_xlat59 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat84 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : vec3<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat35 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat62 : vec2<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlatb7 : bool;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu80 : u32;

var<private> u_xlatu83 : u32;

var<private> u_xlati84 : i32;

var<private> u_xlati83 : i32;

@group(1) @binding(1) var<uniform> x_2123 : AdditionalLights;

var<private> u_xlat87 : f32;

var<private> u_xlati87 : i32;

var<private> u_xlatb88 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat89 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat88 : f32;

var<private> u_xlatb87 : bool;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu81 : u32;

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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2264 : f32;
  var x_2274 : f32;
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
    let x_285 : vec3<f32> = u_xlat5;
    x_279 = x_285;
  }
  let x_286 : vec3<f32> = x_279;
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_287.z, x_286.z);
  let x_290 : f32 = vs_INTERP7.y;
  let x_292 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat78 = (x_290 * x_292);
  let x_295 : f32 = x_29.unity_MatrixV[0i].z;
  let x_297 : f32 = vs_INTERP7.x;
  let x_299 : f32 = u_xlat78;
  u_xlat78 = ((x_295 * x_297) + x_299);
  let x_302 : f32 = x_29.unity_MatrixV[2i].z;
  let x_304 : f32 = vs_INTERP7.z;
  let x_306 : f32 = u_xlat78;
  u_xlat78 = ((x_302 * x_304) + x_306);
  let x_308 : f32 = u_xlat78;
  let x_310 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat78 = (x_308 + x_310);
  let x_312 : f32 = u_xlat78;
  let x_316 : f32 = x_29.x_ProjectionParams.y;
  u_xlat78 = (-(x_312) + -(x_316));
  let x_319 : f32 = u_xlat78;
  u_xlat78 = max(x_319, 0.0f);
  let x_321 : f32 = u_xlat78;
  let x_324 : f32 = x_29.unity_FogParams.x;
  u_xlat78 = (x_321 * x_324);
  u_xlat4.w = 1.0f;
  let x_329 : vec4<f32> = x_107.unity_SHAr;
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_329, x_330);
  let x_335 : vec4<f32> = x_107.unity_SHAg;
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_335, x_336);
  let x_341 : vec4<f32> = x_107.unity_SHAb;
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_341, x_342);
  let x_346 : vec4<f32> = u_xlat4;
  let x_348 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_346.y, x_346.z, x_346.z, x_346.x) * vec4<f32>(x_348.x, x_348.y, x_348.z, x_348.z));
  let x_354 : vec4<f32> = x_107.unity_SHBr;
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_354, x_355);
  let x_360 : vec4<f32> = x_107.unity_SHBg;
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_360, x_361);
  let x_366 : vec4<f32> = x_107.unity_SHBb;
  let x_367 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_366, x_367);
  let x_371 : f32 = u_xlat4.y;
  let x_373 : f32 = u_xlat4.y;
  u_xlat80 = (x_371 * x_373);
  let x_376 : f32 = u_xlat4.x;
  let x_378 : f32 = u_xlat4.x;
  let x_380 : f32 = u_xlat80;
  u_xlat80 = ((x_376 * x_378) + -(x_380));
  let x_385 : vec4<f32> = x_107.unity_SHC;
  let x_387 : f32 = u_xlat80;
  let x_390 : vec4<f32> = u_xlat7;
  let x_392 : vec3<f32> = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387, x_387, x_387)) + vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : vec3<f32> = u_xlat5;
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_395 + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_399, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_402 : vec3<f32> = u_xlat3;
  let x_403 : vec2<f32> = vec2<f32>(x_402.x, x_402.y);
  let x_404 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_403.x, x_403.y, x_404.z);
  let x_406 : vec3<f32> = u_xlat3;
  let x_410 : vec2<f32> = clamp(vec2<f32>(x_406.x, x_406.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_411 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_410.x, x_410.y, x_411.z);
  let x_414 : f32 = u_xlat3.x;
  u_xlat80 = ((-(x_414) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_420 : f32 = u_xlat80;
  let x_423 : f32 = u_xlat3.y;
  u_xlat81 = (-(x_420) + x_423);
  let x_425 : vec3<f32> = u_xlat0;
  let x_426 : f32 = u_xlat80;
  let x_428 : vec3<f32> = (x_425 * vec3<f32>(x_426, x_426, x_426));
  let x_429 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_431 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_435 : vec3<f32> = u_xlat3;
  let x_437 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_435.x, x_435.x, x_435.x) * x_437) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_443 : f32 = u_xlat3.y;
  u_xlat80 = (-(x_443) + 1.0f);
  let x_446 : f32 = u_xlat80;
  let x_447 : f32 = u_xlat80;
  u_xlat3.x = (x_446 * x_447);
  let x_451 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_451, 0.0078125f);
  let x_457 : f32 = u_xlat3.x;
  let x_459 : f32 = u_xlat3.x;
  u_xlat29 = (x_457 * x_459);
  let x_461 : f32 = u_xlat81;
  u_xlat81 = (x_461 + 1.0f);
  let x_463 : f32 = u_xlat81;
  u_xlat81 = min(x_463, 1.0f);
  let x_467 : f32 = u_xlat3.x;
  u_xlat82 = ((x_467 * 4.0f) + 2.0f);
  let x_473 : f32 = u_xlat3.z;
  u_xlat55 = min(x_473, 1.0f);
  let x_486 : f32 = x_483.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_486);
  let x_488 : bool = u_xlatb83;
  if (x_488) {
    let x_492 : f32 = x_483.x_MainLightShadowParams.y;
    u_xlatb83 = (x_492 == 1.0f);
    let x_494 : bool = u_xlatb83;
    if (x_494) {
      let x_498 : vec4<f32> = vs_INTERP3;
      let x_501 : vec4<f32> = x_483.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_498.x, x_498.y, x_498.x, x_498.y) + x_501);
      let x_504 : vec4<f32> = u_xlat7;
      let x_505 : vec2<f32> = vec2<f32>(x_504.x, x_504.y);
      let x_507 : f32 = vs_INTERP3.z;
      txVec0 = vec3<f32>(x_505.x, x_505.y, x_507);
      let x_520 : vec3<f32> = txVec0;
      let x_522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_520.xy, x_520.z);
      u_xlat8.x = x_522;
      let x_525 : vec4<f32> = u_xlat7;
      let x_526 : vec2<f32> = vec2<f32>(x_525.z, x_525.w);
      let x_528 : f32 = vs_INTERP3.z;
      txVec1 = vec3<f32>(x_526.x, x_526.y, x_528);
      let x_535 : vec3<f32> = txVec1;
      let x_537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_535.xy, x_535.z);
      u_xlat8.y = x_537;
      let x_539 : vec4<f32> = vs_INTERP3;
      let x_542 : vec4<f32> = x_483.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_539.x, x_539.y, x_539.x, x_539.y) + x_542);
      let x_545 : vec4<f32> = u_xlat7;
      let x_546 : vec2<f32> = vec2<f32>(x_545.x, x_545.y);
      let x_548 : f32 = vs_INTERP3.z;
      txVec2 = vec3<f32>(x_546.x, x_546.y, x_548);
      let x_555 : vec3<f32> = txVec2;
      let x_557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_555.xy, x_555.z);
      u_xlat8.z = x_557;
      let x_560 : vec4<f32> = u_xlat7;
      let x_561 : vec2<f32> = vec2<f32>(x_560.z, x_560.w);
      let x_563 : f32 = vs_INTERP3.z;
      txVec3 = vec3<f32>(x_561.x, x_561.y, x_563);
      let x_570 : vec3<f32> = txVec3;
      let x_572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_570.xy, x_570.z);
      u_xlat8.w = x_572;
      let x_575 : vec4<f32> = u_xlat8;
      u_xlat83 = dot(x_575, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_582 : f32 = x_483.x_MainLightShadowParams.y;
      u_xlatb84 = (x_582 == 2.0f);
      let x_584 : bool = u_xlatb84;
      if (x_584) {
        let x_587 : vec4<f32> = vs_INTERP3;
        let x_590 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_595 : vec2<f32> = ((vec2<f32>(x_587.x, x_587.y) * vec2<f32>(x_590.z, x_590.w)) + vec2<f32>(0.5f, 0.5f));
        let x_596 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_596.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat7;
        let x_600 : vec2<f32> = floor(vec2<f32>(x_598.x, x_598.y));
        let x_601 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
        let x_605 : vec4<f32> = vs_INTERP3;
        let x_608 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_611 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_605.x, x_605.y) * vec2<f32>(x_608.z, x_608.w)) + -(vec2<f32>(x_611.x, x_611.y)));
        let x_615 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_615.x, x_615.x, x_615.y, x_615.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_620 : vec4<f32> = u_xlat8;
        let x_622 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_620.x, x_620.x, x_620.z, x_620.z) * vec4<f32>(x_622.x, x_622.x, x_622.z, x_622.z));
        let x_625 : vec4<f32> = u_xlat9;
        let x_629 : vec2<f32> = (vec2<f32>(x_625.y, x_625.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_630 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_629.x, x_630.y, x_629.y, x_630.w);
        let x_632 : vec4<f32> = u_xlat9;
        let x_635 : vec2<f32> = u_xlat59;
        let x_637 : vec2<f32> = ((vec2<f32>(x_632.x, x_632.z) * vec2<f32>(0.5f, 0.5f)) + -(x_635));
        let x_638 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_641 : vec2<f32> = u_xlat59;
        u_xlat61 = (-(x_641) + vec2<f32>(1.0f, 1.0f));
        let x_646 : vec2<f32> = u_xlat59;
        let x_648 : vec2<f32> = min(x_646, vec2<f32>(0.0f, 0.0f));
        let x_649 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_651 : vec4<f32> = u_xlat10;
        let x_654 : vec4<f32> = u_xlat10;
        let x_657 : vec2<f32> = u_xlat61;
        let x_658 : vec2<f32> = ((-(vec2<f32>(x_651.x, x_651.y)) * vec2<f32>(x_654.x, x_654.y)) + x_657);
        let x_659 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
        let x_661 : vec2<f32> = u_xlat59;
        u_xlat59 = max(x_661, vec2<f32>(0.0f, 0.0f));
        let x_663 : vec2<f32> = u_xlat59;
        let x_665 : vec2<f32> = u_xlat59;
        let x_667 : vec4<f32> = u_xlat8;
        u_xlat59 = ((-(x_663) * x_665) + vec2<f32>(x_667.y, x_667.w));
        let x_670 : vec4<f32> = u_xlat10;
        let x_672 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) + vec2<f32>(1.0f, 1.0f));
        let x_673 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_675 : vec2<f32> = u_xlat59;
        u_xlat59 = (x_675 + vec2<f32>(1.0f, 1.0f));
        let x_678 : vec4<f32> = u_xlat9;
        let x_682 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_683 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
        let x_685 : vec2<f32> = u_xlat61;
        let x_686 : vec2<f32> = (x_685 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_687 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_686.x, x_686.y, x_687.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat10;
        let x_691 : vec2<f32> = (vec2<f32>(x_689.x, x_689.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_692 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_695 : vec2<f32> = u_xlat59;
        let x_696 : vec2<f32> = (x_695 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_697 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_696.x, x_696.y, x_697.z, x_697.w);
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat59 = (vec2<f32>(x_699.y, x_699.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_703 : f32 = u_xlat10.x;
        u_xlat11.z = x_703;
        let x_706 : f32 = u_xlat59.x;
        u_xlat11.w = x_706;
        let x_709 : f32 = u_xlat12.x;
        u_xlat9.z = x_709;
        let x_712 : f32 = u_xlat8.x;
        u_xlat9.w = x_712;
        let x_715 : vec4<f32> = u_xlat9;
        let x_717 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_715.z, x_715.w, x_715.x, x_715.z) + vec4<f32>(x_717.z, x_717.w, x_717.x, x_717.z));
        let x_721 : f32 = u_xlat11.y;
        u_xlat10.z = x_721;
        let x_724 : f32 = u_xlat59.y;
        u_xlat10.w = x_724;
        let x_727 : f32 = u_xlat9.y;
        u_xlat12.z = x_727;
        let x_730 : f32 = u_xlat8.z;
        u_xlat12.w = x_730;
        let x_732 : vec4<f32> = u_xlat10;
        let x_734 : vec4<f32> = u_xlat12;
        let x_736 : vec3<f32> = (vec3<f32>(x_732.z, x_732.y, x_732.w) + vec3<f32>(x_734.z, x_734.y, x_734.w));
        let x_737 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat9;
        let x_741 : vec4<f32> = u_xlat13;
        let x_743 : vec3<f32> = (vec3<f32>(x_739.x, x_739.z, x_739.w) / vec3<f32>(x_741.z, x_741.w, x_741.y));
        let x_744 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
        let x_746 : vec4<f32> = u_xlat9;
        let x_752 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_753 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat12;
        let x_757 : vec4<f32> = u_xlat8;
        let x_759 : vec3<f32> = (vec3<f32>(x_755.z, x_755.y, x_755.w) / vec3<f32>(x_757.x, x_757.y, x_757.z));
        let x_760 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
        let x_762 : vec4<f32> = u_xlat10;
        let x_764 : vec3<f32> = (vec3<f32>(x_762.x, x_762.y, x_762.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_765 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
        let x_767 : vec4<f32> = u_xlat9;
        let x_770 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_772 : vec3<f32> = (vec3<f32>(x_767.y, x_767.x, x_767.z) * vec3<f32>(x_770.x, x_770.x, x_770.x));
        let x_773 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
        let x_775 : vec4<f32> = u_xlat10;
        let x_778 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_780 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_778.y, x_778.y, x_778.y));
        let x_781 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
        let x_784 : f32 = u_xlat10.x;
        u_xlat9.w = x_784;
        let x_786 : vec4<f32> = u_xlat7;
        let x_789 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_792 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y) * vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y)) + vec4<f32>(x_792.y, x_792.w, x_792.x, x_792.w));
        let x_795 : vec4<f32> = u_xlat7;
        let x_798 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_801 : vec4<f32> = u_xlat9;
        u_xlat59 = ((vec2<f32>(x_795.x, x_795.y) * vec2<f32>(x_798.x, x_798.y)) + vec2<f32>(x_801.z, x_801.w));
        let x_805 : f32 = u_xlat9.y;
        u_xlat10.w = x_805;
        let x_807 : vec4<f32> = u_xlat10;
        let x_808 : vec2<f32> = vec2<f32>(x_807.y, x_807.z);
        let x_809 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_809.x, x_808.x, x_809.z, x_808.y);
        let x_811 : vec4<f32> = u_xlat7;
        let x_814 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_817 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y) * vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y)) + vec4<f32>(x_817.x, x_817.y, x_817.z, x_817.y));
        let x_820 : vec4<f32> = u_xlat7;
        let x_823 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_826 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y) * vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y)) + vec4<f32>(x_826.w, x_826.y, x_826.w, x_826.z));
        let x_829 : vec4<f32> = u_xlat7;
        let x_832 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y) * vec4<f32>(x_832.x, x_832.y, x_832.x, x_832.y)) + vec4<f32>(x_835.x, x_835.w, x_835.z, x_835.w));
        let x_839 : vec4<f32> = u_xlat8;
        let x_841 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_839.x, x_839.x, x_839.x, x_839.y) * vec4<f32>(x_841.z, x_841.w, x_841.y, x_841.z));
        let x_845 : vec4<f32> = u_xlat8;
        let x_847 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_845.y, x_845.y, x_845.z, x_845.z) * x_847);
        let x_851 : f32 = u_xlat8.z;
        let x_853 : f32 = u_xlat13.y;
        u_xlat84 = (x_851 * x_853);
        let x_856 : vec4<f32> = u_xlat11;
        let x_857 : vec2<f32> = vec2<f32>(x_856.x, x_856.y);
        let x_859 : f32 = vs_INTERP3.z;
        txVec4 = vec3<f32>(x_857.x, x_857.y, x_859);
        let x_866 : vec3<f32> = txVec4;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_866.xy, x_866.z);
        u_xlat7.x = x_868;
        let x_871 : vec4<f32> = u_xlat11;
        let x_872 : vec2<f32> = vec2<f32>(x_871.z, x_871.w);
        let x_874 : f32 = vs_INTERP3.z;
        txVec5 = vec3<f32>(x_872.x, x_872.y, x_874);
        let x_882 : vec3<f32> = txVec5;
        let x_884 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_882.xy, x_882.z);
        u_xlat33 = x_884;
        let x_885 : f32 = u_xlat33;
        let x_887 : f32 = u_xlat14.y;
        u_xlat33 = (x_885 * x_887);
        let x_890 : f32 = u_xlat14.x;
        let x_892 : f32 = u_xlat7.x;
        let x_894 : f32 = u_xlat33;
        u_xlat7.x = ((x_890 * x_892) + x_894);
        let x_898 : vec2<f32> = u_xlat59;
        let x_900 : f32 = vs_INTERP3.z;
        txVec6 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_907 : vec3<f32> = txVec6;
        let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_907.xy, x_907.z);
        u_xlat33 = x_909;
        let x_911 : f32 = u_xlat14.z;
        let x_912 : f32 = u_xlat33;
        let x_915 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_911 * x_912) + x_915);
        let x_919 : vec4<f32> = u_xlat10;
        let x_920 : vec2<f32> = vec2<f32>(x_919.x, x_919.y);
        let x_922 : f32 = vs_INTERP3.z;
        txVec7 = vec3<f32>(x_920.x, x_920.y, x_922);
        let x_929 : vec3<f32> = txVec7;
        let x_931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_929.xy, x_929.z);
        u_xlat33 = x_931;
        let x_933 : f32 = u_xlat14.w;
        let x_934 : f32 = u_xlat33;
        let x_937 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_933 * x_934) + x_937);
        let x_941 : vec4<f32> = u_xlat12;
        let x_942 : vec2<f32> = vec2<f32>(x_941.x, x_941.y);
        let x_944 : f32 = vs_INTERP3.z;
        txVec8 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec8;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_951.xy, x_951.z);
        u_xlat33 = x_953;
        let x_955 : f32 = u_xlat15.x;
        let x_956 : f32 = u_xlat33;
        let x_959 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_955 * x_956) + x_959);
        let x_963 : vec4<f32> = u_xlat12;
        let x_964 : vec2<f32> = vec2<f32>(x_963.z, x_963.w);
        let x_966 : f32 = vs_INTERP3.z;
        txVec9 = vec3<f32>(x_964.x, x_964.y, x_966);
        let x_973 : vec3<f32> = txVec9;
        let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_973.xy, x_973.z);
        u_xlat33 = x_975;
        let x_977 : f32 = u_xlat15.y;
        let x_978 : f32 = u_xlat33;
        let x_981 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_977 * x_978) + x_981);
        let x_985 : vec4<f32> = u_xlat10;
        let x_986 : vec2<f32> = vec2<f32>(x_985.z, x_985.w);
        let x_988 : f32 = vs_INTERP3.z;
        txVec10 = vec3<f32>(x_986.x, x_986.y, x_988);
        let x_995 : vec3<f32> = txVec10;
        let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_995.xy, x_995.z);
        u_xlat33 = x_997;
        let x_999 : f32 = u_xlat15.z;
        let x_1000 : f32 = u_xlat33;
        let x_1003 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_999 * x_1000) + x_1003);
        let x_1007 : vec4<f32> = u_xlat9;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
        let x_1010 : f32 = vs_INTERP3.z;
        txVec11 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec11;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1017.xy, x_1017.z);
        u_xlat33 = x_1019;
        let x_1021 : f32 = u_xlat15.w;
        let x_1022 : f32 = u_xlat33;
        let x_1025 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1021 * x_1022) + x_1025);
        let x_1029 : vec4<f32> = u_xlat9;
        let x_1030 : vec2<f32> = vec2<f32>(x_1029.z, x_1029.w);
        let x_1032 : f32 = vs_INTERP3.z;
        txVec12 = vec3<f32>(x_1030.x, x_1030.y, x_1032);
        let x_1039 : vec3<f32> = txVec12;
        let x_1041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1039.xy, x_1039.z);
        u_xlat33 = x_1041;
        let x_1042 : f32 = u_xlat84;
        let x_1043 : f32 = u_xlat33;
        let x_1046 : f32 = u_xlat7.x;
        u_xlat83 = ((x_1042 * x_1043) + x_1046);
      } else {
        let x_1049 : vec4<f32> = vs_INTERP3;
        let x_1052 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1055 : vec2<f32> = ((vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(x_1052.z, x_1052.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
        let x_1058 : vec4<f32> = u_xlat7;
        let x_1060 : vec2<f32> = floor(vec2<f32>(x_1058.x, x_1058.y));
        let x_1061 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1060.x, x_1060.y, x_1061.z, x_1061.w);
        let x_1063 : vec4<f32> = vs_INTERP3;
        let x_1066 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1069 : vec4<f32> = u_xlat7;
        u_xlat59 = ((vec2<f32>(x_1063.x, x_1063.y) * vec2<f32>(x_1066.z, x_1066.w)) + -(vec2<f32>(x_1069.x, x_1069.y)));
        let x_1073 : vec2<f32> = u_xlat59;
        u_xlat8 = (vec4<f32>(x_1073.x, x_1073.x, x_1073.y, x_1073.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1076 : vec4<f32> = u_xlat8;
        let x_1078 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1076.x, x_1076.x, x_1076.z, x_1076.z) * vec4<f32>(x_1078.x, x_1078.x, x_1078.z, x_1078.z));
        let x_1081 : vec4<f32> = u_xlat9;
        let x_1085 : vec2<f32> = (vec2<f32>(x_1081.y, x_1081.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1086 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1086.x, x_1085.x, x_1086.z, x_1085.y);
        let x_1088 : vec4<f32> = u_xlat9;
        let x_1091 : vec2<f32> = u_xlat59;
        let x_1093 : vec2<f32> = ((vec2<f32>(x_1088.x, x_1088.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1091));
        let x_1094 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1093.x, x_1094.y, x_1093.y, x_1094.w);
        let x_1096 : vec2<f32> = u_xlat59;
        let x_1098 : vec2<f32> = (-(x_1096) + vec2<f32>(1.0f, 1.0f));
        let x_1099 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1098.x, x_1098.y, x_1099.z, x_1099.w);
        let x_1101 : vec2<f32> = u_xlat59;
        u_xlat61 = min(x_1101, vec2<f32>(0.0f, 0.0f));
        let x_1103 : vec2<f32> = u_xlat61;
        let x_1105 : vec2<f32> = u_xlat61;
        let x_1107 : vec4<f32> = u_xlat9;
        let x_1109 : vec2<f32> = ((-(x_1103) * x_1105) + vec2<f32>(x_1107.x, x_1107.y));
        let x_1110 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1109.x, x_1109.y, x_1110.z, x_1110.w);
        let x_1112 : vec2<f32> = u_xlat59;
        u_xlat61 = max(x_1112, vec2<f32>(0.0f, 0.0f));
        let x_1115 : vec2<f32> = u_xlat61;
        let x_1117 : vec2<f32> = u_xlat61;
        let x_1119 : vec4<f32> = u_xlat8;
        let x_1121 : vec2<f32> = ((-(x_1115) * x_1117) + vec2<f32>(x_1119.y, x_1119.w));
        let x_1122 : vec3<f32> = u_xlat34;
        u_xlat34 = vec3<f32>(x_1121.x, x_1122.y, x_1121.y);
        let x_1124 : vec4<f32> = u_xlat9;
        let x_1126 : vec2<f32> = (vec2<f32>(x_1124.x, x_1124.y) + vec2<f32>(2.0f, 2.0f));
        let x_1127 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1129 : vec3<f32> = u_xlat34;
        let x_1131 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.z) + vec2<f32>(2.0f, 2.0f));
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1131.x, x_1132.z, x_1131.y);
        let x_1135 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1135 * 0.08163200318813323975f);
        let x_1139 : vec4<f32> = u_xlat8;
        let x_1142 : vec3<f32> = (vec3<f32>(x_1139.z, x_1139.x, x_1139.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1143 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat9;
        let x_1148 : vec2<f32> = (vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1148.x, x_1148.y, x_1149.z, x_1149.w);
        let x_1152 : f32 = u_xlat12.y;
        u_xlat11.x = x_1152;
        let x_1154 : vec2<f32> = u_xlat59;
        let x_1161 : vec2<f32> = ((vec2<f32>(x_1154.x, x_1154.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1162 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1162.x, x_1161.x, x_1162.z, x_1161.y);
        let x_1164 : vec2<f32> = u_xlat59;
        let x_1168 : vec2<f32> = ((vec2<f32>(x_1164.x, x_1164.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1169 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1168.x, x_1169.y, x_1168.y, x_1169.w);
        let x_1172 : f32 = u_xlat8.x;
        u_xlat9.y = x_1172;
        let x_1175 : f32 = u_xlat10.y;
        u_xlat9.w = x_1175;
        let x_1177 : vec4<f32> = u_xlat9;
        let x_1178 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1177 + x_1178);
        let x_1180 : vec2<f32> = u_xlat59;
        let x_1183 : vec2<f32> = ((vec2<f32>(x_1180.y, x_1180.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1184 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1184.x, x_1183.x, x_1184.z, x_1183.y);
        let x_1186 : vec2<f32> = u_xlat59;
        let x_1189 : vec2<f32> = ((vec2<f32>(x_1186.y, x_1186.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1190 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1189.x, x_1190.y, x_1189.y, x_1190.w);
        let x_1193 : f32 = u_xlat8.y;
        u_xlat10.y = x_1193;
        let x_1195 : vec4<f32> = u_xlat10;
        let x_1196 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1195 + x_1196);
        let x_1198 : vec4<f32> = u_xlat9;
        let x_1199 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1198 / x_1199);
        let x_1201 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1201 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1207 : vec4<f32> = u_xlat10;
        let x_1208 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1207 / x_1208);
        let x_1210 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1210 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1212 : vec4<f32> = u_xlat9;
        let x_1215 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1212.w, x_1212.x, x_1212.y, x_1212.z) * vec4<f32>(x_1215.x, x_1215.x, x_1215.x, x_1215.x));
        let x_1218 : vec4<f32> = u_xlat10;
        let x_1221 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1218.x, x_1218.w, x_1218.y, x_1218.z) * vec4<f32>(x_1221.y, x_1221.y, x_1221.y, x_1221.y));
        let x_1224 : vec4<f32> = u_xlat9;
        let x_1225 : vec3<f32> = vec3<f32>(x_1224.y, x_1224.z, x_1224.w);
        let x_1226 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1225.x, x_1226.y, x_1225.y, x_1225.z);
        let x_1229 : f32 = u_xlat10.x;
        u_xlat12.y = x_1229;
        let x_1231 : vec4<f32> = u_xlat7;
        let x_1234 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y) * vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y)) + vec4<f32>(x_1237.x, x_1237.y, x_1237.z, x_1237.y));
        let x_1240 : vec4<f32> = u_xlat7;
        let x_1243 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1246 : vec4<f32> = u_xlat12;
        u_xlat59 = ((vec2<f32>(x_1240.x, x_1240.y) * vec2<f32>(x_1243.x, x_1243.y)) + vec2<f32>(x_1246.w, x_1246.y));
        let x_1250 : f32 = u_xlat12.y;
        u_xlat9.y = x_1250;
        let x_1253 : f32 = u_xlat10.z;
        u_xlat12.y = x_1253;
        let x_1255 : vec4<f32> = u_xlat7;
        let x_1258 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1261 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1255.x, x_1255.y, x_1255.x, x_1255.y) * vec4<f32>(x_1258.x, x_1258.y, x_1258.x, x_1258.y)) + vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1261.y));
        let x_1264 : vec4<f32> = u_xlat7;
        let x_1267 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat12;
        let x_1272 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1267.x, x_1267.y)) + vec2<f32>(x_1270.w, x_1270.y));
        let x_1273 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1276 : f32 = u_xlat12.y;
        u_xlat9.z = x_1276;
        let x_1279 : vec4<f32> = u_xlat7;
        let x_1282 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1279.x, x_1279.y, x_1279.x, x_1279.y) * vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y)) + vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.z));
        let x_1289 : f32 = u_xlat10.w;
        u_xlat12.y = x_1289;
        let x_1292 : vec4<f32> = u_xlat7;
        let x_1295 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y) * vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y)) + vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1298.y));
        let x_1302 : vec4<f32> = u_xlat7;
        let x_1305 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat12;
        u_xlat35 = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.x, x_1305.y)) + vec2<f32>(x_1308.w, x_1308.y));
        let x_1312 : f32 = u_xlat12.y;
        u_xlat9.w = x_1312;
        let x_1315 : vec4<f32> = u_xlat7;
        let x_1318 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1321 : vec4<f32> = u_xlat9;
        u_xlat67 = ((vec2<f32>(x_1315.x, x_1315.y) * vec2<f32>(x_1318.x, x_1318.y)) + vec2<f32>(x_1321.x, x_1321.w));
        let x_1324 : vec4<f32> = u_xlat12;
        let x_1325 : vec3<f32> = vec3<f32>(x_1324.x, x_1324.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1325.x, x_1326.y, x_1325.y, x_1325.z);
        let x_1328 : vec4<f32> = u_xlat7;
        let x_1331 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1334 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1328.x, x_1328.y, x_1328.x, x_1328.y) * vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y)) + vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1334.y));
        let x_1338 : vec4<f32> = u_xlat7;
        let x_1341 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1344 : vec4<f32> = u_xlat10;
        u_xlat62 = ((vec2<f32>(x_1338.x, x_1338.y) * vec2<f32>(x_1341.x, x_1341.y)) + vec2<f32>(x_1344.w, x_1344.y));
        let x_1348 : f32 = u_xlat9.x;
        u_xlat10.x = x_1348;
        let x_1350 : vec4<f32> = u_xlat7;
        let x_1353 : vec4<f32> = x_483.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat10;
        let x_1358 : vec2<f32> = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1353.x, x_1353.y)) + vec2<f32>(x_1356.x, x_1356.y));
        let x_1359 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1358.x, x_1358.y, x_1359.z, x_1359.w);
        let x_1362 : vec4<f32> = u_xlat8;
        let x_1364 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1362.x, x_1362.x, x_1362.x, x_1362.x) * x_1364);
        let x_1367 : vec4<f32> = u_xlat8;
        let x_1369 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1367.y, x_1367.y, x_1367.y, x_1367.y) * x_1369);
        let x_1372 : vec4<f32> = u_xlat8;
        let x_1374 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1372.z, x_1372.z, x_1372.z, x_1372.z) * x_1374);
        let x_1376 : vec4<f32> = u_xlat8;
        let x_1378 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1376.w, x_1376.w, x_1376.w, x_1376.w) * x_1378);
        let x_1381 : vec4<f32> = u_xlat13;
        let x_1382 : vec2<f32> = vec2<f32>(x_1381.x, x_1381.y);
        let x_1384 : f32 = vs_INTERP3.z;
        txVec13 = vec3<f32>(x_1382.x, x_1382.y, x_1384);
        let x_1391 : vec3<f32> = txVec13;
        let x_1393 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1391.xy, x_1391.z);
        u_xlat84 = x_1393;
        let x_1395 : vec4<f32> = u_xlat13;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.z, x_1395.w);
        let x_1398 : f32 = vs_INTERP3.z;
        txVec14 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec14;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1405.xy, x_1405.z);
        u_xlat9.x = x_1407;
        let x_1410 : f32 = u_xlat9.x;
        let x_1412 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1410 * x_1412);
        let x_1416 : f32 = u_xlat18.x;
        let x_1417 : f32 = u_xlat84;
        let x_1420 : f32 = u_xlat9.x;
        u_xlat84 = ((x_1416 * x_1417) + x_1420);
        let x_1423 : vec2<f32> = u_xlat59;
        let x_1425 : f32 = vs_INTERP3.z;
        txVec15 = vec3<f32>(x_1423.x, x_1423.y, x_1425);
        let x_1432 : vec3<f32> = txVec15;
        let x_1434 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1432.xy, x_1432.z);
        u_xlat59.x = x_1434;
        let x_1437 : f32 = u_xlat18.z;
        let x_1439 : f32 = u_xlat59.x;
        let x_1441 : f32 = u_xlat84;
        u_xlat84 = ((x_1437 * x_1439) + x_1441);
        let x_1444 : vec4<f32> = u_xlat16;
        let x_1445 : vec2<f32> = vec2<f32>(x_1444.x, x_1444.y);
        let x_1447 : f32 = vs_INTERP3.z;
        txVec16 = vec3<f32>(x_1445.x, x_1445.y, x_1447);
        let x_1454 : vec3<f32> = txVec16;
        let x_1456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1454.xy, x_1454.z);
        u_xlat59.x = x_1456;
        let x_1459 : f32 = u_xlat18.w;
        let x_1461 : f32 = u_xlat59.x;
        let x_1463 : f32 = u_xlat84;
        u_xlat84 = ((x_1459 * x_1461) + x_1463);
        let x_1466 : vec4<f32> = u_xlat14;
        let x_1467 : vec2<f32> = vec2<f32>(x_1466.x, x_1466.y);
        let x_1469 : f32 = vs_INTERP3.z;
        txVec17 = vec3<f32>(x_1467.x, x_1467.y, x_1469);
        let x_1476 : vec3<f32> = txVec17;
        let x_1478 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1476.xy, x_1476.z);
        u_xlat59.x = x_1478;
        let x_1481 : f32 = u_xlat19.x;
        let x_1483 : f32 = u_xlat59.x;
        let x_1485 : f32 = u_xlat84;
        u_xlat84 = ((x_1481 * x_1483) + x_1485);
        let x_1488 : vec4<f32> = u_xlat14;
        let x_1489 : vec2<f32> = vec2<f32>(x_1488.z, x_1488.w);
        let x_1491 : f32 = vs_INTERP3.z;
        txVec18 = vec3<f32>(x_1489.x, x_1489.y, x_1491);
        let x_1498 : vec3<f32> = txVec18;
        let x_1500 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1498.xy, x_1498.z);
        u_xlat59.x = x_1500;
        let x_1503 : f32 = u_xlat19.y;
        let x_1505 : f32 = u_xlat59.x;
        let x_1507 : f32 = u_xlat84;
        u_xlat84 = ((x_1503 * x_1505) + x_1507);
        let x_1510 : vec4<f32> = u_xlat15;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.x, x_1510.y);
        let x_1513 : f32 = vs_INTERP3.z;
        txVec19 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec19;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1520.xy, x_1520.z);
        u_xlat59.x = x_1522;
        let x_1525 : f32 = u_xlat19.z;
        let x_1527 : f32 = u_xlat59.x;
        let x_1529 : f32 = u_xlat84;
        u_xlat84 = ((x_1525 * x_1527) + x_1529);
        let x_1532 : vec4<f32> = u_xlat16;
        let x_1533 : vec2<f32> = vec2<f32>(x_1532.z, x_1532.w);
        let x_1535 : f32 = vs_INTERP3.z;
        txVec20 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1542 : vec3<f32> = txVec20;
        let x_1544 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1542.xy, x_1542.z);
        u_xlat59.x = x_1544;
        let x_1547 : f32 = u_xlat19.w;
        let x_1549 : f32 = u_xlat59.x;
        let x_1551 : f32 = u_xlat84;
        u_xlat84 = ((x_1547 * x_1549) + x_1551);
        let x_1554 : vec4<f32> = u_xlat17;
        let x_1555 : vec2<f32> = vec2<f32>(x_1554.x, x_1554.y);
        let x_1557 : f32 = vs_INTERP3.z;
        txVec21 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec21;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1564.xy, x_1564.z);
        u_xlat59.x = x_1566;
        let x_1569 : f32 = u_xlat20.x;
        let x_1571 : f32 = u_xlat59.x;
        let x_1573 : f32 = u_xlat84;
        u_xlat84 = ((x_1569 * x_1571) + x_1573);
        let x_1576 : vec4<f32> = u_xlat17;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.z, x_1576.w);
        let x_1579 : f32 = vs_INTERP3.z;
        txVec22 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec22;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1586.xy, x_1586.z);
        u_xlat59.x = x_1588;
        let x_1591 : f32 = u_xlat20.y;
        let x_1593 : f32 = u_xlat59.x;
        let x_1595 : f32 = u_xlat84;
        u_xlat84 = ((x_1591 * x_1593) + x_1595);
        let x_1598 : vec2<f32> = u_xlat35;
        let x_1600 : f32 = vs_INTERP3.z;
        txVec23 = vec3<f32>(x_1598.x, x_1598.y, x_1600);
        let x_1607 : vec3<f32> = txVec23;
        let x_1609 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1607.xy, x_1607.z);
        u_xlat59.x = x_1609;
        let x_1612 : f32 = u_xlat20.z;
        let x_1614 : f32 = u_xlat59.x;
        let x_1616 : f32 = u_xlat84;
        u_xlat84 = ((x_1612 * x_1614) + x_1616);
        let x_1619 : vec2<f32> = u_xlat67;
        let x_1621 : f32 = vs_INTERP3.z;
        txVec24 = vec3<f32>(x_1619.x, x_1619.y, x_1621);
        let x_1628 : vec3<f32> = txVec24;
        let x_1630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1628.xy, x_1628.z);
        u_xlat59.x = x_1630;
        let x_1633 : f32 = u_xlat20.w;
        let x_1635 : f32 = u_xlat59.x;
        let x_1637 : f32 = u_xlat84;
        u_xlat84 = ((x_1633 * x_1635) + x_1637);
        let x_1640 : vec4<f32> = u_xlat12;
        let x_1641 : vec2<f32> = vec2<f32>(x_1640.x, x_1640.y);
        let x_1643 : f32 = vs_INTERP3.z;
        txVec25 = vec3<f32>(x_1641.x, x_1641.y, x_1643);
        let x_1650 : vec3<f32> = txVec25;
        let x_1652 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1650.xy, x_1650.z);
        u_xlat59.x = x_1652;
        let x_1655 : f32 = u_xlat8.x;
        let x_1657 : f32 = u_xlat59.x;
        let x_1659 : f32 = u_xlat84;
        u_xlat84 = ((x_1655 * x_1657) + x_1659);
        let x_1662 : vec4<f32> = u_xlat12;
        let x_1663 : vec2<f32> = vec2<f32>(x_1662.z, x_1662.w);
        let x_1665 : f32 = vs_INTERP3.z;
        txVec26 = vec3<f32>(x_1663.x, x_1663.y, x_1665);
        let x_1672 : vec3<f32> = txVec26;
        let x_1674 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1672.xy, x_1672.z);
        u_xlat59.x = x_1674;
        let x_1677 : f32 = u_xlat8.y;
        let x_1679 : f32 = u_xlat59.x;
        let x_1681 : f32 = u_xlat84;
        u_xlat84 = ((x_1677 * x_1679) + x_1681);
        let x_1684 : vec2<f32> = u_xlat62;
        let x_1686 : f32 = vs_INTERP3.z;
        txVec27 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
        let x_1693 : vec3<f32> = txVec27;
        let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1693.xy, x_1693.z);
        u_xlat59.x = x_1695;
        let x_1698 : f32 = u_xlat8.z;
        let x_1700 : f32 = u_xlat59.x;
        let x_1702 : f32 = u_xlat84;
        u_xlat84 = ((x_1698 * x_1700) + x_1702);
        let x_1705 : vec4<f32> = u_xlat7;
        let x_1706 : vec2<f32> = vec2<f32>(x_1705.x, x_1705.y);
        let x_1708 : f32 = vs_INTERP3.z;
        txVec28 = vec3<f32>(x_1706.x, x_1706.y, x_1708);
        let x_1715 : vec3<f32> = txVec28;
        let x_1717 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1715.xy, x_1715.z);
        u_xlat7.x = x_1717;
        let x_1720 : f32 = u_xlat8.w;
        let x_1722 : f32 = u_xlat7.x;
        let x_1724 : f32 = u_xlat84;
        u_xlat83 = ((x_1720 * x_1722) + x_1724);
      }
    }
  } else {
    let x_1728 : vec4<f32> = vs_INTERP3;
    let x_1729 : vec2<f32> = vec2<f32>(x_1728.x, x_1728.y);
    let x_1731 : f32 = vs_INTERP3.z;
    txVec29 = vec3<f32>(x_1729.x, x_1729.y, x_1731);
    let x_1738 : vec3<f32> = txVec29;
    let x_1740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1738.xy, x_1738.z);
    u_xlat83 = x_1740;
  }
  let x_1742 : f32 = x_483.x_MainLightShadowParams.x;
  u_xlat84 = (-(x_1742) + 1.0f);
  let x_1745 : f32 = u_xlat83;
  let x_1747 : f32 = x_483.x_MainLightShadowParams.x;
  let x_1749 : f32 = u_xlat84;
  u_xlat83 = ((x_1745 * x_1747) + x_1749);
  let x_1752 : f32 = vs_INTERP3.z;
  u_xlatb84 = (0.0f >= x_1752);
  let x_1756 : f32 = vs_INTERP3.z;
  u_xlatb7 = (x_1756 >= 1.0f);
  let x_1758 : bool = u_xlatb84;
  let x_1759 : bool = u_xlatb7;
  u_xlatb84 = (x_1758 | x_1759);
  let x_1761 : bool = u_xlatb84;
  let x_1762 : f32 = u_xlat83;
  u_xlat83 = select(x_1762, 1.0f, x_1761);
  let x_1764 : vec3<f32> = vs_INTERP7;
  let x_1766 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_1768 : vec3<f32> = (x_1764 + -(x_1766));
  let x_1769 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1768.x, x_1768.y, x_1768.z, x_1769.w);
  let x_1771 : vec4<f32> = u_xlat7;
  let x_1773 : vec4<f32> = u_xlat7;
  u_xlat84 = dot(vec3<f32>(x_1771.x, x_1771.y, x_1771.z), vec3<f32>(x_1773.x, x_1773.y, x_1773.z));
  let x_1776 : f32 = u_xlat84;
  let x_1778 : f32 = x_483.x_MainLightShadowParams.z;
  let x_1781 : f32 = x_483.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_1776 * x_1778) + x_1781);
  let x_1785 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1785, 0.0f, 1.0f);
  let x_1788 : f32 = u_xlat83;
  u_xlat33 = (-(x_1788) + 1.0f);
  let x_1792 : f32 = u_xlat7.x;
  let x_1793 : f32 = u_xlat33;
  let x_1795 : f32 = u_xlat83;
  u_xlat83 = ((x_1792 * x_1793) + x_1795);
  let x_1797 : vec4<f32> = u_xlat1;
  let x_1800 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(vec3<f32>(x_1797.x, x_1797.y, x_1797.w)), vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
  let x_1805 : f32 = u_xlat7.x;
  let x_1807 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1805 + x_1807);
  let x_1810 : vec4<f32> = u_xlat4;
  let x_1812 : vec4<f32> = u_xlat7;
  let x_1816 : vec4<f32> = u_xlat1;
  let x_1819 : vec3<f32> = ((vec3<f32>(x_1810.x, x_1810.y, x_1810.z) * -(vec3<f32>(x_1812.x, x_1812.x, x_1812.x))) + -(vec3<f32>(x_1816.x, x_1816.y, x_1816.w)));
  let x_1820 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1819.x, x_1819.y, x_1819.z, x_1820.w);
  let x_1823 : vec4<f32> = u_xlat4;
  let x_1825 : vec4<f32> = u_xlat1;
  u_xlat85 = dot(vec3<f32>(x_1823.x, x_1823.y, x_1823.z), vec3<f32>(x_1825.x, x_1825.y, x_1825.w));
  let x_1828 : f32 = u_xlat85;
  u_xlat85 = clamp(x_1828, 0.0f, 1.0f);
  let x_1830 : f32 = u_xlat85;
  u_xlat85 = (-(x_1830) + 1.0f);
  let x_1833 : f32 = u_xlat85;
  let x_1834 : f32 = u_xlat85;
  u_xlat85 = (x_1833 * x_1834);
  let x_1836 : f32 = u_xlat85;
  let x_1837 : f32 = u_xlat85;
  u_xlat85 = (x_1836 * x_1837);
  let x_1839 : f32 = u_xlat80;
  u_xlat8.x = ((-(x_1839) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1846 : f32 = u_xlat80;
  let x_1848 : f32 = u_xlat8.x;
  u_xlat2.w = (x_1846 * x_1848);
  let x_1851 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_1851 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_1864 : vec4<f32> = u_xlat7;
  let x_1867 : f32 = u_xlat2.w;
  let x_1868 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1864.x, x_1864.y, x_1864.z), x_1867);
  u_xlat8 = x_1868;
  let x_1870 : f32 = u_xlat8.w;
  u_xlat80 = (x_1870 + -1.0f);
  let x_1873 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_1874 : f32 = u_xlat80;
  u_xlat80 = ((x_1873 * x_1874) + 1.0f);
  let x_1877 : f32 = u_xlat80;
  u_xlat80 = max(x_1877, 0.0f);
  let x_1879 : f32 = u_xlat80;
  u_xlat80 = log2(x_1879);
  let x_1881 : f32 = u_xlat80;
  let x_1883 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat80 = (x_1881 * x_1883);
  let x_1885 : f32 = u_xlat80;
  u_xlat80 = exp2(x_1885);
  let x_1887 : f32 = u_xlat80;
  let x_1889 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat80 = (x_1887 * x_1889);
  let x_1891 : vec4<f32> = u_xlat8;
  let x_1893 : f32 = u_xlat80;
  let x_1895 : vec3<f32> = (vec3<f32>(x_1891.x, x_1891.y, x_1891.z) * vec3<f32>(x_1893, x_1893, x_1893));
  let x_1896 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec3<f32> = u_xlat3;
  let x_1900 : vec3<f32> = u_xlat3;
  let x_1904 : vec2<f32> = ((vec2<f32>(x_1898.x, x_1898.x) * vec2<f32>(x_1900.x, x_1900.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1905 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1904.x, x_1904.y, x_1905.z, x_1905.w);
  let x_1908 : f32 = u_xlat8.y;
  u_xlat80 = (1.0f / x_1908);
  let x_1910 : vec3<f32> = u_xlat0;
  let x_1912 : f32 = u_xlat81;
  u_xlat34 = (-(x_1910) + vec3<f32>(x_1912, x_1912, x_1912));
  let x_1915 : f32 = u_xlat85;
  let x_1917 : vec3<f32> = u_xlat34;
  let x_1919 : vec3<f32> = u_xlat0;
  u_xlat34 = ((vec3<f32>(x_1915, x_1915, x_1915) * x_1917) + x_1919);
  let x_1921 : f32 = u_xlat80;
  let x_1923 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1921, x_1921, x_1921) * x_1923);
  let x_1925 : vec4<f32> = u_xlat7;
  let x_1927 : vec3<f32> = u_xlat34;
  let x_1928 : vec3<f32> = (vec3<f32>(x_1925.x, x_1925.y, x_1925.z) * x_1927);
  let x_1929 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1928.x, x_1928.y, x_1928.z, x_1929.w);
  let x_1931 : vec3<f32> = u_xlat5;
  let x_1932 : vec4<f32> = u_xlat6;
  let x_1935 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_1931 * vec3<f32>(x_1932.x, x_1932.y, x_1932.z)) + vec3<f32>(x_1935.x, x_1935.y, x_1935.z));
  let x_1938 : f32 = u_xlat83;
  let x_1940 : f32 = x_107.unity_LightData.z;
  u_xlat80 = (x_1938 * x_1940);
  let x_1942 : vec4<f32> = u_xlat4;
  let x_1945 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_1942.x, x_1942.y, x_1942.z), vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1950 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1950, 0.0f, 1.0f);
  let x_1953 : f32 = u_xlat80;
  let x_1955 : f32 = u_xlat3.x;
  u_xlat80 = (x_1953 * x_1955);
  let x_1957 : f32 = u_xlat80;
  let x_1960 : vec4<f32> = x_29.x_MainLightColor;
  let x_1962 : vec3<f32> = (vec3<f32>(x_1957, x_1957, x_1957) * vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1963 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
  let x_1965 : vec4<f32> = u_xlat1;
  let x_1968 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat34 = (vec3<f32>(x_1965.x, x_1965.y, x_1965.w) + vec3<f32>(x_1968.x, x_1968.y, x_1968.z));
  let x_1971 : vec3<f32> = u_xlat34;
  let x_1972 : vec3<f32> = u_xlat34;
  u_xlat80 = dot(x_1971, x_1972);
  let x_1974 : f32 = u_xlat80;
  u_xlat80 = max(x_1974, 1.17549435e-38f);
  let x_1977 : f32 = u_xlat80;
  u_xlat80 = inverseSqrt(x_1977);
  let x_1979 : f32 = u_xlat80;
  let x_1981 : vec3<f32> = u_xlat34;
  u_xlat34 = (vec3<f32>(x_1979, x_1979, x_1979) * x_1981);
  let x_1983 : vec4<f32> = u_xlat4;
  let x_1985 : vec3<f32> = u_xlat34;
  u_xlat80 = dot(vec3<f32>(x_1983.x, x_1983.y, x_1983.z), x_1985);
  let x_1987 : f32 = u_xlat80;
  u_xlat80 = clamp(x_1987, 0.0f, 1.0f);
  let x_1990 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1992 : vec3<f32> = u_xlat34;
  u_xlat3.x = dot(vec3<f32>(x_1990.x, x_1990.y, x_1990.z), x_1992);
  let x_1996 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1996, 0.0f, 1.0f);
  let x_1999 : f32 = u_xlat80;
  let x_2000 : f32 = u_xlat80;
  u_xlat80 = (x_1999 * x_2000);
  let x_2002 : f32 = u_xlat80;
  let x_2004 : f32 = u_xlat8.x;
  u_xlat80 = ((x_2002 * x_2004) + 1.00001001358032226562f);
  let x_2009 : f32 = u_xlat3.x;
  let x_2011 : f32 = u_xlat3.x;
  u_xlat3.x = (x_2009 * x_2011);
  let x_2014 : f32 = u_xlat80;
  let x_2015 : f32 = u_xlat80;
  u_xlat80 = (x_2014 * x_2015);
  let x_2018 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_2018, 0.10000000149011611938f);
  let x_2022 : f32 = u_xlat80;
  let x_2024 : f32 = u_xlat3.x;
  u_xlat80 = (x_2022 * x_2024);
  let x_2026 : f32 = u_xlat82;
  let x_2027 : f32 = u_xlat80;
  u_xlat80 = (x_2026 * x_2027);
  let x_2029 : f32 = u_xlat29;
  let x_2030 : f32 = u_xlat80;
  u_xlat80 = (x_2029 / x_2030);
  let x_2032 : vec3<f32> = u_xlat0;
  let x_2033 : f32 = u_xlat80;
  let x_2036 : vec4<f32> = u_xlat6;
  u_xlat34 = ((x_2032 * vec3<f32>(x_2033, x_2033, x_2033)) + vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
  let x_2039 : vec4<f32> = u_xlat7;
  let x_2041 : vec3<f32> = u_xlat34;
  let x_2042 : vec3<f32> = (vec3<f32>(x_2039.x, x_2039.y, x_2039.z) * x_2041);
  let x_2043 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2042.x, x_2042.y, x_2042.z, x_2043.w);
  let x_2046 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_2048 : f32 = x_107.unity_LightData.y;
  u_xlat80 = min(x_2046, x_2048);
  let x_2052 : f32 = u_xlat80;
  u_xlatu80 = bitcast<u32>(i32(x_2052));
  let x_2055 : f32 = u_xlat84;
  let x_2058 : f32 = x_483.x_AdditionalShadowFadeParams.x;
  let x_2061 : f32 = x_483.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_2055 * x_2058) + x_2061);
  let x_2065 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_2065, 0.0f, 1.0f);
  u_xlat34.x = 0.0f;
  u_xlat34.y = 0.0f;
  u_xlat34.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2078 : u32 = u_xlatu_loop_1;
    let x_2079 : u32 = u_xlatu80;
    if ((x_2078 < x_2079)) {
    } else {
      break;
    }
    let x_2082 : u32 = u_xlatu_loop_1;
    u_xlatu83 = (x_2082 >> 2u);
    let x_2086 : u32 = u_xlatu_loop_1;
    u_xlati84 = bitcast<i32>((x_2086 & 3u));
    let x_2089 : u32 = u_xlatu83;
    let x_2092 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_2089)];
    let x_2102 : i32 = u_xlati84;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2107 : vec4<u32> = indexable[x_2102];
    u_xlat83 = dot(x_2092, bitcast<vec4<f32>>(x_2107));
    let x_2111 : f32 = u_xlat83;
    u_xlati83 = i32(x_2111);
    let x_2113 : vec3<f32> = vs_INTERP7;
    let x_2124 : i32 = u_xlati83;
    let x_2126 : vec4<f32> = x_2123.x_AdditionalLightsPosition[x_2124];
    let x_2129 : i32 = u_xlati83;
    let x_2131 : vec4<f32> = x_2123.x_AdditionalLightsPosition[x_2129];
    let x_2133 : vec3<f32> = ((-(x_2113) * vec3<f32>(x_2126.w, x_2126.w, x_2126.w)) + vec3<f32>(x_2131.x, x_2131.y, x_2131.z));
    let x_2134 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2133.x, x_2133.y, x_2133.z, x_2134.w);
    let x_2136 : vec4<f32> = u_xlat9;
    let x_2138 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_2136.x, x_2136.y, x_2136.z), vec3<f32>(x_2138.x, x_2138.y, x_2138.z));
    let x_2141 : f32 = u_xlat84;
    u_xlat84 = max(x_2141, 0.00006103515625f);
    let x_2144 : f32 = u_xlat84;
    u_xlat85 = inverseSqrt(x_2144);
    let x_2146 : f32 = u_xlat85;
    let x_2148 : vec4<f32> = u_xlat9;
    let x_2150 : vec3<f32> = (vec3<f32>(x_2146, x_2146, x_2146) * vec3<f32>(x_2148.x, x_2148.y, x_2148.z));
    let x_2151 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2150.x, x_2150.y, x_2150.z, x_2151.w);
    let x_2154 : f32 = u_xlat84;
    u_xlat87 = (1.0f / x_2154);
    let x_2156 : f32 = u_xlat84;
    let x_2157 : i32 = u_xlati83;
    let x_2159 : f32 = x_2123.x_AdditionalLightsAttenuation[x_2157].x;
    u_xlat84 = (x_2156 * x_2159);
    let x_2161 : f32 = u_xlat84;
    let x_2163 : f32 = u_xlat84;
    u_xlat84 = ((-(x_2161) * x_2163) + 1.0f);
    let x_2166 : f32 = u_xlat84;
    u_xlat84 = max(x_2166, 0.0f);
    let x_2168 : f32 = u_xlat84;
    let x_2169 : f32 = u_xlat84;
    u_xlat84 = (x_2168 * x_2169);
    let x_2171 : f32 = u_xlat84;
    let x_2172 : f32 = u_xlat87;
    u_xlat84 = (x_2171 * x_2172);
    let x_2174 : i32 = u_xlati83;
    let x_2176 : vec4<f32> = x_2123.x_AdditionalLightsSpotDir[x_2174];
    let x_2178 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_2176.x, x_2176.y, x_2176.z), vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
    let x_2181 : f32 = u_xlat87;
    let x_2182 : i32 = u_xlati83;
    let x_2184 : f32 = x_2123.x_AdditionalLightsAttenuation[x_2182].z;
    let x_2186 : i32 = u_xlati83;
    let x_2188 : f32 = x_2123.x_AdditionalLightsAttenuation[x_2186].w;
    u_xlat87 = ((x_2181 * x_2184) + x_2188);
    let x_2190 : f32 = u_xlat87;
    u_xlat87 = clamp(x_2190, 0.0f, 1.0f);
    let x_2192 : f32 = u_xlat87;
    let x_2193 : f32 = u_xlat87;
    u_xlat87 = (x_2192 * x_2193);
    let x_2195 : f32 = u_xlat84;
    let x_2196 : f32 = u_xlat87;
    u_xlat84 = (x_2195 * x_2196);
    let x_2200 : i32 = u_xlati83;
    let x_2202 : f32 = x_483.x_AdditionalShadowParams[x_2200].w;
    u_xlati87 = i32(x_2202);
    let x_2205 : i32 = u_xlati87;
    u_xlatb88 = (x_2205 >= 0i);
    let x_2207 : bool = u_xlatb88;
    if (x_2207) {
      let x_2211 : i32 = u_xlati83;
      let x_2213 : f32 = x_483.x_AdditionalShadowParams[x_2211].z;
      u_xlatb88 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2213, x_2213, x_2213, x_2213))));
      let x_2218 : bool = u_xlatb88;
      if (x_2218) {
        let x_2223 : vec4<f32> = u_xlat10;
        let x_2226 : vec4<f32> = u_xlat10;
        let x_2229 : vec4<bool> = (abs(vec4<f32>(x_2223.z, x_2223.z, x_2223.y, x_2223.z)) >= abs(vec4<f32>(x_2226.x, x_2226.y, x_2226.x, x_2226.x)));
        let x_2231 : vec3<bool> = vec3<bool>(x_2229.x, x_2229.y, x_2229.z);
        let x_2232 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2231.x, x_2231.y, x_2231.z, x_2232.w);
        let x_2235 : bool = u_xlatb11.y;
        let x_2237 : bool = u_xlatb11.x;
        u_xlatb88 = (x_2235 & x_2237);
        let x_2239 : vec4<f32> = u_xlat10;
        let x_2242 : vec4<bool> = (-(vec4<f32>(x_2239.z, x_2239.y, x_2239.z, x_2239.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2243 : vec3<bool> = vec3<bool>(x_2242.x, x_2242.y, x_2242.w);
        let x_2244 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2243.x, x_2243.y, x_2244.z, x_2243.z);
        let x_2247 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2247);
        let x_2252 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2252);
        let x_2258 : bool = u_xlatb11.w;
        u_xlat89 = select(0.0f, 1.0f, x_2258);
        let x_2262 : bool = u_xlatb11.z;
        if (x_2262) {
          let x_2268 : f32 = u_xlat11.y;
          x_2264 = x_2268;
        } else {
          let x_2270 : f32 = u_xlat89;
          x_2264 = x_2270;
        }
        let x_2271 : f32 = x_2264;
        u_xlat37 = x_2271;
        let x_2273 : bool = u_xlatb88;
        if (x_2273) {
          let x_2278 : f32 = u_xlat11.x;
          x_2274 = x_2278;
        } else {
          let x_2280 : f32 = u_xlat37;
          x_2274 = x_2280;
        }
        let x_2281 : f32 = x_2274;
        u_xlat88 = x_2281;
        let x_2282 : i32 = u_xlati83;
        let x_2284 : f32 = x_483.x_AdditionalShadowParams[x_2282].w;
        u_xlat11.x = trunc(x_2284);
        let x_2287 : f32 = u_xlat88;
        let x_2289 : f32 = u_xlat11.x;
        u_xlat88 = (x_2287 + x_2289);
        let x_2291 : f32 = u_xlat88;
        u_xlati87 = i32(x_2291);
      }
      let x_2293 : i32 = u_xlati87;
      u_xlati87 = (x_2293 << bitcast<u32>(2i));
      let x_2295 : vec3<f32> = vs_INTERP7;
      let x_2298 : i32 = u_xlati87;
      let x_2301 : i32 = u_xlati87;
      let x_2305 : vec4<f32> = x_483.x_AdditionalLightsWorldToShadow[((x_2298 + 1i) / 4i)][((x_2301 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2295.y, x_2295.y, x_2295.y, x_2295.y) * x_2305);
      let x_2307 : i32 = u_xlati87;
      let x_2309 : i32 = u_xlati87;
      let x_2312 : vec4<f32> = x_483.x_AdditionalLightsWorldToShadow[(x_2307 / 4i)][(x_2309 % 4i)];
      let x_2313 : vec3<f32> = vs_INTERP7;
      let x_2316 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2312 * vec4<f32>(x_2313.x, x_2313.x, x_2313.x, x_2313.x)) + x_2316);
      let x_2318 : i32 = u_xlati87;
      let x_2321 : i32 = u_xlati87;
      let x_2325 : vec4<f32> = x_483.x_AdditionalLightsWorldToShadow[((x_2318 + 2i) / 4i)][((x_2321 + 2i) % 4i)];
      let x_2326 : vec3<f32> = vs_INTERP7;
      let x_2329 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2325 * vec4<f32>(x_2326.z, x_2326.z, x_2326.z, x_2326.z)) + x_2329);
      let x_2331 : vec4<f32> = u_xlat11;
      let x_2332 : i32 = u_xlati87;
      let x_2335 : i32 = u_xlati87;
      let x_2339 : vec4<f32> = x_483.x_AdditionalLightsWorldToShadow[((x_2332 + 3i) / 4i)][((x_2335 + 3i) % 4i)];
      u_xlat11 = (x_2331 + x_2339);
      let x_2341 : vec4<f32> = u_xlat11;
      let x_2343 : vec4<f32> = u_xlat11;
      let x_2345 : vec3<f32> = (vec3<f32>(x_2341.x, x_2341.y, x_2341.z) / vec3<f32>(x_2343.w, x_2343.w, x_2343.w));
      let x_2346 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2345.x, x_2345.y, x_2345.z, x_2346.w);
      let x_2349 : i32 = u_xlati83;
      let x_2351 : f32 = x_483.x_AdditionalShadowParams[x_2349].y;
      u_xlatb87 = (0.0f < x_2351);
      let x_2353 : bool = u_xlatb87;
      if (x_2353) {
        let x_2356 : i32 = u_xlati83;
        let x_2358 : f32 = x_483.x_AdditionalShadowParams[x_2356].y;
        u_xlatb87 = (1.0f == x_2358);
        let x_2360 : bool = u_xlatb87;
        if (x_2360) {
          let x_2363 : vec4<f32> = u_xlat11;
          let x_2366 : vec4<f32> = x_483.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2363.x, x_2363.y, x_2363.x, x_2363.y) + x_2366);
          let x_2369 : vec4<f32> = u_xlat12;
          let x_2370 : vec2<f32> = vec2<f32>(x_2369.x, x_2369.y);
          let x_2372 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2370.x, x_2370.y, x_2372);
          let x_2380 : vec3<f32> = txVec30;
          let x_2382 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2380.xy, x_2380.z);
          u_xlat13.x = x_2382;
          let x_2385 : vec4<f32> = u_xlat12;
          let x_2386 : vec2<f32> = vec2<f32>(x_2385.z, x_2385.w);
          let x_2388 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2386.x, x_2386.y, x_2388);
          let x_2395 : vec3<f32> = txVec31;
          let x_2397 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2395.xy, x_2395.z);
          u_xlat13.y = x_2397;
          let x_2399 : vec4<f32> = u_xlat11;
          let x_2403 : vec4<f32> = x_483.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2399.x, x_2399.y, x_2399.x, x_2399.y) + x_2403);
          let x_2406 : vec4<f32> = u_xlat12;
          let x_2407 : vec2<f32> = vec2<f32>(x_2406.x, x_2406.y);
          let x_2409 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2407.x, x_2407.y, x_2409);
          let x_2416 : vec3<f32> = txVec32;
          let x_2418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2416.xy, x_2416.z);
          u_xlat13.z = x_2418;
          let x_2421 : vec4<f32> = u_xlat12;
          let x_2422 : vec2<f32> = vec2<f32>(x_2421.z, x_2421.w);
          let x_2424 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2422.x, x_2422.y, x_2424);
          let x_2431 : vec3<f32> = txVec33;
          let x_2433 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2431.xy, x_2431.z);
          u_xlat13.w = x_2433;
          let x_2435 : vec4<f32> = u_xlat13;
          u_xlat87 = dot(x_2435, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2438 : i32 = u_xlati83;
          let x_2440 : f32 = x_483.x_AdditionalShadowParams[x_2438].y;
          u_xlatb88 = (2.0f == x_2440);
          let x_2442 : bool = u_xlatb88;
          if (x_2442) {
            let x_2445 : vec4<f32> = u_xlat11;
            let x_2449 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2452 : vec2<f32> = ((vec2<f32>(x_2445.x, x_2445.y) * vec2<f32>(x_2449.z, x_2449.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2453 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2452.x, x_2452.y, x_2453.z, x_2453.w);
            let x_2455 : vec4<f32> = u_xlat12;
            let x_2457 : vec2<f32> = floor(vec2<f32>(x_2455.x, x_2455.y));
            let x_2458 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2457.x, x_2457.y, x_2458.z, x_2458.w);
            let x_2461 : vec4<f32> = u_xlat11;
            let x_2464 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2467 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2461.x, x_2461.y) * vec2<f32>(x_2464.z, x_2464.w)) + -(vec2<f32>(x_2467.x, x_2467.y)));
            let x_2471 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2471.x, x_2471.x, x_2471.y, x_2471.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2474 : vec4<f32> = u_xlat13;
            let x_2476 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2474.x, x_2474.x, x_2474.z, x_2474.z) * vec4<f32>(x_2476.x, x_2476.x, x_2476.z, x_2476.z));
            let x_2479 : vec4<f32> = u_xlat14;
            let x_2481 : vec2<f32> = (vec2<f32>(x_2479.y, x_2479.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2482 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2481.x, x_2482.y, x_2481.y, x_2482.w);
            let x_2484 : vec4<f32> = u_xlat14;
            let x_2487 : vec2<f32> = u_xlat64;
            let x_2489 : vec2<f32> = ((vec2<f32>(x_2484.x, x_2484.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2487));
            let x_2490 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2489.x, x_2489.y, x_2490.z, x_2490.w);
            let x_2493 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2493) + vec2<f32>(1.0f, 1.0f));
            let x_2496 : vec2<f32> = u_xlat64;
            let x_2497 : vec2<f32> = min(x_2496, vec2<f32>(0.0f, 0.0f));
            let x_2498 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2497.x, x_2497.y, x_2498.z, x_2498.w);
            let x_2500 : vec4<f32> = u_xlat15;
            let x_2503 : vec4<f32> = u_xlat15;
            let x_2506 : vec2<f32> = u_xlat66;
            let x_2507 : vec2<f32> = ((-(vec2<f32>(x_2500.x, x_2500.y)) * vec2<f32>(x_2503.x, x_2503.y)) + x_2506);
            let x_2508 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2507.x, x_2507.y, x_2508.z, x_2508.w);
            let x_2510 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2510, vec2<f32>(0.0f, 0.0f));
            let x_2512 : vec2<f32> = u_xlat64;
            let x_2514 : vec2<f32> = u_xlat64;
            let x_2516 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2512) * x_2514) + vec2<f32>(x_2516.y, x_2516.w));
            let x_2519 : vec4<f32> = u_xlat15;
            let x_2521 : vec2<f32> = (vec2<f32>(x_2519.x, x_2519.y) + vec2<f32>(1.0f, 1.0f));
            let x_2522 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2521.x, x_2521.y, x_2522.z, x_2522.w);
            let x_2524 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2524 + vec2<f32>(1.0f, 1.0f));
            let x_2526 : vec4<f32> = u_xlat14;
            let x_2528 : vec2<f32> = (vec2<f32>(x_2526.x, x_2526.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2529 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2528.x, x_2528.y, x_2529.z, x_2529.w);
            let x_2531 : vec2<f32> = u_xlat66;
            let x_2532 : vec2<f32> = (x_2531 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2533 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2532.x, x_2532.y, x_2533.z, x_2533.w);
            let x_2535 : vec4<f32> = u_xlat15;
            let x_2537 : vec2<f32> = (vec2<f32>(x_2535.x, x_2535.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2538 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2537.x, x_2537.y, x_2538.z, x_2538.w);
            let x_2540 : vec2<f32> = u_xlat64;
            let x_2541 : vec2<f32> = (x_2540 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2542 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2541.x, x_2541.y, x_2542.z, x_2542.w);
            let x_2544 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2544.y, x_2544.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2548 : f32 = u_xlat15.x;
            u_xlat16.z = x_2548;
            let x_2551 : f32 = u_xlat64.x;
            u_xlat16.w = x_2551;
            let x_2554 : f32 = u_xlat17.x;
            u_xlat14.z = x_2554;
            let x_2557 : f32 = u_xlat13.x;
            u_xlat14.w = x_2557;
            let x_2559 : vec4<f32> = u_xlat14;
            let x_2561 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2559.z, x_2559.w, x_2559.x, x_2559.z) + vec4<f32>(x_2561.z, x_2561.w, x_2561.x, x_2561.z));
            let x_2565 : f32 = u_xlat16.y;
            u_xlat15.z = x_2565;
            let x_2568 : f32 = u_xlat64.y;
            u_xlat15.w = x_2568;
            let x_2571 : f32 = u_xlat14.y;
            u_xlat17.z = x_2571;
            let x_2574 : f32 = u_xlat13.z;
            u_xlat17.w = x_2574;
            let x_2576 : vec4<f32> = u_xlat15;
            let x_2578 : vec4<f32> = u_xlat17;
            let x_2580 : vec3<f32> = (vec3<f32>(x_2576.z, x_2576.y, x_2576.w) + vec3<f32>(x_2578.z, x_2578.y, x_2578.w));
            let x_2581 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2580.x, x_2580.y, x_2580.z, x_2581.w);
            let x_2583 : vec4<f32> = u_xlat14;
            let x_2585 : vec4<f32> = u_xlat18;
            let x_2587 : vec3<f32> = (vec3<f32>(x_2583.x, x_2583.z, x_2583.w) / vec3<f32>(x_2585.z, x_2585.w, x_2585.y));
            let x_2588 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2587.x, x_2587.y, x_2587.z, x_2588.w);
            let x_2590 : vec4<f32> = u_xlat14;
            let x_2592 : vec3<f32> = (vec3<f32>(x_2590.x, x_2590.y, x_2590.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2593 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2592.x, x_2592.y, x_2592.z, x_2593.w);
            let x_2595 : vec4<f32> = u_xlat17;
            let x_2597 : vec4<f32> = u_xlat13;
            let x_2599 : vec3<f32> = (vec3<f32>(x_2595.z, x_2595.y, x_2595.w) / vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
            let x_2600 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);
            let x_2602 : vec4<f32> = u_xlat15;
            let x_2604 : vec3<f32> = (vec3<f32>(x_2602.x, x_2602.y, x_2602.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2605 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
            let x_2607 : vec4<f32> = u_xlat14;
            let x_2610 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2612 : vec3<f32> = (vec3<f32>(x_2607.y, x_2607.x, x_2607.z) * vec3<f32>(x_2610.x, x_2610.x, x_2610.x));
            let x_2613 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2612.x, x_2612.y, x_2612.z, x_2613.w);
            let x_2615 : vec4<f32> = u_xlat15;
            let x_2618 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2620 : vec3<f32> = (vec3<f32>(x_2615.x, x_2615.y, x_2615.z) * vec3<f32>(x_2618.y, x_2618.y, x_2618.y));
            let x_2621 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2620.x, x_2620.y, x_2620.z, x_2621.w);
            let x_2624 : f32 = u_xlat15.x;
            u_xlat14.w = x_2624;
            let x_2626 : vec4<f32> = u_xlat12;
            let x_2629 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2632 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2626.x, x_2626.y, x_2626.x, x_2626.y) * vec4<f32>(x_2629.x, x_2629.y, x_2629.x, x_2629.y)) + vec4<f32>(x_2632.y, x_2632.w, x_2632.x, x_2632.w));
            let x_2635 : vec4<f32> = u_xlat12;
            let x_2638 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2641 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2635.x, x_2635.y) * vec2<f32>(x_2638.x, x_2638.y)) + vec2<f32>(x_2641.z, x_2641.w));
            let x_2645 : f32 = u_xlat14.y;
            u_xlat15.w = x_2645;
            let x_2647 : vec4<f32> = u_xlat15;
            let x_2648 : vec2<f32> = vec2<f32>(x_2647.y, x_2647.z);
            let x_2649 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2649.x, x_2648.x, x_2649.z, x_2648.y);
            let x_2651 : vec4<f32> = u_xlat12;
            let x_2654 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2657 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2651.x, x_2651.y, x_2651.x, x_2651.y) * vec4<f32>(x_2654.x, x_2654.y, x_2654.x, x_2654.y)) + vec4<f32>(x_2657.x, x_2657.y, x_2657.z, x_2657.y));
            let x_2660 : vec4<f32> = u_xlat12;
            let x_2663 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2666 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2660.x, x_2660.y, x_2660.x, x_2660.y) * vec4<f32>(x_2663.x, x_2663.y, x_2663.x, x_2663.y)) + vec4<f32>(x_2666.w, x_2666.y, x_2666.w, x_2666.z));
            let x_2669 : vec4<f32> = u_xlat12;
            let x_2672 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2675 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2669.x, x_2669.y, x_2669.x, x_2669.y) * vec4<f32>(x_2672.x, x_2672.y, x_2672.x, x_2672.y)) + vec4<f32>(x_2675.x, x_2675.w, x_2675.z, x_2675.w));
            let x_2678 : vec4<f32> = u_xlat13;
            let x_2680 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2678.x, x_2678.x, x_2678.x, x_2678.y) * vec4<f32>(x_2680.z, x_2680.w, x_2680.y, x_2680.z));
            let x_2683 : vec4<f32> = u_xlat13;
            let x_2685 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2683.y, x_2683.y, x_2683.z, x_2683.z) * x_2685);
            let x_2688 : f32 = u_xlat13.z;
            let x_2690 : f32 = u_xlat18.y;
            u_xlat88 = (x_2688 * x_2690);
            let x_2693 : vec4<f32> = u_xlat16;
            let x_2694 : vec2<f32> = vec2<f32>(x_2693.x, x_2693.y);
            let x_2696 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2694.x, x_2694.y, x_2696);
            let x_2703 : vec3<f32> = txVec34;
            let x_2705 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2703.xy, x_2703.z);
            u_xlat89 = x_2705;
            let x_2707 : vec4<f32> = u_xlat16;
            let x_2708 : vec2<f32> = vec2<f32>(x_2707.z, x_2707.w);
            let x_2710 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2708.x, x_2708.y, x_2710);
            let x_2717 : vec3<f32> = txVec35;
            let x_2719 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2717.xy, x_2717.z);
            u_xlat12.x = x_2719;
            let x_2722 : f32 = u_xlat12.x;
            let x_2724 : f32 = u_xlat19.y;
            u_xlat12.x = (x_2722 * x_2724);
            let x_2728 : f32 = u_xlat19.x;
            let x_2729 : f32 = u_xlat89;
            let x_2732 : f32 = u_xlat12.x;
            u_xlat89 = ((x_2728 * x_2729) + x_2732);
            let x_2735 : vec2<f32> = u_xlat64;
            let x_2737 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2735.x, x_2735.y, x_2737);
            let x_2744 : vec3<f32> = txVec36;
            let x_2746 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2744.xy, x_2744.z);
            u_xlat12.x = x_2746;
            let x_2749 : f32 = u_xlat19.z;
            let x_2751 : f32 = u_xlat12.x;
            let x_2753 : f32 = u_xlat89;
            u_xlat89 = ((x_2749 * x_2751) + x_2753);
            let x_2756 : vec4<f32> = u_xlat15;
            let x_2757 : vec2<f32> = vec2<f32>(x_2756.x, x_2756.y);
            let x_2759 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2757.x, x_2757.y, x_2759);
            let x_2766 : vec3<f32> = txVec37;
            let x_2768 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2766.xy, x_2766.z);
            u_xlat12.x = x_2768;
            let x_2771 : f32 = u_xlat19.w;
            let x_2773 : f32 = u_xlat12.x;
            let x_2775 : f32 = u_xlat89;
            u_xlat89 = ((x_2771 * x_2773) + x_2775);
            let x_2778 : vec4<f32> = u_xlat17;
            let x_2779 : vec2<f32> = vec2<f32>(x_2778.x, x_2778.y);
            let x_2781 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2779.x, x_2779.y, x_2781);
            let x_2788 : vec3<f32> = txVec38;
            let x_2790 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2788.xy, x_2788.z);
            u_xlat12.x = x_2790;
            let x_2793 : f32 = u_xlat20.x;
            let x_2795 : f32 = u_xlat12.x;
            let x_2797 : f32 = u_xlat89;
            u_xlat89 = ((x_2793 * x_2795) + x_2797);
            let x_2800 : vec4<f32> = u_xlat17;
            let x_2801 : vec2<f32> = vec2<f32>(x_2800.z, x_2800.w);
            let x_2803 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2801.x, x_2801.y, x_2803);
            let x_2810 : vec3<f32> = txVec39;
            let x_2812 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2810.xy, x_2810.z);
            u_xlat12.x = x_2812;
            let x_2815 : f32 = u_xlat20.y;
            let x_2817 : f32 = u_xlat12.x;
            let x_2819 : f32 = u_xlat89;
            u_xlat89 = ((x_2815 * x_2817) + x_2819);
            let x_2822 : vec4<f32> = u_xlat15;
            let x_2823 : vec2<f32> = vec2<f32>(x_2822.z, x_2822.w);
            let x_2825 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_2823.x, x_2823.y, x_2825);
            let x_2832 : vec3<f32> = txVec40;
            let x_2834 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2832.xy, x_2832.z);
            u_xlat12.x = x_2834;
            let x_2837 : f32 = u_xlat20.z;
            let x_2839 : f32 = u_xlat12.x;
            let x_2841 : f32 = u_xlat89;
            u_xlat89 = ((x_2837 * x_2839) + x_2841);
            let x_2844 : vec4<f32> = u_xlat14;
            let x_2845 : vec2<f32> = vec2<f32>(x_2844.x, x_2844.y);
            let x_2847 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_2845.x, x_2845.y, x_2847);
            let x_2854 : vec3<f32> = txVec41;
            let x_2856 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2854.xy, x_2854.z);
            u_xlat12.x = x_2856;
            let x_2859 : f32 = u_xlat20.w;
            let x_2861 : f32 = u_xlat12.x;
            let x_2863 : f32 = u_xlat89;
            u_xlat89 = ((x_2859 * x_2861) + x_2863);
            let x_2866 : vec4<f32> = u_xlat14;
            let x_2867 : vec2<f32> = vec2<f32>(x_2866.z, x_2866.w);
            let x_2869 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_2867.x, x_2867.y, x_2869);
            let x_2876 : vec3<f32> = txVec42;
            let x_2878 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2876.xy, x_2876.z);
            u_xlat12.x = x_2878;
            let x_2880 : f32 = u_xlat88;
            let x_2882 : f32 = u_xlat12.x;
            let x_2884 : f32 = u_xlat89;
            u_xlat87 = ((x_2880 * x_2882) + x_2884);
          } else {
            let x_2887 : vec4<f32> = u_xlat11;
            let x_2890 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2893 : vec2<f32> = ((vec2<f32>(x_2887.x, x_2887.y) * vec2<f32>(x_2890.z, x_2890.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2894 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2893.x, x_2893.y, x_2894.z, x_2894.w);
            let x_2896 : vec4<f32> = u_xlat12;
            let x_2898 : vec2<f32> = floor(vec2<f32>(x_2896.x, x_2896.y));
            let x_2899 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2898.x, x_2898.y, x_2899.z, x_2899.w);
            let x_2901 : vec4<f32> = u_xlat11;
            let x_2904 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_2907 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2901.x, x_2901.y) * vec2<f32>(x_2904.z, x_2904.w)) + -(vec2<f32>(x_2907.x, x_2907.y)));
            let x_2911 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2911.x, x_2911.x, x_2911.y, x_2911.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2914 : vec4<f32> = u_xlat13;
            let x_2916 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2914.x, x_2914.x, x_2914.z, x_2914.z) * vec4<f32>(x_2916.x, x_2916.x, x_2916.z, x_2916.z));
            let x_2919 : vec4<f32> = u_xlat14;
            let x_2921 : vec2<f32> = (vec2<f32>(x_2919.y, x_2919.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2922 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2922.x, x_2921.x, x_2922.z, x_2921.y);
            let x_2924 : vec4<f32> = u_xlat14;
            let x_2927 : vec2<f32> = u_xlat64;
            let x_2929 : vec2<f32> = ((vec2<f32>(x_2924.x, x_2924.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2927));
            let x_2930 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2929.x, x_2930.y, x_2929.y, x_2930.w);
            let x_2932 : vec2<f32> = u_xlat64;
            let x_2934 : vec2<f32> = (-(x_2932) + vec2<f32>(1.0f, 1.0f));
            let x_2935 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2934.x, x_2934.y, x_2935.z, x_2935.w);
            let x_2937 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_2937, vec2<f32>(0.0f, 0.0f));
            let x_2939 : vec2<f32> = u_xlat66;
            let x_2941 : vec2<f32> = u_xlat66;
            let x_2943 : vec4<f32> = u_xlat14;
            let x_2945 : vec2<f32> = ((-(x_2939) * x_2941) + vec2<f32>(x_2943.x, x_2943.y));
            let x_2946 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2945.x, x_2945.y, x_2946.z, x_2946.w);
            let x_2948 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_2948, vec2<f32>(0.0f, 0.0f));
            let x_2951 : vec2<f32> = u_xlat66;
            let x_2953 : vec2<f32> = u_xlat66;
            let x_2955 : vec4<f32> = u_xlat13;
            let x_2957 : vec2<f32> = ((-(x_2951) * x_2953) + vec2<f32>(x_2955.y, x_2955.w));
            let x_2958 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_2957.x, x_2958.y, x_2957.y);
            let x_2960 : vec4<f32> = u_xlat14;
            let x_2962 : vec2<f32> = (vec2<f32>(x_2960.x, x_2960.y) + vec2<f32>(2.0f, 2.0f));
            let x_2963 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2962.x, x_2962.y, x_2963.z, x_2963.w);
            let x_2965 : vec3<f32> = u_xlat39;
            let x_2967 : vec2<f32> = (vec2<f32>(x_2965.x, x_2965.z) + vec2<f32>(2.0f, 2.0f));
            let x_2968 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2968.x, x_2967.x, x_2968.z, x_2967.y);
            let x_2971 : f32 = u_xlat13.y;
            u_xlat16.z = (x_2971 * 0.08163200318813323975f);
            let x_2974 : vec4<f32> = u_xlat13;
            let x_2976 : vec3<f32> = (vec3<f32>(x_2974.z, x_2974.x, x_2974.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2977 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2976.x, x_2976.y, x_2976.z, x_2977.w);
            let x_2979 : vec4<f32> = u_xlat14;
            let x_2981 : vec2<f32> = (vec2<f32>(x_2979.x, x_2979.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2982 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2981.x, x_2981.y, x_2982.z, x_2982.w);
            let x_2985 : f32 = u_xlat17.y;
            u_xlat16.x = x_2985;
            let x_2987 : vec2<f32> = u_xlat64;
            let x_2990 : vec2<f32> = ((vec2<f32>(x_2987.x, x_2987.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2991 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2991.x, x_2990.x, x_2991.z, x_2990.y);
            let x_2993 : vec2<f32> = u_xlat64;
            let x_2996 : vec2<f32> = ((vec2<f32>(x_2993.x, x_2993.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2997 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2996.x, x_2997.y, x_2996.y, x_2997.w);
            let x_3000 : f32 = u_xlat13.x;
            u_xlat14.y = x_3000;
            let x_3003 : f32 = u_xlat15.y;
            u_xlat14.w = x_3003;
            let x_3005 : vec4<f32> = u_xlat14;
            let x_3006 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3005 + x_3006);
            let x_3008 : vec2<f32> = u_xlat64;
            let x_3011 : vec2<f32> = ((vec2<f32>(x_3008.y, x_3008.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3012 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3012.x, x_3011.x, x_3012.z, x_3011.y);
            let x_3014 : vec2<f32> = u_xlat64;
            let x_3017 : vec2<f32> = ((vec2<f32>(x_3014.y, x_3014.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3018 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3017.x, x_3018.y, x_3017.y, x_3018.w);
            let x_3021 : f32 = u_xlat13.y;
            u_xlat15.y = x_3021;
            let x_3023 : vec4<f32> = u_xlat15;
            let x_3024 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3023 + x_3024);
            let x_3026 : vec4<f32> = u_xlat14;
            let x_3027 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3026 / x_3027);
            let x_3029 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3029 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3031 : vec4<f32> = u_xlat15;
            let x_3032 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3031 / x_3032);
            let x_3034 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3034 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3036 : vec4<f32> = u_xlat14;
            let x_3039 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3036.w, x_3036.x, x_3036.y, x_3036.z) * vec4<f32>(x_3039.x, x_3039.x, x_3039.x, x_3039.x));
            let x_3042 : vec4<f32> = u_xlat15;
            let x_3045 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3042.x, x_3042.w, x_3042.y, x_3042.z) * vec4<f32>(x_3045.y, x_3045.y, x_3045.y, x_3045.y));
            let x_3048 : vec4<f32> = u_xlat14;
            let x_3049 : vec3<f32> = vec3<f32>(x_3048.y, x_3048.z, x_3048.w);
            let x_3050 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3049.x, x_3050.y, x_3049.y, x_3049.z);
            let x_3053 : f32 = u_xlat15.x;
            u_xlat17.y = x_3053;
            let x_3055 : vec4<f32> = u_xlat12;
            let x_3058 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3061 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3055.x, x_3055.y, x_3055.x, x_3055.y) * vec4<f32>(x_3058.x, x_3058.y, x_3058.x, x_3058.y)) + vec4<f32>(x_3061.x, x_3061.y, x_3061.z, x_3061.y));
            let x_3064 : vec4<f32> = u_xlat12;
            let x_3067 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3070 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3064.x, x_3064.y) * vec2<f32>(x_3067.x, x_3067.y)) + vec2<f32>(x_3070.w, x_3070.y));
            let x_3074 : f32 = u_xlat17.y;
            u_xlat14.y = x_3074;
            let x_3077 : f32 = u_xlat15.z;
            u_xlat17.y = x_3077;
            let x_3079 : vec4<f32> = u_xlat12;
            let x_3082 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3085 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3079.x, x_3079.y, x_3079.x, x_3079.y) * vec4<f32>(x_3082.x, x_3082.y, x_3082.x, x_3082.y)) + vec4<f32>(x_3085.x, x_3085.y, x_3085.z, x_3085.y));
            let x_3088 : vec4<f32> = u_xlat12;
            let x_3091 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3094 : vec4<f32> = u_xlat17;
            let x_3096 : vec2<f32> = ((vec2<f32>(x_3088.x, x_3088.y) * vec2<f32>(x_3091.x, x_3091.y)) + vec2<f32>(x_3094.w, x_3094.y));
            let x_3097 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3096.x, x_3096.y, x_3097.z, x_3097.w);
            let x_3100 : f32 = u_xlat17.y;
            u_xlat14.z = x_3100;
            let x_3103 : vec4<f32> = u_xlat12;
            let x_3106 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3109 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3103.x, x_3103.y, x_3103.x, x_3103.y) * vec4<f32>(x_3106.x, x_3106.y, x_3106.x, x_3106.y)) + vec4<f32>(x_3109.x, x_3109.y, x_3109.x, x_3109.z));
            let x_3113 : f32 = u_xlat15.w;
            u_xlat17.y = x_3113;
            let x_3116 : vec4<f32> = u_xlat12;
            let x_3119 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3122 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3116.x, x_3116.y, x_3116.x, x_3116.y) * vec4<f32>(x_3119.x, x_3119.y, x_3119.x, x_3119.y)) + vec4<f32>(x_3122.x, x_3122.y, x_3122.z, x_3122.y));
            let x_3126 : vec4<f32> = u_xlat12;
            let x_3129 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3132 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3126.x, x_3126.y) * vec2<f32>(x_3129.x, x_3129.y)) + vec2<f32>(x_3132.w, x_3132.y));
            let x_3136 : f32 = u_xlat17.y;
            u_xlat14.w = x_3136;
            let x_3139 : vec4<f32> = u_xlat12;
            let x_3142 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3145 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3139.x, x_3139.y) * vec2<f32>(x_3142.x, x_3142.y)) + vec2<f32>(x_3145.x, x_3145.w));
            let x_3148 : vec4<f32> = u_xlat17;
            let x_3149 : vec3<f32> = vec3<f32>(x_3148.x, x_3148.z, x_3148.w);
            let x_3150 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3149.x, x_3150.y, x_3149.y, x_3149.z);
            let x_3152 : vec4<f32> = u_xlat12;
            let x_3155 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3158 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3152.x, x_3152.y, x_3152.x, x_3152.y) * vec4<f32>(x_3155.x, x_3155.y, x_3155.x, x_3155.y)) + vec4<f32>(x_3158.x, x_3158.y, x_3158.z, x_3158.y));
            let x_3161 : vec4<f32> = u_xlat12;
            let x_3164 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3167 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3161.x, x_3161.y) * vec2<f32>(x_3164.x, x_3164.y)) + vec2<f32>(x_3167.w, x_3167.y));
            let x_3171 : f32 = u_xlat14.x;
            u_xlat15.x = x_3171;
            let x_3173 : vec4<f32> = u_xlat12;
            let x_3176 : vec4<f32> = x_483.x_AdditionalShadowmapSize;
            let x_3179 : vec4<f32> = u_xlat15;
            let x_3181 : vec2<f32> = ((vec2<f32>(x_3173.x, x_3173.y) * vec2<f32>(x_3176.x, x_3176.y)) + vec2<f32>(x_3179.x, x_3179.y));
            let x_3182 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3181.x, x_3181.y, x_3182.z, x_3182.w);
            let x_3185 : vec4<f32> = u_xlat13;
            let x_3187 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3185.x, x_3185.x, x_3185.x, x_3185.x) * x_3187);
            let x_3190 : vec4<f32> = u_xlat13;
            let x_3192 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3190.y, x_3190.y, x_3190.y, x_3190.y) * x_3192);
            let x_3195 : vec4<f32> = u_xlat13;
            let x_3197 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3195.z, x_3195.z, x_3195.z, x_3195.z) * x_3197);
            let x_3199 : vec4<f32> = u_xlat13;
            let x_3201 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3199.w, x_3199.w, x_3199.w, x_3199.w) * x_3201);
            let x_3204 : vec4<f32> = u_xlat18;
            let x_3205 : vec2<f32> = vec2<f32>(x_3204.x, x_3204.y);
            let x_3207 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3205.x, x_3205.y, x_3207);
            let x_3214 : vec3<f32> = txVec43;
            let x_3216 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3214.xy, x_3214.z);
            u_xlat88 = x_3216;
            let x_3218 : vec4<f32> = u_xlat18;
            let x_3219 : vec2<f32> = vec2<f32>(x_3218.z, x_3218.w);
            let x_3221 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3219.x, x_3219.y, x_3221);
            let x_3228 : vec3<f32> = txVec44;
            let x_3230 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3228.xy, x_3228.z);
            u_xlat89 = x_3230;
            let x_3231 : f32 = u_xlat89;
            let x_3233 : f32 = u_xlat23.y;
            u_xlat89 = (x_3231 * x_3233);
            let x_3236 : f32 = u_xlat23.x;
            let x_3237 : f32 = u_xlat88;
            let x_3239 : f32 = u_xlat89;
            u_xlat88 = ((x_3236 * x_3237) + x_3239);
            let x_3242 : vec2<f32> = u_xlat64;
            let x_3244 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3242.x, x_3242.y, x_3244);
            let x_3251 : vec3<f32> = txVec45;
            let x_3253 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3251.xy, x_3251.z);
            u_xlat89 = x_3253;
            let x_3255 : f32 = u_xlat23.z;
            let x_3256 : f32 = u_xlat89;
            let x_3258 : f32 = u_xlat88;
            u_xlat88 = ((x_3255 * x_3256) + x_3258);
            let x_3261 : vec4<f32> = u_xlat21;
            let x_3262 : vec2<f32> = vec2<f32>(x_3261.x, x_3261.y);
            let x_3264 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3262.x, x_3262.y, x_3264);
            let x_3271 : vec3<f32> = txVec46;
            let x_3273 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3271.xy, x_3271.z);
            u_xlat89 = x_3273;
            let x_3275 : f32 = u_xlat23.w;
            let x_3276 : f32 = u_xlat89;
            let x_3278 : f32 = u_xlat88;
            u_xlat88 = ((x_3275 * x_3276) + x_3278);
            let x_3281 : vec4<f32> = u_xlat19;
            let x_3282 : vec2<f32> = vec2<f32>(x_3281.x, x_3281.y);
            let x_3284 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3282.x, x_3282.y, x_3284);
            let x_3291 : vec3<f32> = txVec47;
            let x_3293 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3291.xy, x_3291.z);
            u_xlat89 = x_3293;
            let x_3295 : f32 = u_xlat24.x;
            let x_3296 : f32 = u_xlat89;
            let x_3298 : f32 = u_xlat88;
            u_xlat88 = ((x_3295 * x_3296) + x_3298);
            let x_3301 : vec4<f32> = u_xlat19;
            let x_3302 : vec2<f32> = vec2<f32>(x_3301.z, x_3301.w);
            let x_3304 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3302.x, x_3302.y, x_3304);
            let x_3311 : vec3<f32> = txVec48;
            let x_3313 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3311.xy, x_3311.z);
            u_xlat89 = x_3313;
            let x_3315 : f32 = u_xlat24.y;
            let x_3316 : f32 = u_xlat89;
            let x_3318 : f32 = u_xlat88;
            u_xlat88 = ((x_3315 * x_3316) + x_3318);
            let x_3321 : vec4<f32> = u_xlat20;
            let x_3322 : vec2<f32> = vec2<f32>(x_3321.x, x_3321.y);
            let x_3324 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3322.x, x_3322.y, x_3324);
            let x_3331 : vec3<f32> = txVec49;
            let x_3333 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3331.xy, x_3331.z);
            u_xlat89 = x_3333;
            let x_3335 : f32 = u_xlat24.z;
            let x_3336 : f32 = u_xlat89;
            let x_3338 : f32 = u_xlat88;
            u_xlat88 = ((x_3335 * x_3336) + x_3338);
            let x_3341 : vec4<f32> = u_xlat21;
            let x_3342 : vec2<f32> = vec2<f32>(x_3341.z, x_3341.w);
            let x_3344 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3342.x, x_3342.y, x_3344);
            let x_3351 : vec3<f32> = txVec50;
            let x_3353 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3351.xy, x_3351.z);
            u_xlat89 = x_3353;
            let x_3355 : f32 = u_xlat24.w;
            let x_3356 : f32 = u_xlat89;
            let x_3358 : f32 = u_xlat88;
            u_xlat88 = ((x_3355 * x_3356) + x_3358);
            let x_3361 : vec4<f32> = u_xlat22;
            let x_3362 : vec2<f32> = vec2<f32>(x_3361.x, x_3361.y);
            let x_3364 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3362.x, x_3362.y, x_3364);
            let x_3371 : vec3<f32> = txVec51;
            let x_3373 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3371.xy, x_3371.z);
            u_xlat89 = x_3373;
            let x_3375 : f32 = u_xlat25.x;
            let x_3376 : f32 = u_xlat89;
            let x_3378 : f32 = u_xlat88;
            u_xlat88 = ((x_3375 * x_3376) + x_3378);
            let x_3381 : vec4<f32> = u_xlat22;
            let x_3382 : vec2<f32> = vec2<f32>(x_3381.z, x_3381.w);
            let x_3384 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3382.x, x_3382.y, x_3384);
            let x_3391 : vec3<f32> = txVec52;
            let x_3393 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3391.xy, x_3391.z);
            u_xlat89 = x_3393;
            let x_3395 : f32 = u_xlat25.y;
            let x_3396 : f32 = u_xlat89;
            let x_3398 : f32 = u_xlat88;
            u_xlat88 = ((x_3395 * x_3396) + x_3398);
            let x_3401 : vec2<f32> = u_xlat40;
            let x_3403 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3401.x, x_3401.y, x_3403);
            let x_3410 : vec3<f32> = txVec53;
            let x_3412 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3410.xy, x_3410.z);
            u_xlat89 = x_3412;
            let x_3414 : f32 = u_xlat25.z;
            let x_3415 : f32 = u_xlat89;
            let x_3417 : f32 = u_xlat88;
            u_xlat88 = ((x_3414 * x_3415) + x_3417);
            let x_3420 : vec2<f32> = u_xlat72;
            let x_3422 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3420.x, x_3420.y, x_3422);
            let x_3429 : vec3<f32> = txVec54;
            let x_3431 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3429.xy, x_3429.z);
            u_xlat89 = x_3431;
            let x_3433 : f32 = u_xlat25.w;
            let x_3434 : f32 = u_xlat89;
            let x_3436 : f32 = u_xlat88;
            u_xlat88 = ((x_3433 * x_3434) + x_3436);
            let x_3439 : vec4<f32> = u_xlat17;
            let x_3440 : vec2<f32> = vec2<f32>(x_3439.x, x_3439.y);
            let x_3442 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3440.x, x_3440.y, x_3442);
            let x_3449 : vec3<f32> = txVec55;
            let x_3451 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3449.xy, x_3449.z);
            u_xlat89 = x_3451;
            let x_3453 : f32 = u_xlat13.x;
            let x_3454 : f32 = u_xlat89;
            let x_3456 : f32 = u_xlat88;
            u_xlat88 = ((x_3453 * x_3454) + x_3456);
            let x_3459 : vec4<f32> = u_xlat17;
            let x_3460 : vec2<f32> = vec2<f32>(x_3459.z, x_3459.w);
            let x_3462 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3460.x, x_3460.y, x_3462);
            let x_3469 : vec3<f32> = txVec56;
            let x_3471 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3469.xy, x_3469.z);
            u_xlat89 = x_3471;
            let x_3473 : f32 = u_xlat13.y;
            let x_3474 : f32 = u_xlat89;
            let x_3476 : f32 = u_xlat88;
            u_xlat88 = ((x_3473 * x_3474) + x_3476);
            let x_3479 : vec2<f32> = u_xlat67;
            let x_3481 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3479.x, x_3479.y, x_3481);
            let x_3488 : vec3<f32> = txVec57;
            let x_3490 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3488.xy, x_3488.z);
            u_xlat89 = x_3490;
            let x_3492 : f32 = u_xlat13.z;
            let x_3493 : f32 = u_xlat89;
            let x_3495 : f32 = u_xlat88;
            u_xlat88 = ((x_3492 * x_3493) + x_3495);
            let x_3498 : vec4<f32> = u_xlat12;
            let x_3499 : vec2<f32> = vec2<f32>(x_3498.x, x_3498.y);
            let x_3501 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3499.x, x_3499.y, x_3501);
            let x_3508 : vec3<f32> = txVec58;
            let x_3510 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3508.xy, x_3508.z);
            u_xlat89 = x_3510;
            let x_3512 : f32 = u_xlat13.w;
            let x_3513 : f32 = u_xlat89;
            let x_3515 : f32 = u_xlat88;
            u_xlat87 = ((x_3512 * x_3513) + x_3515);
          }
        }
      } else {
        let x_3519 : vec4<f32> = u_xlat11;
        let x_3520 : vec2<f32> = vec2<f32>(x_3519.x, x_3519.y);
        let x_3522 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3520.x, x_3520.y, x_3522);
        let x_3529 : vec3<f32> = txVec59;
        let x_3531 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3529.xy, x_3529.z);
        u_xlat87 = x_3531;
      }
      let x_3532 : i32 = u_xlati83;
      let x_3534 : f32 = x_483.x_AdditionalShadowParams[x_3532].x;
      u_xlat88 = (1.0f + -(x_3534));
      let x_3537 : f32 = u_xlat87;
      let x_3538 : i32 = u_xlati83;
      let x_3540 : f32 = x_483.x_AdditionalShadowParams[x_3538].x;
      let x_3542 : f32 = u_xlat88;
      u_xlat87 = ((x_3537 * x_3540) + x_3542);
      let x_3545 : f32 = u_xlat11.z;
      u_xlatb88 = (0.0f >= x_3545);
      let x_3548 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_3548 >= 1.0f);
      let x_3551 : bool = u_xlatb88;
      let x_3553 : bool = u_xlatb11.x;
      u_xlatb88 = (x_3551 | x_3553);
      let x_3555 : bool = u_xlatb88;
      let x_3556 : f32 = u_xlat87;
      u_xlat87 = select(x_3556, 1.0f, x_3555);
    } else {
      u_xlat87 = 1.0f;
    }
    let x_3559 : f32 = u_xlat87;
    u_xlat88 = (-(x_3559) + 1.0f);
    let x_3563 : f32 = u_xlat3.x;
    let x_3564 : f32 = u_xlat88;
    let x_3566 : f32 = u_xlat87;
    u_xlat87 = ((x_3563 * x_3564) + x_3566);
    let x_3568 : f32 = u_xlat84;
    let x_3569 : f32 = u_xlat87;
    u_xlat84 = (x_3568 * x_3569);
    let x_3571 : vec4<f32> = u_xlat4;
    let x_3573 : vec4<f32> = u_xlat10;
    u_xlat87 = dot(vec3<f32>(x_3571.x, x_3571.y, x_3571.z), vec3<f32>(x_3573.x, x_3573.y, x_3573.z));
    let x_3576 : f32 = u_xlat87;
    u_xlat87 = clamp(x_3576, 0.0f, 1.0f);
    let x_3578 : f32 = u_xlat84;
    let x_3579 : f32 = u_xlat87;
    u_xlat84 = (x_3578 * x_3579);
    let x_3581 : f32 = u_xlat84;
    let x_3583 : i32 = u_xlati83;
    let x_3585 : vec4<f32> = x_2123.x_AdditionalLightsColor[x_3583];
    let x_3587 : vec3<f32> = (vec3<f32>(x_3581, x_3581, x_3581) * vec3<f32>(x_3585.x, x_3585.y, x_3585.z));
    let x_3588 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3587.x, x_3587.y, x_3587.z, x_3588.w);
    let x_3590 : vec4<f32> = u_xlat9;
    let x_3592 : f32 = u_xlat85;
    let x_3595 : vec4<f32> = u_xlat1;
    let x_3597 : vec3<f32> = ((vec3<f32>(x_3590.x, x_3590.y, x_3590.z) * vec3<f32>(x_3592, x_3592, x_3592)) + vec3<f32>(x_3595.x, x_3595.y, x_3595.w));
    let x_3598 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3597.x, x_3597.y, x_3597.z, x_3598.w);
    let x_3600 : vec4<f32> = u_xlat9;
    let x_3602 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3600.x, x_3600.y, x_3600.z), vec3<f32>(x_3602.x, x_3602.y, x_3602.z));
    let x_3605 : f32 = u_xlat83;
    u_xlat83 = max(x_3605, 1.17549435e-38f);
    let x_3607 : f32 = u_xlat83;
    u_xlat83 = inverseSqrt(x_3607);
    let x_3609 : f32 = u_xlat83;
    let x_3611 : vec4<f32> = u_xlat9;
    let x_3613 : vec3<f32> = (vec3<f32>(x_3609, x_3609, x_3609) * vec3<f32>(x_3611.x, x_3611.y, x_3611.z));
    let x_3614 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3613.x, x_3613.y, x_3613.z, x_3614.w);
    let x_3616 : vec4<f32> = u_xlat4;
    let x_3618 : vec4<f32> = u_xlat9;
    u_xlat83 = dot(vec3<f32>(x_3616.x, x_3616.y, x_3616.z), vec3<f32>(x_3618.x, x_3618.y, x_3618.z));
    let x_3621 : f32 = u_xlat83;
    u_xlat83 = clamp(x_3621, 0.0f, 1.0f);
    let x_3623 : vec4<f32> = u_xlat10;
    let x_3625 : vec4<f32> = u_xlat9;
    u_xlat84 = dot(vec3<f32>(x_3623.x, x_3623.y, x_3623.z), vec3<f32>(x_3625.x, x_3625.y, x_3625.z));
    let x_3628 : f32 = u_xlat84;
    u_xlat84 = clamp(x_3628, 0.0f, 1.0f);
    let x_3630 : f32 = u_xlat83;
    let x_3631 : f32 = u_xlat83;
    u_xlat83 = (x_3630 * x_3631);
    let x_3633 : f32 = u_xlat83;
    let x_3635 : f32 = u_xlat8.x;
    u_xlat83 = ((x_3633 * x_3635) + 1.00001001358032226562f);
    let x_3638 : f32 = u_xlat84;
    let x_3639 : f32 = u_xlat84;
    u_xlat84 = (x_3638 * x_3639);
    let x_3641 : f32 = u_xlat83;
    let x_3642 : f32 = u_xlat83;
    u_xlat83 = (x_3641 * x_3642);
    let x_3644 : f32 = u_xlat84;
    u_xlat84 = max(x_3644, 0.10000000149011611938f);
    let x_3646 : f32 = u_xlat83;
    let x_3647 : f32 = u_xlat84;
    u_xlat83 = (x_3646 * x_3647);
    let x_3649 : f32 = u_xlat82;
    let x_3650 : f32 = u_xlat83;
    u_xlat83 = (x_3649 * x_3650);
    let x_3652 : f32 = u_xlat29;
    let x_3653 : f32 = u_xlat83;
    u_xlat83 = (x_3652 / x_3653);
    let x_3655 : vec3<f32> = u_xlat0;
    let x_3656 : f32 = u_xlat83;
    let x_3659 : vec4<f32> = u_xlat6;
    let x_3661 : vec3<f32> = ((x_3655 * vec3<f32>(x_3656, x_3656, x_3656)) + vec3<f32>(x_3659.x, x_3659.y, x_3659.z));
    let x_3662 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3661.x, x_3661.y, x_3661.z, x_3662.w);
    let x_3664 : vec4<f32> = u_xlat9;
    let x_3666 : vec4<f32> = u_xlat11;
    let x_3669 : vec3<f32> = u_xlat34;
    u_xlat34 = ((vec3<f32>(x_3664.x, x_3664.y, x_3664.z) * vec3<f32>(x_3666.x, x_3666.y, x_3666.z)) + x_3669);

    continuing {
      let x_3671 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3671 + bitcast<u32>(1i));
    }
  }
  let x_3673 : vec3<f32> = u_xlat5;
  let x_3674 : f32 = u_xlat55;
  let x_3677 : vec4<f32> = u_xlat7;
  u_xlat0 = ((x_3673 * vec3<f32>(x_3674, x_3674, x_3674)) + vec3<f32>(x_3677.x, x_3677.y, x_3677.z));
  let x_3680 : vec3<f32> = u_xlat34;
  let x_3681 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_3680 + x_3681);
  let x_3683 : vec4<f32> = u_xlat2;
  let x_3685 : f32 = u_xlat53;
  let x_3688 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_3683.x, x_3683.y, x_3683.z) * vec3<f32>(x_3685, x_3685, x_3685)) + x_3688);
  let x_3690 : f32 = u_xlat78;
  let x_3691 : f32 = u_xlat78;
  u_xlat78 = (x_3690 * -(x_3691));
  let x_3694 : f32 = u_xlat78;
  u_xlat78 = exp2(x_3694);
  let x_3696 : vec3<f32> = u_xlat0;
  let x_3698 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_3696 + -(vec3<f32>(x_3698.x, x_3698.y, x_3698.z)));
  let x_3704 : f32 = u_xlat78;
  let x_3706 : vec3<f32> = u_xlat0;
  let x_3709 : vec4<f32> = x_29.unity_FogColor;
  let x_3711 : vec3<f32> = ((vec3<f32>(x_3704, x_3704, x_3704) * x_3706) + vec3<f32>(x_3709.x, x_3709.y, x_3709.z));
  let x_3712 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3711.x, x_3711.y, x_3711.z, x_3712.w);
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



diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_DitheringTextureInvSize : f32,
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

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_PointRepeat : sampler;

var<private> u_xlatb2 : bool;

@group(1) @binding(1) var<uniform> x_71 : UnityPerDraw;

var<private> u_xlatb0 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(2) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat5 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_166 : UnityPerMaterial;

var<private> u_xlat6 : f32;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_79 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_29 : vec4<f32> = hlslcc_FragCoord;
  let x_38 : f32 = x_33.x_DitheringTextureInvSize;
  let x_40 : vec2<f32> = (vec2<f32>(x_29.x, x_29.y) * vec2<f32>(x_38, x_38));
  let x_41 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_40.x, x_40.y, x_41.z);
  let x_53 : vec3<f32> = u_xlat0;
  let x_58 : f32 = x_33.x_GlobalMipBias.x;
  let x_59 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_PointRepeat, vec2<f32>(x_53.x, x_53.y), x_58);
  u_xlat0.x = x_59.w;
  let x_74 : f32 = x_71.unity_LODFade.x;
  u_xlatb2 = (x_74 >= 0.0f);
  let x_77 : bool = u_xlatb2;
  if (x_77) {
    let x_83 : f32 = u_xlat0.x;
    x_79 = abs(x_83);
  } else {
    let x_87 : f32 = u_xlat0.x;
    x_79 = -(abs(x_87));
  }
  let x_90 : f32 = x_79;
  u_xlat0.x = x_90;
  let x_93 : f32 = u_xlat0.x;
  let x_96 : f32 = x_71.unity_LODFade.x;
  u_xlat0.x = (-(x_93) + x_96);
  let x_101 : f32 = u_xlat0.x;
  u_xlatb0 = (x_101 < 0.0f);
  let x_103 : bool = u_xlatb0;
  if (((select(0i, 1i, x_103) * -1i) != 0i)) {
    discard;
  }
  let x_113 : vec3<f32> = vs_TEXCOORD2;
  let x_116 : vec4<f32> = vs_TEXCOORD4;
  u_xlat0 = (vec3<f32>(x_113.z, x_113.x, x_113.y) * vec3<f32>(x_116.y, x_116.z, x_116.x));
  let x_119 : vec3<f32> = vs_TEXCOORD2;
  let x_121 : vec4<f32> = vs_TEXCOORD4;
  let x_124 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_119.y, x_119.z, x_119.x) * vec3<f32>(x_121.z, x_121.x, x_121.y)) + -(x_124));
  let x_127 : vec3<f32> = u_xlat0;
  let x_128 : vec4<f32> = vs_TEXCOORD4;
  u_xlat0 = (x_127 * vec3<f32>(x_128.w, x_128.w, x_128.w));
  let x_139 : vec2<f32> = vs_TEXCOORD1;
  let x_141 : f32 = x_33.x_GlobalMipBias.x;
  let x_142 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_139, x_141);
  u_xlat1 = vec3<f32>(x_142.x, x_142.y, x_142.w);
  let x_145 : f32 = u_xlat1.x;
  let x_147 : f32 = u_xlat1.z;
  u_xlat1.x = (x_145 * x_147);
  let x_150 : vec3<f32> = u_xlat1;
  let x_157 : vec2<f32> = ((vec2<f32>(x_150.x, x_150.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_158 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_157.x, x_157.y, x_158.z);
  let x_162 : vec3<f32> = u_xlat1;
  let x_169 : f32 = x_166.x_BumpScale;
  let x_171 : f32 = x_166.x_BumpScale;
  let x_172 : vec2<f32> = vec2<f32>(x_169, x_171);
  u_xlat5 = (vec2<f32>(x_162.x, x_162.y) * vec2<f32>(x_172.x, x_172.y));
  let x_178 : vec3<f32> = u_xlat1;
  let x_180 : vec3<f32> = u_xlat1;
  u_xlat6 = dot(vec2<f32>(x_178.x, x_178.y), vec2<f32>(x_180.x, x_180.y));
  let x_183 : f32 = u_xlat6;
  u_xlat6 = min(x_183, 1.0f);
  let x_185 : f32 = u_xlat6;
  u_xlat6 = (-(x_185) + 1.0f);
  let x_188 : f32 = u_xlat6;
  u_xlat6 = sqrt(x_188);
  let x_190 : f32 = u_xlat6;
  u_xlat6 = max(x_190, 0.0000000000000001f);
  let x_193 : vec3<f32> = u_xlat0;
  let x_194 : vec2<f32> = u_xlat5;
  u_xlat0 = (x_193 * vec3<f32>(x_194.y, x_194.y, x_194.y));
  let x_197 : vec2<f32> = u_xlat5;
  let x_199 : vec4<f32> = vs_TEXCOORD4;
  let x_202 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_197.x, x_197.x, x_197.x) * vec3<f32>(x_199.x, x_199.y, x_199.z)) + x_202);
  let x_204 : f32 = u_xlat6;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_208 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_204, x_204, x_204) * x_206) + x_208);
  let x_210 : vec3<f32> = u_xlat0;
  let x_211 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_210, x_211);
  let x_213 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_213);
  let x_217 : f32 = u_xlat6;
  let x_219 : vec3<f32> = u_xlat0;
  let x_220 : vec3<f32> = (vec3<f32>(x_217, x_217, x_217) * x_219);
  let x_221 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(0) vs_TEXCOORD1_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}



struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_DitheringTextureInvSize : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
}

var<private> gl_FragCoord : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_DitheringTexture : sampler;

@group(1) @binding(1) var<uniform> x_71 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(0) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(2) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_165 : UnityPerMaterial;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlatb2 : bool;
  var x_78 : f32;
  var u_xlatb0 : bool;
  var u_xlat1 : vec3<f32>;
  var u_xlat5 : vec2<f32>;
  var u_xlat6 : f32;
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
  let x_59 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_53.x, x_53.y), x_58);
  u_xlat0.x = x_59.w;
  let x_74 : f32 = x_71.unity_LODFade.x;
  u_xlatb2 = (x_74 >= 0.0f);
  let x_77 : bool = u_xlatb2;
  if (x_77) {
    let x_82 : f32 = u_xlat0.x;
    x_78 = abs(x_82);
  } else {
    let x_86 : f32 = u_xlat0.x;
    x_78 = -(abs(x_86));
  }
  let x_89 : f32 = x_78;
  u_xlat0.x = x_89;
  let x_92 : f32 = u_xlat0.x;
  let x_95 : f32 = x_71.unity_LODFade.x;
  u_xlat0.x = (-(x_92) + x_95);
  let x_100 : f32 = u_xlat0.x;
  u_xlatb0 = (x_100 < 0.0f);
  let x_102 : bool = u_xlatb0;
  if (((select(0i, 1i, x_102) * -1i) != 0i)) {
    discard;
  }
  let x_112 : vec3<f32> = vs_TEXCOORD2;
  let x_115 : vec4<f32> = vs_TEXCOORD4;
  u_xlat0 = (vec3<f32>(x_112.z, x_112.x, x_112.y) * vec3<f32>(x_115.y, x_115.z, x_115.x));
  let x_118 : vec3<f32> = vs_TEXCOORD2;
  let x_120 : vec4<f32> = vs_TEXCOORD4;
  let x_123 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_118.y, x_118.z, x_118.x) * vec3<f32>(x_120.z, x_120.x, x_120.y)) + -(x_123));
  let x_126 : vec3<f32> = u_xlat0;
  let x_127 : vec4<f32> = vs_TEXCOORD4;
  u_xlat0 = (x_126 * vec3<f32>(x_127.w, x_127.w, x_127.w));
  let x_138 : vec2<f32> = vs_TEXCOORD1;
  let x_140 : f32 = x_33.x_GlobalMipBias.x;
  let x_141 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_138, x_140);
  u_xlat1 = vec3<f32>(x_141.x, x_141.y, x_141.w);
  let x_144 : f32 = u_xlat1.x;
  let x_146 : f32 = u_xlat1.z;
  u_xlat1.x = (x_144 * x_146);
  let x_149 : vec3<f32> = u_xlat1;
  let x_156 : vec2<f32> = ((vec2<f32>(x_149.x, x_149.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_157 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_156.x, x_156.y, x_157.z);
  let x_161 : vec3<f32> = u_xlat1;
  let x_168 : f32 = x_165.x_BumpScale;
  let x_170 : f32 = x_165.x_BumpScale;
  let x_171 : vec2<f32> = vec2<f32>(x_168, x_170);
  u_xlat5 = (vec2<f32>(x_161.x, x_161.y) * vec2<f32>(x_171.x, x_171.y));
  let x_177 : vec3<f32> = u_xlat1;
  let x_179 : vec3<f32> = u_xlat1;
  u_xlat6 = dot(vec2<f32>(x_177.x, x_177.y), vec2<f32>(x_179.x, x_179.y));
  let x_182 : f32 = u_xlat6;
  u_xlat6 = min(x_182, 1.0f);
  let x_184 : f32 = u_xlat6;
  u_xlat6 = (-(x_184) + 1.0f);
  let x_187 : f32 = u_xlat6;
  u_xlat6 = sqrt(x_187);
  let x_189 : f32 = u_xlat6;
  u_xlat6 = max(x_189, 1.00000002e-16f);
  let x_192 : vec3<f32> = u_xlat0;
  let x_193 : vec2<f32> = u_xlat5;
  u_xlat0 = (x_192 * vec3<f32>(x_193.y, x_193.y, x_193.y));
  let x_196 : vec2<f32> = u_xlat5;
  let x_198 : vec4<f32> = vs_TEXCOORD4;
  let x_201 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_196.x, x_196.x, x_196.x) * vec3<f32>(x_198.x, x_198.y, x_198.z)) + x_201);
  let x_203 : f32 = u_xlat6;
  let x_205 : vec3<f32> = vs_TEXCOORD2;
  let x_207 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_203, x_203, x_203) * x_205) + x_207);
  let x_209 : vec3<f32> = u_xlat0;
  let x_210 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_209, x_210);
  let x_212 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_212);
  let x_216 : f32 = u_xlat6;
  let x_218 : vec3<f32> = u_xlat0;
  let x_219 : vec3<f32> = (vec3<f32>(x_216, x_216, x_216) * x_218);
  let x_220 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
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


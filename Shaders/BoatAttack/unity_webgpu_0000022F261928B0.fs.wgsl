struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
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

@group(0) @binding(0) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_77 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(1) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(3) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlat2 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_INTERP3;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_24.x, x_24.y), x_35);
  u_xlat0.x = x_36.w;
  let x_42 : f32 = u_xlat0.x;
  u_xlat0.x = (x_42 + -0.400000006f);
  let x_51 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_51 < 0.0f);
  let x_57 : bool = u_xlatb0.x;
  if (((select(0i, 1i, x_57) * -1i) != 0i)) {
    discard;
  }
  let x_69 : f32 = vs_INTERP2.w;
  u_xlatb0.x = (0.0f < x_69);
  let x_80 : f32 = x_77.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_80 >= 0.0f);
  let x_85 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_85);
  let x_91 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_91);
  let x_95 : f32 = u_xlat0.y;
  let x_97 : f32 = u_xlat0.x;
  u_xlat0.x = (x_95 * x_97);
  let x_103 : vec3<f32> = vs_INTERP1;
  let x_105 : vec4<f32> = vs_INTERP2;
  u_xlat2 = (vec3<f32>(x_103.z, x_103.x, x_103.y) * vec3<f32>(x_105.y, x_105.z, x_105.x));
  let x_108 : vec3<f32> = vs_INTERP1;
  let x_110 : vec4<f32> = vs_INTERP2;
  let x_113 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_108.y, x_108.z, x_108.x) * vec3<f32>(x_110.z, x_110.x, x_110.y)) + -(x_113));
  let x_116 : vec3<f32> = u_xlat2;
  let x_117 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_116 * vec3<f32>(x_117.x, x_117.x, x_117.x));
  let x_127 : vec4<f32> = vs_INTERP3;
  let x_130 : f32 = x_28.x_GlobalMipBias.x;
  let x_131 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_127.x, x_127.y), x_130);
  u_xlat1 = x_131;
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_132 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_139 : vec4<f32> = u_xlat1;
  let x_140 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(x_139, x_140);
  let x_142 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_142);
  let x_144 : f32 = u_xlat6;
  let x_146 : vec4<f32> = u_xlat1;
  let x_148 : vec3<f32> = (vec3<f32>(x_144, x_144, x_144) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_151 : vec3<f32> = u_xlat0;
  let x_152 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_151 * vec3<f32>(x_152.y, x_152.y, x_152.y));
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : vec4<f32> = vs_INTERP2;
  let x_160 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_155.x, x_155.x, x_155.x) * vec3<f32>(x_157.x, x_157.y, x_157.z)) + x_160);
  let x_162 : vec4<f32> = u_xlat1;
  let x_164 : vec3<f32> = vs_INTERP1;
  let x_166 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_162.z, x_162.z, x_162.z) * x_164) + x_166);
  let x_168 : vec3<f32> = u_xlat0;
  let x_169 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_168, x_169);
  let x_171 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_171);
  let x_175 : f32 = u_xlat6;
  let x_177 : vec3<f32> = u_xlat0;
  let x_178 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * x_177);
  let x_179 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP3_param : vec4<f32>, @location(1) vs_INTERP2_param : vec4<f32>, @location(0) vs_INTERP1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


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

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> vs_TEXCOORD6 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(6) var<uniform> x_239 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = in_TEXCOORD0;
  let x_25 : vec4<f32> = x_20.unity_LightmapST;
  let x_29 : vec4<f32> = x_20.unity_LightmapST;
  let x_31 : vec2<f32> = ((x_13 * vec2<f32>(x_25.x, x_25.y)) + vec2<f32>(x_29.z, x_29.w));
  let x_32 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_32.x, x_32.y, x_31.x, x_31.y);
  let x_34 : vec2<f32> = in_TEXCOORD0;
  let x_35 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_34.x, x_34.y, x_35.z, x_35.w);
  vs_TEXCOORD6 = 0.0f;
  let x_45 : vec3<f32> = in_NORMAL0;
  let x_50 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_52 : vec3<f32> = (vec3<f32>(x_45.y, x_45.y, x_45.y) * vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_56 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_58 : vec3<f32> = in_NORMAL0;
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.x, x_58.x)) + vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_70 : vec3<f32> = in_NORMAL0;
  let x_73 : vec4<f32> = u_xlat0;
  let x_75 : vec3<f32> = ((vec3<f32>(x_68.x, x_68.y, x_68.z) * vec3<f32>(x_70.z, x_70.z, x_70.z)) + vec3<f32>(x_73.x, x_73.y, x_73.z));
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_75.x, x_75.y, x_75.z, x_76.w);
  let x_80 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat12;
  u_xlat12 = max(x_85, 1.17549435e-37f);
  let x_88 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat12;
  let x_92 : vec4<f32> = u_xlat0;
  let x_94 : vec3<f32> = (vec3<f32>(x_90, x_90, x_90) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_99 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_104 : f32 = u_xlat0.y;
  let x_106 : f32 = u_xlat0.y;
  u_xlat1.x = (x_104 * x_106);
  let x_111 : f32 = u_xlat0.x;
  let x_113 : f32 = u_xlat0.x;
  let x_116 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_111 * x_113) + -(x_116));
  let x_121 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_121.y, x_121.z, x_121.z, x_121.x) * vec4<f32>(x_123.x, x_123.y, x_123.z, x_123.z));
  let x_130 : vec4<f32> = x_20.unity_SHBr;
  let x_131 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_130, x_131);
  let x_136 : vec4<f32> = x_20.unity_SHBg;
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_136, x_137);
  let x_142 : vec4<f32> = x_20.unity_SHBb;
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_142, x_143);
  let x_148 : vec4<f32> = x_20.unity_SHC;
  let x_150 : vec4<f32> = u_xlat1;
  let x_153 : vec3<f32> = u_xlat3;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  u_xlat0.w = 1.0f;
  let x_162 : vec4<f32> = x_20.unity_SHAr;
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_162, x_163);
  let x_168 : vec4<f32> = x_20.unity_SHAg;
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_168, x_169);
  let x_174 : vec4<f32> = x_20.unity_SHAb;
  let x_175 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_174, x_175);
  let x_178 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = (vec3<f32>(x_178.x, x_178.y, x_178.z) + vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_187 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = max(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_193 : vec4<f32> = in_POSITION0;
  let x_196 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_198 : vec3<f32> = (vec3<f32>(x_193.y, x_193.y, x_193.y) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_204 : vec4<f32> = in_POSITION0;
  let x_207 : vec4<f32> = u_xlat0;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_215 : vec4<f32> = in_POSITION0;
  let x_218 : vec4<f32> = u_xlat0;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215.z, x_215.z, x_215.z)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat0;
  let x_227 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_229 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = vec3<f32>(x_233.x, x_233.y, x_233.z);
  let x_235 : vec4<f32> = u_xlat0;
  let x_241 : vec4<f32> = x_239.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_235.y, x_235.y, x_235.y, x_235.y) * x_241);
  let x_244 : vec4<f32> = x_239.unity_MatrixVP[0i];
  let x_245 : vec4<f32> = u_xlat0;
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_244 * vec4<f32>(x_245.x, x_245.x, x_245.x, x_245.x)) + x_248);
  let x_251 : vec4<f32> = x_239.unity_MatrixVP[2i];
  let x_252 : vec4<f32> = u_xlat0;
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_251 * vec4<f32>(x_252.z, x_252.z, x_252.z, x_252.z)) + x_255);
  let x_261 : vec4<f32> = u_xlat0;
  let x_263 : vec4<f32> = x_239.unity_MatrixVP[3i];
  gl_Position = (x_261 + x_263);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD7_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD7, gl_Position);
}


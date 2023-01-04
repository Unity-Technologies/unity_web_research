struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(10) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_51 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_53 : vec4<f32> = in_POSITION0;
  let x_56 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_51.x, x_51.y, x_51.z) * vec3<f32>(x_53.w, x_53.w, x_53.w)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_81 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_80 * vec4<f32>(x_81.w, x_81.w, x_81.w, x_81.w)) + x_84);
  let x_92 : vec4<f32> = u_xlat0;
  gl_Position = x_92;
  let x_99 : vec3<f32> = in_NORMAL0;
  let x_102 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_99, vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_108 : vec3<f32> = in_NORMAL0;
  let x_110 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_108, vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_114 : vec3<f32> = in_NORMAL0;
  let x_116 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_114, vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_122 : vec3<f32> = u_xlat2;
  let x_123 : vec3<f32> = u_xlat2;
  u_xlat14 = dot(x_122, x_123);
  let x_125 : f32 = u_xlat14;
  u_xlat14 = inverseSqrt(x_125);
  let x_127 : f32 = u_xlat14;
  let x_129 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_127, x_127, x_127) * x_129);
  let x_132 : vec3<f32> = u_xlat2;
  vs_TEXCOORD0 = x_132;
  let x_135 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_135;
  let x_141 : vec2<f32> = in_TEXCOORD0;
  let x_144 : vec4<f32> = x_17.x_MainTex_ST;
  let x_148 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_141 * vec2<f32>(x_144.x, x_144.y)) + vec2<f32>(x_148.z, x_148.w));
  let x_152 : f32 = u_xlat1.y;
  let x_156 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat14 = (x_152 * x_156);
  let x_159 : f32 = x_17.unity_MatrixV[0i].z;
  let x_161 : f32 = u_xlat1.x;
  let x_163 : f32 = u_xlat14;
  u_xlat14 = ((x_159 * x_161) + x_163);
  let x_166 : f32 = x_17.unity_MatrixV[2i].z;
  let x_168 : f32 = u_xlat1.z;
  let x_170 : f32 = u_xlat14;
  u_xlat14 = ((x_166 * x_168) + x_170);
  let x_173 : f32 = x_17.unity_MatrixV[3i].z;
  let x_176 : f32 = u_xlat1.w;
  let x_178 : f32 = u_xlat14;
  u_xlat14 = ((x_173 * x_176) + x_178);
  let x_181 : f32 = u_xlat14;
  vs_TEXCOORD3.z = -(x_181);
  let x_185 : vec4<f32> = u_xlat1;
  let x_188 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_190 : vec3<f32> = (vec3<f32>(x_185.y, x_185.y, x_185.y) * vec3<f32>(x_188.x, x_188.y, x_188.w));
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_196 : vec4<f32> = u_xlat1;
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec3<f32> = ((vec3<f32>(x_194.x, x_194.y, x_194.w) * vec3<f32>(x_196.x, x_196.x, x_196.x)) + vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_205 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_207 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat3;
  let x_212 : vec3<f32> = ((vec3<f32>(x_205.x, x_205.y, x_205.w) * vec3<f32>(x_207.z, x_207.z, x_207.z)) + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_218 : vec4<f32> = u_xlat1;
  let x_221 : vec4<f32> = u_xlat1;
  let x_223 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.w) * vec3<f32>(x_218.w, x_218.w, x_218.w)) + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_227 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_227;
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_233 : f32 = x_17.x_ProjectionParams.x;
  u_xlat3.y = x_233;
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = u_xlat3;
  let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.w) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : vec4<f32> = u_xlat0;
  let x_251 : vec2<f32> = vec2<f32>(x_250.z, x_250.w);
  let x_252 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_252.x, x_252.y, x_251.x, x_251.y);
  let x_255 : f32 = u_xlat1.y;
  u_xlat1.w = (x_255 * 0.5f);
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : vec4<f32> = u_xlat1;
  let x_262 : vec2<f32> = (vec2<f32>(x_258.z, x_258.z) + vec2<f32>(x_260.x, x_260.w));
  let x_263 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
  let x_266 : f32 = u_xlat2.y;
  let x_268 : f32 = u_xlat2.y;
  u_xlat0.x = (x_266 * x_268);
  let x_272 : f32 = u_xlat2.x;
  let x_274 : f32 = u_xlat2.x;
  let x_277 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_272 * x_274) + -(x_277));
  let x_281 : vec3<f32> = u_xlat2;
  let x_283 : vec3<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_281.y, x_281.z, x_281.z, x_281.x) * vec4<f32>(x_283.x, x_283.y, x_283.z, x_283.z));
  let x_287 : vec4<f32> = x_17.unity_SHBr;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_287, x_288);
  let x_292 : vec4<f32> = x_17.unity_SHBg;
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_292, x_293);
  let x_297 : vec4<f32> = x_17.unity_SHBb;
  let x_298 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_297, x_298);
  let x_304 : vec4<f32> = x_17.unity_SHC;
  let x_306 : vec4<f32> = u_xlat0;
  let x_309 : vec3<f32> = u_xlat2;
  vs_TEXCOORD4 = ((vec3<f32>(x_304.x, x_304.y, x_304.z) * vec3<f32>(x_306.x, x_306.x, x_306.x)) + x_309);
  let x_312 : f32 = u_xlat3.y;
  u_xlat3.w = (x_312 * 0.5f);
  let x_315 : vec4<f32> = u_xlat3;
  let x_317 : vec4<f32> = u_xlat3;
  let x_319 : vec2<f32> = (vec2<f32>(x_315.z, x_315.z) + vec2<f32>(x_317.x, x_317.w));
  let x_320 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_319.x, x_319.y, x_320.z, x_320.w);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD6, vs_TEXCOORD4);
}


struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_49 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec3<f32> = ((vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_51.w, x_51.w, x_51.w)) + vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_60 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_60.y, x_60.y, x_60.y, x_60.y) * x_64);
  let x_67 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_67 * vec4<f32>(x_68.x, x_68.x, x_68.x, x_68.x)) + x_71);
  let x_74 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_75 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_74 * vec4<f32>(x_75.z, x_75.z, x_75.z, x_75.z)) + x_78);
  let x_81 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_81 * vec4<f32>(x_82.w, x_82.w, x_82.w, x_82.w)) + x_85);
  let x_93 : vec4<f32> = u_xlat1;
  gl_Position = x_93;
  let x_100 : f32 = u_xlat0.x;
  vs_TEXCOORD0.w = x_100;
  let x_105 : vec4<f32> = in_TANGENT0;
  let x_108 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_110 : vec3<f32> = (vec3<f32>(x_105.y, x_105.y, x_105.y) * vec3<f32>(x_108.y, x_108.z, x_108.x));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_114 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_116 : vec4<f32> = in_TANGENT0;
  let x_119 : vec4<f32> = u_xlat2;
  let x_121 : vec3<f32> = ((vec3<f32>(x_114.y, x_114.z, x_114.x) * vec3<f32>(x_116.x, x_116.x, x_116.x)) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_125 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_127 : vec4<f32> = in_TANGENT0;
  let x_130 : vec4<f32> = u_xlat2;
  let x_132 : vec3<f32> = ((vec3<f32>(x_125.y, x_125.z, x_125.x) * vec3<f32>(x_127.z, x_127.z, x_127.z)) + vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_135 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_135.x, x_135.y, x_135.z), vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_142 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_142);
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : vec3<f32> = (vec3<f32>(x_145.x, x_145.x, x_145.x) * vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_154 : f32 = u_xlat2.z;
  vs_TEXCOORD0.x = x_154;
  let x_159 : vec3<f32> = in_NORMAL0;
  let x_162 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_159, vec3<f32>(x_162.x, x_162.y, x_162.z));
  let x_166 : vec3<f32> = in_NORMAL0;
  let x_168 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_166, vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_172 : vec3<f32> = in_NORMAL0;
  let x_174 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_172, vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_178 : vec4<f32> = u_xlat3;
  let x_180 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_185 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_185);
  let x_188 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_188.x, x_188.x, x_188.x, x_188.x) * vec4<f32>(x_190.x, x_190.y, x_190.z, x_190.z));
  let x_195 : vec4<f32> = u_xlat2;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_195.x, x_195.y, x_195.z) * vec3<f32>(x_197.w, x_197.x, x_197.y));
  let x_200 : vec4<f32> = u_xlat3;
  let x_202 : vec4<f32> = u_xlat2;
  let x_205 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_200.y, x_200.w, x_200.x) * vec3<f32>(x_202.y, x_202.z, x_202.x)) + -(x_205));
  let x_210 : f32 = in_TANGENT0.w;
  let x_214 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_210 * x_214);
  let x_217 : vec4<f32> = u_xlat0;
  let x_219 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_217.x, x_217.x, x_217.x) * x_219);
  let x_222 : f32 = u_xlat4.x;
  vs_TEXCOORD0.y = x_222;
  let x_225 : f32 = u_xlat3.x;
  vs_TEXCOORD0.z = x_225;
  let x_229 : f32 = u_xlat2.x;
  vs_TEXCOORD1.x = x_229;
  let x_233 : f32 = u_xlat2.y;
  vs_TEXCOORD2.x = x_233;
  let x_236 : f32 = u_xlat0.y;
  vs_TEXCOORD1.w = x_236;
  let x_239 : f32 = u_xlat0.z;
  vs_TEXCOORD2.w = x_239;
  let x_242 : f32 = u_xlat4.y;
  vs_TEXCOORD1.y = x_242;
  let x_245 : f32 = u_xlat4.z;
  vs_TEXCOORD2.y = x_245;
  let x_248 : f32 = u_xlat3.y;
  vs_TEXCOORD1.z = x_248;
  let x_251 : f32 = u_xlat3.w;
  vs_TEXCOORD2.z = x_251;
  let x_255 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_255;
  let x_258 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_258;
  let x_261 : vec4<f32> = u_xlat1;
  let x_262 : vec2<f32> = vec2<f32>(x_261.z, x_261.w);
  let x_263 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_263.x, x_263.y, x_262.x, x_262.y);
  let x_269 : vec2<f32> = in_TEXCOORD0;
  let x_272 : vec4<f32> = x_17.x_MainTex_ST;
  let x_276 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD3 = ((x_269 * vec2<f32>(x_272.x, x_272.y)) + vec2<f32>(x_276.z, x_276.w));
  let x_280 : f32 = u_xlat3.y;
  let x_282 : f32 = u_xlat3.y;
  u_xlat0.x = (x_280 * x_282);
  let x_286 : f32 = u_xlat3.x;
  let x_288 : f32 = u_xlat3.x;
  let x_291 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_286 * x_288) + -(x_291));
  let x_295 : vec4<f32> = u_xlat3;
  let x_297 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_295.y, x_295.w, x_295.z, x_295.x) * x_297);
  let x_300 : vec4<f32> = x_17.unity_SHBr;
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_300, x_301);
  let x_305 : vec4<f32> = x_17.unity_SHBg;
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_305, x_306);
  let x_310 : vec4<f32> = x_17.unity_SHBb;
  let x_311 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_310, x_311);
  let x_318 : vec4<f32> = x_17.unity_SHC;
  let x_320 : vec4<f32> = u_xlat0;
  let x_323 : vec4<f32> = u_xlat3;
  vs_TEXCOORD4 = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.x, x_320.x, x_320.x)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_327 : f32 = u_xlat1.y;
  let x_329 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_327 * x_329);
  let x_332 : vec4<f32> = u_xlat1;
  let x_336 : vec2<f32> = (vec2<f32>(x_332.x, x_332.w) * vec2<f32>(0.5f, 0.5f));
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_336.x, x_337.y, x_336.y, x_337.w);
  let x_340 : f32 = u_xlat0.x;
  u_xlat1.w = (x_340 * 0.5f);
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec4<f32> = u_xlat1;
  let x_347 : vec2<f32> = (vec2<f32>(x_343.z, x_343.z) + vec2<f32>(x_345.x, x_345.w));
  let x_348 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_347.x, x_347.y, x_348.z, x_348.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_COLOR0_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : f32,
  @location(7)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec2<f32>,
  @location(6)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_COLOR0, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD3, vs_TEXCOORD4);
}


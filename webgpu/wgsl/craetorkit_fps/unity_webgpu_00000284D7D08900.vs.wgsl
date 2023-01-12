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

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  let x_101 : f32 = u_xlat1.z;
  vs_TEXCOORD5 = x_101;
  let x_104 : vec4<f32> = u_xlat1;
  let x_105 : vec2<f32> = vec2<f32>(x_104.z, x_104.w);
  let x_106 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_106.x, x_106.y, x_105.x, x_105.y);
  let x_111 : vec4<f32> = in_TEXCOORD0;
  let x_115 : vec4<f32> = x_17.x_MainTex_ST;
  let x_119 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115.x, x_115.y)) + vec2<f32>(x_119.z, x_119.w));
  let x_125 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_125;
  let x_129 : vec4<f32> = in_TANGENT0;
  let x_132 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_134 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_132.y, x_132.z, x_132.x));
  let x_135 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_140 : vec4<f32> = in_TANGENT0;
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec3<f32> = ((vec3<f32>(x_138.y, x_138.z, x_138.x) * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = in_TANGENT0;
  let x_154 : vec4<f32> = u_xlat2;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149.y, x_149.z, x_149.x) * vec3<f32>(x_151.z, x_151.z, x_151.z)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_159 : vec4<f32> = u_xlat2;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_159.x, x_159.y, x_159.z), vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_166 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_166);
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = u_xlat2;
  let x_173 : vec3<f32> = (vec3<f32>(x_169.x, x_169.x, x_169.x) * vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_177;
  let x_182 : vec3<f32> = in_NORMAL0;
  let x_185 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_182, vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_189 : vec3<f32> = in_NORMAL0;
  let x_191 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_189, vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_195 : vec3<f32> = in_NORMAL0;
  let x_197 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_195, vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat3;
  let x_203 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_208 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_208);
  let x_211 : vec4<f32> = u_xlat0;
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = (vec4<f32>(x_211.x, x_211.x, x_211.x, x_211.x) * vec4<f32>(x_213.x, x_213.y, x_213.z, x_213.z));
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.w, x_220.x, x_220.y));
  let x_223 : vec4<f32> = u_xlat3;
  let x_225 : vec4<f32> = u_xlat2;
  let x_228 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_223.y, x_223.w, x_223.x) * vec3<f32>(x_225.y, x_225.z, x_225.x)) + -(x_228));
  let x_233 : f32 = in_TANGENT0.w;
  let x_237 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_233 * x_237);
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_240.x, x_240.x, x_240.x) * x_242);
  let x_245 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_245;
  let x_248 : f32 = u_xlat3.x;
  vs_TEXCOORD1.z = x_248;
  let x_252 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_252;
  let x_256 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_256;
  let x_259 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_259;
  let x_262 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_262;
  let x_265 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_265;
  let x_268 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_268;
  let x_271 : f32 = u_xlat3.y;
  vs_TEXCOORD2.z = x_271;
  let x_274 : f32 = u_xlat3.w;
  vs_TEXCOORD3.z = x_274;
  let x_277 : f32 = u_xlat3.y;
  let x_279 : f32 = u_xlat3.y;
  u_xlat0.x = (x_277 * x_279);
  let x_283 : f32 = u_xlat3.x;
  let x_285 : f32 = u_xlat3.x;
  let x_288 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_283 * x_285) + -(x_288));
  let x_292 : vec4<f32> = u_xlat3;
  let x_294 : vec4<f32> = u_xlat3;
  u_xlat2 = (vec4<f32>(x_292.y, x_292.w, x_292.z, x_292.x) * x_294);
  let x_297 : vec4<f32> = x_17.unity_SHBr;
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_297, x_298);
  let x_302 : vec4<f32> = x_17.unity_SHBg;
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_302, x_303);
  let x_307 : vec4<f32> = x_17.unity_SHBb;
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_307, x_308);
  let x_315 : vec4<f32> = x_17.unity_SHC;
  let x_317 : vec4<f32> = u_xlat0;
  let x_320 : vec4<f32> = u_xlat3;
  vs_TEXCOORD4 = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.x, x_317.x, x_317.x)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_324 : f32 = u_xlat1.y;
  let x_326 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_324 * x_326);
  let x_329 : vec4<f32> = u_xlat1;
  let x_333 : vec2<f32> = (vec2<f32>(x_329.x, x_329.w) * vec2<f32>(0.5f, 0.5f));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_334.y, x_333.y, x_334.w);
  let x_337 : f32 = u_xlat0.x;
  u_xlat1.w = (x_337 * 0.5f);
  let x_340 : vec4<f32> = u_xlat1;
  let x_342 : vec4<f32> = u_xlat1;
  let x_344 : vec2<f32> = (vec2<f32>(x_340.z, x_340.z) + vec2<f32>(x_342.x, x_342.w));
  let x_345 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD5_1 : f32,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}


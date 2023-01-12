type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> vs_TEXCOORD4 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_30 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = in_POSITION0;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_30 * vec4<f32>(x_31.x, x_31.x, x_31.x, x_31.x)) + x_34);
  let x_38 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_39 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z)) + x_42);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + x_48);
  let x_52 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat1;
  gl_Position = x_95;
  let x_103 : f32 = u_xlat1.z;
  vs_TEXCOORD4 = x_103;
  let x_106 : vec4<f32> = u_xlat1;
  let x_107 : vec2<f32> = vec2<f32>(x_106.z, x_106.w);
  let x_108 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_108.x, x_108.y, x_107.x, x_107.y);
  let x_113 : vec4<f32> = in_TEXCOORD0;
  let x_117 : vec4<f32> = x_20.x_MainTex_ST;
  let x_121 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_113.x, x_113.y) * vec2<f32>(x_117.x, x_117.y)) + vec2<f32>(x_121.z, x_121.w));
  let x_126 : vec3<f32> = in_NORMAL0;
  let x_129 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_126, vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_134 : vec3<f32> = in_NORMAL0;
  let x_136 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_134, vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_140 : vec3<f32> = in_NORMAL0;
  let x_142 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_140, vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_147 : vec4<f32> = u_xlat2;
  let x_149 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_147.x, x_147.y, x_147.z), vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_152);
  let x_154 : f32 = u_xlat18;
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec3<f32> = (vec3<f32>(x_154, x_154, x_154) * vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_163 : vec4<f32> = u_xlat2;
  vs_TEXCOORD1 = vec3<f32>(x_163.x, x_163.y, x_163.z);
  let x_166 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_169 : vec4<f32> = u_xlat0;
  let x_173 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_169.x, x_169.x, x_169.x, x_169.x)) + x_173);
  let x_176 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_176.y, x_176.y, x_176.y, x_176.y)) + x_180);
  let x_182 : vec4<f32> = u_xlat0;
  let x_186 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_182.z, x_182.z, x_182.z, x_182.z)) + x_186);
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_189.y, x_189.y, x_189.y, x_189.y) * x_191);
  let x_193 : vec4<f32> = u_xlat4;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_193 * x_194);
  let x_196 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_196 * x_197) + x_199);
  let x_201 : vec4<f32> = u_xlat3;
  let x_202 : vec4<f32> = u_xlat2;
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_201 * vec4<f32>(x_202.x, x_202.x, x_202.x, x_202.x)) + x_205);
  let x_207 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat2;
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_207 * vec4<f32>(x_208.z, x_208.z, x_208.z, x_208.z)) + x_211);
  let x_213 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = u_xlat0;
  let x_216 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_213 * x_214) + x_216);
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_218, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_222 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_222);
  let x_224 : vec4<f32> = u_xlat0;
  let x_227 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_224 * x_227) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_232 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_232);
  let x_234 : vec4<f32> = u_xlat3;
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_234 * x_235);
  let x_237 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_237, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_241 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_241 * x_242);
  let x_244 : vec4<f32> = u_xlat0;
  let x_248 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_250 : vec3<f32> = (vec3<f32>(x_244.y, x_244.y, x_244.y) * vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_254 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_256 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat3;
  let x_261 : vec3<f32> = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(x_256.x, x_256.x, x_256.x)) + vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_262 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_267 : vec4<f32> = u_xlat0;
  let x_270 : vec4<f32> = u_xlat3;
  let x_272 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_267.z, x_267.z, x_267.z)) + vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_276 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_278 : vec4<f32> = u_xlat0;
  let x_281 : vec4<f32> = u_xlat0;
  let x_283 : vec3<f32> = ((vec3<f32>(x_276.x, x_276.y, x_276.z) * vec3<f32>(x_278.w, x_278.w, x_278.w)) + vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_287 : f32 = u_xlat2.y;
  let x_289 : f32 = u_xlat2.y;
  u_xlat18 = (x_287 * x_289);
  let x_292 : f32 = u_xlat2.x;
  let x_294 : f32 = u_xlat2.x;
  let x_296 : f32 = u_xlat18;
  u_xlat18 = ((x_292 * x_294) + -(x_296));
  let x_299 : vec4<f32> = u_xlat2;
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_299.y, x_299.z, x_299.z, x_299.x) * vec4<f32>(x_301.x, x_301.y, x_301.z, x_301.z));
  let x_306 : vec4<f32> = x_20.unity_SHBr;
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_306, x_307);
  let x_312 : vec4<f32> = x_20.unity_SHBg;
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_312, x_313);
  let x_318 : vec4<f32> = x_20.unity_SHBb;
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_318, x_319);
  let x_324 : vec4<f32> = x_20.unity_SHC;
  let x_326 : f32 = u_xlat18;
  let x_329 : vec4<f32> = u_xlat3;
  let x_331 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_326, x_326, x_326)) + vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : vec4<f32> = u_xlat0;
  let x_337 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_335.x, x_335.y, x_335.z) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_341 : f32 = u_xlat1.y;
  let x_344 : f32 = x_20.x_ProjectionParams.x;
  u_xlat0.x = (x_341 * x_344);
  let x_347 : vec4<f32> = u_xlat1;
  let x_351 : vec2<f32> = (vec2<f32>(x_347.x, x_347.w) * vec2<f32>(0.5f, 0.5f));
  let x_352 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_351.x, x_352.y, x_351.y, x_352.w);
  let x_355 : f32 = u_xlat0.x;
  u_xlat1.w = (x_355 * 0.5f);
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = u_xlat1;
  let x_363 : vec2<f32> = (vec2<f32>(x_359.z, x_359.z) + vec2<f32>(x_361.x, x_361.w));
  let x_364 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_364.w);
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD4_1 : f32,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}


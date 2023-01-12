type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
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

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat15 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
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
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_109 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_106, vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_114 : vec3<f32> = in_NORMAL0;
  let x_116 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_114, vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_120 : vec3<f32> = in_NORMAL0;
  let x_122 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_120, vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat15 = dot(vec3<f32>(x_127.x, x_127.y, x_127.z), vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_132);
  let x_134 : f32 = u_xlat15;
  let x_136 : vec4<f32> = u_xlat1;
  let x_138 : vec3<f32> = (vec3<f32>(x_134, x_134, x_134) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_143 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = vec3<f32>(x_143.x, x_143.y, x_143.z);
  let x_146 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_146.x, x_146.y, x_146.z);
  let x_150 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_150;
  let x_156 : vec2<f32> = in_TEXCOORD0;
  let x_159 : vec4<f32> = x_20.x_MainTex_ST;
  let x_163 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_156 * vec2<f32>(x_159.x, x_159.y)) + vec2<f32>(x_163.z, x_163.w));
  let x_166 : vec4<f32> = u_xlat0;
  let x_170 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat2 = (-(vec4<f32>(x_166.x, x_166.x, x_166.x, x_166.x)) + x_170);
  let x_173 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_173.y, x_173.y, x_173.y, x_173.y)) + x_177);
  let x_179 : vec4<f32> = u_xlat0;
  let x_183 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_179.z, x_179.z, x_179.z, x_179.z)) + x_183);
  let x_186 : vec4<f32> = u_xlat1;
  let x_188 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_186.y, x_186.y, x_186.y, x_186.y) * x_188);
  let x_190 : vec4<f32> = u_xlat3;
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_190 * x_191);
  let x_193 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat2;
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_193 * x_194) + x_196);
  let x_198 : vec4<f32> = u_xlat2;
  let x_199 : vec4<f32> = u_xlat1;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat2 = ((x_198 * vec4<f32>(x_199.x, x_199.x, x_199.x, x_199.x)) + x_202);
  let x_204 : vec4<f32> = u_xlat0;
  let x_205 : vec4<f32> = u_xlat1;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_204 * vec4<f32>(x_205.z, x_205.z, x_205.z, x_205.z)) + x_208);
  let x_210 : vec4<f32> = u_xlat0;
  let x_211 : vec4<f32> = u_xlat0;
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_210 * x_211) + x_213);
  let x_215 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_215, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_219 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_219);
  let x_221 : vec4<f32> = u_xlat0;
  let x_223 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_221 * x_223) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_228);
  let x_230 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_230 * x_231);
  let x_233 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_233, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_237 : vec4<f32> = u_xlat0;
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_237 * x_238);
  let x_240 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_246 : vec3<f32> = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_252 : vec4<f32> = u_xlat0;
  let x_255 : vec4<f32> = u_xlat2;
  let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.x, x_252.x, x_252.x)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_261 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_263 : vec4<f32> = u_xlat0;
  let x_266 : vec4<f32> = u_xlat2;
  let x_268 : vec3<f32> = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.z, x_263.z, x_263.z)) + vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_274 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = u_xlat0;
  let x_279 : vec3<f32> = ((vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(x_274.w, x_274.w, x_274.w)) + vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_283 : f32 = u_xlat1.y;
  let x_285 : f32 = u_xlat1.y;
  u_xlat15 = (x_283 * x_285);
  let x_288 : f32 = u_xlat1.x;
  let x_290 : f32 = u_xlat1.x;
  let x_292 : f32 = u_xlat15;
  u_xlat15 = ((x_288 * x_290) + -(x_292));
  let x_295 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_295.y, x_295.z, x_295.z, x_295.x) * vec4<f32>(x_297.x, x_297.y, x_297.z, x_297.z));
  let x_302 : vec4<f32> = x_20.unity_SHBr;
  let x_303 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_302, x_303);
  let x_308 : vec4<f32> = x_20.unity_SHBg;
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_308, x_309);
  let x_314 : vec4<f32> = x_20.unity_SHBb;
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_314, x_315);
  let x_320 : vec4<f32> = x_20.unity_SHC;
  let x_322 : f32 = u_xlat15;
  let x_325 : vec4<f32> = u_xlat2;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322, x_322, x_322)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = (vec3<f32>(x_331.x, x_331.y, x_331.z) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3);
}


struct PGlobals {
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_141 : PGlobals;

@group(0) @binding(2) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(5) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_101 : f32;
  var x_114 : f32;
  var x_127 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat10 : vec2<f32>;
  var x_259 : f32;
  var x_271 : f32;
  var x_283 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_39 : vec2<f32> = vs_TEXCOORD1;
  let x_40 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_39);
  u_xlat1 = x_40;
  let x_41 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_41.x, x_41.x, x_41.x) * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_46 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_46, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_54 : f32 = u_xlat1.w;
  u_xlat1.w = x_54;
  let x_57 : f32 = u_xlat1.w;
  u_xlat1.w = clamp(x_57, 0.0f, 1.0f);
  let x_61 : vec3<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_61.z, x_61.x, x_61.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_67 : vec3<f32> = u_xlat0;
  u_xlat3 = max(vec3<f32>(x_67.z, x_67.x, x_67.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_72 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_72);
  let x_74 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_74 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_78 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_78);
  let x_80 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_80 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_93 : vec3<f32> = u_xlat0;
  let x_96 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_93.z, x_93.x, x_93.y, x_93.z));
  u_xlatb0 = vec3<bool>(x_96.x, x_96.y, x_96.z);
  let x_100 : bool = u_xlatb0.x;
  if (x_100) {
    let x_105 : f32 = u_xlat2.x;
    x_101 = x_105;
  } else {
    let x_108 : f32 = u_xlat3.x;
    x_101 = x_108;
  }
  let x_109 : f32 = x_101;
  u_xlat0.x = x_109;
  let x_113 : bool = u_xlatb0.y;
  if (x_113) {
    let x_118 : f32 = u_xlat2.y;
    x_114 = x_118;
  } else {
    let x_121 : f32 = u_xlat3.y;
    x_114 = x_121;
  }
  let x_122 : f32 = x_114;
  u_xlat0.y = x_122;
  let x_126 : bool = u_xlatb0.z;
  if (x_126) {
    let x_131 : f32 = u_xlat2.z;
    x_127 = x_131;
  } else {
    let x_134 : f32 = u_xlat3.z;
    x_127 = x_134;
  }
  let x_135 : f32 = x_127;
  u_xlat0.z = x_135;
  let x_138 : vec3<f32> = u_xlat0;
  let x_146 : vec3<f32> = x_141.x_Lut2D_Params;
  u_xlat5 = (x_138 * vec3<f32>(x_146.z, x_146.z, x_146.z));
  let x_150 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_150);
  let x_154 : vec3<f32> = x_141.x_Lut2D_Params;
  let x_158 : vec2<f32> = (vec2<f32>(x_154.x, x_154.y) * vec2<f32>(0.5f, 0.5f));
  let x_159 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_158.x, x_158.y, x_159.z);
  let x_161 : vec3<f32> = u_xlat5;
  let x_164 : vec3<f32> = x_141.x_Lut2D_Params;
  let x_167 : vec3<f32> = u_xlat2;
  let x_169 : vec2<f32> = ((vec2<f32>(x_161.y, x_161.z) * vec2<f32>(x_164.x, x_164.y)) + vec2<f32>(x_167.x, x_167.y));
  let x_170 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_170.x, x_169.x, x_169.y);
  let x_173 : f32 = u_xlat5.x;
  let x_176 : f32 = x_141.x_Lut2D_Params.y;
  let x_179 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_173 * x_176) + x_179);
  let x_187 : vec3<f32> = u_xlat2;
  let x_189 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_187.x, x_187.z));
  u_xlat3 = vec3<f32>(x_189.x, x_189.y, x_189.z);
  let x_194 : f32 = x_141.x_Lut2D_Params.y;
  u_xlat4.x = x_194;
  u_xlat4.y = 0.0f;
  let x_198 : vec3<f32> = u_xlat2;
  let x_200 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_198.x, x_198.z) + x_200);
  let x_205 : vec2<f32> = u_xlat10;
  let x_206 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_205);
  u_xlat2 = vec3<f32>(x_206.x, x_206.y, x_206.z);
  let x_209 : f32 = u_xlat0.x;
  let x_211 : f32 = x_141.x_Lut2D_Params.z;
  let x_214 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_209 * x_211) + -(x_214));
  let x_218 : vec3<f32> = u_xlat3;
  let x_220 : vec3<f32> = u_xlat2;
  u_xlat5 = (-(x_218) + x_220);
  let x_222 : vec3<f32> = u_xlat0;
  let x_224 : vec3<f32> = u_xlat5;
  let x_226 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_222.x, x_222.x, x_222.x) * x_224) + x_226);
  let x_228 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_228 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_232 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_232 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_236 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_236 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_240 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_240), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_243 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_243);
  let x_245 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_245 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_249 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_249);
  let x_253 : vec3<f32> = u_xlat0;
  let x_255 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_253.x, x_253.y, x_253.z, x_253.x));
  u_xlatb0 = vec3<bool>(x_255.x, x_255.y, x_255.z);
  let x_258 : bool = u_xlatb0.x;
  if (x_258) {
    let x_263 : f32 = u_xlat2.x;
    x_259 = x_263;
  } else {
    let x_266 : f32 = u_xlat3.x;
    x_259 = x_266;
  }
  let x_267 : f32 = x_259;
  u_xlat1.x = x_267;
  let x_270 : bool = u_xlatb0.y;
  if (x_270) {
    let x_275 : f32 = u_xlat2.y;
    x_271 = x_275;
  } else {
    let x_278 : f32 = u_xlat3.y;
    x_271 = x_278;
  }
  let x_279 : f32 = x_271;
  u_xlat1.y = x_279;
  let x_282 : bool = u_xlatb0.z;
  if (x_282) {
    let x_287 : f32 = u_xlat2.z;
    x_283 = x_287;
  } else {
    let x_290 : f32 = u_xlat3.z;
    x_283 = x_290;
  }
  let x_291 : f32 = x_283;
  u_xlat1.z = x_291;
  let x_295 : f32 = x_141.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_295);
  let x_299 : bool = u_xlatb0.x;
  if (x_299) {
    let x_302 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_302.x, x_302.y, x_302.z);
    let x_304 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_304, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_308 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_308, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_317 : vec4<f32> = u_xlat1;
  SV_Target0 = x_317;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


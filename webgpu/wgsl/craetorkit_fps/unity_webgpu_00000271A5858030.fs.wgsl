struct PGlobals {
  x_Dithering_Coords : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_DitheringTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb1 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_156 : f32;
  var x_169 : f32;
  var x_182 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_249 : f32;
  var x_261 : f32;
  var x_273 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_Dithering_Coords;
  let x_26 : vec4<f32> = x_17.x_Dithering_Coords;
  let x_28 : vec2<f32> = ((x_13 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_28.x, x_28.y, x_29.z);
  let x_41 : vec3<f32> = u_xlat0;
  let x_43 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_41.x, x_41.y));
  u_xlat0.x = x_43.w;
  let x_51 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_51 * 2.0f) + -1.0f);
  let x_59 : f32 = u_xlat0.x;
  u_xlat3.x = (-(abs(x_59)) + 1.0f);
  let x_66 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_66 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_73, 0.0f, 1.0f);
  let x_78 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_78 * 2.0f) + -1.0f);
  let x_83 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_83);
  let x_87 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_87) + 1.0f);
  let x_92 : f32 = u_xlat3.x;
  let x_94 : f32 = u_xlat0.x;
  u_xlat0.x = (x_92 * x_94);
  let x_105 : vec2<f32> = vs_TEXCOORD1;
  let x_106 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_105);
  u_xlat1 = x_106;
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat3 = max(abs(vec3<f32>(x_107.x, x_107.y, x_107.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_113 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_113);
  let x_115 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_115 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_119 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_119);
  let x_121 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_121 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_129.x, x_129.y, x_129.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_140 : vec4<f32> = u_xlat1;
  let x_143 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_140.x, x_140.y, x_140.z, x_140.x));
  u_xlatb1 = vec3<bool>(x_143.x, x_143.y, x_143.z);
  let x_148 : f32 = u_xlat1.w;
  SV_Target0.w = x_148;
  let x_152 : vec3<f32> = u_xlat3;
  hlslcc_movcTemp = x_152;
  let x_155 : bool = u_xlatb1.x;
  if (x_155) {
    let x_160 : f32 = u_xlat2.x;
    x_156 = x_160;
  } else {
    let x_163 : f32 = u_xlat3.x;
    x_156 = x_163;
  }
  let x_164 : f32 = x_156;
  hlslcc_movcTemp.x = x_164;
  let x_168 : bool = u_xlatb1.y;
  if (x_168) {
    let x_173 : f32 = u_xlat2.y;
    x_169 = x_173;
  } else {
    let x_176 : f32 = u_xlat3.y;
    x_169 = x_176;
  }
  let x_177 : f32 = x_169;
  hlslcc_movcTemp.y = x_177;
  let x_181 : bool = u_xlatb1.z;
  if (x_181) {
    let x_186 : f32 = u_xlat2.z;
    x_182 = x_186;
  } else {
    let x_189 : f32 = u_xlat3.z;
    x_182 = x_189;
  }
  let x_190 : f32 = x_182;
  hlslcc_movcTemp.z = x_190;
  let x_192 : vec3<f32> = hlslcc_movcTemp;
  u_xlat3 = x_192;
  let x_193 : vec3<f32> = u_xlat0;
  let x_198 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_193.x, x_193.x, x_193.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_198);
  let x_200 : vec3<f32> = u_xlat0;
  let x_203 : vec3<f32> = (x_200 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat1;
  let x_210 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat1;
  let x_216 : vec3<f32> = max(abs(vec3<f32>(x_213.x, x_213.y, x_213.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_219 : vec4<f32> = u_xlat1;
  let x_221 : vec3<f32> = log2(vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = exp2(vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_236 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_243 : vec3<f32> = u_xlat0;
  let x_245 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_243.x, x_243.y, x_243.z, x_243.x));
  u_xlatb0 = vec3<bool>(x_245.x, x_245.y, x_245.z);
  let x_248 : bool = u_xlatb0.x;
  if (x_248) {
    let x_253 : f32 = u_xlat2.x;
    x_249 = x_253;
  } else {
    let x_256 : f32 = u_xlat1.x;
    x_249 = x_256;
  }
  let x_257 : f32 = x_249;
  SV_Target0.x = x_257;
  let x_260 : bool = u_xlatb0.y;
  if (x_260) {
    let x_265 : f32 = u_xlat2.y;
    x_261 = x_265;
  } else {
    let x_268 : f32 = u_xlat1.y;
    x_261 = x_268;
  }
  let x_269 : f32 = x_261;
  SV_Target0.y = x_269;
  let x_272 : bool = u_xlatb0.z;
  if (x_272) {
    let x_277 : f32 = u_xlat2.z;
    x_273 = x_277;
  } else {
    let x_280 : f32 = u_xlat1.z;
    x_273 = x_280;
  }
  let x_281 : f32 = x_273;
  SV_Target0.z = x_281;
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


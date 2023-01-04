struct PGlobals {
  x_Lut2D_Params : vec3<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_142 : PGlobals;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(6) var sampler_Lut2D : sampler;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_102 : f32;
  var x_115 : f32;
  var x_128 : f32;
  var x_260 : f32;
  var x_272 : f32;
  var x_284 : f32;
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
    let x_106 : f32 = u_xlat2.x;
    x_102 = x_106;
  } else {
    let x_109 : f32 = u_xlat3.x;
    x_102 = x_109;
  }
  let x_110 : f32 = x_102;
  u_xlat0.x = x_110;
  let x_114 : bool = u_xlatb0.y;
  if (x_114) {
    let x_119 : f32 = u_xlat2.y;
    x_115 = x_119;
  } else {
    let x_122 : f32 = u_xlat3.y;
    x_115 = x_122;
  }
  let x_123 : f32 = x_115;
  u_xlat0.y = x_123;
  let x_127 : bool = u_xlatb0.z;
  if (x_127) {
    let x_132 : f32 = u_xlat2.z;
    x_128 = x_132;
  } else {
    let x_135 : f32 = u_xlat3.z;
    x_128 = x_135;
  }
  let x_136 : f32 = x_128;
  u_xlat0.z = x_136;
  let x_139 : vec3<f32> = u_xlat0;
  let x_147 : vec3<f32> = x_142.x_Lut2D_Params;
  u_xlat5 = (x_139 * vec3<f32>(x_147.z, x_147.z, x_147.z));
  let x_151 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_151);
  let x_155 : vec3<f32> = x_142.x_Lut2D_Params;
  let x_159 : vec2<f32> = (vec2<f32>(x_155.x, x_155.y) * vec2<f32>(0.5f, 0.5f));
  let x_160 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_159.x, x_159.y, x_160.z);
  let x_162 : vec3<f32> = u_xlat5;
  let x_165 : vec3<f32> = x_142.x_Lut2D_Params;
  let x_168 : vec3<f32> = u_xlat2;
  let x_170 : vec2<f32> = ((vec2<f32>(x_162.y, x_162.z) * vec2<f32>(x_165.x, x_165.y)) + vec2<f32>(x_168.x, x_168.y));
  let x_171 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_171.x, x_170.x, x_170.y);
  let x_174 : f32 = u_xlat5.x;
  let x_177 : f32 = x_142.x_Lut2D_Params.y;
  let x_180 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_174 * x_177) + x_180);
  let x_188 : vec3<f32> = u_xlat2;
  let x_190 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_188.x, x_188.z));
  u_xlat3 = vec3<f32>(x_190.x, x_190.y, x_190.z);
  let x_195 : f32 = x_142.x_Lut2D_Params.y;
  u_xlat4.x = x_195;
  u_xlat4.y = 0.0f;
  let x_199 : vec3<f32> = u_xlat2;
  let x_201 : vec2<f32> = u_xlat4;
  u_xlat10 = (vec2<f32>(x_199.x, x_199.z) + x_201);
  let x_206 : vec2<f32> = u_xlat10;
  let x_207 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_206);
  u_xlat2 = vec3<f32>(x_207.x, x_207.y, x_207.z);
  let x_210 : f32 = u_xlat0.x;
  let x_212 : f32 = x_142.x_Lut2D_Params.z;
  let x_215 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_210 * x_212) + -(x_215));
  let x_219 : vec3<f32> = u_xlat3;
  let x_221 : vec3<f32> = u_xlat2;
  u_xlat5 = (-(x_219) + x_221);
  let x_223 : vec3<f32> = u_xlat0;
  let x_225 : vec3<f32> = u_xlat5;
  let x_227 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_223.x, x_223.x, x_223.x) * x_225) + x_227);
  let x_229 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_229 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_233 : vec3<f32> = u_xlat0;
  u_xlat3 = (x_233 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_237 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_237 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_241 : vec3<f32> = u_xlat3;
  u_xlat3 = max(abs(x_241), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_244 : vec3<f32> = u_xlat3;
  u_xlat3 = log2(x_244);
  let x_246 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_246 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_250 : vec3<f32> = u_xlat3;
  u_xlat3 = exp2(x_250);
  let x_254 : vec3<f32> = u_xlat0;
  let x_256 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_254.x, x_254.y, x_254.z, x_254.x));
  u_xlatb0 = vec3<bool>(x_256.x, x_256.y, x_256.z);
  let x_259 : bool = u_xlatb0.x;
  if (x_259) {
    let x_264 : f32 = u_xlat2.x;
    x_260 = x_264;
  } else {
    let x_267 : f32 = u_xlat3.x;
    x_260 = x_267;
  }
  let x_268 : f32 = x_260;
  u_xlat1.x = x_268;
  let x_271 : bool = u_xlatb0.y;
  if (x_271) {
    let x_276 : f32 = u_xlat2.y;
    x_272 = x_276;
  } else {
    let x_279 : f32 = u_xlat3.y;
    x_272 = x_279;
  }
  let x_280 : f32 = x_272;
  u_xlat1.y = x_280;
  let x_283 : bool = u_xlatb0.z;
  if (x_283) {
    let x_288 : f32 = u_xlat2.z;
    x_284 = x_288;
  } else {
    let x_291 : f32 = u_xlat3.z;
    x_284 = x_291;
  }
  let x_292 : f32 = x_284;
  u_xlat1.z = x_292;
  let x_296 : f32 = x_142.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_296);
  let x_300 : bool = u_xlatb0.x;
  if (x_300) {
    let x_303 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_303.x, x_303.y, x_303.z);
    let x_305 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_305, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_309 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_309, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_318 : vec4<f32> = u_xlat1;
  SV_Target0 = x_318;
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


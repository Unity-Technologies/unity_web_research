struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(1) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(3) var sampler_PointRepeat : sampler;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var x_140 : f32;
  var x_153 : f32;
  var x_166 : f32;
  var x_214 : f32;
  var x_227 : f32;
  var x_239 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_Dithering_Params;
  let x_26 : vec4<f32> = x_17.x_Dithering_Params;
  let x_28 : vec2<f32> = ((x_13 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_28.x, x_28.y, x_29.z);
  let x_41 : vec3<f32> = u_xlat0;
  let x_48 : f32 = x_17.x_GlobalMipBias.x;
  let x_49 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_41.x, x_41.y), x_48);
  u_xlat0.x = x_49.w;
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_55 * 2.0f) + -1.0f);
  let x_63 : f32 = u_xlat0.x;
  u_xlat3.x = (-(abs(x_63)) + 1.0f);
  let x_74 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_74 >= 0.0f);
  let x_80 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_80);
  let x_84 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_84);
  let x_88 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_88) + 1.0f);
  let x_93 : f32 = u_xlat3.x;
  let x_95 : f32 = u_xlat0.x;
  u_xlat0.x = (x_93 * x_95);
  let x_103 : vec2<f32> = vs_TEXCOORD0;
  let x_105 : f32 = x_17.x_GlobalMipBias.x;
  let x_106 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_103, x_105);
  u_xlat3 = vec3<f32>(x_106.x, x_106.y, x_106.z);
  let x_109 : vec3<f32> = u_xlat3;
  u_xlat1 = log2(abs(x_109));
  let x_112 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_112 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_116 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_116);
  let x_118 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_118 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_126 : vec3<f32> = u_xlat3;
  u_xlat2 = (x_126 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_133 : vec3<f32> = u_xlat3;
  let x_136 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0031308f) >= vec4<f32>(x_133.x, x_133.y, x_133.z, x_133.z));
  u_xlatb3 = vec3<bool>(x_136.x, x_136.y, x_136.z);
  let x_139 : bool = u_xlatb3.x;
  if (x_139) {
    let x_144 : f32 = u_xlat2.x;
    x_140 = x_144;
  } else {
    let x_147 : f32 = u_xlat1.x;
    x_140 = x_147;
  }
  let x_148 : f32 = x_140;
  u_xlat3.x = x_148;
  let x_152 : bool = u_xlatb3.y;
  if (x_152) {
    let x_157 : f32 = u_xlat2.y;
    x_153 = x_157;
  } else {
    let x_160 : f32 = u_xlat1.y;
    x_153 = x_160;
  }
  let x_161 : f32 = x_153;
  u_xlat3.y = x_161;
  let x_165 : bool = u_xlatb3.z;
  if (x_165) {
    let x_170 : f32 = u_xlat2.z;
    x_166 = x_170;
  } else {
    let x_173 : f32 = u_xlat1.z;
    x_166 = x_173;
  }
  let x_174 : f32 = x_166;
  u_xlat3.z = x_174;
  let x_176 : vec3<f32> = u_xlat0;
  let x_181 : vec3<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_176.x, x_176.x, x_176.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_181);
  let x_183 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_183 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_187 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_187 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_191 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(abs(x_191));
  let x_194 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_194 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_198 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_198);
  let x_200 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_200 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_206 : vec3<f32> = u_xlat0;
  let x_208 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_206.x, x_206.y, x_206.z, x_206.x));
  u_xlatb0 = vec3<bool>(x_208.x, x_208.y, x_208.z);
  let x_213 : bool = u_xlatb0.x;
  if (x_213) {
    let x_218 : f32 = u_xlat2.x;
    x_214 = x_218;
  } else {
    let x_221 : f32 = u_xlat1.x;
    x_214 = x_221;
  }
  let x_222 : f32 = x_214;
  SV_Target0.x = x_222;
  let x_226 : bool = u_xlatb0.y;
  if (x_226) {
    let x_231 : f32 = u_xlat2.y;
    x_227 = x_231;
  } else {
    let x_234 : f32 = u_xlat1.y;
    x_227 = x_234;
  }
  let x_235 : f32 = x_227;
  SV_Target0.y = x_235;
  let x_238 : bool = u_xlatb0.z;
  if (x_238) {
    let x_243 : f32 = u_xlat2.z;
    x_239 = x_243;
  } else {
    let x_246 : f32 = u_xlat1.z;
    x_239 = x_246;
  }
  let x_247 : f32 = x_239;
  SV_Target0.z = x_247;
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_SourceSize : vec4<f32>,
  x_DownSampleScaleFactor : vec4<f32>,
  x_CoCParams : vec3<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_HalfCoCTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatu1 : vec4<u32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : vec4<f32> = x_14.x_SourceSize;
  let x_23 : vec4<f32> = x_14.x_DownSampleScaleFactor;
  let x_25 : vec3<f32> = (vec3<f32>(x_19.x, x_19.y, x_19.w) * vec3<f32>(x_23.x, x_23.y, x_23.w));
  let x_26 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_25.x, x_25.y, x_25.z, x_26.w);
  let x_28 : vec4<f32> = u_xlat0;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  let x_33 : vec2<f32> = (vec2<f32>(x_28.x, x_28.y) * x_32);
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_33.x, x_33.y, x_34.z, x_34.w);
  let x_40 : vec4<f32> = u_xlat0;
  let x_45 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_40.x, x_40.y)));
  let x_46 : vec4<u32> = u_xlatu1;
  u_xlatu1 = vec4<u32>(x_45.x, x_45.y, x_46.z, x_46.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_58 : vec4<u32> = u_xlatu1;
  let x_62 : u32 = u_xlatu1.w;
  let x_64 : vec4<f32> = textureLoad(x_HalfCoCTexture, bitcast<vec2<i32>>(vec2<u32>(x_58.x, x_58.y)), bitcast<i32>(x_62));
  u_xlat0.x = x_64.x;
  let x_71 : f32 = u_xlat0.x;
  let x_73 : f32 = u_xlat0.z;
  u_xlat4.x = (x_71 * x_73);
  let x_78 : f32 = u_xlat4.x;
  let x_82 : f32 = x_14.x_CoCParams.z;
  u_xlat1.y = (x_78 * x_82);
  u_xlat1.x = 0.0f;
  let x_91 : vec4<f32> = u_xlat1;
  let x_94 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(-1.333333373f, -1.333333373f, 1.333333373f, 1.333333373f) * vec4<f32>(x_91.x, x_91.y, x_91.x, x_91.y)) + vec4<f32>(x_94.x, x_94.y, x_94.x, x_94.y));
  let x_104 : vec4<f32> = u_xlat1;
  let x_108 : f32 = x_14.x_GlobalMipBias.x;
  let x_109 : vec4<f32> = textureSampleBias(x_HalfCoCTexture, sampler_LinearClamp, vec2<f32>(x_104.x, x_104.y), x_108);
  u_xlat4.x = x_109.x;
  let x_113 : f32 = u_xlat4.x;
  let x_116 : f32 = u_xlat0.x;
  u_xlat4.x = (-(x_113) + x_116);
  let x_121 : f32 = u_xlat4.x;
  u_xlat2.w = (-(x_121) + 1.0f);
  let x_127 : f32 = u_xlat2.w;
  u_xlat2.w = clamp(x_127, 0.0f, 1.0f);
  let x_134 : vec4<f32> = u_xlat1;
  let x_137 : f32 = x_14.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_134.x, x_134.y), x_137);
  u_xlat4 = vec3<f32>(x_138.x, x_138.y, x_138.z);
  let x_140 : vec4<f32> = u_xlat2;
  let x_142 : vec3<f32> = u_xlat4;
  let x_143 : vec3<f32> = (vec3<f32>(x_140.w, x_140.w, x_140.w) * x_142);
  let x_144 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_149 : vec2<f32> = vs_TEXCOORD0;
  let x_151 : f32 = x_14.x_GlobalMipBias.x;
  let x_152 : vec4<f32> = textureSampleBias(x_HalfCoCTexture, sampler_LinearClamp, x_149, x_151);
  u_xlat4.x = x_152.x;
  let x_156 : f32 = u_xlat4.x;
  let x_159 : f32 = u_xlat0.x;
  u_xlat4.x = (-(x_156) + x_159);
  let x_164 : f32 = u_xlat4.x;
  u_xlat3.w = (-(x_164) + 1.0f);
  let x_169 : f32 = u_xlat3.w;
  u_xlat3.w = clamp(x_169, 0.0f, 1.0f);
  let x_175 : vec2<f32> = vs_TEXCOORD0;
  let x_177 : f32 = x_14.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_175, x_177);
  u_xlat4 = vec3<f32>(x_178.x, x_178.y, x_178.z);
  let x_180 : vec4<f32> = u_xlat3;
  let x_182 : vec3<f32> = u_xlat4;
  let x_183 : vec3<f32> = (vec3<f32>(x_180.w, x_180.w, x_180.w) * x_182);
  let x_184 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_186 * vec4<f32>(0.294117659f, 0.294117659f, 0.294117659f, 0.294117659f));
  let x_190 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_190 * vec4<f32>(0.352941185f, 0.352941185f, 0.352941185f, 0.352941185f)) + x_194);
  let x_199 : vec4<f32> = u_xlat1;
  let x_202 : f32 = x_14.x_GlobalMipBias.x;
  let x_203 : vec4<f32> = textureSampleBias(x_HalfCoCTexture, sampler_LinearClamp, vec2<f32>(x_199.z, x_199.w), x_202);
  u_xlat4.x = x_203.x;
  let x_209 : vec4<f32> = u_xlat1;
  let x_212 : f32 = x_14.x_GlobalMipBias.x;
  let x_213 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_209.z, x_209.w), x_212);
  let x_214 : vec3<f32> = vec3<f32>(x_213.x, x_213.y, x_213.z);
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : f32 = u_xlat4.x;
  let x_221 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_218) + x_221);
  let x_225 : f32 = u_xlat0.x;
  u_xlat0.w = (-(x_225) + 1.0f);
  let x_230 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_230, 0.0f, 1.0f);
  let x_233 : vec4<f32> = u_xlat0;
  let x_235 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.w, x_233.w, x_233.w) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_240 * vec4<f32>(0.352941185f, 0.352941185f, 0.352941185f, 0.352941185f)) + x_242);
  let x_246 : f32 = u_xlat0.w;
  u_xlat12 = (x_246 + 0.0001f);
  let x_251 : vec4<f32> = u_xlat0;
  let x_253 : f32 = u_xlat12;
  let x_255 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) / vec3<f32>(x_253, x_253, x_253));
  let x_256 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
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


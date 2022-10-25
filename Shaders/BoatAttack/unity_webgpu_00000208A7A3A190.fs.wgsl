struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_SourceSize : vec4<f32>,
}

@group(0) @binding(1) var x_FullCoCTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> SV_Target0 : f32;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> SV_Target1 : vec3<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat12 : f32;
  var u_xlat18 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlat9 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, x_23, x_34);
  u_xlat0.x = x_35.x;
  let x_44 : vec4<f32> = x_27.x_SourceSize;
  let x_52 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_44.z, x_44.w, x_44.z, x_44.w) * vec4<f32>(0.899999976f, -0.400000006f, -0.899999976f, 0.400000006f)) + vec4<f32>(x_52.x, x_52.y, x_52.x, x_52.y));
  let x_59 : vec4<f32> = u_xlat1;
  let x_62 : f32 = x_27.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat6 = x_63.x;
  let x_66 : f32 = u_xlat6;
  let x_68 : f32 = u_xlat0.x;
  u_xlat12 = (x_66 + x_68);
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : f32 = x_27.x_GlobalMipBias.x;
  let x_78 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, vec2<f32>(x_74.z, x_74.w), x_77);
  u_xlat18 = x_78.x;
  let x_80 : f32 = u_xlat18;
  let x_81 : f32 = u_xlat12;
  u_xlat12 = (x_80 + x_81);
  let x_85 : vec4<f32> = x_27.x_SourceSize;
  let x_89 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_85.z, x_85.w, x_85.z, x_85.w) * vec4<f32>(0.400000006f, 0.899999976f, -0.400000006f, -0.899999976f)) + vec4<f32>(x_89.x, x_89.y, x_89.x, x_89.y));
  let x_96 : vec4<f32> = u_xlat2;
  let x_99 : f32 = x_27.x_GlobalMipBias.x;
  let x_100 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, vec2<f32>(x_96.x, x_96.y), x_99);
  u_xlat3 = x_100.x;
  let x_102 : f32 = u_xlat12;
  let x_103 : f32 = u_xlat3;
  u_xlat12 = (x_102 + x_103);
  let x_109 : vec4<f32> = u_xlat2;
  let x_112 : f32 = x_27.x_GlobalMipBias.x;
  let x_113 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, vec2<f32>(x_109.z, x_109.w), x_112);
  u_xlat9 = x_113.x;
  let x_115 : f32 = u_xlat12;
  let x_116 : f32 = u_xlat9;
  u_xlat12 = (x_115 + x_116);
  let x_120 : f32 = u_xlat12;
  SV_Target0 = (x_120 * 0.200000003f);
  let x_128 : vec4<f32> = u_xlat1;
  let x_131 : f32 = x_27.x_GlobalMipBias.x;
  let x_132 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_128.x, x_128.y), x_131);
  u_xlat4 = vec3<f32>(x_132.x, x_132.y, x_132.z);
  let x_137 : vec4<f32> = u_xlat1;
  let x_140 : f32 = x_27.x_GlobalMipBias.x;
  let x_141 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_137.z, x_137.w), x_140);
  let x_142 : vec3<f32> = vec3<f32>(x_141.x, x_141.y, x_141.z);
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : f32 = u_xlat6;
  let x_147 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_145, x_145, x_145) * x_147);
  let x_153 : vec2<f32> = vs_TEXCOORD0;
  let x_155 : f32 = x_27.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_153, x_155);
  u_xlat5 = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_158 : vec3<f32> = u_xlat5;
  let x_159 : vec3<f32> = u_xlat0;
  let x_162 : vec3<f32> = u_xlat4;
  u_xlat0 = ((x_158 * vec3<f32>(x_159.x, x_159.x, x_159.x)) + x_162);
  let x_164 : vec4<f32> = u_xlat1;
  let x_166 : f32 = u_xlat18;
  let x_169 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166, x_166, x_166)) + x_169);
  let x_174 : vec4<f32> = u_xlat2;
  let x_177 : f32 = x_27.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_174.x, x_174.y), x_177);
  let x_179 : vec3<f32> = vec3<f32>(x_178.x, x_178.y, x_178.z);
  let x_180 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_185 : vec4<f32> = u_xlat2;
  let x_188 : f32 = x_27.x_GlobalMipBias.x;
  let x_189 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_185.z, x_185.w), x_188);
  let x_190 : vec3<f32> = vec3<f32>(x_189.x, x_189.y, x_189.z);
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_193 : vec4<f32> = u_xlat1;
  let x_195 : f32 = u_xlat3;
  let x_198 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_195, x_195, x_195)) + x_198);
  let x_200 : vec4<f32> = u_xlat2;
  let x_202 : f32 = u_xlat9;
  let x_205 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202, x_202, x_202)) + x_205);
  let x_209 : vec3<f32> = u_xlat0;
  SV_Target1 = (x_209 * vec3<f32>(0.200000003f, 0.200000003f, 0.200000003f));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : f32,
  @location(1)
  SV_Target1_1 : vec3<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}


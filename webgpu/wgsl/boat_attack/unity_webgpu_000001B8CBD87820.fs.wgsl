struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_BlitTexture_TexelSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

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
  let x_18 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_23 : vec2<f32> = (vec2<f32>(x_18.x, x_18.x) * vec2<f32>(8.0f, 6.0f));
  let x_24 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_23.x, x_24.y, x_23.y, x_24.w);
  u_xlat0.y = 0.0f;
  u_xlat0.w = 0.0f;
  let x_34 : vec4<f32> = u_xlat0;
  let x_38 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (-(x_34) + vec4<f32>(x_38.x, x_38.y, x_38.x, x_38.y));
  let x_41 : vec4<f32> = u_xlat0;
  let x_43 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (vec4<f32>(x_41.z, x_41.w, x_41.x, x_41.w) + vec4<f32>(x_43.x, x_43.y, x_43.x, x_43.y));
  let x_57 : vec4<f32> = u_xlat1;
  let x_63 : f32 = x_13.x_GlobalMipBias.x;
  let x_64 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_57.z, x_57.w), x_63);
  let x_66 : vec3<f32> = vec3<f32>(x_64.x, x_64.y, x_64.z);
  let x_67 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_72 : vec4<f32> = u_xlat1;
  let x_75 : f32 = x_13.x_GlobalMipBias.x;
  let x_76 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_72.x, x_72.y), x_75);
  let x_77 : vec3<f32> = vec3<f32>(x_76.x, x_76.y, x_76.z);
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_80 : vec4<f32> = u_xlat2;
  let x_84 : vec3<f32> = (vec3<f32>(x_80.x, x_80.y, x_80.z) * vec3<f32>(0.054054052f, 0.054054052f, 0.054054052f));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_87 : vec4<f32> = u_xlat1;
  let x_92 : vec4<f32> = u_xlat2;
  let x_94 : vec3<f32> = ((vec3<f32>(x_87.x, x_87.y, x_87.z) * vec3<f32>(0.01621622f, 0.01621622f, 0.01621622f)) + vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = x_13.x_BlitTexture_TexelSize;
  let x_103 : vec2<f32> = (vec2<f32>(x_98.x, x_98.x) * vec2<f32>(4.0f, 2.0f));
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_104.y, x_103.y, x_104.w);
  u_xlat2.y = 0.0f;
  u_xlat2.w = 0.0f;
  let x_109 : vec4<f32> = u_xlat2;
  let x_111 : vec2<f32> = vs_TEXCOORD0;
  u_xlat3 = (-(x_109) + vec4<f32>(x_111.x, x_111.y, x_111.x, x_111.y));
  let x_114 : vec4<f32> = u_xlat2;
  let x_116 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = (vec4<f32>(x_114.z, x_114.w, x_114.x, x_114.y) + vec4<f32>(x_116.x, x_116.y, x_116.x, x_116.y));
  let x_124 : vec4<f32> = u_xlat3;
  let x_127 : f32 = x_13.x_GlobalMipBias.x;
  let x_128 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_124.x, x_124.y), x_127);
  u_xlat4 = vec3<f32>(x_128.x, x_128.y, x_128.z);
  let x_133 : vec4<f32> = u_xlat3;
  let x_136 : f32 = x_13.x_GlobalMipBias.x;
  let x_137 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_133.z, x_133.w), x_136);
  let x_138 : vec3<f32> = vec3<f32>(x_137.x, x_137.y, x_137.z);
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_141 : vec3<f32> = u_xlat4;
  let x_145 : vec4<f32> = u_xlat1;
  let x_147 : vec3<f32> = ((x_141 * vec3<f32>(0.121621624f, 0.121621624f, 0.121621624f)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_150 : vec4<f32> = u_xlat3;
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(0.194594592f, 0.194594592f, 0.194594592f)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_163 : vec2<f32> = vs_TEXCOORD0;
  let x_165 : f32 = x_13.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_163, x_165);
  let x_167 : vec3<f32> = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat3;
  let x_175 : vec4<f32> = u_xlat1;
  let x_177 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(0.227027029f, 0.227027029f, 0.227027029f)) + vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_183 : vec4<f32> = u_xlat2;
  let x_186 : f32 = x_13.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_183.x, x_183.y), x_186);
  let x_188 : vec3<f32> = vec3<f32>(x_187.x, x_187.y, x_187.z);
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_194 : vec4<f32> = u_xlat2;
  let x_197 : f32 = x_13.x_GlobalMipBias.x;
  let x_198 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_194.z, x_194.w), x_197);
  let x_199 : vec3<f32> = vec3<f32>(x_198.x, x_198.y, x_198.z);
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat1;
  let x_207 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(0.194594592f, 0.194594592f, 0.194594592f)) + vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_210 : vec4<f32> = u_xlat2;
  let x_213 : vec4<f32> = u_xlat1;
  let x_215 : vec3<f32> = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(0.121621624f, 0.121621624f, 0.121621624f)) + vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_221 : vec4<f32> = u_xlat0;
  let x_224 : f32 = x_13.x_GlobalMipBias.x;
  let x_225 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_221.x, x_221.y), x_224);
  let x_226 : vec3<f32> = vec3<f32>(x_225.x, x_225.y, x_225.z);
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_232 : vec4<f32> = u_xlat0;
  let x_235 : f32 = x_13.x_GlobalMipBias.x;
  let x_236 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_232.z, x_232.w), x_235);
  let x_237 : vec3<f32> = vec3<f32>(x_236.x, x_236.y, x_236.z);
  let x_238 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec4<f32> = u_xlat2;
  let x_243 : vec4<f32> = u_xlat1;
  let x_245 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(0.054054052f, 0.054054052f, 0.054054052f)) + vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_250 : vec4<f32> = u_xlat0;
  let x_253 : vec4<f32> = u_xlat1;
  let x_255 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(0.01621622f, 0.01621622f, 0.01621622f)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
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


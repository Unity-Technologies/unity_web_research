diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat12 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  u_xlat0.x = 0.0f;
  let x_23 : vec4<f32> = x_18.x_BlitTexture_TexelSize;
  let x_28 : vec2<f32> = (vec2<f32>(x_23.y, x_23.y) * vec2<f32>(3.23076915740966796875f, 1.38461542129516601562f));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_28.x, x_29.z, x_28.y);
  let x_32 : vec4<f32> = u_xlat0;
  let x_37 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = (-(vec4<f32>(x_32.x, x_32.y, x_32.x, x_32.w)) + vec4<f32>(x_37.x, x_37.y, x_37.x, x_37.y));
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = (vec4<f32>(x_40.x, x_40.w, x_40.x, x_40.y) + vec4<f32>(x_42.x, x_42.y, x_42.x, x_42.y));
  let x_47 : vec4<f32> = x_18.x_BlitTexture_TexelSize;
  let x_55 : vec4<f32> = x_18.x_RTHandleScale;
  let x_57 : vec2<f32> = ((-(vec2<f32>(x_47.x, x_47.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_55.x, x_55.y));
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
  let x_60 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = u_xlat2;
  u_xlat1 = min(x_60, vec4<f32>(x_61.x, x_61.y, x_61.x, x_61.y));
  let x_75 : vec4<f32> = u_xlat1;
  let x_80 : f32 = x_18.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_75.z, x_75.w), x_80);
  u_xlat3 = x_81;
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : f32 = x_18.x_GlobalMipBias.x;
  let x_89 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_85.x, x_85.y), x_88);
  u_xlat1 = x_89;
  let x_91 : vec4<f32> = u_xlat1;
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec3<f32> = (vec3<f32>(x_91.w, x_91.w, x_91.w) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_98 : vec4<f32> = u_xlat3;
  let x_100 : vec4<f32> = u_xlat3;
  let x_102 : vec3<f32> = (vec3<f32>(x_98.w, x_98.w, x_98.w) * vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat3;
  let x_109 : vec3<f32> = (vec3<f32>(x_105.x, x_105.y, x_105.z) * vec3<f32>(2.5297298431396484375f, 2.5297298431396484375f, 2.5297298431396484375f));
  let x_110 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat1;
  let x_117 : vec4<f32> = u_xlat3;
  let x_119 : vec3<f32> = ((vec3<f32>(x_112.x, x_112.y, x_112.z) * vec3<f32>(0.56216216087341308594f, 0.56216216087341308594f, 0.56216216087341308594f)) + vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_120 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = min(vec2<f32>(x_124.x, x_124.y), x_126);
  let x_128 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat0 = min(x_128, vec4<f32>(x_129.x, x_129.y, x_129.x, x_129.y));
  let x_135 : vec2<f32> = u_xlat10;
  let x_137 : f32 = x_18.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_135, x_137);
  u_xlat2 = x_138;
  let x_139 : vec4<f32> = u_xlat2;
  let x_141 : vec4<f32> = u_xlat2;
  let x_143 : vec3<f32> = (vec3<f32>(x_139.w, x_139.w, x_139.w) * vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_146 : vec4<f32> = u_xlat2;
  let x_151 : vec4<f32> = u_xlat1;
  let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(1.81621623039245605469f, 1.81621623039245605469f, 1.81621623039245605469f)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_159 : vec4<f32> = u_xlat0;
  let x_162 : f32 = x_18.x_GlobalMipBias.x;
  let x_163 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_159.x, x_159.y), x_162);
  u_xlat2 = x_163;
  let x_167 : vec4<f32> = u_xlat0;
  let x_170 : f32 = x_18.x_GlobalMipBias.x;
  let x_171 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_167.z, x_167.w), x_170);
  u_xlat0 = x_171;
  let x_172 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec3<f32> = (vec3<f32>(x_172.w, x_172.w, x_172.w) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_179 : vec4<f32> = u_xlat2;
  let x_181 : vec4<f32> = u_xlat2;
  let x_183 : vec3<f32> = (vec3<f32>(x_179.w, x_179.w, x_179.w) * vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec4<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat1;
  let x_191 : vec3<f32> = ((vec3<f32>(x_186.x, x_186.y, x_186.z) * vec3<f32>(2.5297298431396484375f, 2.5297298431396484375f, 2.5297298431396484375f)) + vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat0;
  let x_197 : vec4<f32> = u_xlat1;
  let x_199 : vec3<f32> = ((vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(0.56216216087341308594f, 0.56216216087341308594f, 0.56216216087341308594f)) + vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat0;
  let x_206 : vec3<f32> = (vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(0.125f, 0.125f, 0.125f));
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_212 : f32 = u_xlat0.y;
  let x_214 : f32 = u_xlat0.x;
  u_xlat12 = max(x_212, x_214);
  let x_218 : f32 = u_xlat0.z;
  u_xlat1.x = max(x_218, 0.00000999999974737875f);
  let x_222 : f32 = u_xlat12;
  let x_224 : f32 = u_xlat1.x;
  u_xlat12 = max(x_222, x_224);
  let x_226 : f32 = u_xlat12;
  u_xlat12 = (x_226 * 255.0f);
  let x_229 : f32 = u_xlat12;
  u_xlat12 = ceil(x_229);
  let x_231 : f32 = u_xlat12;
  u_xlat12 = (x_231 * 0.0039215688593685627f);
  let x_236 : vec4<f32> = u_xlat0;
  let x_238 : f32 = u_xlat12;
  let x_240 : vec3<f32> = (vec3<f32>(x_236.x, x_236.y, x_236.z) / vec3<f32>(x_238, x_238, x_238));
  let x_241 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : f32 = u_xlat12;
  SV_Target0.w = x_243;
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


